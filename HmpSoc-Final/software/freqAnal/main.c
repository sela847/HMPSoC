#include <stdio.h>
#include <string.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <stdint.h>

// Define constants
const float peakToPeak_t = 1562.5;
const float CLOCK_50_IN_S = 0.00000002; // 20ns
const float inNS = 20.0f;

// Function prototype
void determineValue(int freq, int segments[]);
int numberMap[] = {
        0b11000000, // 0
        0b11111001, // 1
        0b10100100, // 2
        0b10110000, // 3
        0b10011001, // 4
        0b10010010, // 5
        0b10000010, // 6
        0b11111000, // 7
        0b10000000, // 8
        0b10011000  // 9
    };
int main(){
    uint32_t received;
    int fifoWidth = 0;
    int corrWindow = 0;
    long int freq = 0;
    uint32_t numberOfCorrelations = 9;
    int num = 0;
    uint32_t numADC = 0;
    float secondsTaken = 0;
    int segments[6] = {0};
    printf("running \n");
    uint64_t count = 0;
    int Delay_Value = 80000;
    while(1){
        received = IORD_ALTERA_AVALON_PIO_DATA(RECV_BASE);
        //printf("Received data: %u\n", (unsigned int) received);
        //printf("DATA HERE \n");
        // For Averaging
        if ((((received >> 28) & 0x0F) == 0b1100)){
        	printf("received average pack \n");
        	num = 1;
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_0_BASE, numberMap[(received >> 17) & 0x1]);
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_1_BASE, numberMap[(received >> 1) & 0x1]);
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_2_BASE, numberMap[(received >> 28) & 0x1]);
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_3_BASE, numberMap[(received >> 29) & 0x1]);
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_4_BASE, numberMap[(received >> 30) & 0x1]);
//            IOWR_ALTERA_AVALON_PIO_DATA(SEG_5_BASE, numberMap[(received >> 31) & 0x1]);
            if(((received >> 18) & 0x01) == 1) {
                fifoWidth = 8;
            } else {
                fifoWidth = 4;
            } 
        }
//        if ((((received >> 28) & 0x0F) == 0b1000)) {
//        	printf("avg receinvef \n");
//        }

        // For correlation
        if ((((received >> 28) & 0x0F) == 0b1101)){
        	printf("received corr pack \n");
        	num = 2;
            if(((received >> 18) & 0x01) == 1) {
                corrWindow = 20;
            } else {
                corrWindow = 16;
            }
        }

        // Checking if we are receiving a valid data packet from PeD
        if ((((received >> 28) & 0x0F) == 0b1000)){ //&& (((received >> 27) & 0x01) == 1)) {
            // Analyze the freq
        	printf("correlation found \n");
        	num = 3;
            numberOfCorrelations = received & 0x000FFFFF;
          //  printf("Num corr: %u \n",numberOfCorrelations);
          //  printf("CorrWidth: %d, fifowid: %d \n",corrWindow,fifoWidth);
            // Now we begin our frequency analysis
            numADC = (numberOfCorrelations * fifoWidth * corrWindow);
           // printf("numADC: %u \n",numADC);
            //secondsTaken = numADC * (peakToPeak_t * CLOCK_50_IN_S);
            float nSecsTaken = (float) numADC * peakToPeak_t * inNS;
           // printf("ns: %.2f \n",nSecsTaken);
            secondsTaken = (float) nSecsTaken * 0.000000001f;
            //printf("seconds: %f \n",secondsTaken);
            freq = 1 / (secondsTaken);
            //determineValue(freq, segments);
            segments[0] = numberMap[freq%10];
            segments[1] = numberMap[freq/10];
            segments[2] = numberMap[freq/100];
            segments[3] = numberMap[freq/1000];
            segments[4] = numberMap[freq/10000];
            segments[5] = numberMap[freq/100000];
             // Determine segment values based on the frequency
//            if (count == 50000) {
//            	//determineValue(freq, segments);
//                count = 0;
//            } else {
//                count+=1;
//            }

        }

        IOWR_ALTERA_AVALON_PIO_DATA(SEG_0_BASE, segments[0]);
        IOWR_ALTERA_AVALON_PIO_DATA(SEG_1_BASE, segments[1]);
        IOWR_ALTERA_AVALON_PIO_DATA(SEG_2_BASE, segments[2]);
        IOWR_ALTERA_AVALON_PIO_DATA(SEG_3_BASE, segments[3]);
        IOWR_ALTERA_AVALON_PIO_DATA(SEG_4_BASE, segments[4]);
        IOWR_ALTERA_AVALON_PIO_DATA(SEG_5_BASE, segments[5]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_0_BASE, numberMap[(received) & 0x1]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_1_BASE, numberMap[(received >> 1) & 0x1]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_2_BASE, numberMap[(received >> 28) & 0x1]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_3_BASE, numberMap[(received >> 29) & 0x1]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_4_BASE, numberMap[(received >> 30) & 0x1]);
//        IOWR_ALTERA_AVALON_PIO_DATA(SEG_5_BASE, numberMap[(received >> 31) & 0x1]);
        for (int i = 0; i < Delay_Value; i++) {
                    ;
        }



    }

    return 0;
}
