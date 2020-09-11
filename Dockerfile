FROM continuumio/miniconda3

LABEL Name=first Version=0.0.1
EXPOSE 3000

WORKDIR /app
# ADD . /app

# Using pip:
COPY requirements.txt .
RUN pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

CMD ["/bin/sh"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "first"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m first"
