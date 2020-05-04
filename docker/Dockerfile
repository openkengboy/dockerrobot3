FROM python:3

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod 755 /opt/bin/entry_point.sh
RUN mkdir /result
RUN chmod 755 /result
RUN mkdir /tests
RUN chmod 755 /tests
RUN apt-get update -y \
  && apt-get -y install \
    xvfb \
    gconf-service libasound2 \
    libatk1.0-0 libcairo2 libcups2 libfontconfig1 \
    libgdk-pixbuf2.0-0 libgtk-3-0 \
    libnspr4 libpango-1.0-0 libxss1 \
    fonts-liberation libappindicator3-1 \
    libnss3 lsb-release xdg-utils \
    libgbm-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
RUN wget -N https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
RUN dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb; apt-get -fy install
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install robotframework-seleniumlibrary webdrivermanager robotframework-requests
RUN webdrivermanager chrome --linkpath /usr/local/bin
RUN python3 -m pip freeze
ENTRYPOINT [ "/opt/bin/entry_point.sh" ]