FROM alpine:latest
RUN \
apk add --no-cache \
	openjdk8-jre-base && \
mkdir -p \
	/books \
	/comics \
	/config \
	/files \
	/app/ubooquity && \
 echo "**** cleanup ****" && \
 rm -rf \
	/tmp/*
COPY Ubooquity.jar /app/ubooquity
COPY startup.sh /
RUN chmod +x /startup.sh
EXPOSE 2202 2203
VOLUME /books /comics /config /files
ENTRYPOINT ["/startup.sh"]