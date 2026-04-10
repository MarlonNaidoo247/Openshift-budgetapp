FROM ninetyone.jfrog.io/infra-openshift-images/python:latest
WORKDIR /app
COPY Openshift-App/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY Openshift-App/ .
CMD ["python", "main.py"]
