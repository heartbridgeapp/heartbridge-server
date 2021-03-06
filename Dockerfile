FROM tiangolo/uvicorn-gunicorn
COPY ./app /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
EXPOSE 8000:80
CMD ["uvicorn", "main:app", "--reload", "--host=0.0.0.0", "--port=80"]
