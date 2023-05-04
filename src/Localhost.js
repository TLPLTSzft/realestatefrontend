const localhost = "localhost";
// const localhost = "192.168.186.42";

export default localhost;

/*
A "localhost:8000"-es címen a Laravel-es Backend alkalmazás és az "/API/..." véggpontok is elérhetők, "mobil", "tablet", és "desktop" eszközön egyaránt
viszont,
az eredeti "localhost:3000"-es címen, "mobil"-on és "tablet"-en nem elérhető a React-es Frontend alkalmazás
ha, a "local" gép IP-címét (ahol a fejlesztői servert futtatjuk) megadjuk paraméterként, akkor "mobil" és "tablet" eszközön is elérhető lesz az alkalmazás
a változás érinti az:
  - App.jsx
  - RealestateForm.jsx
  - RealestateCard.jsx
állományokat
*/
