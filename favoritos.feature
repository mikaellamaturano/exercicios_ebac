            #language: pt

            Funcionalidade: adicionar produtos a lista de desejos

            Como cliente da EBAC-SHOP
            Quero favoritar os itens que eu gosto
            Para efetuar a compra futuramente

            Contexto:
            Dado que eu acesse a EBAC-SHOP

            Cenário: Permitir favoritar apenas usuários autenticados
            Quando eu favoritar um produto
            E estiver autenticada
            Então o sistema deve exibir a mensagem "Item adicionado na lista de desejos"

            Cenário: Não permitir duplicar o mesmo item na lista de desejos
            Quando o item ja esta na lista de desejos
            E tento favotitar o mesmo item
            Então deve exibir a mensagem "Item já está na lista de desejos"

            Cenário: Permitir remover itens da lista a qualquer momento
            Quando eu entrar na lista de desejos
            E decidir remover um item na lista
            Então deve apresentar a mensagem: "Item removido"

            Cenário: Manter a lista de desejos após logout
            Quando eu fizer logout após inserir itens aos favoritos
            E fazer o login novamente
            Então o sistema deve manter os itens à lista.

            Cenário: Ícone de favoritos visível na tela de boas vindas
            Quando eu estiver na página SHOP
            E quiser ver a lista
            Então o botão de favoritos deve estar evidente

            Esquema do Cenário: tentativas inválidas de favoritar itens
            Quando o <usuario> estiver autenticado
            E adicionar o <item> na lista de desejos
            Então o sistema exibe a <mensagem>

            Exemplos:

            | usuario         |  item         | mensagem                            |
            | não autenticado | não existente | Faça login para favoritar itens     |
            | autenticado     | já existente  | Item já está na lista de desejos    |
            | autenticado     | não existente | Item adicionado na lista de desejos |
            | não autenticado | já existente  | Faça login para favoritar itens     |