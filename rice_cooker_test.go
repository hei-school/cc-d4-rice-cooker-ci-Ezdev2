package main

import (
	"testing"
)

func TestRiceCooker(t *testing.T) {
	output := captureOutput(func() {
		riceCooker()
	})

	expectedOutput := "Ajouter le riz\nAjouter l'eau (1 tasse de riz pour 2 litres d'eau)\nTourner ON le rice cooker\nEau restante: 1900 ml\nEau restante: 1800 ml\nEau restante: 1700 ml\nEau restante: 1600 ml\nEau restante: 1500 ml\nEau restante: 1400 ml\nEau restante: 1300 ml\nEau restante: 1200 ml\nEau restante: 1100 ml\nEau restante: 1000 ml\nEau restante: 900 ml\nEau restante: 800 ml\nEau restante: 700 ml\nEau restante: 600 ml\nEau restante: 500 ml\nEau restante: 400 ml\nEau restante: 300 ml\nEau restante: 200 ml\nEau restante: 100 ml\nRiz cuit. Rice cooker OFF\nSignal OFF\n"

	if output != expectedOutput {
		t.Errorf("Le résultat attendu ne correspond pas à la sortie obtenue.\nAttendu:\n%s\nObtenu:\n%s", expectedOutput, output)
	}
}

func captureOutput(f func()) string {
	old := os.Stdout
	r, w, _ := os.Pipe()
	os.Stdout = w

	outC := make(chan string)
	go func() {
		var buf bytes.Buffer
		io.Copy(&buf, r)
		outC <- buf.String()
	}()

	f()

	w.Close()
	os.Stdout = old
	out := <-outC

	return out
}
