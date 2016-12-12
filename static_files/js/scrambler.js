var scrambler = {
    scramble: function(message, minFillers, maxFillers, lineLength) {

        this.clearOutput();

        var fillerChars = this.defaults.fillerChars,
            domTarget = this.defaults.domTarget,
            charCount = 0;
        minFillers = minFillers || this.defaults.minFillers;
        maxFillers = maxFillers || this.defaults.maxFillers;
        lineLength = lineLength || this.defaults.lineLength;

        var appendToBody = function(char, hidden) {
            $("<span" + (!hidden || " hidden") + ">"+char+"</span>").appendTo(domTarget);
            if(!hidden) {
                charCount++;
                if(charCount % lineLength === 0) $("<br>").appendTo(domTarget);
            }
        };

        var fillRangeWithRandomChars = function() {
            var range = Math.floor(Math.random() * (maxFillers - minFillers)) + minFillers;
            for(var i = 0; i < range; i++) {
                var filler = fillerChars.charAt(Math.floor(Math.random() * fillerChars.length));
                appendToBody(filler);
            }
        };

        message.split("").forEach(function(char) {
            fillRangeWithRandomChars();
            appendToBody(char, true);
        });

        fillRangeWithRandomChars();
    },
    defaults: {
        domTarget: "#scrambler",
        minFillers: 10,
        maxFillers: 50,
        lineLength: 100,
        fillerChars: "1234567890qwertyuiopasdfghjklzxcvbnm!@#$%^&*():?{}"
    },
    unscramble: function() {
        var spans = $(this.defaults.domTarget).children("span:hidden");
        var message = "";
        spans.each(function() { message += $(this).text() });
        this.clearOutput();
        $(this.defaults.domTarget).text(message);
    },
    clearOutput: function() {
        $(this.defaults.domTarget).empty();
    }
};
