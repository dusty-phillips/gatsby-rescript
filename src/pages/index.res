%%raw(`

import * as React from "react"
`)

// styles
let pageStyles = ReactDOM.Style.make(
  ~color="#232129",
  ~padding="96px",
  ~fontFamily="-apple-system, Roboto, sans-serif, serif",
  (),
)
let headingStyles = ReactDOM.Style.make(
  ~marginTop="0px",
  ~marginBottom="64px",
  ~maxWidth="320px",
  (),
)
let headingAccentStyles = ReactDOM.Style.make(~color="#663399", ())
let paragraphStyles = ReactDOM.Style.make(~marginBottom="48px", ())
let codeStyles = ReactDOM.Style.make(
  ~color="#8A6534",
  ~padding="4px",
  ~backgroundColor="#FFF4DB",
  ~fontSize="1.25rem",
  ~borderRadius="4px",
  (),
)
let listStyles = ReactDOM.Style.make(~marginBottom="96px", ~paddingLeft="0px", ())
let listItemStyles = ReactDOM.Style.make(
  ~fontWeight="300px",
  ~fontSize="24px",
  ~maxWidth="560px",
  ~marginBottom="30px",
  (),
)

let linkStyle = ReactDOM.Style.make(
  ~color="#8954A8",
  ~fontWeight="bold",
  ~fontSize="16px",
  ~verticalAlign="5%",
  (),
)

let docLinkStyle = ReactDOM.Style.make(
  ~color="#8954A8",
  ~fontWeight="bold",
  ~fontSize="16px",
  ~verticalAlign="5%",
  ~listStyleType="none",
  ~marginBottom="24px",
  (),
)

let descriptionStyle = ReactDOM.Style.make(
  ~color="#232129",
  ~fontSize="14px",
  ~marginTop="10px",
  ~marginBottom="0px",
  ~lineHeight="1.25",
  (),
)

let badgeStyle = ReactDOM.Style.make(
  ~color="#fff",
  ~backgroundColor="#088413",
  ~border="1px solid #088413",
  ~fontSize="11px",
  ~fontWeight="bold",
  ~letterSpacing="1px",
  ~borderRadius="4px",
  ~padding="4px 6px",
  ~display="inline-block",
  ~position="relative",
  ~top="-2px",
  ~marginLeft="10px",
  ~lineHeight="1px",
  (),
)

type linkData = {
  text: string,
  url: string,
  color: string,
  description: string,
  badge: bool,
}

let docLink = {
  text: "Documentation",
  url: "https://www.gatsbyjs.com/docs/",
  color: "#8954A8",
  description: "",
  badge: false,
}

let links = [
  {
    text: "Tutorial",
    url: "https://www.gatsbyjs.com/docs/tutorial/",
    description: "A great place to get started if you're new to web development. Designed to guide you through setting up your first Gatsby site.",
    color: "#E95800",
    badge: false,
  },
  {
    text: "How to Guides",
    url: "https://www.gatsbyjs.com/docs/how-to/",
    description: "Practical step-by-step guides to help you achieve a specific goal. Most useful when you're trying to get something done.",
    color: "#1099A8",
    badge: false,
  },
  {
    text: "Reference Guides",
    url: "https://www.gatsbyjs.com/docs/reference/",
    description: "Nitty-gritty technical descriptions of how Gatsby works. Most useful when you need detailed information about Gatsby's APIs.",
    color: "#BC027F",
    badge: false,
  },
  {
    text: "Conceptual Guides",
    url: "https://www.gatsbyjs.com/docs/conceptual/",
    description: "Big-picture explanations of higher-level Gatsby concepts. Most useful for building understanding of a particular topic.",
    color: "#0D96F2",
    badge: false,
  },
  {
    text: "Plugin Library",
    url: "https://www.gatsbyjs.com/plugins",
    description: "Add functionality and customize your Gatsby site or app with thousands of plugins built by our amazing developer community.",
    color: "#8EB814",
    badge: false,
  },
  {
    text: "Build and Host",
    url: "https://www.gatsbyjs.com/cloud",
    badge: true,
    description: "Now you’re ready to show the world! Give your Gatsby site superpowers: Build and host on Gatsby Cloud. Get started for free!",
    color: "#663399",
  },
]

// markup
const IndexPage = () => {
  return (
    <main style={pageStyles}>
      <title>Home Page</title>
      <h1 style={headingStyles}>
        Congratulations
        <br />
        <span style={headingAccentStyles}>— you just made a Gatsby site! </span>
        <span role="img" aria-label="Party popper emojis">
          🎉🎉🎉
        </span>
      </h1>
      <p style={paragraphStyles}>
        Edit <code style={codeStyles}>src/pages/index.js</code> to see this page
        update in real-time.{" "}
        <span role="img" aria-label="Sunglasses smiley emoji">
          😎
        </span>
      </p>
      <ul style={listStyles}>
        <li style={docLinkStyle}>
          <a
            style={linkStyle}
            href={\`\${docLink.url}?utm_source=starter&utm_medium=start-page&utm_campaign=minimal-starter\`}
          >
            {docLink.text}
          </a>
        </li>
        {links.map(link => (
          <li key={link.url} style={{ ...listItemStyles, color: link.color }}>
            <span>
              <a
                style={linkStyle}
                href={\`\${link.url}?utm_source=starter&utm_medium=start-page&utm_campaign=minimal-starter\`}
              >
                {link.text}
              </a>
              {link.badge && (
                <span style={badgeStyle} aria-label="New Badge">
                  NEW!
                </span>
              )}
              <p style={descriptionStyle}>{link.description}</p>
            </span>
          </li>
        ))}
      </ul>
      <img
        alt="Gatsby G Logo"
        src="data:image/svg+xml,%3Csvg width='24' height='24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M12 2a10 10 0 110 20 10 10 0 010-20zm0 2c-3.73 0-6.86 2.55-7.75 6L14 19.75c3.45-.89 6-4.02 6-7.75h-5.25v1.5h3.45a6.37 6.37 0 01-3.89 4.44L6.06 9.69C7 7.31 9.3 5.63 12 5.63c2.13 0 4 1.04 5.18 2.65l1.23-1.06A7.959 7.959 0 0012 4zm-8 8a8 8 0 008 8c.04 0 .09 0-8-8z' fill='%23639'/%3E%3C/svg%3E"
      />
    </main>
  )
}

export default IndexPage

`)
