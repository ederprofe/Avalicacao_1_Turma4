# Avaliação 1 – Etapa 1: Preparação Técnica e Integração com Azure

## Data de Entrega
19/11/2025 (quarta-feira)

A entrega após essa data poderá sofrer desconto conforme os critérios definidos pelo professor.

---

## Objetivo
Configurar o ambiente DevOps, criar uma pipeline CI com testes automatizados e realizar um deploy simples no Azure via Terraform.

Cada grupo deverá demonstrar:
- domínio do GitHub (versionamento, branches e commits);
- compreensão do pipeline CI/CD;
- execução bem-sucedida do Terraform no Azure;
- documentação das evidências no README.md.

---

## Turmas e acesso ao GitHub Classroom

Acesse o link da sua turma e aceite o desafio:

- Turma A: https://classroom.github.com/a/1U_0FpMG  
- Turma B: https://classroom.github.com/a/xx40TBHG

---

## Instruções da tela “Accept the group assignment”

Ao acessar o link da turma (por exemplo, Avalicacao1_TurmaA ou Avalicacao1_TurmaB), você verá a tela com o título:

Turma 04 DevOps Noturno  
Accept the group assignment — Avalicacao1_TurmaA  
ou  
Turma 04 DevOps Noturno  
Accept the group assignment — Avalicacao1_TurmaB

Essa é a tela para criar ou ingressar em um grupo no GitHub Classroom.

### Se o grupo ainda não existe
1. No campo “Create a new team”, digite o nome do grupo no formato:
   ```
   equipeX-turmaY
   ```
   Exemplo: equipe3-turmaA
2. Clique em “+ Create team”.
3. Aguarde a criação automática do repositório.

### Se o grupo já existe
1. Procure o nome da equipe na lista.
2. Clique em “Join” para entrar no grupo correto.
3. Após entrar, não será possível trocar de equipe.

Recomendações:
- Use nomes simples, sem acentos e com hífen.
- Apenas um integrante deve criar o grupo; os demais entram no mesmo grupo.

Após a criação ou entrada no grupo, o GitHub criará automaticamente um repositório privado com o código base da atividade.

---

## Etapa 1 – Preparação do Ambiente

### 1. Clonar o repositório
Abra o terminal e execute:
```
git clone <URL_DO_SEU_REPOSITORIO>
cd <PASTA_DO_REPOSITORIO>
```

Se o trabalho for em grupo, adicione seus colegas como colaboradores em:
Settings → Collaborators → Add People.

---

### 2. Instalar e validar as ferramentas
Verifique se as ferramentas estão instaladas e funcionando. Adicione prints no README.md com os comandos e versões:

| Ferramenta | Comando de verificação |
|-------------|------------------------|
| Git | git --version |
| Python | python --version |
| Azure CLI | az version |
| Terraform | terraform version |
| Ansible | ansible --version |

---

## Etapa 2 – Azure e Terraform

1. Edite o arquivo main.tf e altere o nome da storage account (o nome deve ser único e em minúsculo).  
   Exemplo:
   ```
   resource "azurerm_storage_account" "storage" {
     name = "storagedevopsequipe3x9p"
     ...
   }
   ```

2. Faça login na Azure:
   ```
   az login
   ```

3. Execute o Terraform:
   ```
   terraform init
   terraform plan
   terraform apply -auto-approve
   ```

4. Capture prints:
   - Execução bem-sucedida do terraform apply
   - Portal Azure mostrando o grupo de recursos e a storage criados

---

## Etapa 3 – Pipeline CI/CD

O arquivo .github/workflows/ci.yml já está configurado para:
- Instalar dependências (pytest e flake8)
- Rodar análise de código (flake8)
- Executar testes (pytest)
- Validar o Terraform (terraform validate)

### Testar o pipeline
1. Faça um commit e push:
   ```
   git add .
   git commit -m "test: primeira execução do CI"
   git push origin main
   ```
2. Vá até a aba Actions no GitHub.
3. Verifique se o workflow “CI - Build, Testes e Lint” aparece e finaliza com sucesso (status verde).

---

## Etapa 4 – Evidências e Entrega

Mesmo em grupo, cada aluno deve registrar suas próprias evidências no README.md do repositório.

Modelo sugerido:

### Dados do aluno
- Nome: João da Silva  
- Grupo: Equipe 3 – Turma A  
- Repositório: https://github.com/seuusuario/avaliacao1-equipe3

### Evidências
1. Versões das ferramentas:
   ```
   git version 2.43.0
   Python 3.10.14
   Terraform v1.9.5
   Ansible 2.16.4
   Azure CLI 2.60.0
   ```
   (inserir print do terminal)

2. Execução do Terraform:
   (print do “Apply complete! Resources: 2 added, 0 changed, 0 destroyed.”)

3. Print do Portal Azure:
   (mostrar Resource Group e Storage Account criados)

4. Execução do pipeline CI/CD:
   (print da aba Actions mostrando “Build, Testes e Lint — success”)

---

## Boas práticas Git

| Ação | Comando sugerido |
|------|------------------|
| Criar branch com seu nome | git checkout -b joao-silva/setup |
| Atualizar código | git add . && git commit -m "feat: ajustes no Terraform" |
| Enviar alterações | git push origin joao-silva/setup |
| Criar Pull Request | Pelo GitHub |
| Mesclar após revisão | Merge com confirmação do grupo |

O histórico de commits e Pull Requests será considerado na avaliação de colaboração.

---

## Troubleshooting (erros comuns)

| Problema | Solução |
|-----------|----------|
| Starter code repository must be a template | O repositório base precisa estar marcado como Template Repository (configurado pelo professor). |
| CI falhou em “Instalar dependências” | Crie o arquivo requirements.txt com pytest e flake8, depois commit e push. |
| Erros flake8 | Corrija espaçamento, indentação e imports não usados. |
| Testes falharam | Rode pytest -q localmente e corrija o código. |
| Azure não conecta | Execute az login e confirme sua assinatura com az account show. |
| Terraform erro de nome duplicado | Use outro nome para a storage account, ex.: storagedevopsequipe7abc. |
| Pipeline não aparece | Verifique se o arquivo está em .github/workflows/ci.yml. |
| CI falhou no Terraform | Certifique-se de que o arquivo main.tf está válido (terraform validate). |

---

## Referências

Repositório modelo:  
https://github.com/ederprofe/Avalicacao_1_Turma4

Documentação recomendada:  
- GitHub Actions: https://docs.github.com/pt/actions  
- Terraform Getting Started: https://developer.hashicorp.com/terraform/tutorials  
- Azure Cloud Shell: https://learn.microsoft.com/pt-br/azure/cloud-shell/overview  

---

## Checklist de entrega

[ ] Repositório criado via Classroom  
[ ] Pipeline CI executa em verde  
[ ] Deploy Azure via Terraform funcionando  
[ ] README com prints e evidências  
[ ] Cada aluno identificou nome e grupo  
[ ] Código e commits organizados  
[ ] Entrega até 19/11/2025
