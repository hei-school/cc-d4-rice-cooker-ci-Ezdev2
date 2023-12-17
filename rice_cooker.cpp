#include <iostream>
#include <thread>
#include <chrono>

#ifndef YOUR_HEADER_FILE_H
#define YOUR_HEADER_FILE_H

void riceCooker();

#endif 

void riceCooker() {
    try {
        std::cout << "Ajouter le riz" << std::endl;
        std::cout << "Ajouter l'eau (1 tasse de riz pour 2 litres d'eau)" << std::endl;

        double water = 2 * 1000;  // 2 litres

        std::cout << "Tourner ON le rice cooker" << std::endl;

        while (water > 0) {
            std::this_thread::sleep_for(std::chrono::seconds(1));  // Pause d'1 seconde
            water -= 100;
            std::cout << "Eau restante: " << water << " ml" << std::endl;
        }

        std::cout << "Riz cuit. Rice cooker OFF" << std::endl;
        std::cout << "Signal OFF" << std::endl;
    } catch (const std::exception &e) {
        std::cerr << "Erreur: " << e.what() << std::endl;
    }
}

int main() {
    riceCooker();
    return 0;
}
