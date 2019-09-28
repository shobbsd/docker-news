FROM node:latest

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
ARG PORT=9090
ENV PORT=${PORT}

COPY package.json package-lock.json ./

# RUN if ["$NODE_ENV" = "test"]; then npm install; else npm install --production; fi
RUN npm install

COPY . . 

EXPOSE 9090

CMD [ "npm", "test" ]

