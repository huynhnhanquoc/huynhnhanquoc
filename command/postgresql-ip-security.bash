# Update system and install PostgreSQL
sudo apt update && sudo apt install -y postgresql postgresql-contrib && \

# Enable and start PostgreSQL service
sudo systemctl enable postgresql --now && \

# Change password for postgres user (replace [YOUR_PASSWORD] with your password)
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \

# Allow PostgreSQL to listen on all IP addresses
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \

# Allow connections ONLY from your specific IP address
echo "host all all [YOUR_IP]/32 md5" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \

# Open port 5432 ONLY for your IP in the firewall
sudo ufw allow from [YOUR_IP] to any port 5432 proto tcp && \

# Restart PostgreSQL to apply changes
sudo systemctl restart postgresql
