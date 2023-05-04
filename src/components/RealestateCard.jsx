import localhost from "../Localhost";
import furnishings from "../Furnishings";

function RealestateCard(props) {
  const { realestate, afterDelete, realestateEdit } = props;
  const {
    id,
    realestate_code,
    address,
    room,
    furnishing_id,
    rental_fee,
    sale_price,
    description,
  } = realestate;

  const realestateDelete = () => {
    fetch(`http://${localhost}:8000/api/realestates/${id}`, {
      // fetch(`http://localhost:8000/api/realestates/${id}`, {
      method: "DELETE",
      headers: {
        Accept: "application/json",
      },
    }).then(async (Response) => {
      if (Response.status === 500) {
        alert("Cannot delete a parent row: a foreign key constraint fails");
      } else if (Response.status !== 204) {
        const data = await Response.json();
        alert(data.message);
      }
      afterDelete();
    });
  };

  return (
    <div className="col-md-9 col-lg-6 col-xl-4">
      <div className="card h-100">
        <div className="card-header text-bg-light">
          <div className="row">
            <h4 className="col-7 pe-0">Realestate Code</h4>
            <h3 className="col-5 ps-0 text-end">{realestate_code}</h3>
          </div>
          <img
            src={`image/${id}.jpg`}
            // src="https://loremflickr.com/640/480/building?random=10"
            alt={`${id}.jpg`}
            title={`${id}`}
            className="img-fluid  px-0 py-2"
          />
        </div>

        <div className="card-body px-2 py-2">
          <table className="table table-hover text-start">
            <tbody>
              <tr>
                <th>Address</th>
                <td>{address}</td>
              </tr>
              <tr>
                <th>Room #</th>
                <td>{room}</td>
              </tr>
              <tr>
                <th>Furnishing</th>
                <td>{furnishings[furnishing_id]}</td>
              </tr>
              <tr>
                <th>Rental fee</th>
                <td>EUR {rental_fee}</td>
              </tr>
              <tr>
                <th>Sale price</th>
                <td>EUR {sale_price * 1000}</td>
              </tr>
              <tr>
                <th>Description</th>
                <td>{description}</td>
              </tr>
            </tbody>
          </table>
        </div>

        <div className="card-footer">
          <div className="row row-cols-2 p-2">
            <div className="row-cols-1 ps-1 pe-2">
              <a
                href="#realestateForm"
                className="btn btn-outline-warning"
                onClick={() => {
                  realestateEdit(id);
                }}
              >
                Edit
              </a>
            </div>
            <div className="row-cols-1 ps-2 pe-1">
              <button
                className="btn btn-outline-danger"
                onClick={() => {
                  realestateDelete();
                }}
              >
                Delete
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default RealestateCard;
