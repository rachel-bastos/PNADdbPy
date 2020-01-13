#===================================================================================
# insert_database.py
#
# Purpose: Insert PNAD data into sql database
#===================================================================================
 
import pandas as pd
import numpy as np
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

import logging
logging.basicConfig(filename = 'cnpj_insert.log',level=logging.INFO)
logger = logging.getLogger()

from decouple import config
conn = '{program}://{user}:{password}@{ip}:{port}/{database}?application_name={app}'.format(
	program=config('program'),
	user=config('user'),
	password=config('password'),
	ip=config('ip'),
	port=config('port'),
	database=config('database'),
	app=config('app_name'))

def make_query(query,engine,file=''):
    '''
    Execute query to insert data from csv file into sql database

    Arguments:
        query{str} -- query to be executed
        engine -- database conection
        file{str} -- csv filename

    Returns:
        [None]
    '''
    Session = sessionmaker(bind=engine)
    session = Session()
    con = engine.raw_connection()
    cur = con.cursor()
    with open(file+'.csv','r') as f:
        cur.copy_expert(query,f)
    con.commit()
    session.close()
        
def exp_imp_csv(engine,obj,table_name,schema='public'):
    '''
    Insert data from csv file into database

    Arguments:
        engine -- database conection
        obj{DataFrame} -- data to insert
        table_name{str} -- name of table to enter the data
        schema{str} -- name of database schema

    Returns:
        [None]
    '''
    obj.to_csv(table_name+'.csv',sep=';', encoding='utf-8',index=False,header=False)
    cmd='COPY ' + schema + '.' + table_name + '('
    for item in list(obj):
        cmd += item + ','
    cmd = cmd[:-1] + ') from STDIN with (FORMAT CSV, HEADER FALSE, DELIMITER ";")'
    make_query(cmd,engine,table_name)
    
def PNAD_header(data, d):
    '''
    Read, parse and put the data in the correct format to insert into the database

    Arguments:
        data{DataFrame} -- data to insert
        d{dict} -- official dictionary of data

    Returns:
        [DataFrame] -- data in the correct format
    '''
    lines = pd.DataFrame(data.readlines())[0]
    skips = [d - 1 for d in d['Pos'].values()]
    length = list(map(int,list(d['Size'].values())))
    df = pd.DataFrame()
    for k in range(len(length)):
        col = lines.str.slice(skips[k], skips[k]+length[k], 1)
        col[col.str.find(' .')!= -1] = ''
        col[col == '.'] = ''
        df = pd.concat([df, col], axis = 1)
    df.columns = d['Code'].values()
    df = df.applymap(lambda x: -1 if x.strip() == "" else x)
    return(df)
  

def PNAD_dict(data):
    '''
    Clean dictionary of PNAD data

    Arguments:
        data{DataFrame} -- dictionary

    Returns:
        [DataFrame] -- clean dictionary
    '''
    data.columns = ['Pos', 'Size', 'Code', 'N', 'Question', 'Type', 'Category']
    data.loc[data.Category == 'Não aplicável','Type'] = 'x'
    for c in list(data):
        data[c] = pd.Series(data[c]).fillna(method='ffill')
    data.Question = data.Question.str.replace('\n','')
    return(data)

if __name__ == "__main__":

    engine = create_engine(conn)
    schema = 'databases'

    # PNAD

    resid_dict = pd.DataFrame()
    pers_dict = pd.DataFrame()
    years = ['2004','2009','2011','2012','2013','2014','2015']

    for year in years:
        logger.info(f'Entering PNAD data from year {year}')
        
        # Residence
        resid = pd.read_excel(f'PNAD/{year}/Dicts/Dicionário de variáveis de domicílios - PNAD {year}.xls', skiprows=2)
        resid = PNAD_dict(resid)
        resid_dict = pd.concat([resid_dict,resid[['Code','Question','Type','Category']]]).drop_duplicates() 
    
        resid = resid.dropna(subset=['Code']).drop_duplicates('Code')[['Code','Pos','Size']].reset_index().to_dict()
        data = open(f'PNAD/{year}/Data/DOM{year}.TXT')
        data = PNAD_header(data, resid)
        exp_imp_csv(engine, data, 'pnad_resid', schema)

        # Person
        pers = pd.read_excel(f'PNAD/{year}/Dicts/Dicionário de variáveis de pessoas - PNAD {year}.xls', skiprows=2)
        pers = PNAD_dict(pers)
        pers_dict = pd.concat([pers_dict,pers[['Code','Question','Type','Category']]]).drop_duplicates() 

        pers = pers.dropna(subset=['Code']).drop_duplicates('Code')[['Code','Pos','Size']].reset_index().to_dict()
        data = open('PNAD/{year}/Data/PES{year}.TXT')
        data = PNAD_header(data, pers)
        exp_imp_csv(engine, data, 'pnad_pers', schema)
        
    # Export dicionaries
    resid_dict.to_csv('dict_resid.csv', sep = "|", index = False)  
    pers_dict.to_csv('dict_pers.csv', sep = "|", index = False)    


    # Continuous PNAD
    logger.info('Entering Continuous PNAD')
    # Visit 1
    vis1 = pd.read_excel('PNADC/dicionario_PNAD_CONTINUA_MICRODADOS_1_visita_2016_20180223.xls', skiprows=2)
    vis1 = PNAD_dict(vis1) 

    vis1_dict = vis1.dropna(subset=['Code']).drop_duplicates('Code')[['Code','Pos','Size']].reset_index().to_dict()
    data = open('PNADC/PNADC_2016_entr1_20180223.txt')
    data = PNAD_header(data, vis1_dict)
    exp_imp_csv(engine, data, 'pnadc', schema)
    
    # Vitis 5
    vis5 = pd.read_excel('PNADC/dicionario_PNAD_CONTINUA_MICRODADOS_5_visita_2016_20180223.xls', skiprows=2)
    vis5 = PNAD_dict(vis5) 

    vis5_dict = vis5.dropna(subset=['Code']).drop_duplicates('Code')[['Code','Pos','Size']].reset_index().to_dict()
    data = open('PNADC/PNADC_2016_entr5_20180223.txt')
    data = PNAD_header(data, vis5_dict)
    exp_imp_csv(engine, data, 'pnadc', schema)

    # Export dictionaries
    pnadc_dict = pd.concat([vis1[['Code','Question','Type','Category']],vis5[['Code','Question','Type','Category']]]).drop_duplicates()
    pnadc_dict.to_csv('dict_pnadc.csv', sep = "|", index = False)  