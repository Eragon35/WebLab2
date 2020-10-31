let header = window.document.getElementById("headline");
header.addEventListener("mouseenter", e =>  {
    let target = header.getBoundingClientRect();
    let x = e.clientX - target.left;
    if (x < 210){
        header.style.transform = 'translateX(120%) rotate(360deg) ';
        setTimeout("header.style.transform += 'translate(-120%, 0)'", 250);
        header.style.width = "420px";
    }
    else {
        header.style.transform = 'translateX(-120%) rotate(-360deg)';
        setTimeout("header.style.transform += 'translate(+120%, 0)'", 250);
        header.style.width = "420px";
    }
});

let flip = document.getElementById("return");
flip.addEventListener("mouseenter", () => { flip.style.transform += 'rotateX(360deg)'; });

function draw() { //drawind grid
    let canvas = document.getElementById('image');
    if (canvas.getContext) {
        let ctx = canvas.getContext('2d');

        ctx.fillStyle = "rgba(256, 256, 256, 0.8)"; // background fill
        ctx.fillRect(0, 0, canvas.width, canvas.height);

        for (let x = 40; x < 361; x += 40) { // gird
            ctx.moveTo(x, 0);
            ctx.lineTo(x, 400);
        }
        for (let y = 40; y < 361; y += 40) {
            ctx.moveTo(0, y);
            ctx.lineTo(400, y);
        }
        ctx.strokeStyle = "#333";
        ctx.stroke();

        ctx.fillStyle = 'black'; //axis
        ctx.lineWidth = 2;
        ctx.beginPath();
        ctx.moveTo(0, 200);
        ctx.lineTo(400, 200);
        ctx.moveTo(200, 0);
        ctx.lineTo(200, 400);
        ctx.stroke();

        //    TODO: draw dots form table
        let table = document.getElementById('table');
        for (let r = 1, n = table.rows.length; r < n; r++) {
            let x = table.rows[r].cells[0].innerHTML
            let y = table.rows[r].cells[1].innerHTML
        //    draw dot
            ctx.fillStyle = 'rgb(220, 20, 60)';
            ctx.beginPath();
            ctx.arc(200 + 40 * x, 200 - 40 * y, 6, 0, 2 * Math.PI);
            ctx.fill();
        }
    }
}