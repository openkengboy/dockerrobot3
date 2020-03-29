FROM python:3

RUN mkdir /result
RUN chmod 755 /result
RUN mkdir /tests
RUN chmod 755 /tests
RUN apt-get update
RUN wget -N https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
RUN dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb; apt-get -fy install
RUN python3 -m pip install robotframework-seleniumlibrary webdrivermanager
RUN webdrivermanager chrome --linkpath /usr/local/bin

CMD ["robot", "-d", "/result", "/tests/*.robot"]