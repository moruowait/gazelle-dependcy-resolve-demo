package hello

import "fmt"

// PrintHello say hello to input name.
func PrintHello(name string) bool {
	fmt.Printf("hello: %s\n", name)
	return true
}
