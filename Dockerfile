FROM  python:3.12-slim

WORKDIR ./app

COPY  requirement.txt

RUN pip install --no-cache-dir -r requirement.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "notebook", "-ip = 0.0.0.0", "port=8888","--no-browser","--allow-root"]
