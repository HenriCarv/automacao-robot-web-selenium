# Projeto de Testes Automatizados com Robot Framework

Este projeto utiliza o **Robot Framework** para automação de testes. Ele inclui testes automatizados para o site https://walkdog.vercel.app

## Requisitos de Instalação

Certifique-se de ter as seguintes dependências instaladas:

- **Robot Framework** (versão 4.0 ou superior): Ferramenta principal para execução de testes.
  - Instalação e documentação: [Robot Framework](https://robotframework.org/#resources)
  
- **Python** (versão 3.6 ou superior): O Robot Framework requer Python para ser executado.
  - Faça o download aqui: [Python Downloads](https://www.python.org/downloads/)

- **Robot Framework SeleniumLibrary**: Biblioteca usada para automação de navegadores.
  - Veja a documentação e instalação: [Robot Framework SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)

## Como Executar os Testes

Para executar os testes, use o seguinte comando no terminal:

```bash
robot -d ./logs/ tests/signup.robot
```

Comandos para rodar os testes:
- `robot -d ./logs/ tests/signup.robot`

Explicações:
- `robot` = "Padrão"
- `-d ./logs` = "para colocar os arquivos de log e report na pasta logs"
- `tests` = "Pasta onde estão os testes"
- `signup.robot` = "Arquivo do teste"

## Estrutura de pastas explicada

Estrutura de pastas:
- `logs` (Onde ficam os reports e logs)
- `resources` (Onde ficam ações, steps e elementos da funcionalidade)
- `fixtures` (Onde fica a imagem a ser incluída)
- `tests` (Onde ficam os testes criados)
