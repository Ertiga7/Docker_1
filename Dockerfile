
FROM openjdk
 
ADD . /c/Users/pjh40560/Docker-1/Jenkinsfile
 
COPY . D:\Dock
 
WORKDIR D:\Dock
 
RUN javac echo.java
 
RUN java echo
 
CMD [ "echo" , "Welcome to this world" ]


