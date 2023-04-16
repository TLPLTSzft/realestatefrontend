import { useEffect } from "react";
import RealestateCard from "./RealestateCard";

function RealestatesList(props) {
  const { realestates, onMount } = props;
  useEffect(() => {
    onMount();
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
      <div className="pt-2 row gy-4 justify-content-center">{cardList}</div>
    </section>
  );
}

export default RealestatesList;
