# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import elasticsearch with context %}

elasticsearch-service-clean-service-dead:
  service.dead:
    - name: {{ elasticsearch.service.name }}
    - enable: False
