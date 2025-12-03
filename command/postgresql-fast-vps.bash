# Update system and install PostgreSQL
sudo apt update && sudo apt install -y postgresql postgresql-contrib && \

# Enable and start PostgreSQL service
sudo systemctl enable postgresql --now && \

# Change password for postgres user (replace [YOUR_PASSWORD] with your password)
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \

# Allow PostgreSQL to listen on all IP addresses
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \

# Allow all users/databases to connect from any IP using password authentication
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \

# Open port 5432 in firewall for remote connections
sudo ufw allow 5432/tcp && \

# Restart PostgreSQL to apply changes
sudo systemctl restart postgresql
