module github.com/fixture/api

go 1.20

require (
	github.com/gin-gonic/gin v1.6.0
	github.com/fixture/shared v0.0.0
)

replace github.com/fixture/shared => ../../libs/shared
