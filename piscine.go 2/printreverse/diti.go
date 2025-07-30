package main

import (
	"github.com/01-edu/z01"
)

func main() {
	t := 'z'
	for t >= 'a' {
		z01.PrintRune(t)
		t--
	}
	z01.PrintRune('\n')
}
