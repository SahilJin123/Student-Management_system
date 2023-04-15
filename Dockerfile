FROM python3.8
RUN pip install django==4.0.4
COPY . .

RUN python manage.py makemigrations
RUN python manage.py migrate

CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]
