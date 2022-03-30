FROM ubuntu@sha256:723c26a4928b46145c18c35eb667cfc5f336596f0aead95dcbf54adc45a53400

ARG USER_ID
ARG GROUP_ID

RUN apt update
RUN apt upgrade --yes
RUN apt install --yes git

RUN addgroup --gid ${GROUP_ID} dev
RUN adduser --disabled-password --gecos '' --uid ${USER_ID} --gid ${GROUP_ID} dev

ADD process_docker_git.command /work_git
RUN chmod +x /work_git
RUN chown dev:dev /work_git

RUN mkdir -p /work
RUN chown dev:dev -R /work

WORKDIR /work

USER dev

ENTRYPOINT [ "/work_git" ]
