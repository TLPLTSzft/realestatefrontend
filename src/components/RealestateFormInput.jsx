function RealestateFormInput(props) {
  const {
    inputId,
    inputType = "text",
    inputLabel,
    value,
    setValue,
    disabledTF = false,
  } = props;

  return (
    <div className="row col-md-11 col-lg-10 my-3">
      <div className="col-md-4 ps-1 pe-2 text-end">
        <label htmlFor={inputId} className="form-label">
          {inputLabel}
        </label>
      </div>
      <div className="col-md-7 col-lg-6 ps-2 pe-1">
        <input
          id={inputId}
          type={inputType}
          className="form-control"
          placeholder={inputLabel}
          value={value}
          disabled={disabledTF}
          onInput={(event) => setValue(event.target.value)}
        />
      </div>
    </div>
  );
}

export default RealestateFormInput;
