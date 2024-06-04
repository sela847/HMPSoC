#include <stdio.h>
#include <string.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <stdint.h>

// Define constants
const float peakToPeak_t = 1562.5;
const float CLOCK_50_IN_S = 0.00000002;

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
    int freq = 0;
    int numberOfCorrelations = 0;
    int num = 0;
    uint32_t numADC = 0;
    uint64_t secondsTaken = 0;
    int segments[6] = {0};
    printf("running \n");
    int count = 0;
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
            numberOfCorrelations = received & 0xFFFFF;
            printf("Num corr: %d \n",numberOfCorrelations);
            printf("CorrWidth: %d, fifowid: %d \n",corrWindow,fifoWidth);
            // Now we begin our frequency analysis
            numADC = (numberOfCorrelations * fifoWidth * corrWindow);
            secondsTaken = numADC;// *(peakToPeak_t * CLOCK_50_IN_S * );
            freq = (int)((1.0f / ((float) secondsTaken)) / 1000); // in kHz
             // Determine segment values based on the frequency
             determineValue(freq, segments);
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

        if (count == 5000) {
        	 //printf("%d \n", num);
        	 count = 0;
        } else {
        	count+=1;
        }

    }

    return 0;
}

// Function to determine the segment values
void determineValue(int freq, int segments[]){
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

    char freqConvert[6];
    snprintf(freqConvert, sizeof(freqConvert), "%d", freq); 

    // Clear segments
    for (int i = 0; i < 6; i++) {
        segments[i] = 0;
    }

    // Map the frequency value to the segments
    for (int i = 0; i < strlen(freqConvert) && i < 6; i++) {
        int digit = freqConvert[i] - '0'; // Convert character to digit
        segments[i] = numberMap[digit];
    }
}
