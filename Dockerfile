# Python version
FROM python:3 

# This command is used to install django
RUN pip install django==3.2

# Copy the code from current folder to Docker Container
COPY . .

# To migrate the changes
RUN python manage.py migrate

# Running the main CMD Command
CMD ["python","manage.py","runserver"]