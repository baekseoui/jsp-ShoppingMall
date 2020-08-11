var timer = new Timer();
timer.start({countdown: true, startValues: {seconds: 1000}});
    document.querySelector('.values').innerHTML = timer.getTimeValues().toString();
timer.addEventListener('secondsUpdated', function (e) {
    document.querySelector('.values').innerHTML = timer.getTimeValues().toString();
});