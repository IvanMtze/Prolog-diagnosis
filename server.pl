<html lang="en">
    <head>
        <script src="/vendor/jquery/jquery-2.0.3.min.js"></script>
        <script src="/pengine/pengines.js"></script>
        <script type="text/x-prolog">



        </script>
        <script>
            var pengine = new Pengine({
                ask: 'hypothesis(ivan,X).',
                src:'./diagnosis.pl'
                onoutput: handleOutput,
                onabort: handleAbort
            });
            function handleOutput() {
                $("#msg").html("<h1>" + this.data + "</h1>");
            }
            function handleAbort() {
                $("#err").html("<h4>Aborted</h4>");
            }
        </script>
    </head>
    <body>
        <center style="margin-top:200px;">
            <div id="msg"></div>
            <button onclick="pengine.abort()">Abort</button>
            <div id="err"></div>
        </center>
    </body>
</html>

