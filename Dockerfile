FROM n8nio/n8n:1.44.0

# On installe les packages en tant que node
USER node
RUN npm install cheerio axios htmlparser2

# Repasser root pour démarrer n8n correctement
USER root
CMD ["n8n"]
