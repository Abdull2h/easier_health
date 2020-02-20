package api

import (
	"net/http"

	"github.com/gorilla/mux"
	mid "github.com/halaalajlan/hackathon/middleware"
)

type Server struct {
	handler http.Handler
}

func NewServer() *Server {
	as := &Server{}
	as.registerRoutes()
	return as
}

func (as *Server) registerRoutes() {
	root := mux.NewRouter()
	root = root.StrictSlash(true)
	router := root.PathPrefix("/api/").Subrouter()
	router.Use(mid.RequireAPIKey)
	router.HandleFunc("/login", as.Login)
	router.HandleFunc("/patient", as.Patients)

	as.handler = router
}
