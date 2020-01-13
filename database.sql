

CREATE DATABASE pnad
  WITH ENCODING='UTF8',
       OWNER=pnad;
GO

CREATE SCHEMA databases AUTHORIZATION pnad;
GO
CREATE SCHEMA dict AUTHORIZATION pnad;
GO

CREATE TABLE dict.pnad_dom (
	code SERIAL PRIMARY KEY,
  question BYTEA UNIQUE NOT NULL,
  ttype INT NOT NULL,
  category BYTEA NOT NULL
);

CREATE TABLE dict.pnad_pes (
  code SERIAL PRIMARY KEY,
  question BYTEA UNIQUE NOT NULL,
  ttype INT NOT NULL,
  category BYTEA NOT NULL
);

CREATE TABLE dict.pnadc (
  code SERIAL PRIMARY KEY,
  question BYTEA UNIQUE NOT NULL,
  ttype INT NOT NULL,
  category BYTEA NOT NULL
);

CREATE TABLE databases.pnad_dom (
  V0101 INT default -1,
  UF INT default -1,
  V0102 INT default -1,
  V0103 INT default -1,
  V0104 INT default -1,
  V0105 INT default -1,
  V0106 INT default -1,
  V0201 INT default -1,
  V0202 INT default -1,
  V0203 INT default -1,
  V0204 INT default -1,
  V0205 INT default -1,
  V0206 INT default -1,
  V0207 INT default -1,
  V0208 DOUBLE PRECISION default -1,
  V2081 INT default -1,
  V0209 DOUBLE PRECISION default -1,
  V2091 INT default -1,
  V0210 INT default -1,
  V0211 INT default -1,
  V0212 INT default -1,
  V0213 INT default -1,
  V0214 INT default -1,
  V0215 INT default -1,
  V0216 INT default -1,
  V2016 INT default -1,
  V0217 INT default -1,
  V0218 INT default -1,
  V0219 INT default -1,
  V0220 INT default -1,
  V2020 INT default -1,
  V0221 INT default -1,
  V0222 INT default -1,
  V0223 INT default -1,
  V0224 INT default -1,
  V0225 INT default -1,
  V0226 INT default -1,
  V0227 INT default -1,
  V0228 INT default -1,
  V0229 INT default -1,
  V0230 INT default -1,
  V0231 INT default -1,
  V0232 INT default -1,
  V2001 INT default -1,
  V2002 INT default -1,
  V2003 INT default -1,
  V2004 INT default -1,
  V2005 INT default -1,
  V0620 INT default -1,
  V2007 INT default -1,
  V2008 INT default -1,
  V2009 INT default -1,
  V1020 INT default -1,
  V2011 INT default -1,
  V2012 INT default -1,
  V2013 INT default -1,
  V2014 INT default -1,
  V2015 INT default -1,
  V1600 INT default -1,
  V2101 INT default -1,
  V2102 INT default -1,
  V2103 INT default -1,
  V2104 INT default -1,
  V2105 INT default -1,
  V2106 INT default -1,
  V2107 INT default -1,
  V2108 INT default -1,
  V2109 INT default -1,
  V2110 INT default -1,
  V2111 INT default -1,
  V2112 INT default -1,
  V2113 INT default -1,
  V2114 INT default -1,
  V2115 INT default -1,
  V2116 INT default -1,
  V2117 INT default -1,
  V2118 INT default -1,
  V2119 INT default -1,
  V2120 INT default -1,
  V2121 INT default -1,
  V2122 INT default -1,
  V2123 INT default -1,
  V2124 INT default -1,
  V2125 INT default -1,
  V2126 INT default -1,
  V2127 INT default -1,
  V2128 INT default -1,
  V2129 INT default -1,
  V2130 INT default -1,
  V2131 INT default -1,
  V2132 INT default -1,
  V2133 INT default -1,
  V2134 INT default -1,
  V2135 INT default -1,
  V2136 INT default -1,
  V4105 INT default -1,
  V4106 INT default -1,
  V4107 INT default -1,
  V4600 INT default -1,
  V4601 INT default -1,
  V4602 INT default -1,
  V4604 INT default -1,
  V4605 FLOAT default -1,
  V4606 FLOAT default -1,
  V4607 FLOAT default -1,
  V4608 FLOAT default -1,
  V4609 FLOAT default -1,
  V4610 FLOAT default -1,
  V4611 INT default -1,
  V4614 DOUBLE PRECISION default -1,
  UPA INT default -1,
  V4617 INT default -1,
  V4618 INT default -1,
  V4619 FLOAT default -1,
  V4620 INT default -1,
  V4621 DOUBLE PRECISION default -1,
  V4622 INT default -1,
  V4623 INT default -1,
  V4623A INT default -1,
  V9992 INT default -1,
  V2027 INT default -1,
  V2032 INT default -1,
  V4624 INT default -1,
  V2033 INT default -1,
  V2034 INT default -1,
  V2035 INT default -1,
  V2036 INT default -1,
  V2037 INT default -1,
  V2038 INT default -1,
  V2039 INT default -1,
  V2041 INT default -1,
  V02270 INT default -1,
  V02271 INT default -1,
  V02272 INT default -1,
  V02273 INT default -1,
  V02274 INT default -1,
  V02321 INT default -1,
  V02322 INT default -1,
  V02323 INT default -1,
  V02324 INT default -1,
  V02325 INT default -1,
  V02326 INT default -1,
  V02327 INT default -1,
  V02424 INT default -1,
  V02425 INT default -1,
  V02426 INT default -1,
  V2138 INT default -1,
  V2139 INT default -1,
  V4625 INT default -1,
  V4626 INT default -1,
  V4627 INT default -1,
  V33001 INT default -1,
  V33002 INT default -1,
  V33003 INT default -1,
  V33004 INT default -1,
  V4628 INT default -1,
  V4629 INT default -1,
  V4630 INT default -1,
  V4632 INT default -1,
  V4633 INT default -1);

CREATE TABLE databases.pnad_pes (
  V0101 INT default -1,
  UF INT default -1,
  V0102 INT default -1,
  V0103 INT default -1,
  V0301 INT default -1,
  V0302 INT default -1,
  V3031 INT default -1,
  V3032 INT default -1,
  V3033 INT default -1,
  V8005 INT default -1,
  V0401 INT default -1,
  V0402 INT default -1,
  V0403 INT default -1,
  V0404 INT default -1,
  V0405 INT default -1,
  V0406 INT default -1,
  V0407 INT default -1,
  V0501 INT default -1,
  V0502 INT default -1,
  V5030 INT default -1,
  V0504 INT default -1,
  V0505 INT default -1,
  V5061 INT default -1,
  V5062 INT default -1,
  V5063 INT default -1,
  V5064 INT default -1,
  V5065 INT default -1,
  V0507 INT default -1,
  V5080 INT default -1,
  V5090 INT default -1,
  V0510 INT default -1,
  V0511 INT default -1,
  V5121 INT default -1,
  V5122 INT default -1,
  V5123 INT default -1,
  V5124 INT default -1,
  V5125 INT default -1,
  V0601 INT default -1,
  V0602 INT default -1,
  V6002 INT default -1,
  V0603 INT default -1,
  V0604 INT default -1,
  V0605 INT default -1,
  V0606 INT default -1,
  V0607 INT default -1,
  V0608 INT default -1,
  V0609 INT default -1,
  V0610 INT default -1,
  V0611 INT default -1,
  V1901 INT default -1,
  V1902 INT default -1,
  V1903 INT default -1,
  V1904 INT default -1,
  V1905 INT default -1,
  V1961 INT default -1,
  V1962 INT default -1,
  V1907 INT default -1,
  V1908 INT default -1,
  V1909 INT default -1,
  V1910 INT default -1,
  V0701 INT default -1,
  V0702 INT default -1,
  V0703 INT default -1,
  V0704 INT default -1,
  V0705 INT default -1,
  V7060 INT default -1,
  V7070 INT default -1,
  V0708 INT default -1,
  V7090 INT default -1,
  V7100 INT default -1,
  V0711 INT default -1,
  V7121 INT default -1,
  V7122 DOUBLE PRECISION default -1,
  V7123 INT default -1,
  V7124 INT default -1,
  V7125 DOUBLE PRECISION default -1,
  V7126 INT default -1,
  V7127 INT default -1,
  V7128 INT default -1,
  V0713 INT default -1,
  V9001 INT default -1,
  V9002 INT default -1,
  V9003 INT default -1,
  V9004 INT default -1,
  V9005 INT default -1,
  V9906 INT default -1,
  V9907 INT default -1,
  V9008 INT default -1,
  V9009 INT default -1,
  V9010 INT default -1,
  V9011 INT default -1,
  V9012 INT default -1,
  V9013 INT default -1,
  V9014 INT default -1,
  V9151 INT default -1,
  V9152 DOUBLE PRECISION default -1,
  V9153 INT default -1,
  V9154 DOUBLE PRECISION default -1,
  V9155 INT default -1,
  V9156 INT default -1,
  V9157 DOUBLE PRECISION default -1,
  V9158 INT default -1,
  V9159 DOUBLE PRECISION default -1,
  V9160 INT default -1,
  V9161 INT default -1,
  V9162 DOUBLE PRECISION default -1,
  V9163 INT default -1,
  V9164 DOUBLE PRECISION default -1,
  V9165 INT default -1,
  V9016 INT default -1,
  V9017 INT default -1,
  V9018 INT default -1,
  V9019 INT default -1,
  V9201 INT default -1,
  V9202 DOUBLE PRECISION default -1,
  V9203 INT default -1,
  V9204 DOUBLE PRECISION default -1,
  V9205 INT default -1,
  V9206 INT default -1,
  V9207 DOUBLE PRECISION default -1,
  V9208 INT default -1,
  V9209 DOUBLE PRECISION default -1,
  V9210 INT default -1,
  V9211 INT default -1,
  V9212 DOUBLE PRECISION default -1,
  V9213 INT default -1,
  V9214 DOUBLE PRECISION default -1,
  V9215 INT default -1,
  V9021 INT default -1,
  V9022 INT default -1,
  V9023 INT default -1,
  V9024 INT default -1,
  V9025 INT default -1,
  V9026 INT default -1,
  V9027 INT default -1,
  V9028 INT default -1,
  V9029 INT default -1,
  V9030 INT default -1,
  V9031 INT default -1,
  V9032 INT default -1,
  V9033 INT default -1,
  V9034 INT default -1,
  V9035 INT default -1,
  V9036 INT default -1,
  V9037 INT default -1,
  V9038 INT default -1,
  V9039 INT default -1,
  V9040 INT default -1,
  V9041 INT default -1,
  V9042 INT default -1,
  V9043 INT default -1,
  V9044 INT default -1,
  V9045 INT default -1,
  V9046 INT default -1,
  V9047 INT default -1,
  V9048 INT default -1,
  V9049 INT default -1,
  V9050 INT default -1,
  V9051 INT default -1,
  V9052 INT default -1,
  V9531 INT default -1,
  V9532 DOUBLE PRECISION default -1,
  V9533 INT default -1,
  V9534 INT default -1,
  V9535 DOUBLE PRECISION default -1,
  V9536 INT default -1,
  V9537 INT default -1,
  V9054 INT default -1,
  V9055 INT default -1,
  V9056 INT default -1,
  V9057 INT default -1,
  V9058 INT default -1,
  V9059 INT default -1,
  V9060 INT default -1,
  V9611 INT default -1,
  V9612 INT default -1,
  V9062 INT default -1,
  V9063 INT default -1,
  V9064 INT default -1,
  V9065 INT default -1,
  V9066 INT default -1,
  V9067 INT default -1,
  V9068 INT default -1,
  V9069 INT default -1,
  V9070 INT default -1,
  V9971 INT default -1,
  V9972 INT default -1,
  V9073 INT default -1,
  V9074 INT default -1,
  V9075 INT default -1,
  V9076 INT default -1,
  V9077 INT default -1,
  V9078 INT default -1,
  V9079 INT default -1,
  V9080 INT default -1,
  V9081 INT default -1,
  V9082 INT default -1,
  V9083 INT default -1,
  V9084 INT default -1,
  V9085 INT default -1,
  V9861 INT default -1,
  V9862 INT default -1,
  V9087 INT default -1,
  V9088 INT default -1,
  V9891 INT default -1,
  V9892 INT default -1,
  V9990 INT default -1,
  V9991 INT default -1,
  V9092 INT default -1,
  V9093 INT default -1,
  V9094 INT default -1,
  V9095 INT default -1,
  V9096 INT default -1,
  V9097 INT default -1,
  V9981 INT default -1,
  V9982 DOUBLE PRECISION default -1,
  V9983 INT default -1,
  V9984 INT default -1,
  V9985 DOUBLE PRECISION default -1,
  V9986 INT default -1,
  V9987 INT default -1,
  V9099 INT default -1,
  V9100 INT default -1,
  V9101 INT default -1,
  V1021 INT default -1,
  V1022 DOUBLE PRECISION default -1,
  V1023 INT default -1,
  V1024 INT default -1,
  V1025 DOUBLE PRECISION default -1,
  V1026 INT default -1,
  V1027 INT default -1,
  V1028 INT default -1,
  V9103 INT default -1,
  V9104 INT default -1,
  V9105 INT default -1,
  V9106 INT default -1,
  V9107 INT default -1,
  V9108 INT default -1,
  V1091 INT default -1,
  V1092 INT default -1,
  V9910 INT default -1,
  V9911 INT default -1,
  V9112 INT default -1,
  V9113 INT default -1,
  V9114 INT default -1,
  V9115 INT default -1,
  V9116 INT default -1,
  V9117 INT default -1,
  V9118 INT default -1,
  V9119 INT default -1,
  V9120 INT default -1,
  V9121 INT default -1,
  V9921 INT default -1,
  V9122 INT default -1,
  V9123 INT default -1,
  V9124 INT default -1,
  V1251 INT default -1,
  V1252 DOUBLE PRECISION default -1,
  V1253 INT default -1,
  V1254 INT default -1,
  V1255 DOUBLE PRECISION default -1,
  V1256 INT default -1,
  V1257 INT default -1,
  V1258 DOUBLE PRECISION default -1,
  V1259 INT default -1,
  V1260 INT default -1,
  V1261 DOUBLE PRECISION default -1,
  V1262 INT default -1,
  V1263 INT default -1,
  V1264 DOUBLE PRECISION default -1,
  V1265 INT default -1,
  V1266 INT default -1,
  V1267 DOUBLE PRECISION default -1,
  V1268 INT default -1,
  V1269 INT default -1,
  V1270 DOUBLE PRECISION default -1,
  V1271 INT default -1,
  V1272 INT default -1,
  V1273 DOUBLE PRECISION default -1,
  V1274 INT default -1,
  V1275 INT default -1,
  V1101 INT default -1,
  V1141 INT default -1,
  V1142 INT default -1,
  V1151 INT default -1,
  V1152 INT default -1,
  V1153 INT default -1,
  V1154 INT default -1,
  V1161 INT default -1,
  V1162 INT default -1,
  V1163 INT default -1,
  V1164 INT default -1,
  V1107 INT default -1,
  V1181 INT default -1,
  V1182 INT default -1,
  V1109 INT default -1,
  V1110 INT default -1,
  V1111 INT default -1,
  V1112 INT default -1,
  V1113 INT default -1,
  V1114 INT default -1,
  V4701 INT default -1,
  V4702 INT default -1,
  V4703 INT default -1,
  V4704 INT default -1,
  V4705 INT default -1,
  V4706 INT default -1,
  V4707 INT default -1,
  V4808 INT default -1,
  V4809 INT default -1,
  V4810 INT default -1,
  V4711 INT default -1,
  V4812 INT default -1,
  V4713 INT default -1,
  V4714 INT default -1,
  V4715 INT default -1,
  V4816 INT default -1,
  V4817 INT default -1,
  V4718 DOUBLE PRECISION default -1,
  V4719 DOUBLE PRECISION default -1,
  V4720 DOUBLE PRECISION default -1,
  V4721 DOUBLE PRECISION default -1,
  V4722 DOUBLE PRECISION default -1,
  V4723 INT default -1,
  V4724 INT default -1,
  V4725 INT default -1,
  V4726 DOUBLE PRECISION default -1,
  V4727 INT default -1,
  V4728 INT default -1,
  V4729 INT default -1,
  V4732 INT default -1,
  V4735 INT default -1,
  V4738 INT default -1,
  V6502 INT default -1,
  V4740 INT default -1,
  V4741 INT default -1,
  V4742 DOUBLE PRECISION default -1,
  V4743 INT default -1,
  V4744 INT default -1,
  V9993 INT default -1,
  V0408 INT default -1,
  V0409 INT default -1,
  V0410 INT default -1,
  V4011 INT default -1,
  V0412 INT default -1,
  V5126 INT default -1,
  V6020 INT default -1,
  V6003 INT default -1,
  V6030 INT default -1,
  V6007 INT default -1,
  V6070 INT default -1,
  V06111 INT default -1,
  V06112 INT default -1,
  V0612 INT default -1,
  V0714 INT default -1,
  V0715 INT default -1,
  V0716 INT default -1,
  V90531 INT default -1,
  V9126 INT default -1,
  V1115 INT default -1,
  V4801 INT default -1,
  V4802 INT default -1,
  V4803 INT default -1,
  V4805 INT default -1,
  V4814 INT default -1,
  V4838 INT default -1,
  V4745 INT default -1,
  V4746 INT default -1,
  V4747 INT default -1,
  V4748 INT default -1,
  V4749 INT default -1,
  V4750 DOUBLE PRECISION default -1,
  V2901 INT default -1,
  V29010 INT default -1,
  V29021 INT default -1,
  V29022 INT default -1,
  V29023 INT default -1,
  V2903 INT default -1,
  V29030 INT default -1,
  V2904 INT default -1,
  V29040 INT default -1,
  V29051 INT default -1,
  V29052 INT default -1,
  V29053 INT default -1,
  V29054 INT default -1,
  V29541 INT default -1,
  V29542 INT default -1,
  V29543 INT default -1,
  V29055 INT default -1,
  V29551 INT default -1,
  V29552 INT default -1,
  V29553 INT default -1,
  V29056 INT default -1,
  V2906 INT default -1,
  V2907 INT default -1,
  V2908 INT default -1,
  V2909 INT default -1,
  V2910 INT default -1,
  V2911 INT default -1,
  V2940 INT default -1,
  V29012 INT default -1,
  V29013 INT default -1,
  V29014 INT default -1,
  V29015 INT default -1,
  V29151 INT default -1,
  V29152 INT default -1,
  V29153 INT default -1,
  V29016 INT default -1,
  V29161 INT default -1,
  V29162 INT default -1,
  V29163 INT default -1,
  V29017 INT default -1,
  V2913 INT default -1,
  V2914 INT default -1,
  V2915 INT default -1,
  V2916 INT default -1,
  V2917 INT default -1,
  V2918 INT default -1,
  V29180 INT default -1,
  V2919 INT default -1,
  V2920 INT default -1,
  V2921 INT default -1,
  V2922 INT default -1,
  V2923 INT default -1,
  V2924 INT default -1,
  V2925 INT default -1,
  V2926 INT default -1,
  V2927 INT default -1,
  V2928 INT default -1,
  V2929 INT default -1,
  V4111 INT default -1,
  V4112 INT default -1,
  V90532 INT default -1,
  V90533 INT default -1,
  V061111 INT default -1,
  V061112 INT default -1,
  V061113 INT default -1,
  V061114 INT default -1,
  V061115 INT default -1,
  V061116 INT default -1,
  V90281 INT default -1,
  V90282 INT default -1,
  V90283 INT default -1,
  V90284 INT default -1,
  V90285 INT default -1,
  V90521 INT default -1,
  V90522 INT default -1,
  V90523 INT default -1,
  V90524 INT default -1,
  V90525 INT default -1,
  V90526 INT default -1,
  V0305 INT default -1,
  V32000 INT default -1,
  V32001 INT default -1,
  V32002 INT default -1,
  V32003 INT default -1,
  V32004 INT default -1,
  V32005 INT default -1,
  V32006 INT default -1,
  V32007 INT default -1,
  V32008 INT default -1,
  V32009 INT default -1,
  V32010 INT default -1,
  V32011 INT default -1,
  V32012 INT default -1,
  V32013 INT default -1,
  V32014 INT default -1,
  V32015 INT default -1,
  V32016 INT default -1,
  V32017 INT default -1,
  V32018 INT default -1,
  V32019 INT default -1,
  V32020 INT default -1,
  V32021 INT default -1,
  V32022 INT default -1,
  V32023 INT default -1,
  V32024 INT default -1,
  V32025 INT default -1,
  V32026 INT default -1,
  V32027 INT default -1,
  V32028 INT default -1,
  V32029 INT default -1,
  V32030 INT default -1,
  V32031 INT default -1,
  V32032 INT default -1,
  V32033 INT default -1,
  V32034 INT default -1,
  V32035 INT default -1,
  V32036 INT default -1,
  V32037 INT default -1,
  V32038 INT default -1,
  V32039 INT default -1,
  V31001 INT default -1,
  V31002 INT default -1,
  V31003 INT default -1,
  V31004 INT default -1,
  V31005 INT default -1,
  V31007 INT default -1,
  V31008 INT default -1,
  V31009 INT default -1,
  V31010 INT default -1,
  V31012 INT default -1,
  V31013 INT default -1,
  V31015 INT default -1,
  V31016 INT default -1,
  V31017 INT default -1,
  V31018 INT default -1,
  V31020 INT default -1,
  V31025 INT default -1,
  V31026 INT default -1,
  V31027 INT default -1,
  V31028 INT default -1,
  V31029 INT default -1,
  V31030 INT default -1,
  V31032 INT default -1,
  V31033 INT default -1,
  V31034 INT default -1,
  V31035 INT default -1,
  V31037 INT default -1,
  V31038 INT default -1,
  V31039 INT default -1,
  V31040 INT default -1,
  V31042 INT default -1,
  V31043 INT default -1,
  V31044 INT default -1,
  V31045 INT default -1,
  V31046 INT default -1,
  V31047 INT default -1,
  V31048 INT default -1,
  V31050 INT default -1,
  V31055 INT default -1,
  V31056 INT default -1,
  V31057 INT default -1,
  V31058 INT default -1,
  V31059 INT default -1,
  V31060 INT default -1,
  V31061 INT default -1,
  V31062 INT default -1,
  V31064 INT default -1,
  V31065 INT default -1,
  V31066 INT default -1,
  V31067 INT default -1,
  V31068 INT default -1,
  V31069 INT default -1,
  V31070 INT default -1,
  V31071 INT default -1,
  V31072 INT default -1,
  V31073 INT default -1,
  V31074 INT default -1,
  V31076 INT default -1,
  V31077 INT default -1,
  V31078 INT default -1,
  V31079 INT default -1,
  V31080 INT default -1,
  V31081 INT default -1,
  V31082 INT default -1,
  V31083 INT default -1,
  V31084 INT default -1,
  V31085 INT default -1,
  V31086 INT default -1,
  V31087 INT default -1,
  V31088 INT default -1,
  V31089 INT default -1,
  V31090 INT default -1,
  V31091 INT default -1,
  V31092 INT default -1,
  V31093 INT default -1,
  V31094 INT default -1,
  V90101 INT default -1,
  V90121 INT default -1,
  V90871 INT default -1,
  V908721 INT default -1,
  V908722 INT default -1,
  V908723 INT default -1,
  V908724 INT default -1,
  V908725 INT default -1,
  V908726 INT default -1,
  V90873 INT default -1,
  V90874 INT default -1,
  V90881 INT default -1,
  V90882 INT default -1,
  V908831 INT default -1,
  V908832 INT default -1,
  V908833 INT default -1,
  V908834 INT default -1,
  V908835 INT default -1,
  V908836 INT default -1,
  V908837 INT default -1,
  V90884 INT default -1,
  V908851 INT default -1,
  V908852 INT default -1,
  V908853 INT default -1,
  V908854 INT default -1,
  V908855 INT default -1,
  V908856 INT default -1,
  V90886 INT default -1,
  V90887 INT default -1,
  V908881 INT default -1,
  V908882 INT default -1,
  V908883 INT default -1,
  V908884 INT default -1,
  V908885 INT default -1,
  V908886 INT default -1,
  V908887 INT default -1,
  V38011 INT default -1,
  V38012 INT default -1,
  V3802 INT default -1,
  V3803 INT default -1,
  V3804 INT default -1,
  V3805 INT default -1,
  V3806 INT default -1,
  V3807 INT default -1,
  V3808 INT default -1,
  V3809 INT default -1,
  V37001 INT default -1,
  V37002 INT default -1,
  V3701 INT default -1,
  V3702 INT default -1,
  V3703 INT default -1,
  V3704 INT default -1,
  V3705 INT default -1,
  V3706 INT default -1,
  V37071 INT default -1,
  V37072 INT default -1,
  V37073 INT default -1,
  V37074 INT default -1,
  V37075 INT default -1,
  V37091 INT default -1,
  V37092 INT default -1,
  V37093 INT default -1,
  V37094 INT default -1,
  V37095 INT default -1,
  V37096 INT default -1,
  V37097 INT default -1,
  V37098 INT default -1,
  V3719 INT default -1,
  V3720 INT default -1,
  V36001 INT default -1,
  V36002 INT default -1,
  V3601 INT default -1,
  V3602 INT default -1,
  V3603 INT default -1,
  V3604 INT default -1,
  V3605 INT default -1,
  V3606 INT default -1,
  V3607 INT default -1,
  V3608 INT default -1,
  V3609 INT default -1,
  V3610 INT default -1,
  V3611 INT default -1,
  V3612 INT default -1,
  V3613 INT default -1,
  V3614 INT default -1,
  V3615 INT default -1,
  V3616 INT default -1,
  V3617 INT default -1,
  V3618 INT default -1,
  V3619 INT default -1,
  V3620 INT default -1,
  V3621 INT default -1,
  V3622 INT default -1,
  V3623 INT default -1,
  V3624 INT default -1,
  V3625 INT default -1,
  V3626 INT default -1,
  V3627 INT default -1,
  V3628 INT default -1,
  V3629 INT default -1,
  V3630 INT default -1,
  V3631 INT default -1,
  V3632 INT default -1,
  V3633 INT default -1,
  V3634 INT default -1,
  V3637 INT default -1,
  V3638 INT default -1
);

CREATE TABLE databases.pnadc (
  Ano INT default -1,
  Trimestre INT default -1,
  UF INT default -1,
  Capital INT default -1,
  RM_RIDE INT default -1,
  UPA INT default -1,
  Estrato INT default -1,
  V1008 INT default -1,
  V1014 INT default -1,
  V1022 INT default -1,
  V1023 INT default -1,
  V1030 INT default -1,
  V1031 FLOAT default -1,
  V1032 FLOAT default -1,
  posest FLOAT default -1,
  V2001 INT default -1,
  V2003 INT default -1,
  V2005 INT default -1,
  V2007 INT default -1,
  V2008 INT default -1,
  V20081 INT default -1,
  V20082 INT default -1,
  V2009 INT default -1,
  V2010 INT default -1,
  V3001 INT default -1,
  V3002 INT default -1,
  V3002A INT default -1,
  V3003A INT default -1,
  V3004 INT default -1,
  V3005A INT default -1,
  V3006 INT default -1,
  V3007 INT default -1,
  V3008 INT default -1,
  V3009A INT default -1,
  V3010 INT default -1,
  V3011A INT default -1,
  V3012 INT default -1,
  V3013 INT default -1,
  V3014 INT default -1,
  V4001 INT default -1,
  V4002 INT default -1,
  V4003 INT default -1,
  V4004 INT default -1,
  V4005 INT default -1,
  V4006A INT default -1,
  V4008 INT default -1,
  V40081 INT default -1,
  V40082 INT default -1,
  V40083 INT default -1,
  V4009 INT default -1,
  V4010 INT default -1,
  V4012 INT default -1,
  V40121 INT default -1,
  V4013 INT default -1,
  V40132A INT default -1,
  V4014 INT default -1,
  V4015 INT default -1,
  V40151 INT default -1,
  V401511 INT default -1,
  V401512 INT default -1,
  V4016 INT default -1,
  V40161 INT default -1,
  V40162 INT default -1,
  V40163 INT default -1,
  V4017 INT default -1,
  V40171 INT default -1,
  V401711 INT default -1,
  V4018 INT default -1,
  V40181 INT default -1,
  V40182 INT default -1,
  V40183 INT default -1,
  V4019 INT default -1,
  V4020 INT default -1,
  V4021 INT default -1,
  V4022 INT default -1,
  V4024 INT default -1,
  V4025 INT default -1,
  V4026 INT default -1,
  V4027 INT default -1,
  V4028 INT default -1,
  V4029 INT default -1,
  V4030 INT default -1,
  V4031 INT default -1,
  V4032 INT default -1,
  V4033 INT default -1,
  V40331 INT default -1,
  V403311 INT default -1,
  V403312 INT default -1,
  V40332 INT default -1,
  V403321 INT default -1,
  V403322 INT default -1,
  V40333 INT default -1,
  V403331 INT default -1,
  V4034 INT default -1,
  V40341 INT default -1,
  V403411 INT default -1,
  V403412 INT default -1,
  V40342 INT default -1,
  V403421 INT default -1,
  V403422 INT default -1,
  V4035 INT default -1,
  V4036 INT default -1,
  V4039 INT default -1,
  V4039C INT default -1,
  V4040 INT default -1,
  V40401 INT default -1,
  V40402 INT default -1,
  V40403 INT default -1,
  V4041 INT default -1,
  V4043 INT default -1,
  V40431 INT default -1,
  V4044 INT default -1,
  V4045 INT default -1,
  V4046 INT default -1,
  V4047 INT default -1,
  V4048 INT default -1,
  V4049 INT default -1,
  V4050 INT default -1,
  V40501 INT default -1,
  V405011 INT default -1,
  V405012 INT default -1,
  V40502 INT default -1,
  V405021 INT default -1,
  V405022 INT default -1,
  V40503 INT default -1,
  V405031 INT default -1,
  V4051 INT default -1,
  V40511 INT default -1,
  V405111 INT default -1,
  V405112 INT default -1,
  V40512 INT default -1,
  V405121 INT default -1,
  V405122 INT default -1,
  V4052 INT default -1,
  V4053 INT default -1,
  V4056 INT default -1,
  V4056C INT default -1,
  V4057 INT default -1,
  V4058 INT default -1,
  V40581 INT default -1,
  V405811 INT default -1,
  V405812 INT default -1,
  V40582 INT default -1,
  V405821 INT default -1,
  V405822 INT default -1,
  V40583 INT default -1,
  V405831 INT default -1,
  V40584 INT default -1,
  V4059 INT default -1,
  V40591 INT default -1,
  V405911 INT default -1,
  V405912 INT default -1,
  V40592 INT default -1,
  V405921 INT default -1,
  V405922 INT default -1,
  V4062 INT default -1,
  V4062C INT default -1,
  V4063A INT default -1,
  V4064A INT default -1,
  V4071 INT default -1,
  V4072A INT default -1,
  V4073 INT default -1,
  V4074A INT default -1,
  V4075A INT default -1,
  V4075A1 INT default -1,
  V4076 INT default -1,
  V40761 INT default -1,
  V40762 INT default -1,
  V40763 INT default -1,
  V4077 INT default -1,
  V4078A INT default -1,
  V4082 INT default -1,
  V4097 INT default -1,
  V5001A INT default -1,
  V5001A2 INT default -1,
  V5002A INT default -1,
  V5002A2 INT default -1,
  V5003A INT default -1,
  V5003A2 INT default -1,
  V5004A INT default -1,
  V5004A2 INT default -1,
  V5006A INT default -1,
  V5006A2 INT default -1,
  V5007A INT default -1,
  V5007A2 INT default -1,
  S01001 INT default -1,
  S01002 INT default -1,
  S01003 INT default -1,
  S01004 INT default -1,
  S01005 INT default -1,
  S01006 INT default -1,
  S01007 INT default -1,
  S01008 INT default -1,
  S01009 INT default -1,
  S01010 INT default -1,
  S01011 INT default -1,
  S01012 INT default -1,
  S01013 INT default -1,
  S01014 INT default -1,
  S010141 INT default -1,
  S010142 INT default -1,
  S01015 INT default -1,
  S01016 INT default -1,
  S010161 INT default -1,
  S010162 INT default -1,
  S010163 INT default -1,
  S010164 INT default -1,
  S01017 INT default -1,
  S01018 INT default -1,
  S01019 INT default -1,
  S01020 INT default -1,
  S01021 INT default -1,
  S01022 INT default -1,
  S01023 INT default -1,
  S01024 INT default -1,
  S01025 INT default -1,
  S01026 INT default -1,
  S01027 INT default -1,
  S01028 INT default -1,
  S01029 INT default -1,
  S01030 INT default -1,
  S010301 INT default -1,
  S010302 INT default -1,
  S010303 INT default -1,
  S010304 INT default -1,
  S010305 INT default -1,
  S01031 INT default -1,
  S010311 INT default -1,
  S010312 INT default -1,
  VD2002 INT default -1,
  VD2003 INT default -1,
  VD2004 INT default -1,
  VD3001 INT default -1,
  VD3002 INT default -1,
  VD4001 INT default -1,
  VD4002 INT default -1,
  VD4003 INT default -1,
  VD4004 INT default -1,
  VD4005 INT default -1,
  VD4007 INT default -1,
  VD4008 INT default -1,
  VD4009 INT default -1,
  VD4010 INT default -1,
  VD4011 INT default -1,
  VD4012 INT default -1,
  VD4013 INT default -1,
  VD4014 INT default -1,
  VD4015 INT default -1,
  VD4016 INT default -1,
  VD4017 INT default -1,
  VD4018 INT default -1,
  VD4019 INT default -1,
  VD4020 INT default -1,
  VD4022 INT default -1,
  VD4030 INT default -1,
  VD4031 INT default -1,
  VD4035 INT default -1,
  VD4036 INT default -1,
  VD4037 INT default -1,
  VD4047 INT default -1,
  VD4048 INT default -1,
  VD5001 INT default -1,
  VD5002 INT default -1,
  VD5003 INT default -1,
  VD5004 INT default -1,
  VD5005 INT default -1,
  VD5006 INT default -1,
  V4099 INT default -1,
  V4100 INT default -1,
  V4101 INT default -1,
  V4102 INT default -1,
  V4103 INT default -1,
  V4104 INT default -1,
  V4105 INT default -1,
  V4106 INT default -1,
  V4107 INT default -1,
  V4108 INT default -1,
  V4109 INT default -1,
  V4110 INT default -1,
  V4111 INT default -1,
  V41111 INT default -1,
  V41112 INT default -1,
  V41113 INT default -1,
  V41114 INT default -1,
  V41115 INT default -1,
  V41116 INT default -1,
  V41117 INT default -1,
  V4111A INT default -1,
  V4112 INT default -1,
  V4113 INT default -1,
  V4114 INT default -1,
  V4115 INT default -1,
  V4117A INT default -1,
  V4117A1 INT default -1,
  V4117A2 INT default -1,
  V4117A3 INT default -1,
  V4117A4 INT default -1,
  V4117A5 INT default -1,
  V4117A6 INT default -1,
  V4119 INT default -1,
  V4120 INT default -1,
  V41201 INT default -1,
  V41202 INT default -1,
  V41203 INT default -1,
  V41204 INT default -1,
  V41205 INT default -1,
  V41206 INT default -1,
  V41207 INT default -1,
  V41208 INT default -1,
  V4121A INT default -1,
  V4121B INT default -1,
  S06001 INT default -1,
  S06002 INT default -1,
  S06003 INT default -1,
  S06004 INT default -1,
  S06005 INT default -1,
  S06006 INT default -1,
  S060061 INT default -1,
  S06007 INT default -1,
  S06009 INT default -1,
  S060091 INT default -1,
  S06010   INT default -1,
  S06012 INT default -1,
  S060121 INT default -1,
  S0601212 INT default -1,
  S060122 INT default -1,
  S0601222 INT default -1,
  S060123 INT default -1,
  S06013 INT default -1,
  S06014 INT default -1,
  S06015 INT default -1,
  S06016 INT default -1,
  S06017 INT default -1,
  S06018 INT default -1,
  S06019 INT default -1,
  S06020 INT default -1,
  S06021 INT default -1,
  S06022 INT default -1,
  S06023 INT default -1,
  S06024 INT default -1,
  S06025 INT default -1,
  S06026 INT default -1,
  S060261 INT default -1,
  S060262 INT default -1,
  S060263 INT default -1,
  S060264 INT default -1,
  S060265 INT default -1,
  S060266 INT default -1,
  S06027 INT default -1,
  S06028 INT default -1,
  S060281 INT default -1,
  S060282 INT default -1,
  S060283 INT default -1,
  S060284 INT default -1,
  S060285 INT default -1,
  S060286 INT default -1,
  S060287 INT default -1,
  S060288 INT default -1,
  S06029 INT default -1,
  S06030 INT default -1,
  VD4039 INT default -1,
  VD4040 INT default -1,
  VD4041 INT default -1,
  VD4042 INT default -1,
  VD4043 INT default -1,
  VD4049 INT default -1,
  SD06001 INT default -1,
  SD06002 INT default -1,
  SD06003 INT default -1
);