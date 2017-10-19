var webdriverio = require('webdriverio');

var options = {
    desiredCapabilities: {
        browserName: 'firefox'
    }
};
var expectedText = "Welcome to the automation stuff web service"
webdriverio
    .remote(options)
    .init()
    .url('http://localhost:5000')
    .getText('#msg').then(function(elementText) {
        console.log(elementText === expectedText)
    })
    .end();
