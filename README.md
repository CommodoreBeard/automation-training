# Automation Training

This project is to introduce basic automated testing skills. The project will slowly build a RESTful webservice with a front end and a whole range of tests to cover the application.

## Tech Stack
### Backend: _Python_
- Web Framework: [Python Flask](http://flask.pocoo.org/)

### Frontend Tests: _JavaScript_
- BDD Framework: [CucmberJS](https://github.com/cucumber/cucumber-js)
- Webdriver Framwork: [WebDriverIO](http://webdriver.io/)

### Build Tools:
- _Python_: VirtualEnv
- _JavaScript_: Yarn / npm

## Running Web Services
```
cd application
virtualenv venv -p python3 --system-site-packages && source venv/bin/activate
pip3 install -r requirements.txt
cd ..
yarn flask-service:start
```
Thee web service will be runnning on `http://localhost:5000`

## Stopping Web Service
```
yarn flask-service:stop
```

## Running frontend tests
You can start the web service, run tests and close the web service in one command:
```
yarn test:frontend
```
