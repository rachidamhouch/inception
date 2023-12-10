let start = 0;
let recoredGame = [];
let recoredPlyer = [];
let level = 1;
let check = 0;
// Red
let red  = new Audio();
let src1  = document.createElement("source");
src1.type = "audio/mpeg";
src1.src  = "sounds/red.mp3";
red.appendChild(src1);

function runRed()
{
    red.play();
    $("#red").addClass("pressed");
    setTimeout(() => {
        $("#red").removeClass("pressed");
    }, 100);
}


$("#red").click(() => {
    runRed();
    push(1);
});

//Green

let green  = new Audio();
let src2  = document.createElement("source");
src2.type = "audio/mpeg";
src2.src  = "sounds/green.mp3";
green.appendChild(src2);

function runGreen()
{
    green.play();
    $("#green").addClass("pressed");
    setTimeout(() => {
        $("#green").removeClass("pressed");
    }, 100);
}

$("#green").click(() => {
    runGreen();
    push(0);
});

//Yellow

let yellow  = new Audio();
let src3  = document.createElement("source");
src3.type = "audio/mpeg";
src3.src  = "sounds/yellow.mp3";
yellow.appendChild(src3);

function runYellow()
{
    yellow.play();
    $("#yellow").addClass("pressed");
    setTimeout(() => {
        $("#yellow").removeClass("pressed");
    }, 100);
}

$("#yellow").click(() => {
    runYellow();
    push(2);
});

//blue

let blue  = new Audio();
let src4  = document.createElement("source");
src4.type = "audio/mpeg";
src4.src  = "sounds/blue.mp3";
blue.appendChild(src4);

function runBlue()
{
    blue.play();
    $("#blue").addClass("pressed");
    setTimeout(() => {
        $("#blue").removeClass("pressed");
    }, 100);
}

$("#blue").click(() => {
    runBlue();
    push(3);
});

// Wrong

let wrong  = new Audio();
let src5  = document.createElement("source");
src5.type = "audio/mpeg";
src5.src  = "sounds/wrong.mp3";
wrong.appendChild(src5);

function runWrong()
{
    $("#level-title").text("Game Over, Press Any Key to Restart");
    wrong.play();
    $("body").addClass("game-over");
    setTimeout(() => {
        $("body").removeClass("game-over");
    }, 100);
}

/// Start ////

function push(m)
{
    recoredPlyer.push(m);
    check++;
    for (let i = 0; i < check; i++)
    {
       if (recoredGame[i] != recoredPlyer[i])
       {
            runWrong();
            start = 0;
            level = 1;
            recoredGame = [];
            recoredPlyer = [];
            check = 0;
            return;
       }
    }
    if (check == recoredGame.length)
        setTimeout(() => {
            random();
        }, 1500);
}
function random()
{
    let n = Math.floor(Math.random() * 4);
    recoredGame.push(n);
    recoredPlyer = [];
    check = 0;
    $("#level-title").text("Level " + level++);
    switch (n) {
        case 0:
            runGreen();
            break;
        case 1:
            runRed();
            break;
        case 2:
            runYellow();
            break;
        case 3:
            runBlue();
            break;
    }
}

$(document).keydown(() => {
    if (!start)
    {
        $("#level-title").text("Press A Key to Start");
        start = 1;
        setTimeout(() => {
            random();
        }, 500);
    }
});