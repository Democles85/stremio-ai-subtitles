FROM node:20-slim

WORKDIR /app
ENV NODE_ENV=production

COPY package.json server.js languages.json ./
RUN mkdir -p cache

EXPOSE 7311
CMD ["node", "server.js"]
