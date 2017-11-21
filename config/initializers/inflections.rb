# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections(:en) do |inflect|

   inflect.irregular 'malla', 'mallas'
   inflect.irregular 'producto', 'productos'
   inflect.irregular 'tipo_de_unidad', 'tipo_de_unidades'
   inflect.irregular 'cantidad', 'cantidades'
   inflect.irregular 'num_malla', 'num_mallas'
   inflect.irregular 'tinta', 'tintas'
   inflect.irregular 'formula_tinta', 'formula_tintas'
   inflect.irregular 'tinta_base', 'tintas_base'
   inflect.irregular 'descripcion', 'descripciones'
   inflect.irregular 'linea_uv', 'lineas_uv'
   inflect.irregular 'caracteristica', 'caracteristicas'
   inflect.irregular 'descripcion', 'descripciones'
   inflect.irregular 'pantone', 'pantones'
   inflect.irregular 'descripcion', 'descripciones'
   inflect.irregular 'mezcla_total', 'mezclas_totales'
   inflect.irregular 'base_tinta', 'base_tintas'
   inflect.irregular 'tipo_de_linea', 'tipos_de_lineas'
   inflect.irregular 'descripcion_linea', 'descripciones_lineas'
   inflect.irregular 'codigo', 'codigos'
   inflect.irregular 'estado', 'estados'


end
