#STEPS DEFINITIONS

Dado ('que acesso a tela de contato') do 
    @contato_page = ContatoPage.new
    @conato_page.load
end


Quando ('envio o formulário de contato corretamente') do 
    @subject_heading = "#{DATA['contato_sucesso']['subject_heading']}"
    @email = "#{DATA['contato_sucesso']['email']}" #IMPORTAR A MASSA DE DADOS
    @order = "#{DATA['contato_sucesso']['order']}"
    @file  = "#{DATA['contato_sucesso']['file']}"
    @message  = "#{DATA['contato_sucesso']['message']}"
   
    @contato_page.preencher_formulario_contato(@subject_heading,@email,@order,@file)
end

Então ('devo visualizar uma mensagem de envio feito com sucesso') do
    @mensagem =  "#{DATA['contato_sucesso']['mensagem']}"
    expect(page).to have_content @mensagem
end
