# language: en
Feature: Search courses by Teacher

    Background: Access Home Page
        Given i am on the home page
    
        Scenario: Search course by Teacher's List
            When i click on By Teacher item on the navigation bar
            Then i must visualize the courses by teacher's page
            And when i click on teacher "Ena Loiola" details button
            Then i must visualize the course list page from "Ena Loiola"
            When i click on "Inglês p/ PM-MA (Oficial) Com Videoaulas - 2020" course
            Then i must visualize the course page
            And i can compare the list price with the installment price

        
        Scenario: Search course by Filter
            When i click on By Teacher item on the navigation bar
            Then i must visualize the courses by teacher's page
            When when i type "Ena Loiola" on the filter input
            And when i click on teacher "Ena Loiola" details button
            Then i must visualize the course list page from "Ena Loiola"
            When i click on "Língua Inglesa p/ PM-SP (Oficial) Com Videoaulas - FGV" course
            Then i must visualize the course page
            And i can compare the list price with the installment price


        Scenario: Validate the amount of courses by Tacher's List
            When i click on By Teacher item on the navigation bar
            Then i must visualize the courses by teacher's page
            And when i click on teacher "Ena Loiola" details button
            Then i must visualize the course list page from "Ena Loiola"
            And i can validate if the amount of courses describe on header's page matches with amount of course listed


        Scenario: Validate Course Page Details
            When i click on By Teacher item on the navigation bar
            Then i must visualize the courses by teacher's page
            And when i click on teacher "Ena Loiola" details button
            Then i must visualize the course list page from "Ena Loiola"
            When i click on "Inglês p/ MDIC (Analista de Comércio Exterior) Com Videoaulas - 2019" course
            Then i must visualize the course page details


        Scenario: Validate Cart Page
            When i click on By Teacher item on the navigation bar
            Then i must visualize the courses by teacher's page
            And when i click on teacher "Ena Loiola" details button
            Then i must visualize the course list page from "Ena Loiola"
            When i click on "Inglês p/ PPGG-DF (Gestor em Políticas Públicas) Com Videoaulas - 2020" course
            Then i must visualize the course page details
            When i click on Buy Now button
            Then i need to sign in with my user data:
                | email    | lucas@estrategia.com.br |
                | password | 123456Aa                |            
            And click on login button
            Then i must visualize de cart page
            


