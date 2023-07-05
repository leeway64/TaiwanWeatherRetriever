var figlet = require("figlet");

figlet.text(
    "TaiwanWeatherRetriever",
    {
        font: "Big",
        horizontalLayout: "default",
        verticalLayout: "default",
        width: 120,
        whitespaceBreak: true,
    },
    function (err, data) {
        console.log(data);
    }
);
