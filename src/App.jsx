import Nav from "./components/Nav";
import RealestatesList from "./components/RealestatesList";
import RealestateForm from "./components/RealestateForm";
// import RentalsList from "./components/RentalsList";
// import RentalForm from "./components/RentalForm";
// import SalesList from "./components/SalesList";
// import SaleForm from "./components/SaleForm";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle";
import { useState } from "react";
import localhost from "./Localhost";

function App() {
  const [realestates, setRealestates] = useState([]);
  const [realestateEditId, setRealestateEditId] = useState(0);
  const realestatesList = () => {
    fetch(`http://${localhost}:8000/api/realestates`, {
      // fetch(`http://localhost:8000/api/realestates`, {
      headers: {
        Accept: "application/json",
      },
    }).then(async (Response) => {
      const data = await Response.json();
      if (Response.status === 200) {
        setRealestates(data);
      } else {
        alert(data.message);
      }
    });
  };

  return (
    <>
      <Nav
        navItems={[
          // {
          //   href: "#realestatesList",
          //   target: "",
          //   displayText: "Realestates List",
          // },
          {
            href: "#realestateForm",
            target: "",
            displayText: "Realestate New",
          },
          // { href: "/RentalsList", target: "_blank", displayText: "Rentals List" },
          // { href: "/RentalForm", target: "_blank", displayText: "Rental Form" },
          // { href: "/salesList", target: "_blank", displayText: "Sales List" },
          // { href: "/saleForm", target: "_blank", displayText: "Sale Form" },
        ]}
      />

      <main className="container">
        <RealestatesList
          onMount={realestatesList}
          realestates={realestates}
          realestateEdit={(id) => setRealestateEditId(id)}
        />
        <RealestateForm
          onSuccess={realestatesList}
          realestateEditId={realestateEditId}
          realestateEditIdReset={() => setRealestateEditId(0)}
        />
        {/* <RentalsList />
        <RentalForm />
        <SalesList />
        <SaleForm /> */}
      </main>
    </>
  );
}

export default App;
