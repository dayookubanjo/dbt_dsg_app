{{ config(
    materialized = 'table'
) }}

select user_ip, min(last_response_code) as last_response_code,
       max(last_query_date) as last_query_date, any_value(api_response) as api_response 
       from DEV_IP_FLOW.RAW_DATA.IP_FLOW_API_OUTPUT_DATA 
      group by user_ip