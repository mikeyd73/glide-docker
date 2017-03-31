FROM ctran/docker-centos-java


ENV TINI_SHA 066ad710107dc7ee05d3aa6e4974f01dc98f3888
ENV TINI_URL https://github.com/krallin/tini/releases/download/v0.5.0/tini-static

# Use tini as subreaper in Docker container to adopt zombie processes 
RUN mkdir /glide && mkdir /Downloads \
  && curl -fL ${TINI_URL} -o /bin/tini \
  && chmod +x /bin/tini \
  && echo "$TINI_SHA /bin/tini"

RUN 

VOLUME ["/glide", "/Downloads"]

ENV GLIDE_PORT   8080
ENV GLIDE_HOME   glide_${GLIDE_PORT}
ENV START_SCRIPT ${GLIDE_HOME}/startup.sh

WORKDIR /glide

COPY docker-entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/bin/tini", "--", "/entrypoint.sh"]

EXPOSE 8080

CMD /bin/bash