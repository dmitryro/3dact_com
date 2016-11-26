{% load staticfiles %}

<!DOCTYPE html>
<html>
<head>
    <title>3D Act</title>
    <meta charset="utf-8">

<!--
    <script src="http://3dact.com/static/js/require.js"></script>
-->
    <!-- Bring In Bootstrap -->
    <script src="http://3dact.com/static/js/paper-full.js"></script>
    <script type="text/paperscript" canvas="canvas">
        var path;
        var types = ['point', 'handleIn', 'handleOut'];
        function findHandle(point) {
            for (var i = 0, l = path.segments.length; i < l; i++) {
                for (var j = 0; j < 3; j++) {
                    var type = types[j];
                    var segment = path.segments[i];
                    var segmentPoint = type == 'point'
                            ? segment.point
                            : segment.point + segment[type];
                    var distance = (point - segmentPoint).length;
                    if (distance < 3) {
                        return {
                            type: type,
                            segment: segment
                        };
                    }
                }
            }
            return null;
        }

        var currentSegment, mode, type;
        function onMouseDown(event) {
            if (currentSegment)
                currentSegment.selected = false;
            mode = type = currentSegment = null;

            if (!path) {
                path = new Path();
                path.fillColor = {
                    hue: 360 * Math.random(),
                    saturation: 1,
                    brightness: 1,
                    alpha: 0.5
                };
            }

            var result = findHandle(event.point);
            if (result) {
                currentSegment = result.segment;
                type = result.type;
                if (path.segments.length > 1 && result.type == 'point'
                        && result.segment.index == 0) {
                    mode = 'close';
                    path.closed = true;
                    path.selected = false;
                    path = null;
                }
            }

            if (mode != 'close') {
                mode = currentSegment ? 'move' : 'add';
                if (!currentSegment)
                    currentSegment = path.add(event.point);
                currentSegment.selected = true;
            }
        }

        function onMouseDrag(event) {
            if (mode == 'move' && type == 'point') {
                currentSegment.point = event.point;
            } else if (mode != 'close') {
                var delta = event.delta.clone();
                if (type == 'handleOut' || mode == 'add')
                    delta = -delta;
                currentSegment.handleIn += delta;
                currentSegment.handleOut -= delta;
            }
        }
    </script>
<style>
html,
body {
    margin: 0;
    overflow: hidden;
    height: 100%;
}

/* Scale canvas with resize attribute to full size */
canvas[resize] {
    width: 100%;
    height: 100%;
}
</style>
    <!-- Application Styles and Scripts -->
<!--
    <script src="http://3dact.com/static/js/wq/chart.js"></script>
    <script src="http://3dact.com/static/js/wq/pandas.js"></script>
-->
</head>
<body>
{% block content %}{% endblock %}
</body>
</html>
