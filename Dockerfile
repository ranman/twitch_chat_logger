FROM docker.elastic.co/logstash/logstash:7.6.0
RUN rm -f /usr/share/logstash/pipeline/logstash.conf && rm -f /usr/share/logstash/config/logstash.yml && bin/logstash-plugin install logstash-input-irc
COPY pipeline/irc.conf /usr/share/logstash/pipeline/
