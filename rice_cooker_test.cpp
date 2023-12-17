#include <gtest/gtest.h>

#include "your_header_file.h"

TEST(RiceCookerTest, WaterCalculation) {
    riceCooker(); 

    ASSERT_EQ(0, water);
}
int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
