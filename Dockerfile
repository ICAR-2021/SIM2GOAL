FROM python:3

WORKDIR /usr/src/Sim2Goal

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "eval_GoalFlow.py", \
      "--model_path", "./models/weights/GFLOW-TrajNet-" ]

