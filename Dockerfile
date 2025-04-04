#Docker File for Azure

FROM python:3.10

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt


COPY . /app

EXPOSE 8501


CMD ["streamlit", "run", "app.py"]

#CMD streamlit run app.py