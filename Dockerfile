FROM  schoolofdevops/carts-maven
WORKDIR /opt/carts
RUN mvn package -DskipTests \
    && mv target/carts.jar /run/   \
    && rm -r target/*
EXPOSE 80
CMD java -jar /run/carts.jar --port=80
