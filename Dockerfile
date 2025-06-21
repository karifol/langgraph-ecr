FROM public.ecr.aws/lambda/python:3.11

# Copy function code

COPY app.py ${LAMBDA_TASK_ROOT}
COPY requirements.txt  ${LAMBDA_TASK_ROOT} 

# install dependencies
RUN pip install -r requirements.txt

CMD [ "app.handler" ]
