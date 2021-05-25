@val @scope(("process", "env")) external nodeEnv: [#development | #production] = "NODE_ENV"

module Link = {
  @module("gatsby") @react.component
  external make: (~to: string, ~children: React.element) => React.element = "Link"
}

// styles
let pageStyles = ReactDOM.Style.make(
  ~color="#232129",
  ~padding="96px",
  ~fontFamily="-apple-system, Roboto, sans-serif, serif",
  (),
)
let headingStyles = ReactDOM.Style.make(~marginTop="0", ~marginBottom="64", ~maxWidth="320", ())

let paragraphStyles = ReactDOM.Style.make(~marginBottom="48", ())
let codeStyles = ReactDOM.Style.make(
  ~color="#8A6534",
  ~padding="4",
  ~backgroundColor="#FFF4DB",
  ~fontSize="1.25rem",
  ~borderRadius="4",
  (),
)

@react.component
let make = () => {
  <main style={pageStyles}>
    <title> {React.string("Not found")} </title>
    <h1 style={headingStyles}> {React.string("Page not found")} </h1>
    <p style={paragraphStyles}>
      {React.string("Sorry ")}
      <span role="img" ariaLabel="Pensive emoji"> {React.string(`😔`)} </span>
      {React.string(" we couldn’t find what you were looking for. ")}
      <br />
      {switch nodeEnv {
      | #development => <>
          <br />
          {React.string("Try creating a page in ")}
          <code style={codeStyles}> {React.string("src/pages/")} </code>
          <br />
        </>
      | _ => <> </>
      }}
      <br />
      <Link to="/"> {React.string("Go home")} </Link>
      {React.string(".")}
    </p>
  </main>
}
