=====================================================
Assistente de Instalação - Chatbot Stack  
=====================================================

[1/10] Identificando Sistema Operacional...

OS:
VM / BAREMETAL / AWS / ETC
HOSTNAME:

CPU:
RAM:
SWAP:

IP LOCAL:
IP PUBLICO:

---

[2/10] Verificando e instalando dependências...
Atualizando listas de pacotes...
Dependência curl já instalada.
Dependência git já instalada.
Dependência openssl já instalada.
Dependência docker já instalada.
Dependência ufw já instalada.

---

[3/10] Clonando repositório base...
Repositório clonado em /opt/chatbot

---

[4/10] Iniciando anamnese pre-deploy...

4.1. Qual Webserver você irá utilizar como Proxy Reverso?
[1] Traefik (Recomendado/Padrão)
[2] Apache
[3] Nginx
[4] Outros

> Selecione uma Opção (1-4) [Padrão: 1]:

---

4.1.1. [Apenas Traefik] Deseja implantar o Traefik agora ou usar um já existente?
[1] Implantar Traefik junto nesta infra
[2] Usar Traefik já existente (Externo)

> Selecione uma Opção (1-2) [Padrão: 1]:

---

4.1.2-4 [AVISO] Configuração Manual Necessária (Apache/Nginx/Outro)
Você escolheu um webserver externo. O deploy exportará apenas as portas.
Você deverá configurar o roteamento manualmente. Portas exportadas:

- n8n: 3001
- chatwoot: 3000
- typebot-builder: 3002
- typebot-viewer: 3003
- evolution-api: 3005
- evolution-manager: 3004
- minio-console: 9001
- minio-api: 9000
- mail-chatbot: 8025
- monitor: 8000

# Enter para prosseguir.

---

4.2. Qual domínio principal será usado? (ex: domain.com)

> Digite um domínio valido [Obrigatório]:

---

4.3. Qual Protocolo será usado para o domínio $dominio?
[1] HTTP (Sem criptografia, inseguro)
[2] HTTPS (Requer certificado SSL/TLS)

> Selecione uma Opção (1-2) [Padrão: 2]:

---

4.3.1. [AVISO] Confirmar uso de protocolo inseguro?
[1] NÃO # Voltar para 4.3
[2] SIM # Prosseguir

> Selecione uma Opção (1-2) [Padrão: 1]:

---

4.3.2. Como o certificado SSL será gerenciado?
[1] Local (Automático - Let's Encrypt) # Requer portas 80/443 abertas
[2] Externo (Cloudflare Flexible / AWS / DigitalOcean) # Tráfego chega via porta 80 / se Implantar Traefik deve configurar cabeçarios / se for outros informar no final sobre a necessidade dos cabeçarios
[3] Híbrido (Cloudflare Full/Strict) # Requer certificado de origem na porta 443
[4] Manual (Informar diretório) # Caminho para arquivos .crt e .key

> Selecione uma Opção (1-4) [Padrão: 1]:

---

4.3.2.1.1. Qual o e-mail para avisos do Let's Encrypt?:

> Digite um e-mail valido [Obrigatório]:

---

4.3.2.1.2. O DNS do domínio $dominio já aponta para este IP? (s/n):
[1] SIM # prossegue normalmente
[2] NAO # avisa que o Let's Encrypt falhará e lista os apontamentos necessários.

> Selecione uma Opção (1-2) [Padrão: 1]:

---

4.3.2.1.2.2 [AVISO] realize os apontamentos para os seguintes domínios, caso contrario o Let's Encrypt falhara

- n8n.${domain}
- chatwoot.${domain}
- typebot-builder.${domain}
- typebot-viewer.${domain}
- evolution-api.${domain}
- evolution-manager.${domain}
- minio-console.${domain}
- minio-api.${domain}
- mail-chatbot.${domain} (Se optar pelo Mailpit)
- monitor.${domain} (Se optar pelo DocOps)

4.3.2.3.1. Como deseja obter o certificado de origem?
[1] Gerar auto-assinado pelo script
[2] Colar "Cloudflare Origin Certificate"
[3] Usar Let's Encrypt

> Selecione uma Opção (1-3) [Padrão: 3]:

---

4.3.2.4.a. Caminho completo do Certificado (.crt/.pem):

> 4.3.2.4.b. Caminho completo da Chave Privada (.key):

---

4.4. Servidor de E-mails:
[1] Implantar Mailpit
[2] Usar servidor próprio (SMTP externo)

> Selecione uma Opção (1-2) [Padrão: 1]:

---

4.4.1. --- Configuração SMTP Externo ---
SMTP Host:
SMTP Port:
SMTP Usuario:
SMTP Senha:
Usar SSL/TLS? (s/n):

---

4.4.1.1. Confirma as configurações de SMTP?
[1] SIM (Prosseguir)
[2] NÃO (Reiniciar 4.4)

---

4.5. Deseja implantar o DocOps para visibilidade em tempo real?
[1] SIM
[2] NÃO

> Selecione uma Opção (1-2) [Padrão: 1]:

---

## [5/10] Resumo das Respostas...

Webserver: # se traefik informa se é deploy ou externo
Domínio:
Protocolo: # se https informa sobre como o certificado SSL será gerenciado

SMTP: # se externo |
SMTP Host:
SMTP Port:
SMTP Usuario:
SMTP Senha: \*\*\*
Usar SSL/TLS?

DocOps:

---

---

5. Confirma que as configurações estão corretas para prosseguir?
   [1] SIM (Iniciar Deploy)
   [2] NÃO (Reiniciar Anamnese)
   > Selecione uma Opção (1-2) [Padrão: 1]:

---
