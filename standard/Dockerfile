
# Utilisation de l'image de base Ubuntu
FROM ubuntu:latest

# Mise à jour des paquets et installation des dépendances
RUN apt-get update && \
    apt-get install -y git python3 python3-pip

# Définition du répertoire de travail
WORKDIR /api

# Clonage du projet FastAPI depuis GitHub
RUN git clone https://github.com/MathiasBerlancourt/kubernetes-devops-project 

# Mise à jour des paquets et installation des dépendances
RUN apt-get update && \
    apt-get install -y python3-dev build-essential libffi-dev

# Téléchargement des requirements
RUN pip install --no-cache-dir --upgrade -r /api/requirements.txt
# Exposition du port sur lequel FastAPI va écouter
EXPOSE 8000

# Commande de démarrage de l'application FastAPI avec Uvicorn
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
CMD ["sh", "-c", "uvicorn app.main:app --host 0.0.0.0 --port 8000 & sleep 3600"]
