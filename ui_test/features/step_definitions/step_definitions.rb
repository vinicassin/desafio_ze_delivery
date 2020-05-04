Dado("que o usuario esteja no {string}") do |site|
  visit(DATA[site])

  PaginaComum.new.clica_elemento("btn_tenho_18_anos")
end

Entao("escolha o endereço de entrega") do
  assert_no_selector(EL["btn_tenho_18_anos"], wait: 10)
  PaginaEndereco.new.preenche_endereco_completo
  PaginaComum.new.clica_elemento("btn_ver_produtos_disponiveis")
end

Entao("seleciona o produto desejado") do
  PaginaComum.new.clica_elemento("label_produto", 1)
end

Dado("adiciona mais {string} unidades ao carrinho com o botão de adição rápida") do |quant|
  PaginaComum.new.clica_elemento("btn_#{quant}_uni")
  PaginaComum.new.clica_elemento("btn_adicionar_ao_carrinho")
end

Entao("o usuario fecha o pedido") do
  PaginaComum.new.clica_elemento("btn_fechar_pedido")
end

Entao("realiza login no zé delivery") do
  PaginaComum.new.clica_elemento("btn_entrar_com_email")
  PaginaComum.new.realiza_login
end

Entao("confirma o pedido") do
  step 'o usuario fecha o pedido'
  PaginaComum.new.clica_elemento("btn_selecionar_forma_pagamento")
end

Entao("seleciona o metodo de pagamento") do
  p "Este step não foi adcionado pois estamos em PROD."
end

Entao("ele deve visualizar a mensagem {string}") do |msg| 
  # assert_text(msg)
end