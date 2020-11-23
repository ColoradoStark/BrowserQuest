# BrowserQuest

[![Screenshot](http://img.youtube.com/vi/kYcNJQ3Y6Sg/0.jpg)](http://www.youtube.com/watch?v=kYcNJQ3Y6Sg)

[Play the RPG Demo:](http://play.jrpg.com)


BrowserQuest was a HTML5/JavaScript multiplayer game experiment setup in 2012 by the Mozilla project. The project was not being maintained or updated, the website went down some of the dependencies disappeared. The javascript language also had major changes in 2016 which created issues.  And everything just stopped working.

I wasn't able to find a good running version or instructions on how to set this up that still worked anywhere. The goal of this repository fork is to have a stable version that works, and has all of the dependencies frozen in time.  The project is working again and can be deployed on a local Docker container with the instructions below.  To deploy it to a live server, the only other step you you will need to do is change the IP addresses in the client/config folder to the IP in your server.  See the client directory readme for further instructions.

## Documentation

To run the program on a local machine with Docker type:

```docker container run -it -p 80:80 -p 8000:8000 coloradostark/browserquest bash```

You will see a command prompt, type the following:

```node server/js/main.js &```

The server is now running.  Now Open a new command prompt session and then type the following:

```nvm use 10.23.0```

```cd /```

```http-server -p 80 ./BrowserQuest/client```

That is all you need to do.  It should be running and you can test it by typing 127.0.0.1 in the browser.


More Documentation is located in client and server directories.

## License

Code is licensed under MPL 2.0. Content is licensed under CC-BY-SA 3.0.
See the LICENSE file for details.


## Credits

2020 Port to Docker by:

- Colorado Stark- [Colorado Stark](http://www.coloradostark.com)

Original Project Created by [Little Workshop](http://www.littleworkshop.fr):

- Franck Lecollinet - [@whatthefranck](http://twitter.com/whatthefranck)
- Guillaume Lecollinet - [@glecollinet](http://twitter.com/glecollinet)


