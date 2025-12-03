sudo apt update && sudo apt install -y postgresql postgresql-contrib && \
sudo systemctl enable postgresql --now && \
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \
sudo ufw allow 5432/tcp && \
sudo systemctl restart postgresql
