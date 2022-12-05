FROM node:18-alpine
MAINTAINER EAS Barbosa <easbarba@outlook.com>

WORKDIR /app
COPY package.json package-lock.json .
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "run", "serve"]
