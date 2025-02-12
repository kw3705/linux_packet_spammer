#!/bin/bash
echo "Pinging all hosts..."
{% for ip in ip_list %}
echo "Pinging {{ ip }}..."
ping -c 4 {{ ip }} && echo "Success: {{ ip }}" || echo "Failed: {{ ip }}"
{% endfor %}
