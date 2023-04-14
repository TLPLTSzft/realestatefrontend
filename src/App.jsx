import Nav from "./components/Nav";
import RealestatesList from "./components/RealestatesList";
import NewRealestate from "./components/NewRealestate";
import RentsList from "./components/RentsList";
import NewRent from "./components/NewRent";
import SalesList from "./components/SalesList";
import NewSale from "./components/NewSale";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap";

function App(props) {
  return (
    <>
      <Nav
        navItems={[
          // { href: "#realestateslist", target: "", displayText: "Realestates List" },
          { href: "#newrealestate", target: "", displayText: "New Realestate" },
          { href: "#rentslist", target: "_blank", displayText: "Rents List" },
          { href: "#newrent", target: "_blank", displayText: "New Rent" },
          { href: "#saleslist", target: "_blank", displayText: "Sales List" },
          { href: "#newsale", target: "_blank", displayText: "New Sale" },
        ]}
      />
      <main className="container">
        <RealestatesList />
        <NewRealestate />
        {/* <RentsList />
        <NewRent />
        <SalesList />
        <NewSale /> */}
      </main>
    </>
  );
}

export default App;
