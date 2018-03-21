# language: es
@api @v1 @catalogos @get @get-catalogos
Característica: Obtener todos los catalogos
  Como usuario
  Quiero obtener todos los catalogos
  Para conocer los catalogos que hay

  Escenario: : Obtener todos los catalogos
    * configure ssl = true
    * url urlTareas
    Dado path '/catalogos'
    Cuando method get
    Entonces status 200
