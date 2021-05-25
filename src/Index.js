// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";

var pageStyles = {
  color: "#232129",
  fontFamily: "-apple-system, Roboto, sans-serif, serif",
  padding: "96px"
};

var headingStyles = {
  marginTop: "0px",
  marginBottom: "64px",
  maxWidth: "320px"
};

var headingAccentStyles = {
  color: "#663399"
};

var paragraphStyles = {
  marginBottom: "48px"
};

var codeStyles = {
  backgroundColor: "#FFF4DB",
  color: "#8A6534",
  fontSize: "1.25rem",
  padding: "4px",
  borderRadius: "4px"
};

var listStyles = {
  marginBottom: "96px",
  paddingLeft: "0px"
};

var listItemStyles = {
  fontSize: "24px",
  fontWeight: "300px",
  marginBottom: "30px",
  maxWidth: "560px"
};

var linkStyle = {
  color: "#8954A8",
  fontSize: "16px",
  fontWeight: "bold",
  verticalAlign: "5%"
};

var docLinkStyle = {
  color: "#8954A8",
  fontSize: "16px",
  fontWeight: "bold",
  listStyleType: "none",
  marginBottom: "24px",
  verticalAlign: "5%"
};

var descriptionStyle = {
  color: "#232129",
  fontSize: "14px",
  lineHeight: "1.25",
  marginTop: "10px",
  marginBottom: "0px"
};

var badgeStyle = {
  backgroundColor: "#088413",
  border: "1px solid #088413",
  color: "#fff",
  display: "inline-block",
  fontSize: "11px",
  fontWeight: "bold",
  letterSpacing: "1px",
  lineHeight: "1px",
  marginLeft: "10px",
  padding: "4px 6px",
  position: "relative",
  top: "-2px",
  borderRadius: "4px"
};

var links = [
  {
    text: "Tutorial",
    url: "https://www.gatsbyjs.com/docs/tutorial/",
    color: "#E95800",
    description: "A great place to get started if you're new to web development. Designed to guide you through setting up your first Gatsby site.",
    badge: false
  },
  {
    text: "How to Guides",
    url: "https://www.gatsbyjs.com/docs/how-to/",
    color: "#1099A8",
    description: "Practical step-by-step guides to help you achieve a specific goal. Most useful when you're trying to get something done.",
    badge: false
  },
  {
    text: "Reference Guides",
    url: "https://www.gatsbyjs.com/docs/reference/",
    color: "#BC027F",
    description: "Nitty-gritty technical descriptions of how Gatsby works. Most useful when you need detailed information about Gatsby's APIs.",
    badge: false
  },
  {
    text: "Conceptual Guides",
    url: "https://www.gatsbyjs.com/docs/conceptual/",
    color: "#0D96F2",
    description: "Big-picture explanations of higher-level Gatsby concepts. Most useful for building understanding of a particular topic.",
    badge: false
  },
  {
    text: "Plugin Library",
    url: "https://www.gatsbyjs.com/plugins",
    color: "#8EB814",
    description: "Add functionality and customize your Gatsby site or app with thousands of plugins built by our amazing developer community.",
    badge: false
  },
  {
    text: "Build and Host",
    url: "https://www.gatsbyjs.com/cloud",
    color: "#663399",
    description: "Now you\xe2\x80\x99re ready to show the world! Give your Gatsby site superpowers: Build and host on Gatsby Cloud. Get started for free!",
    badge: true
  }
];

function $$default(param) {
  return React.createElement("main", {
              style: pageStyles
            }, React.createElement("title", undefined, "Home Page"), React.createElement("h1", {
                  style: headingStyles
                }, "Congratulations", React.createElement("br", undefined), React.createElement("span", {
                      style: headingAccentStyles
                    }, "— you just made a Gatsby site! "), React.createElement("span", {
                      "aria-label": "Party popper emojis",
                      role: "img"
                    }, "🎉🎉🎉")), React.createElement("p", {
                  style: paragraphStyles
                }, "Edit ", React.createElement("code", {
                      style: codeStyles
                    }, "src/pages/index.js"), " to see this page update in real-time. ", React.createElement("span", {
                      "aria-label": "Sunglasses smiley emoji",
                      role: "img"
                    }, "😎")), React.createElement("ul", {
                  style: listStyles
                }, React.createElement("li", {
                      style: docLinkStyle
                    }, React.createElement("a", {
                          style: linkStyle,
                          href: "https://www.gatsbyjs.com/docs/" + "?utm_source=starter&utm_medium=start-page&utm_campaign=minimal-starter"
                        }, "Documentation")), Belt_Array.map(links, (function (link) {
                        return React.createElement("li", {
                                    key: link.url,
                                    style: Object.assign({}, listItemStyles, {
                                          color: link.color
                                        })
                                  }, React.createElement("span", undefined, React.createElement("a", {
                                            style: linkStyle,
                                            href: link.url + "?utm_source=starter&utm_medium=start-page&utm_campaign=minimal-starter"
                                          }, link.text), link.badge ? React.createElement("span", {
                                              "aria-label": "New Badge",
                                              style: badgeStyle
                                            }, "NEW!") : React.createElement(React.Fragment, undefined), React.createElement("p", {
                                            style: descriptionStyle
                                          }, link.description)));
                      }))), React.createElement("img", {
                  alt: "Gatsby G Logo",
                  src: "data:image/svg+xml,%3Csvg width='24' height='24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M12 2a10 10 0 110 20 10 10 0 010-20zm0 2c-3.73 0-6.86 2.55-7.75 6L14 19.75c3.45-.89 6-4.02 6-7.75h-5.25v1.5h3.45a6.37 6.37 0 01-3.89 4.44L6.06 9.69C7 7.31 9.3 5.63 12 5.63c2.13 0 4 1.04 5.18 2.65l1.23-1.06A7.959 7.959 0 0012 4zm-8 8a8 8 0 008 8c.04 0 .09 0-8-8z' fill='%23639'/%3E%3C/svg%3E"
                }));
}

var docLink = {
  text: "Documentation",
  url: "https://www.gatsbyjs.com/docs/",
  color: "#8954A8",
  description: "",
  badge: false
};

export {
  pageStyles ,
  headingStyles ,
  headingAccentStyles ,
  paragraphStyles ,
  codeStyles ,
  listStyles ,
  listItemStyles ,
  linkStyle ,
  docLinkStyle ,
  descriptionStyle ,
  badgeStyle ,
  docLink ,
  links ,
  $$default ,
  $$default as default,
  
}
/* react Not a pure module */