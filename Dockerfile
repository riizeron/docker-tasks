# Don't forget about "$ xhost +" before running container
FROM continuumio/miniconda3

# Create the environment:
COPY environment.yml .
COPY requirements.txt .

RUN conda env create -f environment.yml

# Activate the environment, and make sure it's activated:
USER john

RUN conda activate myenv

# The code to run when container is started:
COPY run.py .
ENTRYPOINT ["python", "main.py"]

