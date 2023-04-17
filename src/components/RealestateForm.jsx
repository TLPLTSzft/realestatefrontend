import { useEffect, useState } from "react";
import RealestateFormInput from "./RealestateFormInput";

function RealestateForm(props) {
  const { onSuccess, realestateEditId = 0, realestateEditIdReset } = props;
  const [realestate_code, setRealestate_code] = useState("");
  const [address, setAddress] = useState("");
  const [room, setRoom] = useState("");
  const [furnishing, setFurnishing] = useState("");
  const [rental_fee, setRental_fee] = useState("");
  const [sale_price, setSale_price] = useState("");
  const [description, setDescription] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  useEffect(() => {
    if (realestateEditId === 0) {
      realestateFormReset();
    } else {
      fetch(`http://localhost:8000/api/realestate/${realestateEditId}`, {
        headers: {
          Accept: "application/json",
        },
      }).then(async (Response) => {
        const data = await Response.json();
        if (Response.status !== 200) {
          alert(data.message);
        } else {
          setRealestate_code(data.realestate_code);
          setAddress(data.address);
          setRoom(data.room);
          setFurnishing(data.furnishing);
          setRental_fee(data.rental_fee);
          setSale_price(data.sale_price);
          setDescription(data.description);
        }
      });
    }
  }, [realestateEditId]);

  const realestateEdit = () => {
    const realestate = {
      realestate_code: realestate_code,
      address: address,
      room: room,
      furnishing: furnishing,
      rental_fee: rental_fee,
      sale_price: sale_price,
      description: description,
    };
    fetch(`http://localhost:8000/api/realestate/${realestateEditId}`, {
      method: "PUT",
      body: JSON.stringify(realestate),
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    }).then(async (Response) => {
      if (Response.status === 200) {
        onSuccess();
        realestateEditIdReset();
      } else {
        const jsonData = await Response.json();
        alert(jsonData.message);
        const errorMessage = jsonData.message;
        setErrorMessage(errorMessage);
      }
    });
  };

  const realestateNew = () => {
    const realestate = {
      realestate_code: realestate_code,
      address: address,
      room: room,
      furnishing: furnishing,
      rental_fee: rental_fee,
      sale_price: sale_price,
      description: description,
    };
    fetch("http://localhost:8000/api/realestate", {
      method: "POST",
      body: JSON.stringify(realestate),
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    }).then(async (Response) => {
      if (Response.status === 201) {
        onSuccess();
        realestateFormReset();
      } else {
        const jsonData = await Response.json();
        alert(jsonData.message);
        const errorMessage = jsonData.message;
        setErrorMessage(errorMessage);
      }
    });
  };

  const realestateFormReset = () => {
    setRealestate_code("");
    setAddress("");
    setRoom("");
    setFurnishing("");
    setRental_fee("");
    setSale_price("");
    setDescription("");
    setErrorMessage("");
  };

  return (
    <section id="realestateForm" className="py-4">
      {realestateEditId === 0 ? (
        <h2>Realestate New</h2>
      ) : (
        <h2>{realestate_code} - Realestate Edit</h2>
      )}

      {/*
      {errorMessage !== "" ? (
        <div>
          <div
            className="alert alert-warning alert-dismissible fade show"
            role="alert"
          >
            {errorMessage}
            <button
              type="button"
              className="btn-close"
              data-bs-dismiss="alert"
              aria-label="Close"
              onClick={() => setErrorMessage("")}
            ></button>
          </div>
        </div>
      ) : (
        ""
      )}
      */}

      <form
        name="realestateFormName"
        onSubmit={(event) => {
          event.preventDefault();
          if (realestateEditId === 0) {
            realestateNew();
          } else {
            realestateEdit();
          }
        }}
      >
        <RealestateFormInput
          inputId={"realestate_codeInput"}
          inputLabel={"Realestate Code"}
          value={realestate_code}
          setValue={setRealestate_code}
          disabledTF={realestateEditId !== 0 ? true : false}
        />
        <RealestateFormInput
          name="addressName"
          inputId={"addressInput"}
          inputLabel={"Address"}
          value={address}
          setValue={setAddress}
        />
        <RealestateFormInput
          inputId={"roomInput"}
          inputLabel={"Room #"}
          inputType={"number"}
          value={room}
          setValue={setRoom}
        />
        <RealestateFormInput
          inputId={"furnishingInput"}
          inputLabel={"Furnishing"}
          inputType={"number"}
          value={furnishing}
          setValue={setFurnishing}
        />
        {/* <div className="row col-md-11 col-lg-10 my-3"> */}
        {/*
          <div className="col-md-4 text-end">
            <label htmlFor="furnishingInput" className="form-label">
              Furnishing
            </label>
          </div>
          */}
        {/* <div className="col-md-7 col-lg-6"> */}
        {/*
            <select
              inputId={"furnishingInput"}
              name="d"
              onChange={alert(
                document.c.d.options[document.c.d.selectedIndex].text
                // document.c.d.selectedIndex
                // document.c.d.options[2].text
                // document.c.d.options[2].value
              )}
            >
              <option value="egy">Első választás</option>
              <option value="ketto">Második választás</option>
              <option value="harom">Harmadik választás</option>
              <option>Negyedik választás</option>
              <option>Ötödik választás</option>
              <option>Hatodik választás</option>
            </select>
            */}
        {/* 
            <select
              name="furnishingName"
              id="furnishingId"
              className="form-select"
              // value={parseInt(furnishing)}
              // setValue={parseInt(furnishing)}
              // value={furnishing}
              // setValue={furnishing}
              // onSelect={(event) => value(event.target.value)}
              // onInput={(event) => setValue(event.target.value)}
              // aria-label="Default select example"
            >
              <option>Choose from the drop-down list</option>
              <option value="1">without furniture</option>
              <option value="2">basic equipment</option>
              <option value="3">fully furnished</option>
            </select>
            const setValue={document.getElementById(furnishing)}
            {alert(document.getElementsByName("furnishingName"))}
            */}
        {/* </div> */}
        {/* </div> */}
        <RealestateFormInput
          inputId={"rental_feeInput"}
          inputLabel={"Rental fee"}
          inputType={"number"}
          value={rental_fee}
          setValue={setRental_fee}
        />
        <RealestateFormInput
          inputId={"sale_priceInput"}
          inputLabel={"Sale price"}
          inputType={"number"}
          value={sale_price}
          setValue={setSale_price}
        />
        <RealestateFormInput
          inputId={"descriptionInput"}
          inputLabel={"Description"}
          value={description}
          setValue={setDescription}
        />
        <div className="row col-13 col-sm-13 col-md-9 col-lg-10 col-xl-10 pt-2">
          <div className="col-6 col-sm-6 col-md-5 col-lg-4 col-xl-4 ps-1 pe-2 text-end">
            {realestateEditId === 0 ? (
              <button
                className="col-8 col-sm-7 col-md-8 col-lg-7 col-xl-5 btn btn-outline-success"
                type="submit"
              >
                Adds
              </button>
            ) : (
              <button
                className="col-8 col-sm-7 col-md-8 col-lg-7 col-xl-5 btn btn-outline-warning"
                type="submit"
              >
                Modifies
              </button>
            )}
          </div>
          <div className="col-6 col-sm-6 col-md-5 col-lg-4 col-xl-4 ps-2 pe-1">
            <button
              className="col-8 col-sm-7 col-md-8 col-lg-7 col-xl-5 btn btn-outline-danger"
              type="reset"
              onClick={() => {
                realestateFormReset();
                realestateEditIdReset();
              }}
            >
              Reset
            </button>
          </div>
        </div>
      </form>
    </section>
  );
}

export default RealestateForm;
