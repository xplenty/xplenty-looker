- view: events
  sql_table_name: public.events
  fields:

  - dimension: action
    sql: ${TABLE}.action

  - dimension_group: date
    type: time
    timeframes: [date, week, month, year, dow]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: edge_location
    sql: ${TABLE}.edge_location

  - dimension: keywords
    sql: ${TABLE}.keywords

  - dimension: language
    sql: ${TABLE}.language

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

  - dimension: product_name
    sql: ${TABLE}.product_name

  - dimension: time
    sql: ${TABLE}.time

  - dimension_group: ts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ts

  - dimension: uri
    sql: ${TABLE}.uri

  - dimension: user_agent
    sql: ${TABLE}.user_agent

  - dimension: user_browser_family
    sql: ${TABLE}.user_browser_family

  - dimension: user_browser_fullname
    sql: ${TABLE}.user_browser_fullname

  - dimension: user_city
    sql: ${TABLE}.user_city

  - dimension: user_country
    sql: ${TABLE}.user_country
    
  - dimension: country                                       
    sql: |
      CASE
        WHEN ${TABLE}.user_country = 'AF' THEN 'AFG'
        WHEN ${TABLE}.user_country = 'AX' THEN 'ALA'
        WHEN ${TABLE}.user_country = 'AL' THEN 'ALB'
        WHEN ${TABLE}.user_country = 'DZ' THEN 'DZA'
        WHEN ${TABLE}.user_country = 'AS' THEN 'ASM'
        WHEN ${TABLE}.user_country = 'AD' THEN 'AND'
        WHEN ${TABLE}.user_country = 'AO' THEN 'AGO'
        WHEN ${TABLE}.user_country = 'AI' THEN 'AIA'
        WHEN ${TABLE}.user_country = 'AQ' THEN 'ATA'
        WHEN ${TABLE}.user_country = 'AG' THEN 'ATG'
        WHEN ${TABLE}.user_country = 'AR' THEN 'ARG'
        WHEN ${TABLE}.user_country = 'AM' THEN 'ARM'
        WHEN ${TABLE}.user_country = 'AW' THEN 'ABW'
        WHEN ${TABLE}.user_country = 'AU' THEN 'AUS'
        WHEN ${TABLE}.user_country = 'AT' THEN 'AUT'
        WHEN ${TABLE}.user_country = 'AZ' THEN 'AZE'
        WHEN ${TABLE}.user_country = 'BS' THEN 'BHS'
        WHEN ${TABLE}.user_country = 'BH' THEN 'BHR'
        WHEN ${TABLE}.user_country = 'BD' THEN 'BGD'
        WHEN ${TABLE}.user_country = 'BB' THEN 'BRB'
        WHEN ${TABLE}.user_country = 'BY' THEN 'BLR'
        WHEN ${TABLE}.user_country = 'BE' THEN 'BEL'
        WHEN ${TABLE}.user_country = 'BZ' THEN 'BLZ'
        WHEN ${TABLE}.user_country = 'BJ' THEN 'BEN'
        WHEN ${TABLE}.user_country = 'BM' THEN 'BMU'
        WHEN ${TABLE}.user_country = 'BT' THEN 'BTN'
        WHEN ${TABLE}.user_country = 'BO' THEN 'BOL'
        WHEN ${TABLE}.user_country = 'BQ' THEN 'BES'
        WHEN ${TABLE}.user_country = 'BA' THEN 'BIH'
        WHEN ${TABLE}.user_country = 'BW' THEN 'BWA'
        WHEN ${TABLE}.user_country = 'BV' THEN 'BVT'
        WHEN ${TABLE}.user_country = 'BR' THEN 'BRA'
        WHEN ${TABLE}.user_country = 'IO' THEN 'IOT'
        WHEN ${TABLE}.user_country = 'BN' THEN 'BRN'
        WHEN ${TABLE}.user_country = 'BG' THEN 'BGR'
        WHEN ${TABLE}.user_country = 'BF' THEN 'BFA'
        WHEN ${TABLE}.user_country = 'BI' THEN 'BDI'
        WHEN ${TABLE}.user_country = 'KH' THEN 'KHM'
        WHEN ${TABLE}.user_country = 'CM' THEN 'CMR'
        WHEN ${TABLE}.user_country = 'CA' THEN 'CAN'
        WHEN ${TABLE}.user_country = 'CV' THEN 'CPV'
        WHEN ${TABLE}.user_country = 'KY' THEN 'CYM'
        WHEN ${TABLE}.user_country = 'CF' THEN 'CAF'
        WHEN ${TABLE}.user_country = 'TD' THEN 'TCD'
        WHEN ${TABLE}.user_country = 'CL' THEN 'CHL'
        WHEN ${TABLE}.user_country = 'CN' THEN 'CHN'
        WHEN ${TABLE}.user_country = 'CX' THEN 'CXR'
        WHEN ${TABLE}.user_country = 'CC' THEN 'CCK'
        WHEN ${TABLE}.user_country = 'CO' THEN 'COL'
        WHEN ${TABLE}.user_country = 'KM' THEN 'COM'
        WHEN ${TABLE}.user_country = 'CG' THEN 'COG'
        WHEN ${TABLE}.user_country = 'CD' THEN 'COD'
        WHEN ${TABLE}.user_country = 'CK' THEN 'COK'
        WHEN ${TABLE}.user_country = 'CR' THEN 'CRI'
        WHEN ${TABLE}.user_country = 'CI' THEN 'CIV'
        WHEN ${TABLE}.user_country = 'HR' THEN 'HRV'
        WHEN ${TABLE}.user_country = 'CU' THEN 'CUB'
        WHEN ${TABLE}.user_country = 'CW' THEN 'CUW'
        WHEN ${TABLE}.user_country = 'CY' THEN 'CYP'
        WHEN ${TABLE}.user_country = 'CZ' THEN 'CZE'
        WHEN ${TABLE}.user_country = 'DK' THEN 'DNK'
        WHEN ${TABLE}.user_country = 'DJ' THEN 'DJI'
        WHEN ${TABLE}.user_country = 'DM' THEN 'DMA'
        WHEN ${TABLE}.user_country = 'DO' THEN 'DOM'
        WHEN ${TABLE}.user_country = 'EC' THEN 'ECU'
        WHEN ${TABLE}.user_country = 'EG' THEN 'EGY'
        WHEN ${TABLE}.user_country = 'SV' THEN 'SLV'
        WHEN ${TABLE}.user_country = 'GQ' THEN 'GNQ'
        WHEN ${TABLE}.user_country = 'ER' THEN 'ERI'
        WHEN ${TABLE}.user_country = 'EE' THEN 'EST'
        WHEN ${TABLE}.user_country = 'ET' THEN 'ETH'
        WHEN ${TABLE}.user_country = 'FK' THEN 'FLK'
        WHEN ${TABLE}.user_country = 'FO' THEN 'FRO'
        WHEN ${TABLE}.user_country = 'FJ' THEN 'FJI'
        WHEN ${TABLE}.user_country = 'FI' THEN 'FIN'
        WHEN ${TABLE}.user_country = 'FR' THEN 'FRA'
        WHEN ${TABLE}.user_country = 'GF' THEN 'GUF'
        WHEN ${TABLE}.user_country = 'PF' THEN 'PYF'
        WHEN ${TABLE}.user_country = 'TF' THEN 'ATF'
        WHEN ${TABLE}.user_country = 'GA' THEN 'GAB'
        WHEN ${TABLE}.user_country = 'GM' THEN 'GMB'
        WHEN ${TABLE}.user_country = 'GE' THEN 'GEO'
        WHEN ${TABLE}.user_country = 'DE' THEN 'DEU'
        WHEN ${TABLE}.user_country = 'GH' THEN 'GHA'
        WHEN ${TABLE}.user_country = 'GI' THEN 'GIB'
        WHEN ${TABLE}.user_country = 'GR' THEN 'GRC'
        WHEN ${TABLE}.user_country = 'GL' THEN 'GRL'
        WHEN ${TABLE}.user_country = 'GD' THEN 'GRD'
        WHEN ${TABLE}.user_country = 'GP' THEN 'GLP'
        WHEN ${TABLE}.user_country = 'GU' THEN 'GUM'
        WHEN ${TABLE}.user_country = 'GT' THEN 'GTM'
        WHEN ${TABLE}.user_country = 'GG' THEN 'GGY'
        WHEN ${TABLE}.user_country = 'GN' THEN 'GIN'
        WHEN ${TABLE}.user_country = 'GW' THEN 'GNB'
        WHEN ${TABLE}.user_country = 'GY' THEN 'GUY'
        WHEN ${TABLE}.user_country = 'HT' THEN 'HTI'
        WHEN ${TABLE}.user_country = 'HM' THEN 'HMD'
        WHEN ${TABLE}.user_country = 'VA' THEN 'VAT'
        WHEN ${TABLE}.user_country = 'HN' THEN 'HND'
        WHEN ${TABLE}.user_country = 'HK' THEN 'HKG'
        WHEN ${TABLE}.user_country = 'HU' THEN 'HUN'
        WHEN ${TABLE}.user_country = 'IS' THEN 'ISL'
        WHEN ${TABLE}.user_country = 'IN' THEN 'IND'
        WHEN ${TABLE}.user_country = 'ID' THEN 'IDN'
        WHEN ${TABLE}.user_country = 'IR' THEN 'IRN'
        WHEN ${TABLE}.user_country = 'IQ' THEN 'IRQ'
        WHEN ${TABLE}.user_country = 'IE' THEN 'IRL'
        WHEN ${TABLE}.user_country = 'IM' THEN 'IMN'
        WHEN ${TABLE}.user_country = 'IL' THEN 'ISR'
        WHEN ${TABLE}.user_country = 'IT' THEN 'ITA'
        WHEN ${TABLE}.user_country = 'JM' THEN 'JAM'
        WHEN ${TABLE}.user_country = 'JP' THEN 'JPN'
        WHEN ${TABLE}.user_country = 'JE' THEN 'JEY'
        WHEN ${TABLE}.user_country = 'JO' THEN 'JOR'
        WHEN ${TABLE}.user_country = 'KZ' THEN 'KAZ'
        WHEN ${TABLE}.user_country = 'KE' THEN 'KEN'
        WHEN ${TABLE}.user_country = 'KI' THEN 'KIR'
        WHEN ${TABLE}.user_country = 'KP' THEN 'PRK'
        WHEN ${TABLE}.user_country = 'KR' THEN 'KOR'
        WHEN ${TABLE}.user_country = 'KW' THEN 'KWT'
        WHEN ${TABLE}.user_country = 'KG' THEN 'KGZ'
        WHEN ${TABLE}.user_country = 'LA' THEN 'LAO'
        WHEN ${TABLE}.user_country = 'LV' THEN 'LVA'
        WHEN ${TABLE}.user_country = 'LB' THEN 'LBN'
        WHEN ${TABLE}.user_country = 'LS' THEN 'LSO'
        WHEN ${TABLE}.user_country = 'LR' THEN 'LBR'
        WHEN ${TABLE}.user_country = 'LY' THEN 'LBY'
        WHEN ${TABLE}.user_country = 'LI' THEN 'LIE'
        WHEN ${TABLE}.user_country = 'LT' THEN 'LTU'
        WHEN ${TABLE}.user_country = 'LU' THEN 'LUX'
        WHEN ${TABLE}.user_country = 'MO' THEN 'MAC'
        WHEN ${TABLE}.user_country = 'MK' THEN 'MKD'
        WHEN ${TABLE}.user_country = 'MG' THEN 'MDG'
        WHEN ${TABLE}.user_country = 'MW' THEN 'MWI'
        WHEN ${TABLE}.user_country = 'MY' THEN 'MYS'
        WHEN ${TABLE}.user_country = 'MV' THEN 'MDV'
        WHEN ${TABLE}.user_country = 'ML' THEN 'MLI'
        WHEN ${TABLE}.user_country = 'MT' THEN 'MLT'
        WHEN ${TABLE}.user_country = 'MH' THEN 'MHL'
        WHEN ${TABLE}.user_country = 'MQ' THEN 'MTQ'
        WHEN ${TABLE}.user_country = 'MR' THEN 'MRT'
        WHEN ${TABLE}.user_country = 'MU' THEN 'MUS'
        WHEN ${TABLE}.user_country = 'YT' THEN 'MYT'
        WHEN ${TABLE}.user_country = 'MX' THEN 'MEX'
        WHEN ${TABLE}.user_country = 'FM' THEN 'FSM'
        WHEN ${TABLE}.user_country = 'MD' THEN 'MDA'
        WHEN ${TABLE}.user_country = 'MC' THEN 'MCO'
        WHEN ${TABLE}.user_country = 'MN' THEN 'MNG'
        WHEN ${TABLE}.user_country = 'ME' THEN 'MNE'
        WHEN ${TABLE}.user_country = 'MS' THEN 'MSR'
        WHEN ${TABLE}.user_country = 'MA' THEN 'MAR'
        WHEN ${TABLE}.user_country = 'MZ' THEN 'MOZ'
        WHEN ${TABLE}.user_country = 'MM' THEN 'MMR'
        WHEN ${TABLE}.user_country = 'NA' THEN 'NAM'
        WHEN ${TABLE}.user_country = 'NR' THEN 'NRU'
        WHEN ${TABLE}.user_country = 'NP' THEN 'NPL'
        WHEN ${TABLE}.user_country = 'NL' THEN 'NLD'
        WHEN ${TABLE}.user_country = 'NC' THEN 'NCL'
        WHEN ${TABLE}.user_country = 'NZ' THEN 'NZL'
        WHEN ${TABLE}.user_country = 'NI' THEN 'NIC'
        WHEN ${TABLE}.user_country = 'NE' THEN 'NER'
        WHEN ${TABLE}.user_country = 'NG' THEN 'NGA'
        WHEN ${TABLE}.user_country = 'NU' THEN 'NIU'
        WHEN ${TABLE}.user_country = 'NF' THEN 'NFK'
        WHEN ${TABLE}.user_country = 'MP' THEN 'MNP'
        WHEN ${TABLE}.user_country = 'NO' THEN 'NOR'
        WHEN ${TABLE}.user_country = 'OM' THEN 'OMN'
        WHEN ${TABLE}.user_country = 'PK' THEN 'PAK'
        WHEN ${TABLE}.user_country = 'PW' THEN 'PLW'
        WHEN ${TABLE}.user_country = 'PS' THEN 'PSE'
        WHEN ${TABLE}.user_country = 'PA' THEN 'PAN'
        WHEN ${TABLE}.user_country = 'PG' THEN 'PNG'
        WHEN ${TABLE}.user_country = 'PY' THEN 'PRY'
        WHEN ${TABLE}.user_country = 'PE' THEN 'PER'
        WHEN ${TABLE}.user_country = 'PH' THEN 'PHL'
        WHEN ${TABLE}.user_country = 'PN' THEN 'PCN'
        WHEN ${TABLE}.user_country = 'PL' THEN 'POL'
        WHEN ${TABLE}.user_country = 'PT' THEN 'PRT'
        WHEN ${TABLE}.user_country = 'PR' THEN 'PRI'
        WHEN ${TABLE}.user_country = 'QA' THEN 'QAT'
        WHEN ${TABLE}.user_country = 'RE' THEN 'REU'
        WHEN ${TABLE}.user_country = 'RO' THEN 'ROU'
        WHEN ${TABLE}.user_country = 'RU' THEN 'RUS'
        WHEN ${TABLE}.user_country = 'RW' THEN 'RWA'
        WHEN ${TABLE}.user_country = 'BL' THEN 'BLM'
        WHEN ${TABLE}.user_country = 'SH' THEN 'SHN'
        WHEN ${TABLE}.user_country = 'KN' THEN 'KNA'
        WHEN ${TABLE}.user_country = 'LC' THEN 'LCA'
        WHEN ${TABLE}.user_country = 'MF' THEN 'MAF'
        WHEN ${TABLE}.user_country = 'PM' THEN 'SPM'
        WHEN ${TABLE}.user_country = 'VC' THEN 'VCT'
        WHEN ${TABLE}.user_country = 'WS' THEN 'WSM'
        WHEN ${TABLE}.user_country = 'SM' THEN 'SMR'
        WHEN ${TABLE}.user_country = 'ST' THEN 'STP'
        WHEN ${TABLE}.user_country = 'SA' THEN 'SAU'
        WHEN ${TABLE}.user_country = 'SN' THEN 'SEN'
        WHEN ${TABLE}.user_country = 'RS' THEN 'SRB'
        WHEN ${TABLE}.user_country = 'SC' THEN 'SYC'
        WHEN ${TABLE}.user_country = 'SL' THEN 'SLE'
        WHEN ${TABLE}.user_country = 'SG' THEN 'SGP'
        WHEN ${TABLE}.user_country = 'SX' THEN 'SXM'
        WHEN ${TABLE}.user_country = 'SK' THEN 'SVK'
        WHEN ${TABLE}.user_country = 'SI' THEN 'SVN'
        WHEN ${TABLE}.user_country = 'SB' THEN 'SLB'
        WHEN ${TABLE}.user_country = 'SO' THEN 'SOM'
        WHEN ${TABLE}.user_country = 'ZA' THEN 'ZAF'
        WHEN ${TABLE}.user_country = 'GS' THEN 'SGS'
        WHEN ${TABLE}.user_country = 'SS' THEN 'SSD'
        WHEN ${TABLE}.user_country = 'ES' THEN 'ESP'
        WHEN ${TABLE}.user_country = 'LK' THEN 'LKA'
        WHEN ${TABLE}.user_country = 'SD' THEN 'SDN'
        WHEN ${TABLE}.user_country = 'SR' THEN 'SUR'
        WHEN ${TABLE}.user_country = 'SJ' THEN 'SJM'
        WHEN ${TABLE}.user_country = 'SZ' THEN 'SWZ'
        WHEN ${TABLE}.user_country = 'SE' THEN 'SWE'
        WHEN ${TABLE}.user_country = 'CH' THEN 'CHE'
        WHEN ${TABLE}.user_country = 'SY' THEN 'SYR'
        WHEN ${TABLE}.user_country = 'TW' THEN 'TWN'
        WHEN ${TABLE}.user_country = 'TJ' THEN 'TJK'
        WHEN ${TABLE}.user_country = 'TZ' THEN 'TZA'
        WHEN ${TABLE}.user_country = 'TH' THEN 'THA'
        WHEN ${TABLE}.user_country = 'TL' THEN 'TLS'
        WHEN ${TABLE}.user_country = 'TG' THEN 'TGO'
        WHEN ${TABLE}.user_country = 'TK' THEN 'TKL'
        WHEN ${TABLE}.user_country = 'TO' THEN 'TON'
        WHEN ${TABLE}.user_country = 'TT' THEN 'TTO'
        WHEN ${TABLE}.user_country = 'TN' THEN 'TUN'
        WHEN ${TABLE}.user_country = 'TR' THEN 'TUR'
        WHEN ${TABLE}.user_country = 'TM' THEN 'TKM'
        WHEN ${TABLE}.user_country = 'TC' THEN 'TCA'
        WHEN ${TABLE}.user_country = 'TV' THEN 'TUV'
        WHEN ${TABLE}.user_country = 'UG' THEN 'UGA'
        WHEN ${TABLE}.user_country = 'UA' THEN 'UKR'
        WHEN ${TABLE}.user_country = 'AE' THEN 'ARE'
        WHEN ${TABLE}.user_country = 'GB' THEN 'GBR'
        WHEN ${TABLE}.user_country = 'US' THEN 'USA'
        WHEN ${TABLE}.user_country = 'UM' THEN 'UMI'
        WHEN ${TABLE}.user_country = 'UY' THEN 'URY'
        WHEN ${TABLE}.user_country = 'UZ' THEN 'UZB'
        WHEN ${TABLE}.user_country = 'VU' THEN 'VUT'
        WHEN ${TABLE}.user_country = 'VE' THEN 'VEN'
        WHEN ${TABLE}.user_country = 'VN' THEN 'VNM'
        WHEN ${TABLE}.user_country = 'VG' THEN 'VGB'
        WHEN ${TABLE}.user_country = 'VI' THEN 'VIR'
        WHEN ${TABLE}.user_country = 'WF' THEN 'WLF'
        WHEN ${TABLE}.user_country = 'EH' THEN 'ESH'
        WHEN ${TABLE}.user_country = 'YE' THEN 'YEM'
        WHEN ${TABLE}.user_country = 'ZM' THEN 'ZMB'
        WHEN ${TABLE}.user_country = 'ZW' THEN 'ZWE'
      ELSE NULL
      END  

  - dimension: user_ip
    sql: ${TABLE}.user_ip

  - dimension: user_os_family
    sql: ${TABLE}.user_os_family

  - dimension: user_os_fullname
    sql: ${TABLE}.user_os_fullname

  - dimension: user_platform
    sql: ${TABLE}.user_platform

  - dimension: user_region
    sql: ${TABLE}.user_region

  - measure: count
    type: count
    drill_fields: [user_os_fullname, user_browser_fullname, product_name]
    
  - measure: distinct_ip
    type: count_distinct
    sql: ${user_ip}

