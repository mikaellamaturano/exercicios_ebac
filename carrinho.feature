#language: pt

Funcionalidade: Adicionar produtos ao carrinho

Como cliente da EBAC-SHOP 
Quero adicionar produtos no carrinho  
Para realizar a compra dos itens

Contexto: Dado que eu adicione produtos ao carrinho

Cenário: adicionar até 5 produtos no carrinho
Quando eu escolher um produto
E selecionar até 5 quantidades 
Então deve ser adicionado ao carrinho

Cenário: adicionar produtos sem estoque disponível
Quando eu escolher um produto
E não estiver disponível em estoque
Então deve exibir uma mensagem de "produto sem estoque" 

Cenário: Atualizar automaticamente a quantidade ao adicionar um item já existente no carrinho
Quando eu adicionar um produto ao carrinho 
E o mesmo produto ja tiver sido adicionado
Então deve ser atualizado automaticamente a quantidade ao carrinho

Cenário: mensagem de erro clara quando atingir o limite de itens
Quando eu adicionar um produto 
E tiver atingido o limite 
Então deve apresentar uma mensagem de erro: "limite de produtos atingido"




