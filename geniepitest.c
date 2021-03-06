#include <stdio.h>
#include <unistd.h> // for usleep
#include <geniePi.h>

#define GENIE_OBJ_4DBUTTON 30

void handleEvent (struct genieReplyStruct *reply) {
  if(reply->object == GENIE_OBJ_4DBUTTON) {
    switch (reply->index) {
      case 0:
        genieWriteStr(0,"You pressed the RED button.");
        break;
      case 1:
        genieWriteStr(0,"You pressed the GREEN button.");
        break;
      case 2:
        genieWriteStr(0,"You pressed the BLUE button.");
        break;
      case 3:
        genieWriteStr(0,"You pressed the YELLOW button.");
        break;
      case 4:
        genieWriteStr(0,"You pressed the VIOLET button.");
        break;
      case 5:
        genieWriteStr(0,"You pressed the WHITE button.");
        break;
    }
  }
}

int main (int argc, char** argv) {
  struct genieReplyStruct reply;

  if(genieSetup("/dev/ttyAMA0",9600)<0) {
    printf("ViSi-Genie Failed to init display!\r\n");
    return(1); // Failed to initialize ViSi-Genie Display. Check Connections!
  }

  while(1) {
    while(genieReplyAvail()) {
      genieGetReply(&reply);
      handleEvent(&reply);
      usleep(20000); // wait 20ms between polls to save CPU
    }
  }

  return(0);
}
