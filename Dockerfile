FROM n8nio/n8n:1.44.0

# Installer cheerio, axios et htmlparser2 globalement
RUN npm install -g cheerio axios htmlparser2

# Lancer n8n normalement
CMD ["n8n"]
