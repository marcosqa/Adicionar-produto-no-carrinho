***Settings***
Resource            base.robot
Resource            elements.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão


***Test Cases***
Login com sucesso
    Go To                     ${URL}/index.php?controller=authentication
    Input Text                css:input[id=email]                ${EMAIL}         
    Input Text                css:input[name=passwd]             ${PASSWORD}       
    Click Element             css:button[name=SubmitLogin]       

    Page Should Contain       Welcome to your account. Here you can manage all of your personal information and orders.



#Digitar o nome do produto "Printed Dress" no campo de pesquisa
    Input Text                name=search_query        ${PRODUTO}

#Clicar no botão pesquisar
    Click Element            name=submit_search  

#Conferir se o produto "${PRODUTO}"foi listado no site
    Wait Until Element Is Visible       css=#center_column > h1
    Wait Until Element Is Visible       css=#center_column > h1 > span.heading-counter
    
#Passar o mouse sobre a imagem   
    Mouse Over        xpath=//*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]

#Clicar no botão Adicionar no carrinho    
    Click Element     xpath=//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
    
#Verificar a mensagem "Que o produto foi adicionado no carrinho"   
    Page Should Contain       Product successfully added to your shopping cart

    


