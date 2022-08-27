FROM python:3
EXPOSE 5000
RUN pip install pipenv
RUN mkdir -p /app/src
WORKDIR /app
COPY Pipfile /app
COPY Pipfile.lock /app
RUN pipenv install --system --deploy --ignore-pipfile
COPY src/ /app/src
CMD ["python", "/app/src/main.py"]
