# This vs That 
A Comparison application boileplate

Check out [the deployed app](https://rajasegar.github.io/this-vs-that/)!


This uses [Prism](https://prismjs.com/) code hightlighting with the [file highlight](https://prismjs.com/plugins/file-highlight/) plugin.

Inspired by [YouMightNotNeedJQuery](http://youmightnotneedjquery.com/).

## Usage

### 1. Clone the repo
```sh
git clone git@github.com:rajasegar/this-vs-that.git
```

### 2. Set the conventions in this shell script.

Feel free to modify the parameters like `INPUT`, `OUTPUT`, `EXT`, etc.,

```sh
# File name convention for left column
# eg: this.html
INPUT="es5"

# File name convention for right column
# eg: that.html
OUTPUT="es6"

# File extension to identify which type of file
# eg: html, js, css, etc.,
EXT="js"

```

### 3. Create new folders/files under `code/` to compare based on the conventions set. For example

```
code
| fat-arrow-functions
| | es5.js
| | es6.js
```

es5.js
```js
// ---------- ES5 ----------
function calcCircleArea(radius) {
  return Math.PI * radius * radius;
}
```

es6.js
```js
// ---------- ES6 ----------
const calcCircleArea = (radius) => Math.PI * radius * radius;
```

### 4. Finally update the index.html to reflect the changes using the shell script

```sh
$ ./update-doc.sh
```

You should get something like this:
![es5vses6](https://github.com/rajasegar/this-vs-that/blob/master/assets/sample.png)
## Running locally

This is a vanilla JavaScript application. You must serve the files locally in order for the JavaScript and CSS to load in the browser. For example:

```
npm install http-server -g
http-server .
```

Visit http://localhost:8080 to see the results.
If you make changes, restart the server.
You might have to clear the cache to see your changes. (In Chrome, open the dev tools, then right click on the browser's main refresh arrow and choose Empty Cache and Hard Reload, or configure your dev tools to not keep a cache in the first place.)

## Updating the comparison list
Once you made changes to the comparison files under code/ you need to run the `update-doc.sh` script to reflect the latest changes.
```sh
./update-doc.sh
```

## Contributing

Contributions are welcome!
Simple examples can be added to this cheat sheet.
Copy and paste a `<section>` block in `index.html`.
Create the code sample files in the `code` directory, change the `data` tag of the `<pre>`, and you're done!
Try to follow the same file naming scheme as is used elsewhere, and make sure to name any `.html` files


## Deploying

This site is deployed to [GitHub Pages](https://pages.github.com/) automatically from the `master` branch.



