FROM python:3.10

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt


COPY . /app

ENTRYPOINT [ "streamlit", "run" ]

CMD ["app.py"]

#CMD streamlit run app.py