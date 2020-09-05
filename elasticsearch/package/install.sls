# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import elasticsearch with context %}

elasticsearch-package-install-pkg-installed:
  pkg.installed:
    - name: {{ elasticsearch.pkg.name }}
