module github.com/fixture/worker

go 1.20

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2
	github.com/fixture/shared v0.0.0
)

replace github.com/fixture/shared => ../../libs/shared
