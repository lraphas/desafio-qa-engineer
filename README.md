## Installation
1. Install Ruby: `brew install ruby` (you need brew -> https://brew.sh/)
2. Install chromedriver to use Chrome: `brew cask install chromedriver`
3. Install geckodriver to use Firefox: `brew install geckodriver`


## Available Scripts

#### In the project directory, you can run:

Use `bundle install` to pull all dependencies you need to run the test suite.

Use `cucumber` to run all test scenarios. This command are configured to run on Chrome.

Use `cucumber -t @tag` to run only the tag scenarios that you choose.

Use `cucumber -p ci` to run all test scenarios in headless mode. This command are the same that Jenkins run on JenkinsCI.



