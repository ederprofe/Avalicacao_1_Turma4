- 🧩 **Turma A:** [https://classroom.github.com/a/1U_0FpMG](https://classroom.github.com/a/1U_0FpMG)  
- 🧩 **Turma B:** [https://classroom.github.com/a/xx40TBHG](https://classroom.github.com/a/xx40TBHG)

> Após aceitar, o GitHub criará automaticamente um repositório com o formato  
> `avaliacao1-grupoN` (exemplo: `avaliacao1-equipe3`).

---

## ⚙️ Etapa 1 – Preparação do ambiente

### 1 Clonar o repositório
```bash
git clone <URL_DO_SEU_REPOSITORIO>
cd <PASTA_DO_REPOSITORIO>
Se o trabalho for em grupo, adicione os colegas como collaborators (Settings ▸ Collaborators).

2️ Instalar e validar as ferramentas
Verifique se as ferramentas estão instaladas e funcionando.
Adicione prints no README.md com os comandos e versões:

Ferramenta	Comando de verificação
Git	git --version
Python	python --version
Azure CLI	az version
Terraform	terraform version
Ansible	ansible --version

☁️ Etapa 2 – Azure + Terraform
Edite o arquivo main.tf e altere o nome da storage account (deve ser único e minúsculo).
Exemplo:

hcl
Copiar código
resource "azurerm_storage_account" "storage" {
  name = "storagedevopsequipe3x9p"
  ...
}
Faça login na Azure:

bash
Copiar código
az login
Execute o Terraform:

bash
Copiar código
terraform init
terraform plan
terraform apply -auto-approve
Capture prints:

terraform apply concluído com sucesso

Portal Azure mostrando o grupo de recursos e a storage criados

Etapa 3 – Pipeline CI/CD
O arquivo .github/workflows/ci.yml já está configurado para:

Instalar dependências (pytest, flake8)

Rodar análise de código (flake8)

Executar testes (pytest)

Validar o Terraform (terraform validate)

Teste o pipeline:
Faça um pequeno commit e push:

bash
Copiar código
git add .
git commit -m "test: primeira execução do CI"
git push origin main
Vá até a aba Actions no GitHub e verifique:

O workflow “CI - Build, Testes e Lint” deve aparecer.

A execução precisa finalizar em verde (✓ success).

 Etapa 4 – Evidências e entrega
Mesmo em grupo, cada aluno precisa registrar suas próprias evidências no README.md do repositório.

Use o seguinte padrão de documentação no final do README:

 Modelo de entrega
 Dados do aluno
Nome: João da Silva

Grupo: Equipe 3 – Turma A

Repositório: https://github.com/seuusuario/avaliacao1-equipe3

 Evidências
Versões das ferramentas:

objectivec
Copiar código
git version 2.43.0
Python 3.10.14
Terraform v1.9.5
Ansible 2.16.4
Azure CLI 2.60.0
(inserir print do terminal)

Execução do Terraform:
(print do “Apply complete! Resources: 2 added, 0 changed, 0 destroyed.”)

Print do Portal Azure:
(mostrar Resource Group e Storage Account criados)

Execução do pipeline CI/CD:
(print da aba Actions mostrando “Build, Testes e Lint — success”)

 Boas práticas Git
Ação	Comando sugerido
Criar branch com seu nome	git checkout -b joao-silva/setup
Atualizar código	git add . && git commit -m "feat: ajustes no Terraform"
Enviar alterações	git push origin joao-silva/setup
Criar PR para main	Pelo GitHub (Pull Request)
Mesclar após revisão	Merge com confirmação do grupo

💬 O professor avaliará também a colaboração pelo histórico de commits e Pull Requests.

 Troubleshooting (erros comuns)
Problema	Solução
 Starter code repository must be a template	O repositório base precisa estar marcado como Template Repository (configurado pelo professor).
 CI falhou em “Instalar dependências”	Crie o arquivo requirements.txt com pytest e flake8, faça commit e push.
 Erros flake8	Corrija espaçamento, indentação e imports não usados.
 Testes falharam	Rode pytest -q localmente e corrija o código.
 Azure não conecta	Execute az login e confirme sua assinatura com az account show.
 Terraform erro de nome duplicado	Use um nome de storage account diferente (ex.: storagedevopsequipe7abc).
 Pipeline não aparece no GitHub	Verifique se o arquivo está no caminho .github/workflows/ci.yml.
 CI falhou no Terraform	Certifique-se de que o arquivo main.tf está válido (terraform validate).
