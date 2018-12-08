(function() {
	"use strict";
	
//video controls

//variables
    var video = document.querySelector("#27");
    // var playSwitch = document.querySelector("#playPause");
    var btn = document.getElementById("playPause");
	var trailers = document.querySelector("eventVid");
	var muteVideo = document.querySelector("muteVideo");
	var videoPlace = document.querySelector("videoTime");
	var volumeSlider = document.querySelector("volumeSlider");
	var trail = document.querySelector("eventVid");


//functions

//switch images
function playVideo() {
	//console.log("playing video");
	if (video.paused || video.ended) {
		video.play();
		btn.src = "images/pause.svg";
		//console.log("image switch");
	}else{
		video.pause();
		btn.src = "images/play.svg";
	}
}

// //alli
// function togglePlayPause() {
    
//     if (video.paused || video.ended) {
//        btn.title = 'PAUSE';
//        btn.innerHTML = 'PAUSE';
//        btn.className = 'PAUSE';
//        video.play();
//     }
//     else {
//        btn.title = 'PLAY';
//        btn.innerHTML = 'PLAY';
//        btn.className = 'PLAY';
//        video.pause();
//     }
// }

function changeButtonType(btn, value) {
    btn.title = value;
    btn.innerHTML = value;
    btn.className = value;
}

//hide buttons
function showHide() {
	//console.log("hide");
	btn.style.display = 'none';
}

//show play and pause button
function show() {
	btn.style.display = 'block';
	btn.classList.add("fadeIn");
    btn.classList.add("animated");
}

function shownoAnimate() {
	btn.style.display = 'block';
}

function vidReset() {
	trailers.currentTime = 0;
	btn.src = "images/play.svg";
}





//to edit below

function vidmute () {
	if(trailers.muted) {
		trailers.muted = false;
		muteVideo.innerHTML = "MUTE"; //if not mute, this will show
	} else {
		trailers.muted = true;
		muteVideo.innerHTML = "UNMUTE"; //if muted, this will show... maybe put pictures instead of words
	}
}

function vidSeek (){
	var seekto = trailers.duration * (videoPlace.value / 100);
	trailers.currentTime = seekto;
}

function seektimeupdate () {
	var nt = trailers.currentTime * (100 / trailers.duration);
	videoPlace.value = nt; //time is equivalent to the slider
}

function volumeCtrl () {
	trailers.volume = volumeSlider.value; //volume is equivalent to the slider
}


//listeners
	btn.addEventListener("click", playVideo, false);
	//muteVideo.addEventListener("click", vidmute, false);
	//videoPlace.addEventListener("change", vidSeek, false);
	//trailers.addEventListener("timeupdate", seektimeupdate, false);
	//volumeSlider.addEventListener("change", volumeCtrl, false);
	trail.addEventListener("mouseout", showHide, false);
	trail.addEventListener("mouseover", show, false);
	trailers.addEventListener("ended", vidReset, false);
	btn.addEventListener("mouseover", shownoAnimate, false);


})();


