package main

import (
	"github.com/dgrijalva/jwt-go"
	"github.com/fixture/shared/util"
)

func main() {
	_ = jwt.New(jwt.SigningMethodHS256)
	_ = util.Hello()
}
