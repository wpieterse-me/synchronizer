FROM ubuntu@sha256:723c26a4928b46145c18c35eb667cfc5f336596f0aead95dcbf54adc45a53400

ARG USER_ID
ARG GROUP_ID

RUN apt update
RUN apt install --yes ssh git

RUN addgroup --gid ${GROUP_ID} dev
RUN adduser --disabled-password --gecos '' --uid ${USER_ID} --gid ${GROUP_ID} dev

RUN mkdir -p /home/dev/.ssh/
RUN ssh-keyscan -H github.com >> /home/dev/.ssh/known_hosts
RUN ssh-keyscan -H gitlab.com >> /home/dev/.ssh/known_hosts
RUN cat /home/dev/.ssh/known_hosts

ADD process_docker_git.command /work_git
RUN chmod +x /work_git
RUN chown dev:dev /work_git

RUN mkdir -p /work
RUN chown dev:dev -R /work

WORKDIR /work

USER dev

ENTRYPOINT [ "/work_git" ]
