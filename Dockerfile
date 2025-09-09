# Dockerfile

# Image Python officielle
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt .
COPY main.py .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port de l'application
EXPOSE 8080

# Commande pour lancer l'application
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
