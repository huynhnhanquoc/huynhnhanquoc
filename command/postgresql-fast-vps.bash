# PostgreSQL on a fresh VPS, reachable only from an address you control.
#
# Replace [YOUR_PASSWORD] with a strong password.
# Replace [YOUR_IP] with the single public IP allowed to connect.
#
# Never widen the pg_hba.conf line below to 0.0.0.0/0. Port 5432 is scanned
# constantly, and an internet-reachable Postgres is found within hours.

# Update system and install PostgreSQL
sudo apt update && sudo apt install -y postgresql postgresql-contrib && \

# Enable and start PostgreSQL service
sudo systemctl enable postgresql --now && \

# Use SCRAM-SHA-256 for password storage (md5 has been deprecated since PG 10)
sudo -i -u postgres psql -c "SET password_encryption = 'scram-sha-256';" && \

# Change password for postgres user (replace [YOUR_PASSWORD] with your password)
sudo -i -u postgres psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '[YOUR_PASSWORD]';" && \

# Allow PostgreSQL to listen on all interfaces (the firewall is what restricts access)
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/*/main/postgresql.conf && \

# Accept connections ONLY from your address, using SCRAM authentication
echo "host all all [YOUR_IP]/32 scram-sha-256" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf && \

# Open port 5432 ONLY for your address
sudo ufw allow from [YOUR_IP] to any port 5432 proto tcp && \

# Restart PostgreSQL to apply changes
sudo systemctl restart postgresql
