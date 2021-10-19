FROM gcr.io/google.com/cloudsdktool/cloud-sdk:360.0.0-alpine

WORKDIR /app

COPY  prune-gcr .

CMD [ "/usr/bin/python3", "/app/prune-gcr"]

ENTRYPOINT [ "/usr/bin/python3", "/app/prune-gcr" ]