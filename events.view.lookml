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

