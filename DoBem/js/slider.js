let dad = document.getElementsByClassName('slider-dad');
let pos = 0;
for (var i = 0; i < dad.length; i++) {

    dad[i].addEventListener("keydown", function (event) {

        if (event.which == 39) {
            let size = this.parentElement.getElementsByClassName('slider-sun').length;
            function posi(num) {
                if ((pos + num) < 0) {
                    return size - 1;
                }
                else {
                    return pos + num;
                }
            }
            let to = this.parentElement.getElementsByClassName('slider-sun')[posi(-1)];
            let lft = this.parentElement.getElementsByClassName('slider-left')[0];
            let cnt = this.parentElement.getElementsByClassName('slider-center')[0];
            let rgt = this.parentElement.getElementsByClassName('slider-right')[0];

            // cnt.classList.remove("align-self-stretch");
            lft.classList.remove("slider-left");
            rgt.classList.remove("slider-right");
            to.classList.remove("slider-none");
            cnt.classList.remove("slider-center");

            rgt.classList.add("slider-none");
            cnt.classList.add("slider-right");
            to.classList.add("slider-left");
            lft.classList.add("slider-center");
            // lft.classList.add("align-self-stretch");

            if (pos - 1 < 0) {
                pos = size - 1;
            } else {
                pos--;
            }
            console.log(pos);
        } else if (event.which == 37) {
            let size = this.parentElement.getElementsByClassName('slider-sun').length;
            function posi(num) {
                if ((pos + num) > (size - 1)) {
                    if (pos == size - 1) {
                        return 2;
                    }
                    else if (pos == size - 2) {
                        return 1;
                    }
                    else {
                        return 0;
                    }
                }
                else {
                    return pos + num;
                }
            }
            let to = this.parentElement.getElementsByClassName('slider-sun')[posi(3)];
            let lft = this.parentElement.getElementsByClassName('slider-left')[0];
            let cnt = this.parentElement.getElementsByClassName('slider-center')[0];
            let rgt = this.parentElement.getElementsByClassName('slider-right')[0];

            lft.classList.remove("slider-left");
            cnt.classList.remove("slider-center");
            // cnt.classList.remove("align-self-stretch");
            rgt.classList.remove("slider-right");
            to.classList.remove("slider-none");

            lft.classList.add("slider-none");
            cnt.classList.add("slider-left");
            rgt.classList.add("slider-center");
            // rgt.classList.add("align-self-stretch");
            to.classList.add("slider-right");

            if ((pos + 1) > (size - 1)) {
                pos = 0;
            } else {
                pos++;
            }
            console.log(pos);
        }
    });
    dad[i].classList.add("d-flex");
    dad[i].classList.add("flex-wrap");
    dad[i].classList.add("justify-content-center");
    dad[i].classList.add("align-items-start");
    let sun = dad[i].getElementsByClassName('slider-sun');
    for (var ia = 0; ia < sun.length; ia++) {
        if (ia == 0) {
            sun[ia].classList.add("slider-left");
            // sun[ia].classList.add("align-self-center");
        }
        else if (ia == 1) {
            sun[ia].classList.add("slider-center");
            // sun[ia].classList.add("align-self-stretch");
        }
        else if (ia == 2) {
            sun[ia].classList.add("slider-right");
            // sun[ia].classList.add("align-self-center");
        }
        else
            sun[ia].classList.add("slider-none");
    }
    let btnlft = dad[i].getElementsByClassName('slider-btn-left')[0];
    btnlft.addEventListener("click", function (event) {
        let size = this.parentElement.getElementsByClassName('slider-sun').length;
        function posi(num) {
            if ((pos + num) < 0) {
                return size - 1;
            }
            else {
                return pos + num;
            }
        }
        let to = this.parentElement.getElementsByClassName('slider-sun')[posi(-1)];
        let lft = this.parentElement.getElementsByClassName('slider-left')[0];
        let cnt = this.parentElement.getElementsByClassName('slider-center')[0];
        let rgt = this.parentElement.getElementsByClassName('slider-right')[0];

        // cnt.classList.remove("align-self-stretch");
        lft.classList.remove("slider-left");
        rgt.classList.remove("slider-right");
        to.classList.remove("slider-none");
        cnt.classList.remove("slider-center");

        rgt.classList.add("slider-none");
        rgt.classList.add("slider-before-right");
        setTimeout(function () { rgt.classList.remove("slider-before-right") }, 700);
        cnt.classList.add("slider-right");
        to.classList.add("slider-left");
        lft.classList.add("slider-center");
        // lft.classList.add("align-self-stretch");

        if (pos - 1 < 0) {
            pos = size - 1;
        } else {
            pos--;
        }
        console.log(pos);
    });

    let btnrgt = dad[i].getElementsByClassName('slider-btn-right')[0];
    btnrgt.addEventListener("click", function (event) {
        let size = this.parentElement.getElementsByClassName('slider-sun').length;
        function posi(num) {
            if ((pos + num) > (size - 1)) {
                if (pos == size - 1) {
                    return 2;
                }
                else if (pos == size - 2) {
                    return 1;
                }
                else {
                    return 0;
                }
            }
            else {
                return pos + num;
            }
        }
        let to = this.parentElement.getElementsByClassName('slider-sun')[posi(3)];
        let lft = this.parentElement.getElementsByClassName('slider-left')[0];
        let cnt = this.parentElement.getElementsByClassName('slider-center')[0];
        let rgt = this.parentElement.getElementsByClassName('slider-right')[0];

        lft.classList.remove("slider-left");
        cnt.classList.remove("slider-center");
        // cnt.classList.remove("align-self-stretch");
        rgt.classList.remove("slider-right");
        to.classList.remove("slider-none");

        lft.classList.add("slider-none");
        lft.classList.add("slider-before-left");
        setTimeout(function () { lft.classList.remove("slider-before-left") }, 700);
        cnt.classList.add("slider-left");
        rgt.classList.add("slider-center");
        // rgt.classList.add("align-self-stretch");
        to.classList.add("slider-right");

        if ((pos + 1) > (size - 1)) {
            pos = 0;
        } else {
            pos++;
        }
        console.log(pos);
    });
}
