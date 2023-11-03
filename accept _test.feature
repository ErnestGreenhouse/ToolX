Feature: Visualización y filtro de herramientas disponibles

  Scenario: Usuario busca herramientas disponibles
    Given el usuario está en la página principal de la aplicación
    When el usuario hace clic en la opción de búsqueda
    And el usuario ingresa un criterio de búsqueda
    And presiona el botón de búsqueda
    Then se muestran las herramientas disponibles que coinciden con el criterio de búsqueda

  Scenario: Usuario filtra herramientas disponibles
    Given el usuario está en la página principal de la aplicación
    When el usuario selecciona un filtro específico (por ejemplo, categoría o precio)
    And presiona el botón de filtro
    Then se muestran las herramientas disponibles que cumplen con el filtro seleccionado

Feature: Confirmación y Recordatorio

  Scenario: Usuario recibe una confirmación de reserva
    Given el usuario ha realizado una reserva de una herramienta
    When se procesa la reserva
    Then el usuario recibe una confirmación de reserva por correo electrónico

  Scenario: Usuario recibe un recordatorio de reserva
    Given el usuario ha realizado una reserva de una herramienta
    And la fecha de inicio de la reserva se acerca
    When se activa el recordatorio
    Then el usuario recibe un recordatorio por correo electrónico sobre la reserva

Feature: Feedback del Servicio

  Scenario: Usuario proporciona feedback después de usar una herramienta
    Given el usuario ha utilizado una herramienta del servicio
    When el usuario proporciona feedback sobre su experiencia
    Then el feedback se registra en el sistema
    And el usuario recibe una confirmación de que su feedback ha sido recibido

Feature: Crear perfil de usuario

  Scenario: Usuario crea un nuevo perfil
    Given el usuario no tiene un perfil en la aplicación
    When el usuario selecciona la opción de crear un perfil
    And completa el formulario de registro
    And presiona el botón de registro
    Then se crea un nuevo perfil de usuario en el sistema
    And el usuario recibe una confirmación de registro

Feature: Realizar pago del servicio

  Scenario: Usuario realiza un pago por herramientas alquiladas
    Given el usuario ha seleccionado herramientas para alquilar
    When el usuario procede a la página de pago
    And completa la información de pago
    And confirma el pago
    Then se procesa el pago con éxito
    And el usuario recibe una confirmación de pago
