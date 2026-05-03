package main

import (
	"github.com/fixture/shared/util"
	"github.com/gin-gonic/gin"
)

func main() {
	_ = util.Hello()
	r := gin.Default()
	r.Run()
}
