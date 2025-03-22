FROM n8nio/n8n:1.44.0

# Utilisateur node pour installer les librairies
USER node
WORKDIR /home/node

RUN npm install cheerio axios htmlparser2

# Remettre le dossier de travail par défaut de n8n
USER root
WORKDIR /

CMD ["n8n", "start"]
