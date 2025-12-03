sudo apt update && sudo apt install -y postgresql postgresql-contrib && \
sudo systemctl enable postgresql --now && \
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \
echo "host all all [YOUR_IP]/32 md5" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \
sudo ufw allow from [YOUR_IP] to any port 5432 proto tcp && \
sudo systemctl restart postgresql
