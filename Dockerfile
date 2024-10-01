FROM python:3.10
WORKDIR /app
COPY . /app/
COPY MukeshAPI-0.6.5.6-py3-none-any.whl .
RUN pip3 install MukeshAPI-0.6.5.6-py3-none-any.whl
RUN pip3 install -r requirements.txt
CMD gunicorn app:app & python3 Chatgpt
