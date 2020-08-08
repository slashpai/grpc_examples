FROM ruby:2.6.6

ARG user=alice
ARG group=alice
ARG uid=1000
ARG gid=1000

RUN mkdir -p "/opt/${user}" \
  && chown ${uid}:${gid} "/opt/${user}" \
  && groupadd -g ${gid} ${group} \
  && useradd -d "/opt/${user}" -u ${uid} -g ${gid} -s /bin/bash ${user}

USER ${user}

WORKDIR /opt/${user}

COPY . .

RUN gem install bundler; \
    bundle install

CMD ["sleep", "5h"]
