#include "keyinfo.h"

void bigkeyCommand(client *c) {
    if (c != NULL) {
        serverLog(LL_WARNING, "This is for testing");
    } else {
        serverLog(LL_WARNING, "This is not for testing");
    }
}
