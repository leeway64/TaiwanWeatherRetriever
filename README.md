# TaiwanWeatherRetriever

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/leeway64/TaiwanWeatherRetriever)

TaiwanWeatherRetriever is a REST API running as a Linux `systemd` service that gets the current
weather for any region in Taiwan.

As a bonus, TaiwanWeatherRetriever can also find the equivalent 民國 year for any year.
 

## Installation

### Installing the Service
TaiwanWeatherRetriever is packaged in an `AppImage`. Get the AppImage from the
[Releases page](https://github.com/leeway64/TaiwanWeatherRetriever/releases).


### Running Unit Tests and Generating Documentation
```bash
git clone https://github.com/leeway64/TaiwanWeatherRetriever.git
```

For more information on the 民國 reckoning of time, along with a primer into REST APIs, run the following commands:
```bash
pdflatex
```
This will create a supplemental PDF inside the `doc` directory.


## Usage

### POST
```bash

```

### GET
```bash

```

## Unit Tests
```bash
make run-tests
```

## Third-Party Software
- [Pytest](https://docs.pytest.org/en/7.3.x/license.html) (MIT License): Python testing framework
- 
