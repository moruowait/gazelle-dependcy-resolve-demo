package main

import (
	"fmt"

	"github.com/google/go-cmp/cmp"
)

func main() {
	fmt.Println(cmp.Equal("x", "x"))
	fmt.Println(cmp.Equal(1, 2))
}
