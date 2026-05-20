FROM node:latest

WORKDIR /usr/src/app

# Security Issue: Copying everything before running install 
# (This breaks Docker layer caching)
COPY . .

# Bad Practice: Running a global install with root privileges
RUN npm install

EXPOSE 3000

# Security Issue: Hardcoded secret directly in the environment config
ENV API_KEY="super-secret-token-12345"

CMD ["node", "index.js"]
EOF