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

%%raw(`
// markup
const NotFoundPage = () => {
  return (
    <main style={pageStyles}>
      <title>Not found</title>
      <h1 style={headingStyles}>Page not found</h1>
      <p style={paragraphStyles}>
        Sorry{" "}
        <span role="img" aria-label="Pensive emoji">
          😔
        </span>{" "}
        we couldn’t find what you were looking for.
        <br />
        {process.env.NODE_ENV === "development" ? (
          <>
            <br />
            Try creating a page in <code style={codeStyles}>src/pages/</code>.
            <br />
          </>
        ) : null}
        <br />
        <Link to="/">Go home</Link>.
      </p>
    </main>
  )
}

export default NotFoundPage
`)
