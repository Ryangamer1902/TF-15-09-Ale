# Code Dojo - Prática de CI com Python e GitHub Actions

Este repositório contém o material para uma prática de Code Dojo focada em Continuous Integration (CI) utilizando Python, Flask, Docker e GitHub Actions.

## Tecnologias Utilizadas

*   **Linguagem:** Python 3.10
*   **Framework Web:** Flask
*   **Testes:** pytest
*   **Qualidade de Código:** flake8 (linting) e black (formatação)
*   **Containerização:** Docker
*   **CI/CD:** GitHub Actions

## O Projeto

A aplicação é um simples "Olá, Mundo!" em Flask. O objetivo é usar esta base para construir e entender um pipeline de CI completo.

## O Pipeline de CI

O nosso pipeline de CI, configurado em `.github/workflows/ci.yml`, executa os seguintes passos a cada `push` ou `pull request`:

1.  **Checkout do Código:** Baixa o código do repositório.
2.  **Configuração do Python:** Prepara o ambiente Python na versão 3.10.
3.  **Instalação de Dependências:** Instala as bibliotecas listadas no `requirements.txt`.
4.  **Linting com `flake8`:** Verifica se o código segue as boas práticas e padrões do Python.
5.  **Formatação com `black`:** Garante que todo o código tenha um estilo consistente.
6.  **Testes com `pytest`:** Executa os testes unitários para garantir que a aplicação funciona como esperado.
7.  **Build da Imagem Docker:** Constrói a imagem Docker da aplicação, simulando um artefato que seria enviado para produção.

## Desafios para o Code Dojo

Abaixo estão alguns desafios para serem resolvidos em grupo ou individualmente.

### Desafio 1: Adicionar um Novo Endpoint

Adicione uma nova rota no arquivo `app.py`. A rota deve ser `/healthcheck` e deve retornar o seguinte JSON:

```json
{
  "status": "ok"
}
```

### Desafio 2: Escrever um Teste para o Novo Endpoint

No arquivo `test_app.py`, adicione um novo teste que verifique se o endpoint `/healthcheck`:

1.  Retorna o status code `200`.
2.  Retorna o JSON `{"status": "ok"}` no corpo da resposta.

### Desafio 3: Quebrando e Consertando a Build

1.  **Quebre a build:** Altere o novo teste para que ele falhe (por exemplo, esperando um status code diferente de `200`).
2.  Faça o commit e o push da alteração.
3.  Observe o pipeline falhando na aba "Actions" do GitHub.
4.  **Conserte a build:** Corrija o teste para que ele passe novamente.
5.  Faça o commit e o push da correção e veja o pipeline passar com sucesso!

### Desafio 4 (Avançado): Adicionar Análise de Segurança

Adicione um novo passo ao pipeline de CI no arquivo `.github/workflows/ci.yml` para fazer uma varredura de segurança na imagem Docker construída. Uma ferramenta popular para isso é o `Trivy`.

**Dica:** Você pode usar a action `aquasecurity/trivy-action` do GitHub Marketplace.

Bom dojo!
