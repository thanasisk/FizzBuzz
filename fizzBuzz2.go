// slightly optimized fizzBuzz in Golang
// MIT License
package main

import "fmt"

func main() {
    for i:=1;i<101;i++ {
        msg := ""
        if i % 3 == 0 {
            msg += "Fizz"
        }
        if i % 5 == 0 {
            msg += "Buzz"
        }
        // how to further optimize this?
        if msg != "" {
            fmt.Println(msg) 
        } else {
            fmt.Println(i)
        }
    }
}
