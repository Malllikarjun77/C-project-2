#include "unity/unity.h"
#include "../src/main.c"

void test_add() {
    TEST_ASSERT_EQUAL(5, add(2, 3));
}

int main() {
    UNITY_BEGIN();
    RUN_TEST(test_add);
    return UNITY_END();
}
