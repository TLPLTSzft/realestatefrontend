import { useEffect } from "react";
import RealestateCard from "./RealestateCard";

function RealestatesList(props) {
  const { realestates, onMount, realestateEdit } = props;
  useEffect(() => {
    onMount();
  }, []);

  const cardList = [];
  realestates.forEach((realestate) => {
    cardList.push(
      <RealestateCard
        key={realestate.id}
        realestate={realestate}
        afterDelete={onMount}
        realestateEdit={realestateEdit}
      />
    );
  });

  return (
    <section id="realestateList" className="pt-4">
      <h2>Realestates List</h2>
      <div className="pt-2 row gy-4 justify-content-center">{cardList}</div>
    </section>
  );
}

export default RealestatesList;
