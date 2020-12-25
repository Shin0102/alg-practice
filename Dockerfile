FROM continuumio/miniconda3

LABEL Name=first Version=0.0.1
EXPOSE 3000

WORKDIR /app

# Using pip:
COPY requirements.txt .
RUN pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

CMD ["/bin/sh"]

