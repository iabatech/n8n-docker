FROM n8nio/n8n:1.44.0

USER node
WORKDIR /home/node

# Installer toutes les librairies nécessaires
RUN npm install cheerio axios htmlparser2 @n8n/n8n-nodes-langchain \
    form-data moment lodash csv-parse node-fetch@2 \
    @n8n/n8n-nodes-stable-diffusion @n8n/n8n-nodes-openai @n8n/n8n-nodes-slack

USER root
WORKDIR /data

ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
