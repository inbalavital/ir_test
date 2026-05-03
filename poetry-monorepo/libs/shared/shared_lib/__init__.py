import yaml
from jinja2 import Template


def render(tmpl, ctx):
    return Template(tmpl).render(**ctx)
