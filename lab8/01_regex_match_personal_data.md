1. Match Polish license plates:  
`^[B,C,D,E,F,G,H,K,L,N,O,P,R,S,T,W,Z]([0-9]|[A-Z]{1,2})[ ]?[A-Z,0-9]{4,5}$`

1. Match first(s) and last names:  
`^([A-Z][a-z]{1,50}[ ])+[A-Z][a-z]{1,50}([-][A-Z][a-z]{1,50})?$`

1. Match date:  
`^([1-9]|[0][1-9]|[1-3][0-9])[.\-\|\\\/ ]([1-9]|[0][1-9]|[1]([0]|[1]|[2]))[.\-\|\\\/ ]([0-9]{2}|[0-9]{4})`

1. Match postal code and city name:  
`^[0-9]{2}[-][0-9]{3}[ ][A-Z][a-z]+([ -][A-Za-z][a-z])?`

1. Match email:  
`^[A-Za-z0-9][A-Za-z0-9.-_]?[A-Za-z0-9][@][A-Za-z0-9]+([.][A-Za-z0-9]+)?[.][A-Za-z]{2,}`
