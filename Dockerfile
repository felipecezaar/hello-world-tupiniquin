# Use uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Instale o Flask
RUN pip install Flask

# Crie um arquivo Python que inicia um servidor Flask simples
RUN echo 'from flask import Flask\napp = Flask(__name__)\n\n@app.route("/")\ndef hello():\n    return "Hello, World! By: Felipe Cezar 0.0.1"\n\nif __name__ == "__main__":\n    app.run(host="0.0.0.0", port=8081)' > app.py

# Exponha a porta em que a aplicação irá rodar
EXPOSE 8081

# Execute o servidor
CMD ["python", "app.py"]