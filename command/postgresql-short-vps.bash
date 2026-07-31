# Same as postgresql-fast-vps.bash, without the comments.
# Replace [YOUR_PASSWORD] and [YOUR_IP] before running.

sudo apt update && sudo apt install -y postgresql postgresql-contrib && \
sudo systemctl enable postgresql --now && \
sudo -i -u postgres psql -c "SET password_encryption = 'scram-sha-256';" && \
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \
echo "host all all [YOUR_IP]/32 scram-sha-256" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \
sudo ufw allow from [YOUR_IP] to any port 5432 proto tcp && \
sudo systemctl restart postgresql
