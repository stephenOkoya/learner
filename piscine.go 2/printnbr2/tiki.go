package main

import "github.com/01-edu/z01"

func main() {
	PrintNbr2(-123)
	PrintNbr2(0)
	PrintNbr2(123)
	z01.PrintRune('\n')
}

func PrintNbr2(n int) {
	var nbr int
	var r string
	var f string
	if n == 0 {
		z01.PrintRune('0') // if n is equal 0 print '0' and return
		return
	}
	if n < 0 {
		nbr = -n // use nbr positive and keep handling with sign to later
	} else {
		nbr = n
	}
	for nbr > 0 {
		r = string(nbr%10+'0') + r
		nbr /= 10
	}
	if n < 0 {
		f = "-" + r // we gonna use to print minus sign
		for _, char := range f {
			z01.PrintRune(char)
		}
	} else {
		for _, char := range r {
			z01.PrintRune(char)
		}
	}
}

/****************** NEW Favorite way**************/
// func printnum(n int) {
// 	if n<0 {
// 		z01.PrintRune('-')
// 		n=-n
// 	}
// 	if n/10!=0{
// 		printnum(n/10)
// 	}
// 	z01.PrintRune(rune(n%10)+'0')
// }
