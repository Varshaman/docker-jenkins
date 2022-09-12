FROM docker-jenkins
WORKDIR /src/test/java
ADD . /src/test/java
RUN pip install -r requirements.txt
EXPOSE 80
ENV NAME world
CMD [“docker-jenkins”, “test.java”]

