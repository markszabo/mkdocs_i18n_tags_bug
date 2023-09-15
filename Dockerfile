FROM python:3-bullseye

WORKDIR /docs

COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

RUN git config --global --add safe.directory /docs && python3 -m mkdocs build -d site
