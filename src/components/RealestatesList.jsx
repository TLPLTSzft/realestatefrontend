import { useState, useEffect } from "react";
import RealestateCard from "./RealestateCard";

function RealestatesList(props) {
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
        console.log(data.message);
      }
    });
  };

  const [realestates, setRealestates] = useState([]);
  useEffect(() => {
    realestatesList();
  }, []);

  const cardList = [];

  realestates.forEach((realestate) => {
    cardList.push(
      <RealestateCard key={realestate.id} realestate={realestate} />
    );
  });

  return (
    <section>
      <h2>Realestates List</h2>
      <div className="row gy-4 justify-content-center">{cardList}</div>
    </section>
  );
}

export default RealestatesList;
