 ActiveSupport::Inflector.inflections do |inflect|
   inflect.plural /^(ox)$/i, '\1en'
   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'pais', 'paises'
   inflect.irregular 'instructor', 'instructores'
   inflect.irregular 'aprendiz', 'aprendices'
   inflect.irregular 'programas_responsable', 'programas_responsables'
   inflect.irregular 'final', 'finales'
   inflect.uncountable %w( fish sheep )
 end