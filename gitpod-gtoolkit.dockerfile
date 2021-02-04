 FROM gitpod/workspace-full-vnc
 
 # better display when seen from tablet
 RUN sudo sed -i s/1920x1080/1200x900/ /usr/bin/start-vnc-session.sh