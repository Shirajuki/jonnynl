---
layout: post
tags: IT2805
categories: IT2805
---

- ### [2-Theory](../2-WebTek_Theory.pdf)
  Client-Server Architecture, client -> server -> client *repeat*
  - How the internet works: TCP/IP protocol, domain, ip address and DNS
  - WWW
  - HTML - markup language - tags/elements

<br/>
- ### [3-HTML](../3-WebTek_HTML.pdf)
  HTML basics:
  - strong for bold text
  - q/blockquote for quotes
  - abbr for acronyms
  - address for physical/digital addresses
  - dl, dt, dd - defintition list, gives definition of items
  - Tips for images:
    - right format
    - right size
    - pixels
  - Caption image with figure and figcaption
  - Tips for tables:
    - attribute colspan and rowspan
  - Site map - a website guide/map

<br/>
- ### [3-URLs](../3-WebTek_URLs.pdf)
  - Protocol: `http://`
  - Domain name: `www.example.com`
  - path to file: `/path/to/myfile.html`
  - parameters: `..to/myfile.html?key1=value1&key2=value2...`
  - Form GET gives us parameters on our URL starting with '?'
  - Anchor: `#targetId`
  - Storyboarding

<br/>
- ### [4-CSS-Intro](../4-CSS-Intro.pdf)
  - XHTML - lowercase elements, closed with `/`, quotes `""` for attributes and need to have `html, head, body`
  - Box model
  - Selector - declaration - property - value
  - External < internal/embeded < inline
  -  `!important ;` to override
  - The more specific rules applies, meaning tag < class < id
  - Inherit from parents

<br/>
- ### [4-CSS-Selector/Properties](../4-CSS-Selectors-Properties.pdf)
  - CSS sees HTML as box model
  - learn selectors using [CSSDiner](https://flukeout.github.io)
  - p a vs p>a, is that `p a` takes any child element, while `p>a` takes only the immediate child element inside it's nest.
  - `+` for adjacent sibling elements, while `~` selects all sibling elements
  - Pseudo-class: `:` selects an element based on state
  - Pseudo-element: `::` selector
  - inline > id > class,pseudo > element/tag

  Position:
  - static: `default`, each block element on top of next one
  - relative: in relation to where it would be in normal flow
  - absolute: taken out of it's normal flow, no longer affects other elements positions, still in relation to the document, meaning scrolling will affect
  - fixed: absolute, but in relation to the broswers window

<br/>
- ### [5-Multimedia](../5-WebTek-MultiMedia.pdf)
  - Balance between size and quality
  - gif, jpeg, png, svg
  - Non-interlaced graphic: loads from none slides down to whole image.
  - Interlaced graphic: starts blurry, gradually comes into focus.
  - Good practice: `Background image < 20kb`
  - Think hotspot, where will the users viewpoint be at?
  - imagemaps: `<area	shape=“shape”	coords=“coordinates”	href=“url” alt=“text”/>`

  ```html
  <img src=“supersite.gif”	usemap=“#map1”>
  <map	name=“map1”>
    <area	coords=“0,0,50,50”	href=“topleft.html”>
    <area	coords=“50,50,80,80”	href=“bottomright.html”>
  </map>
  ```
  - wav, mp3, wma, ogg, midi
  - mp4, webm, ogg

<br/>
- ### [6-Forms](../8-WebTek-Forms.pdf)
  - input types: `text:password:number` and so on, `checkbox` and `radio`
  - textarea tag
  - fieldset and legend tag
  - option tag with select: dropdown
  - Form methods: `POST` and `GET`, `POST` higher character limit, URL doesn't get changed.
  - Form validation, attribute `required`

<br/>
- ### [6-Inspector](../8-WebTek-InspectorUsability.pdf)
  #### **Schneiderman's eight golden rules of usability:**
  - **Strive for constistency** - design/layour
  - **Cater to Universal Usability** - easily for all ability levels to use
  - **Offer informative feedback** - what wrong, what's right? click, select, events and so on.
  - **Design dialogs to yield closure** - talk to the user as feedback
  - **Prevent Errors**
  - **Permit easy reversal of actions** - good navigation flow back and forth
  - **Support internal locus of control** - know where we are in the navigation/current page. home, about ...
  - **Reduce short term memory (load)**

  More:
  - No broken links
  - Make important information easiest to find
  - Provide hierarchy of information
  - Use white space, have space for your website
  - F-shape / E-shape - visuals matter (banner-blindness)

  - Being different might cost you - links(blue) for instance.
  devtools
