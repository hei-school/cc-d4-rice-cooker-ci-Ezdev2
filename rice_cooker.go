package main

import (
	"fmt"
	"time"
)

func riceCooker() {
	defer func() {
		if r := recover(); r != nil {
			fmt.Println("Erreur:", r)
		}
	}()

	fmt.Println("Ajouter le riz")
	fmt.Println("Ajouter l'eau (1 tasse de riz pour 2 litres d'eau)")

	water := 2.0 * 1000 // 2 litres

	fmt.Println("Tourner ON le rice cooker")

	for water > 0 {
		time.Sleep(1 * time.Second) // Pause d'1 seconde
		water -= 100
		fmt.Printf("Eau restante: %.0f ml\n", water)
	}

	fmt.Println("Riz cuit. Rice cooker OFF")
	fmt.Println("Signal OFF")
}

func main() {
	riceCooker()
}
