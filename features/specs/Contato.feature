#encoding:utf-8
#language: pt

#FEATURE
@entrar_em_contato
Funcionalidade: Entrar em contato 
    Como um usuário 
    Desejo enviar um formulário de contato
    Para que eu possa entrar em contato com a empresa

    @entrar_em_contato_sucesso
    Cenário: Enviar um formulário com sucesso 
        Dado que acesso a tela de contato
        Quando envio o formulário de contato corretamente 
        Então devo visualizar uma mensagem de envio feito com sucesso

        