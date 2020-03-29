# Robotframwork 3
Run automation test with robot framework on docker container

# Folder in images 
- /tests is for robotframework files.
- /result is for result of running automate test

# How to docker run automate test
- $> git clone https://github.com/openkengboy/robotframwork3.git
- $> cd robotframwork3
- $> docker run --rm -it -v $(pwd)/example:/tests -v $(pwd)/example/result:/result kengboy/robotframework3:alpha
