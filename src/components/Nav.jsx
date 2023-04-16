import NavItem from "./NavItem";

function Nav(props) {
  const { navItems } = props;
  const navList = [];
  navItems.forEach((item) => {
    navList.push(
      <NavItem
        key={item.href}
        href={item.href}
        target={item.target}
        displayText={item.displayText}
      />
    );
  });
  return (
    <div className="container">
      <nav className="navbar px-3 py-1 navbar-expand-lg bg-light">
        <a className="navbar-brand" href="/">
          Realestates
        </a>
        <button
          className="navbar-toggler p-0"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav">{navList}</ul>
        </div>
      </nav>
    </div>
  );
}

export default Nav;
