package main

import (
	"fmt"

	"contrib.go.opencensus.io/exporter/stackdriver"
)

func main() {
	fmt.Print(stackdriver.Labels{})
}
