moment.locale('es');
    
    let fecha=document.getElementsByClassName('fecha');
    let ahora=moment();
    
    for (let i = 0; i < fecha.length; i++) {
         let nueva=fecha[i].textContent;
         let fechaDeseo = moment(nueva);
         fecha[i].innerText="Hace "+fechaDeseo.startOf('minutes').fromNow(ahora);
        
        
    }
    // moment(nueva).startOf('day').fromNow();