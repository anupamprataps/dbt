
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(
    materialized='incremental',
    incremental_strategy='append',
    unique_key =["id"]
    ) }}

with source_data as (

    select 1 as id, 'Delhi' as venture_code
    union all
    select 2 as id, 'Kolkata' as venture_code
    union all
    select 3 as id, 'Chennai' as venture_code
    union all 
    select 4 as id, 'Mumbai' as venture_code

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
