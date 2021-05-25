HTMLWidgets.widget({

    name: 'countdown',

    type: 'output',

    factory: function(el, width, height) {

        // TODO: define shared variables for this instance

        return {

            renderValue: function(x) {

                // TODO: code to render the widget, e.g.
                countdown(
                    new Date(x.start),
                    function(ts) {
                        document.getElementById(el.id).innerHTML = ts.toHTML();
                    }
                );
            },

            resize: function(width, height) {

                // TODO: code to re-render the widget with a new size

            }

        };
    }
});