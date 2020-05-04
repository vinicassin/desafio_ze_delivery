class PaginaComum
  include Capybara::DSL

  def clica_elemento(elemento, index = 0)
    # Evitar usar sleep, é uma má pratica, e se usar, usar com um time bem baixo.
    # Diferença do sleep para um assert_selector com wait, o sleep vai interromper a automação por X tempo que são os segundos que você paassou como parâmetro,
    # o assert_selector ele espera que o elemento seja visivel em até X segundos, se aparecer no primeiro segundo ele da continuadade as próximas linhas do código, se ele não aparecer no tempo que você parametrizou ele estoura erro.

    assert_selector(EL[elemento], visible: true, wait: 10)
    all(EL[elemento])[index.to_i].click
  end

  def preenche_campo(campo, texto, index = 0)
    assert_selector(EL[campo], visible: true, wait: 10)
    all(EL[campo])[index.to_i].set(texto)
    # Quando existirem diversos elementos com o mesmo identificador, utilizar o all e passar o index. Exemplo: nenhum campo tem id, apenas class, e existem 5 campos com a mesma class, você precisa utilizar algum identificador diferente ou escolher o que for igual em todos e usar o index.
  end

  def realiza_login
    preenche_campo("campo_email", DATA["email"])
    preenche_campo("campo_senha", DATA["senha"])
    clica_elemento("btn_entrar")
  end

end
