function closeNav(){
    let links = document.getElementById("Links");
    if(links.style.display == "grid"){
        links.style.display="none";
    }
    else{
        links.style.display="grid";
    }
}