#language: pt
#encode: utf-8

Funcionalidade: Finalizar a compra dos produtos do zé delivery
                2 tipos de pagamento possíveis, dinheiro ou crédito/debito

Contexto:
  Dado que o usuario esteja no "site_ze_delivery"

@cenarios_criticos @finalizar_compra
Cenario: Finalizar uma compra de 15 unidades com sucesso
  E escolha o endereço de entrega
  E seleciona o produto desejado
  E adiciona mais "15" unidades ao carrinho com o botão de adição rápida
  E o usuario fecha o pedido
  E realiza login no zé delivery
  Quando confirma o pedido
  E seleciona o metodo de pagamento
  Então ele deve visualizar a mensagem "pedido_realizado_com_sucesso"
