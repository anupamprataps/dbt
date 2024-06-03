
-- Use the `ref` function to select from other models

select *
from {{ ref('sample_model_1') }}
where country='india'
