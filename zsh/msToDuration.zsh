msToDuration() {
    node -e "
        var msIn = $1;
        var hours = Math.floor(msIn/1000/60/60);
        var minutes = Math.floor(msIn/1000/60 - (hours*60));
        var seconds = Math.floor(msIn/1000 - (hours*60*60 + minutes*60));
        var ms = Math.floor(msIn - (hours*60*60*1000 + minutes*60*1000 + seconds*1000));
        console.log(
                ('0' + hours).slice(-2) + 
                ':' + 
                ('0' + minutes).slice(-2) + 
                ':' + 
                ('0' + seconds).slice(-2) + 
                '.' + 
                ms);
    "
}
