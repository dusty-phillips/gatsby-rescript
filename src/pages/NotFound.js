// Generated by ReScript, PLEASE EDIT WITH CARE


import * as React from "react"
import { Link } from "gatsby"
;

var pageStyles = {
  color: "#232129",
  fontFamily: "-apple-system, Roboto, sans-serif, serif",
  padding: "96px"
};

var headingStyles = {
  marginTop: "0",
  marginBottom: "64",
  maxWidth: "320"
};

var paragraphStyles = {
  marginBottom: "48"
};

var codeStyles = {
  backgroundColor: "#FFF4DB",
  color: "#8A6534",
  fontSize: "1.25rem",
  padding: "4",
  borderRadius: "4"
};

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
;

export {
  pageStyles ,
  headingStyles ,
  paragraphStyles ,
  codeStyles ,
  
}
/*  Not a pure module */
