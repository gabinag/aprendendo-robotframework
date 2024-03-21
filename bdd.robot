*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados do teste
${nome_da_musica}    Twenty One Pilots Stressed Out

#Variáveis de configuração
${URL}        https://www.youtube.com/
${browser}    chrome

#Elementos
${input_pesquisa}    //input[@id="search"]
${button_pesquisa}    //button[@id="search-icon-legacy"]
${primeiro}          (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${prova}             //tp-yt-paper-button[@id="label"]
           

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${browser}

Quando digito o nome da música
    Input Text    ${input_pesquisa}    ${nome_da_musica}

E clico no botão buscar
    Click Element    ${button_pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${primeiro}
    Click Element                    ${primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible    ${prova}    30
    Element Should Be Visible        ${prova}
    Sleep    30s
    Close Browser

*** Test Cases ***
Cenário 1: Executar vídeo no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado