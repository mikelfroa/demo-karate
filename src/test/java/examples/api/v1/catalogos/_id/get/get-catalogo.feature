# language: es
@api @v1 @catalogos @get @get-catalogos
Característica: Obtener todos los catalogos
  Como usuario
  Quiero obtener todos los catalogos
  Para conocer los catalogos que hay

  Antecedentes:
    * configure ssl = true
    * url urlTareas

  Escenario: : Obtener todos los catalogos de ramos
    Dado path '/catalogos/ramos'
    Cuando method get
    Entonces status 200
    Y  match $ contains { key: #notnull, value: #notnull  }
    Y match response.[*].value contains "ASISTENCIA"

  Escenario: : Obtener todos los catalogos de empresas
    Dado path '/catalogos/empresas'
    Cuando method get
    Entonces status 200
    Y  match $ contains { key: #notnull, value: #notnull  }
    Y match response.[*].value contains "AUTOCLUB MUTUA MADRILEÑA"