class PaginaEndereco < PaginaComum
    include Capybara::DSL
  
    def preenche_endereco_completo
        clica_elemento("campo_endereco")
        preenche_campo("campo_insira_endereco", DATA["endereco_casa"])
        clica_elemento("label_endereco")
        preenche_campo("campo_numero_endereco", "234")
        clica_elemento("check_nao_tenho_complemento")
    end
  end
  