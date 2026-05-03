package util

import "gopkg.in/yaml.v2"

func Hello() string {
	out, _ := yaml.Marshal(map[string]string{"hello": "world"})
	return string(out)
}
