{% test minimum_row_count(model, min_rows) %}
{{ config(
    severity = 'warn',
    tags = ['minimum_row_count']
)}}

    select *
    from {{ model }}
    where (select count(*) from {{ model }}) < {{ min_rows }}
{% endtest %}