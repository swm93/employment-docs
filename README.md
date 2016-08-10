# Employment Documents
LaTeX classes for creating resumes and cover letters.

This repository contains simple classes that can be used to create resumes and cover letters using LaTeX. All classes extend the `article` class.

## resume.cls
### Environments
`header`: contains candidate information; name, address, and contact info

`section`: separates major sections; previous work experience, technical skills, education
  - [1]: section title

`subsection`: separates minor sections and should be placed within a `section`; previous jobs, schools attended
  - [1]: subsection title
  - [2]: date range that the candidate was active


### Commands
`divider`: text divider; |

`name`: candidate's name
  - [1]: full name

`address`: candidate's address; a link will be created to Google Maps
  - [1]: complete address

`contact`: information required to get in touch with the candidate; a mailto link will be created for the email address, a link will be created for the website
  - [1]: phone number
  - [2]: email address
  - [3]: website


## coverletter.cls
### Environments
`header`: contains candidate and company information; name, address, and contact info

`body`: contains the body of the letter


### Commands
`divider`: text divider; |

`multilinecell`: used within header to place information (`name`, `address`, etc) on separate lines; place `&` between `multilinecell`s to split them vertically

`name`: candidate's name
  - [1]: full name

`company`: company's name
  - [1]: company name

`address`: candidate's and company's address
  - [1]: street address
  - [2]: city, province/state, postal/zip

`phone`: candidate's phone number
  - [1]: phone number

`email`: candidate's email address
  - [1]: email address

`position`: position the candidate is applying for
  - [1]: position

`signature`: image of candidate's signature
  - [1]: relative path to signature; it is expected to be the width of cover letter (8.5")
