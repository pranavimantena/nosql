wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - \
&& apt-get install gnupg \
&& wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add - \
&& echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list \
&& wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_arm64.deb
&& dpkg -i ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
&& apt-get update \
&& apt-get install -y mongodb-org \
&& ps --no-headers -o comm 1 
