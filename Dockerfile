# Use a imagem oficial do Python
FROM python:3.10-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo de dependências
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código da aplicação
COPY . .

# Exponha a porta que a aplicação irá rodar
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]