package main

import (
	"fmt"
	"golang-mysql-devops/driver"
	"golang-mysql-devops/handlers"
	"log"
	"net/http"
)

var handler *handlers.Repository

func main() {
	db, err := driver.NewConnection("geek:1234@tcp(db:3306)/temp")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("connected to database succesfully")
	handler = handlers.NewHandler(db)
	server := http.Server{
		Addr:    ":9090",
		Handler: GetRoutes(),
	}
	fmt.Println("listens on port 9090")
	err = server.ListenAndServe()
	if err != nil {
		log.Fatal(err)
	}
}
