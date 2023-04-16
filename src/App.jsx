import Nav from "./components/Nav";
import RealestatesList from "./components/RealestatesList";
import RealestateForm from "./components/RealestateForm";
import RentsList from "./components/RentsList";
import RentForm from "./components/RentForm";
import SalesList from "./components/SalesList";
import SaleForm from "./components/SaleForm";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle";
import { useState } from "react";

function App() {
  const [realestates, setRealestates] = useState([]);
  const realestatesList = () => {
    fetch("http://localhost:8000/api/realestate", {
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
          // { href: "#realestateslist", target: "", displayText: "Realestates List" },
          {
            href: "#realestateform",
            target: "",
            displayText: "Realestate Form",
          },
          { href: "#rentslist", target: "_blank", displayText: "Rents List" },
          { href: "#rentform", target: "_blank", displayText: "Rent Form" },
          { href: "#saleslist", target: "_blank", displayText: "Sales List" },
          { href: "#saleform", target: "_blank", displayText: "Sale Form" },
        ]}
      />
      <main className="container">
        <RealestatesList onMount={realestatesList} realestates={realestates} />
        <RealestateForm onSuccess={realestatesList} />
        {/* <RentsList />
        <RentForm />
        <SalesList />
        <SaleForm /> */}
      </main>
    </>
  );
}

export default App;
