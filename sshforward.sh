# remote forward 3000 and 3001 to localhost
ssh \
      -o "ServerAliveInterval 20" \
      -R 0:3000:127.0.0.1:3000 \
      -R 0:3001:127.0.0.1:3001 \
      -v hostname
