# Docker Robotframwork3

<img width="300" alt="Docker Robotframwork3" src="https://user-images.githubusercontent.com/8040954/77850583-becd1f80-71fd-11ea-92ed-b79d40ef4357.png">

Run automation test with robot framework on docker container

# Folder in images 
- /tests is for robotframework files.
- /result is for result of running automate test

# How to docker run automate test
- $> git clone https://github.com/openkengboy/robotframwork3.git
- $> cd robotframwork3
- $> docker run --rm -it -v $(pwd)/example:/tests -v $(pwd)/example/result:/result kengboy/robotframework3:alpha
