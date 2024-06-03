{% snapshot sample_model_6 %}

{{
    config(
      target_schema='sample',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at'
    )
}}


select * from sample.sample_model_5
{% endsnapshot %}