FROM n8nio/n8n:1.44.0

USER node

# Installer cheerio, axios et htmlparser2 localement
RUN npm install cheerio axios htmlparser2

CMD ["n8n"]
