** Settings **
Library  SeleniumLibrary

** Variables **
${input_first_name}       id:firstname
${input_last_name}        id:surname
${input_age}              id:age
${option_country}         //option[contains(text(),"Brazil")]
${input_submit}           //input[@type="submit"]

** Keywords **
Abrir navegador e acessar o site
    Open Browser  https://testpages.eviltester.com/styled/validation/input-validation.html  chrome

Preencher campos
    Input Text       ${input_first_name}       Gabriela
    Input Text       ${input_last_name}        Testando da Silva 
    Input Text       ${input_age}              21
    Click Element    ${option_country} 
  
Clicar em submit
    Click Element    ${input_submit} 

Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Preencher formulário
    Abrir navegador e acessar o site
    Preencher campos
    Clicar em submit
    Fechar navegador