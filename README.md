# TaiwanWeatherRetriever

```text
  _______    _                 __          __        _   _               _____      _        _
 |__   __|  (_)                \ \        / /       | | | |             |  __ \    | |      (_)
    | | __ _ ___      ____ _ _ _\ \  /\  / /__  __ _| |_| |__   ___ _ __| |__) |___| |_ _ __ _  _____   _____ _ __ 
    | |/ _` | \ \ /\ / / _` | '_ \ \/  \/ / _ \/ _` | __| '_ \ / _ \ '__|  _  // _ \ __| '__| |/ _ \ \ / / _ \ '__|
    | | (_| | |\ V  V / (_| | | | \  /\  /  __/ (_| | |_| | | |  __/ |  | | \ \  __/ |_| |  | |  __/\ V /  __/ |
    |_|\__,_|_| \_/\_/ \__,_|_| |_|\/  \/ \___|\__,_|\__|_| |_|\___|_|  |_|  \_\___|\__|_|  |_|\___| \_/ \___|_| 
```

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/leeway64/TaiwanWeatherRetriever)

TaiwanWeatherRetriever is a REST API running as a Linux `systemd` service that gets the current
weather for any region in Taiwan.

As a bonus, TaiwanWeatherRetriever can also find the equivalent 民國 calendar year for any year.


## Installation
Clone this repository if you wish to generate documentation and run unit tests.
```bash
git clone https://github.com/leeway64/TaiwanWeatherRetriever.git
```

### Installing the Service
TaiwanWeatherRetriever is packaged in an `AppImage`. Get the AppImage from the
[Releases page](https://github.com/leeway64/TaiwanWeatherRetriever/releases).


## Generating Documentation
For more information on the 民國 reckoning of time, along with a primer into REST APIs, run the following command:
```bash
pdflatex --output-directory=doc doc/supplemental-information.tex
```
This will create a supplemental PDF inside the `doc` directory.

To generate the logo seen at the top of this page yourself, run this command:
```bash
make draw-logo
```


## Usage

### POST Request for Weather
```mermaid

```

```bash

```

### POST Request for 民國 Calendar Year
```mermaid
sequenceDiagram
    actor User
	%% Actor activations and + and -
    User-->>+localhost:5000/minguo: POST request containing the year to convert
    localhost:5000/minguo-->>-User: Response: Year in the POST request body converted to the year in the 民國 calendar
```

```bash

```

### GET Request for Current 民國 Calendar Year
```mermaid
sequenceDiagram
    User->>localhost:5000/minguo: GET request
	%% This is a comment
	%% Support Taiwanese businesses, such as TSMC!
    localhost:5000/minguo->>User: Response: Current 民國 calendar year
	Note over User,localhost: These diagrams were drawn using Mermaid
```

```bash

```

## Unit Tests
```bash
make run-tests
```


## Third-Party Software
- [Flask](https://github.com/pallets/flask) (BSD 3-Clause License): Python framework for building web applications
- [jwt](https://github.com/GehirnInc/python-jwt) (Apache License 2.0): JSON Web Token library for Python
- [figlet](https://www.npmjs.com/package/figlet) (MIT License): ASCII art renderer for Node.js
- [pytest](https://docs.pytest.org/en/7.3.x/license.html) (MIT License): Python testing framework

In addition to the previous sofware, this project also uses texlive, texinfo,
texlive-fonts-recommended, and texlive-fonts-extra to convert LaTeX to PDF. For Ubuntu-based
systems, refer to this [page](https://linuxhint.com/convert-tex-latex-file-to-pdf/) for how to
install these packages, along with how to convert a LaTeX document to a PDF.

To learn more about how to use LaTeX in general, [this page](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
provides many useful examples.

```text
Long live Taiwan!
Celebrate 1996!
Remember to vote in 2024!
```
