FROM node:18-alpine AS base
RUN npm install -g serve
COPY out /app/out
WORKDIR /app
EXPOSE 3000
CMD ["serve", "out", "-l", "3000", "-s"]
