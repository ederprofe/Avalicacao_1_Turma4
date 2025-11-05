# Avaliação 1 – Etapa 1: Preparação Técnica e Integração com Azure
**Curso:** Turma 04 – DevOps Noturno  
**Data de Entrega:** 19/11/2025 (quarta-feira)

A entrega após essa data poderá sofrer desconto conforme os critérios definidos pelo professor.

---

## 1. Objetivo

Esta avaliação tem como foco a **configuração completa de um ambiente DevOps**, composta por **duas partes complementares**:

1. **Código da aplicação (Python):**  
   Desenvolvimento e automação de uma *pipeline de Integração Contínua (CI)* para garantir a qualidade, execução de testes automatizados e verificação de boas práticas de código (flake8).

2. **Código de infraestrutura (Terraform):**  
   Automação de um *provisionamento básico no Azure*, criando recursos de nuvem (Resource Group e Storage Account), simulando o uso de **Infraestrutura como Código (IaC)**.

Cada grupo deverá entregar:
- um repositório funcional com **pipeline CI/CD** validando o código Python;
- um **arquivo Terraform aplicado com sucesso no Azure**;
- um **README documentado com prints e evidências** de todas as etapas.

---

## 2. Estrutura do Repositório

| Diretório / Arquivo | Função | Resultado Esperado |
|----------------------|--------|--------------------|
| `app/main.py` | Código Python de cálculo de média e aprovação | Código correto e testável |
| `tests/test_main.py` | Testes automatizados (Pytest) | Todos os testes devem passar |
| `.github/workflows/ci.yml` | Pipeline CI com build, lint e testes | Execução bem-sucedida (status verde) |
| `main.tf` | Código Terraform para Azure | Deploy funcional de recursos (RG e Storage Account) |

---

## 3. Links Importantes

### GitHub Classroom
Acesse o link da sua turma e aceite o desafio:

- Turma A: https://classroom.github.com/a/1U_0FpMG  
- Turma B: https://classroom.github.com/a/xx40TBHG

### Repositório Base
Repositório modelo com estrutura e exemplos iniciais:  
https://github.com/ederprofe/Avalicacao_1_Turma4

---

## 4. Tela do GitHub Classroom: “Accept the group assignment”

Ao abrir o link da turma, aparecerá:

**Turma 04 DevOps Noturno**  
**Accept the group assignment — Avalicacao1_TurmaA / Avalicacao1_TurmaB**

### Se o grupo ainda não existe:
1. No campo “Create a new team”, digite o nome no formato:
   ```
   equipeX-turmaY
   ```
   Exemplo: equipe3-turmaA
2. Clique em “+ Create team”.

### Se o grupo já existe:
1. Selecione o nome do grupo existente.  
2. Clique em “Join”.

Após aceitar, o GitHub criará automaticamente um **repositório privado do grupo**, com o código base da avaliação.

Recomendações:
- Use nomes simples e padronizados (sem acentos, espaços ou letras maiúsculas).  
- Apenas um aluno cria o grupo; os demais apenas entram.

---

## 5. Etapas Práticas

### 5.1. Etapa 1 – Código Python e Pipeline CI

O diretório `app/` contém uma aplicação simples de cálculo de médias e verificação de aprovação.  
O diretório `tests/` contém testes automatizados com **Pytest**.

**Objetivo desta parte:**
- Validar a aplicação Python via pipeline de Integração Contínua.
- Garantir que todos os testes passem e o código esteja dentro das boas práticas (flake8).

**O que a pipeline faz (.github/workflows/ci.yml):**
- Instala dependências (pytest, flake8)
- Executa lint de código (`flake8`)
- Executa testes (`pytest`)
- Valida a sintaxe Terraform (`terraform validate`)

**Evidências esperadas:**
- Print da aba “Actions” com a execução concluída (status verde)
- Print local dos testes rodando com sucesso

---

### 5.2. Etapa 2 – Código Terraform e Azure

O arquivo `main.tf` contém o código de provisionamento da nuvem.

**Objetivo desta parte:**
- Criar recursos básicos no Azure via Terraform (Resource Group + Storage Account).

**Comandos obrigatórios:**
```bash
az login
terraform init
terraform plan
terraform apply -auto-approve
```

**Evidências esperadas:**
- Print do terminal mostrando o `apply` com sucesso  
- Print do Portal Azure mostrando os recursos criados

**Dica:**  
O nome da *Storage Account* deve ser único e em minúsculo.  
Exemplo válido:
```
storagedevopsequipe3abc
```

---

## 6. Evidências e Entrega

Mesmo trabalhando em grupo, **cada aluno deve registrar suas próprias evidências** no README.md.

### Modelo de registro individual:

#### Dados do aluno
- Nome completo  
- Grupo: Equipe X – Turma A ou B  
- Link do repositório no GitHub

#### Evidências
1. Prints das versões das ferramentas:
   ```
   git --version
   python --version
   terraform version
   ansible --version
   az version
   ```
2. Print do Terraform apply concluído  
3. Print do Portal Azure  
4. Print do pipeline CI/CD verde  
5. Print dos testes Python executando com sucesso  

---

## 7. Boas Práticas Git

| Ação | Comando |
|------|----------|
| Criar branch com seu nome | git checkout -b nome-sobrenome/setup |
| Fazer commit descritivo | git commit -m "feat: ajustes no Terraform" |
| Enviar alterações | git push origin nome-sobrenome/setup |
| Criar Pull Request | Pelo GitHub |
| Revisar e aprovar PRs em grupo | Merge com confirmação do grupo |

O professor avaliará também a **colaboração**, considerando commits, revisões e participação de cada aluno.

---

## 8. Troubleshooting (erros comuns)

| Problema | Solução |
|-----------|----------|
| CI não aparece | Verifique se o arquivo está em `.github/workflows/ci.yml` |
| Erro “Starter code repository must be a template” | O repositório base precisa estar marcado como Template Repository |
| Terraform falha no apply | Verifique o nome da Storage Account e login Azure |
| Azure não conecta | Execute `az login` novamente |
| Testes falham | Corrija o código e rode `pytest -q` localmente |
| Erros flake8 | Ajuste indentação, imports e espaçamento |
| CI falha em instalar dependências | Crie `requirements.txt` com `pytest` e `flake8` e faça push |
| Terraform validate falhou | Corrija a sintaxe do arquivo main.tf |

---

## 9. Critérios de Avaliação (10 pontos)

| Critério | Pontos |
|-----------|--------|
| Organização e uso do GitHub (commits, branches) | 2 |
| Execução correta do Terraform (Azure) | 2 |
| Pipeline CI/CD funcional (Python) | 3 |
| Código e testes automatizados corretos | 2 |
| Documentação (README e evidências) | 1 |

**Bônus (+2 pontos):**
- Validação Terraform no pipeline (`terraform validate`)
- Participação equilibrada dos integrantes (colaboração real via PRs)

---

## 10. Checklist Final

[ ] Repositório criado via GitHub Classroom  
[ ] Pipeline CI executa em verde  
[ ] Terraform aplicado no Azure com sucesso  
[ ] Prints e evidências no README.md  
[ ] Cada aluno identificado com nome e grupo  
[ ] Código e commits organizados  
[ ] Entrega até 19/11/2025

---

## 11. Referências

Repositório modelo:  
https://github.com/ederprofe/Avalicacao_1_Turma4  

Documentação útil:  
- GitHub Actions: https://docs.github.com/pt/actions  
- Terraform Getting Started: https://developer.hashicorp.com/terraform/tutorials  
- Azure Cloud Shell: https://learn.microsoft.com/pt-br/azure/cloud-shell/overview  
