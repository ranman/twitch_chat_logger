FROM docker.elastic.co/logstash/logstash:7.6.0
RUN rm -f /usr/share/logstash/pipeline/logstash.conf \
    && bin/logstash-plugin install logstash-input-irc logstash-output-amazon_es
COPY pipeline/irc.conf /usr/share/logstash/pipeline/
COPY logstash.yml /usr/share/logstash/config/logstash.yml
