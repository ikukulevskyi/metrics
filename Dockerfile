FROM busybox:latest
LABEL maintainer="Ivan Kukulevskyy"
LABEL org.label-schema.vcs-url="https://github.com/zozulya-ua/metrics"
LABEL version="latest"
VOLUME ["/opt/metrics/proc"]
WORKDIR /opt/metrics
COPY proc.sh .
CMD [ "./proc.sh" ]