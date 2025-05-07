# Minipar Interpreter 🪄

Interpretador **Python 3.11** para a linguagem _Minipar_ — uma linguagem didática multiparadigma que suporta execução paralela, comunicação via _sockets_ e tipagem dinâmica simples.  
Este repositório contém:

* **`lexer.py`** – tokenização  
* **`_parser.py`** – construção da AST + execução  
* **`server.py`** – suporte a canais de rede (`c_channel` / `s_channel`)  
* **Exemplos** – `programa_de_teste_1.mp`  

---

## Pré‑requisitos

| Ferramenta | Versão testada | Observação |
|------------|---------------|------------|
| Python | **3.11+** | - |
| Windows • macOS • Linux | — | _Sockets_ testados em `localhost` |

> O interpretador _não_ depende de bibliotecas externas para rodar; apenas módulos da _stdlib_ (`re`, `socket`, `threading`, etc.).

---

## Estrutura do projeto

minipar-main/

├─ main.py # ponto de entrada CLI

├─ start_server.py # inicia servidor de sockets (exemplo)

├─ programa_de_teste_1.mp

└─ src/


├─ lexer.py

├─ _parser.py

└─ server.py

---

## Como executar

Abra **dois terminais** na raiz do projeto:

1. **Terminal 1 – iniciar servidor de sockets**

   ```bash
   py start_server.py
   
2. **Terminal 2 – rodar um programa**
   
  ```bash
  py main.py programa_de_teste_1.mp


