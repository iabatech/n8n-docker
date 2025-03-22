FROM n8nio/n8n:1.44.0

# Utilisateur node pour installer les librairies
USER node
WORKDIR /home/node

RUN npm install cheerio axios htmlparser2

# Repasser root + remettre le dossier par défaut de n8n
USER root
WORKDIR /data

# Lance n8n en précisant le chemin
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
