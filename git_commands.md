# 🧭 Git Cheatsheet — Projeto Liberdade

Uma referência rápida dos comandos Git mais usados no dia a dia de desenvolvimento.

---

## ⚙️ Básico de Navegação e Configuração

| Comando | Descrição |
|----------|------------|
| `git init` | Cria um novo repositório Git na pasta atual |
| `git clone <url>` | Clona um repositório remoto para o diretório local |
| `git status` | Mostra o estado atual (alterações, commits pendentes etc.) |
| `git config --global user.name "Seu Nome"` | Define o nome do autor dos commits |
| `git config --global user.email "seu@email.com"` | Define o e-mail do autor dos commits |
| `git remote -v` | Lista os repositórios remotos vinculados |
| `git remote add origin <url>` | Adiciona um repositório remoto chamado `origin` |

---

## 💾 Controle de Versão

| Comando | Descrição |
|----------|------------|
| `git add .` | Adiciona todas as mudanças (novos e alterados) ao staging |
| `git add <arquivo>` | Adiciona um arquivo específico |
| `git commit -m "mensagem"` | Registra as mudanças no histórico com uma mensagem |
| `git log` | Mostra o histórico de commits |
| `git diff` | Mostra as diferenças entre o código atual e o último commit |
| `git restore <arquivo>` | Restaura o arquivo para o último commit salvo |
| `git reset --hard HEAD` | Reverte todas as alterações locais para o último commit |

---

## 🌿 Branches

| Comando | Descrição |
|----------|------------|
| `git branch` | Lista todas as branches locais |
| `git branch <nome>` | Cria uma nova branch |
| `git checkout <nome>` | Alterna para outra branch |
| `git checkout -b <nome>` | Cria e muda para a nova branch de uma vez |
| `git merge <branch>` | Mescla uma branch à atual |
| `git branch -d <nome>` | Deleta uma branch local |
| `git push origin --delete <branch>` | Deleta uma branch remota |

---

## 🌐 Sincronização com o Remoto

| Comando | Descrição |
|----------|------------|
| `git pull` | Atualiza o repositório local com as mudanças do remoto |
| `git fetch` | Baixa as mudanças remotas sem mesclar |
| `git push` | Envia commits locais para o repositório remoto |
| `git push origin <branch>` | Envia a branch específica |
| `git push -u origin <branch>` | Envia e define o *upstream* (para futuros `git push` sem nome) |

---

## 🧰 Correções e Rollbacks

| Comando | Descrição |
|----------|------------|
| `git revert <hash>` | Cria um novo commit que desfaz as alterações do commit informado |
| `git reset <hash>` | Volta o HEAD e descarta commits após o indicado |
| `git stash` | Guarda temporariamente mudanças não commitadas |
| `git stash pop` | Recupera as mudanças salvas no stash |
| `git clean -fd` | Remove arquivos não rastreados do diretório de trabalho |

---

## 🧩 Outros Úteis

| Comando | Descrição |
|----------|------------|
| `git show <hash>` | Mostra detalhes de um commit específico |
| `git tag <versão>` | Cria uma tag (ex: versão estável) |
| `git push origin --tags` | Envia todas as tags para o repositório remoto |
| `git shortlog -sn` | Mostra quem fez mais commits |
| `git reflog` | Mostra o histórico completo de movimentos do HEAD (útil para recuperar commits perdidos) |

---

📘 **Dica:**  
Combine o Git com automações `.bat` para tarefas repetitivas, como push, rollback e merge — mantendo o fluxo do Projeto Liberdade rápido e rastreável.

