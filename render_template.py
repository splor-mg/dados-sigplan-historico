from jinja2 import Environment, FileSystemLoader

def render_schema_planejamento(package_name, resource_name, period):
    """
    Render table schema of planejamento datasets

    >>> render_schema_planejamento("planejamento", "acoes_planejamento", 2023)
    """
    env = Environment(loader=FileSystemLoader("templates"), keep_trailing_newline = True)
    template = env.get_template(f"{resource_name}.yaml.j2")
    result = template.render(period = period)
    with open(f"datapackages/{package_name}{period}/schemas/{resource_name}.yaml", 'w', encoding='utf-8') as fs:
        fs.write(result)

def render_schema_monitoramento(package_name, resource_name, period, months):
    """
    Render table schema of monitoramento datasets

    >>> render_schema_monitoramento("monitoramento", "acoes_monitoramento", 2020, months = ["Jan", "Fev", "Mar"])
    """
    env = Environment(loader=FileSystemLoader("templates"),
                      trim_blocks=True,
                      lstrip_blocks=True,
                      keep_trailing_newline=True)
    template = env.get_template(f"{resource_name}.yaml.j2")
    result = template.render(period = period, months = months)
    with open(f"datapackages/{package_name}{period}/schemas/{resource_name}.yaml", 'w', encoding='utf-8') as fs:
        fs.write(result)

render_schema_monitoramento("monitoramento", 
                            "acoes_monitoramento", 2020, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])

render_schema_monitoramento("monitoramento", 
                            "localizadores_monitoramento_todos", 2020, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])


render_schema_monitoramento("monitoramento", 
                            "acoes_monitoramento", 2021, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])

render_schema_monitoramento("monitoramento", 
                            "localizadores_monitoramento_todos", 2021, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])


render_schema_monitoramento("monitoramento", 
                            "acoes_monitoramento", 2022, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])

render_schema_monitoramento("monitoramento", 
                            "localizadores_monitoramento_todos", 2022, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"])


render_schema_monitoramento("monitoramento", 
                            "acoes_monitoramento", 2023, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun"])

render_schema_monitoramento("monitoramento", 
                            "localizadores_monitoramento_todos", 2023, 
                            months = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun"])
