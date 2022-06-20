FROM server_midgard_git-common:latest

ADD process_git_clone.command /process

ENTRYPOINT [ "/process" ]
