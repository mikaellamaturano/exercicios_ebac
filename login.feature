            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu faça login na plataforma EBAC-SHOP

            Cenário: login com email inválido/inexistente
            Quando eu digitar o email "jftelxx@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "usuario inexistente"

            Cenário: Login com senha incorreta
            Quando eu digitar o email "joaosilva@ebac.com.br"
            E a senha "senha123"
            Então deve exibir uma mensagem de alerta: "senha incorreta"

            Cenário: Bloquear login após 5 tentativas consecutivas inválidas.
            Quando eu digitar o email "joaosilva@ebac.com.br" por 5 vezes consecutivas
            E a senha "senha123"
            Então deve exibir uma mensagem de alerta: "usuário bloqueado"

            Cenário: login com email e senha corretos
            Quando eu digitar o email "joaosilva@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas: "Olá João!"

            Cenário: Exigir campos obrigatórios de e-mail e senha preenchidos.
            Quando eu entrar na página de login
            E digitar o email e senha
            Então deve estar visível o preenchimento obrigatório de email e senha.

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> de sucesso

            Exemplos:
            | usuários | senha | mensagem |    
            |"joaosilva@ebac.com.br"| "senha@123" | "Olá :João!"          |
            |"jftelxx@ebac.com.br"  | "senha@123" | "Usuário inexistente" |
            |"joaosilva@ebac.com.br"| "senha123"  |"Senha incorreta"      |
            |"jftelxx@ebac.com.br"  | "senha@123" | "Usuário bloqueado"   |