# Overview [![Build Status][travis-image]][travis-url]
This cookbook installs Jenkins with a sample job

# Running 
To run locally, execute: `kitchen converge`

You can then login to explore the guest:  `kitchen login`


# Testing

**Prerequisite** -  ChefDK must be [installed](https://docs.chef.io/install_dk.html).

The included [Rakefile](Rakefile) will execute static analysis with `RuboCop` and `Foodcritic`, unit tests with `ChefSpec` and integration tests with `Test Kitchen` with `ServerSpec`

To execute just the tests without running `Test Kitchen`, run:

```
chef exec rake
```

To execute all tests including the `Test Kitchen` integration tests, run:

```
chef exec rake full
```

[travis-url]: http://travis-ci.org/cplee/cookbook-aftp
[travis-image]: http://img.shields.io/travis/cplee/cookbook-aftp.svg?style=flat