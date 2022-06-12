FROM server_midgard_git-common:latest

ADD process_git_synchronize.command /process

ENTRYPOINT [ "/process" ]
