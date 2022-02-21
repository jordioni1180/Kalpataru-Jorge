function MisDeseos(){
    let Megusta = document.getElementsByClassName("MeGusta");
    let Deseos = document.getElementsByClassName("deseos");

    for (let i = 0; i < Megusta.length; i++) {
        Megusta[i].style.display="none";
    }

    for (let i = 0; i < Deseos.length; i++) {
        Deseos[i].style.display="block";

    }

}


function MeGusta(){
    let Megusta = document.getElementsByClassName("MeGusta");
    let Deseos = document.getElementsByClassName("deseos");

    for (let i = 0; i < Deseos.length; i++) {
        Deseos[i].style.display="none";

    }

    for (let i = 0; i < Megusta.length; i++) {
        Megusta[i].style.display="block";
    }
}
