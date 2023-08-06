package main

import (
	"devops-db/driver"
	"devops-db/handlers"
	"fmt"
	"log"
	"net/http"
)

var handler *handlers.Repository

func main() {
	var (
		host, port, dbname, user, password string
	)

	fmt.Println("host :")
	fmt.Scanln(&host)
	fmt.Println("port :")
	fmt.Scanln(&port)
	fmt.Println("dbname :")
	fmt.Scanln(&dbname)
	fmt.Println("user :")
	fmt.Scanln(&user)
	fmt.Println("password :")
	fmt.Scanln(&password)
	db, err := driver.NewConnection(fmt.Sprintf("host=%s port=%s dbname=%s user=%s password=%s", host, port, dbname, user, password))
	if err != nil {
		log.Fatal(err)
	}
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
