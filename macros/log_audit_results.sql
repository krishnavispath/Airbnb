{% macro log_audit_results(results) %}

    {% for res in results %}
        
        {% set model_name = res.node.name %}
        {% set status = res.status %}
        {% set execution_time = res.execution_time %}
        
        insert into {{ target.schema }}.audit_log
        (
            model_name,run_timestamp,status          
        )
        values
        (
            '{{ model_name }}',
            current_timestamp,
            '{{ status }}'
        );

    {% endfor %}

{% endmacro %}