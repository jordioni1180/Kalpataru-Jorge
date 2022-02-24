let filtroPalabras=['Abanto','Abrazafarolas','Adufe','Alcornoque','Alfeñique','Andurriasmo','Arrastracueros','Artabán','Atarre','Baboso','Barrabás','Barriobajero','Bebecharcos','Bellaco','Belloto','Berzotas','Besugo','Bobalicón','Bocabuzón','Bocachancla','Bocallanta','Boquimuelle','Borrico','Botarate','Brasas','Cabestro','Cabezaalberca','Cabezabuque','Cachibache','Cafre','Cagalindes','Cagarruta','Calambuco','Calamidad','Caldúo','Calientahielos','Calzamonas','Cansalmas','Cantamañanas','Capullo','Caracaballo','Caracartón','Caraculo','Caraflema','Carajaula','Carajote','Carapapa','Carapijo','Cazurro','Cebollino','Cenizo','Cenutrio','Ceporro','Cernícalo','Charrán','Chiquilicuatre','Chirimbaina','Chupacables','Chupasangre','Chupóptero','Cierrabares','Cipote','Comebolsas','Comechapas','Comeflores','Comestacas','Cretino','Cuerpoescombro','Culopollo','Descerebrado','Desgarracalzas','Dondiego','Donnadie','Echacantos','Ejarramantas','Energúmeno','Esbaratabailes','Escolimoso','Escornacabras','Estulto','Fanfosquero','Fantoche','Fariseo','Filimincias','Foligoso','Fulastre','Ganapán','Ganapio','Gandúl','Gañán','Gaznápiro','Gilipuertas','Giraesquinas','Gorrino','Gorrumino','Guitarro','Gurriato','Habahelá','Huelegateras','Huevón','Lamecharcos','Lameculos','Lameplatos','Lechuguino','Lerdo','Letrín','Lloramigas','Longanizas','Lumbreras','Maganto','Majadero','Malasangre','Malasombra','Malparido','Mameluco','Mamporrero','Manegueta','Mangarrán','Mangurrián','Mastuerzo','Matacandiles','Meapilas','Melón','Mendrugo','Mentecato','peinaovejas','Mequetrefe','Merluzo','Metemuertos','Metijaco','Mindundi','Morlaco','Morroestufa','Muerdesartenes','Orate','Ovejo','Pagafantas','Palurdo','Pamplinas','Panarra','Panoli','Papafrita','Papanatas','Papirote','Paquete','Pardillo','Parguela','Pasmarote','Pasmasuegras','Pataliebre','Patán','Pavitonto','Pazguato','Pecholata','Pedorro','Peinabombillas','Peinaovejas','Pelagallos','Pelagambas','Pelagatos','Pelatigres','Pelazarzas','Pelele','Pelma','Percebe','Perrocostra','Perroflauta','Peterete','Petimetre','Picapleitos','Pichabrava','Pillavispas','Piltrafa','Pinchauvas','Pintamonas','Piojoso','Pitañoso','Pitofloro','Plomo','Pocasluces','Pollopera','Quitahipos','Rastrapajo','Rebañasandías','Revientabaules','Ríeleches','Robaperas','Sabandija','Sacamuelas','Sanguijuela','Sinentraero','Sinsustancia','Sonajas','Sonso','Soplagaitas','Soplaguindas','Sosco','Tagarote','Tarado','Tarugo','Tiralevitas','Tocapelotas','Tocho','Tolai','Tontaco','Tontucio','Tordo','Tragaldabas','Tuercebotas','Tunante','Zamacuco','Zambombo','Zampabollos','Zamugo','Zángano','Zarrapastroso','Zascandil','Zopenco','Zoquete','Zote','Zullenco','Zurcefrenillos','gilipollas','maricon','cabezabuque','mamawebo','mierdoso','Cuerpo escombro','puto','puta','put4','bobo','chupapollas','puton','etarra','peruano','paraguayo','gonorre','subnormal','anormal','escoria','campero','txoriburu','kakati','artaburu','ustel','etxekalde','zakar','potrohandi','ganorabako','belarrimotz','Buruarin','putakume','sasiko','besarkafarolak','kaiku','ergel',' babo','kirten','astakirten','zerri','nardagarri','adimen urriko','adimen gutxiko','tentel','astapotro','pikutara joan','alua','petral','borono','alproja','pepelerdo','zorra'];

function validar(){
  let valido=true;
  let str =$("#textArea").val();
  let arr = str.split(' ');
  console.log(arr);
  let mayusArr= filtroPalabras.map(name=>name.toUpperCase());
  let mayusFiltro=arr.map(name=>name.toUpperCase());
  for(let i=0; i<mayusFiltro.length;i++){
      if (valido==true) {   
        for(let j=0;j<mayusArr.length;j++){
          if(mayusArr[j]==mayusFiltro[i]){
          alert("Las palabras ofensivas estan prohibidas");
          valido=false;
            }
      }
  }; 
}  
if(valido==true) {
      document.getElementById('btnEnviar').submit();

    }


}