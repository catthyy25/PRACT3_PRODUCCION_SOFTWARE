Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Discoteca
    And añado un gasto de 10 euros llamado Disfraz de Carnaval
    And añado un gasto de 10 euros llamado Gasolina
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Desayuno
    And añado un gasto de 30 euros llamado Taller
    And añado un gasto de 30 euros llamado Actividad Extraescolar
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 20, 50 euros y elimino el primer gasto la suma son 70 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Camiseta
    And añado un gasto de 20 euros llamado Almuerzo Restaurante
    And añado un gasto de 50 euros llamado Compra
    And elimino el gasto con id 1
    Then el total de dinero gastado debe ser 70 euros

  Scenario: Crear tres gastos de 5, 1, 2 euros y elimino el segundo gasto la suma son 7 euros
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Botella de Agua
    And añado un gasto de 1 euros llamado Caramelo
    And añado un gasto de 2 euros llamado Refresco
    And elimino el gasto con id 2
    Then el total de dinero gastado debe ser 7 euros

  Scenario: Crear tres gastos de 5, 10, 40 euros y elimino el primer gasto la suma son 50 euros
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Pulsera
    And añado un gasto de 10 euros llamado Mc Donnald
    And añado un gasto de 40 euros llamado Regalo
    And elimino el gasto con id 1
    Then el total de dinero gastado debe ser 50 euros
