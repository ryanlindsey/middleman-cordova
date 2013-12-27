Middleman + Cordova
===================

A Middleman template for Apache Cordova 3.3.x. The goal of this project is to provide a clean and efficient workflow for hybrid mobile app development while remaining platform agnostic.

**middleman-cordova** is a [Middleman 3.1.x](http://middlemanapp.com) project template for [Apache Cordova 3.3.x](http://http://cordova.apache.org/) with [Haml](http://haml.info), [Sass](http://sass-lang.com), [CoffeeScript](http://coffeescript.org) and [Bower](http://bower.io/) for package management.

### Requirements
* [Node.js](http://nodejs.org/)
* [Bower](http://bower.io/)
* [Apache Cordova 3.3.x](http://cordova.apache.org/docs/en/3.3.0/)

---

### Getting Started

1. Clone **middleman-cordova** into `~/.middleman`. You might need to create this directory if it doesn't exist.
   ```bash
   $ git clone git://github.com/pixelsonly/middleman-cordova.git ~/.middleman/middleman-cordova
   ```

2. Create a new Cordova project by running the *create* command,
   [see docs for help](http://cordova.apache.org/docs/en/3.3.0/guide_cli_index.md.html#The%20Command-Line%20Interface):
   ```bash
   $ cordova create YourAppName com.example.app "MyAppName"
   ```

3. Add a platform to your Cordova project, for example let's add iOS support.
   ```bash
   $ cd MyAppName
   $ cordova platforms add ios
   ```

4. Setup Middleman
   ```bash
   $ middleman init middleman --template=middleman-cordova
   ```

5. Install Bower packages
  ```bash
  $ cd middleman
  $ bower install
  ```

For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/) or feel free to hit me up on [Twitter](http://twitter.com/pixelsonly).

### Usage

**middleman-cordova** hooks into the Middleman build process, merges the compiled assets with the Cordova structure and runs the `cordova prepare` command.

Run `$ middleman build` from the Middleman project directory.

---

### Roadmap
* Integrate Cordova merges into build process
