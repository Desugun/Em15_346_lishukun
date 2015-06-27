#include "xparameters.h"
#include "xgpio.h"
#include "xutil.h"


//====================================================

int main (void)
{

    XGpio out, push,push1;
	int i, psb_check,off_check, out_check,count=0;

    xil_printf("-- Start of the Program --\r\n");

    XGpio_Initialize(&out, XPAR_SW_4BIT_DEVICE_ID);
	XGpio_SetDataDirection(&out, 1, 0xffffffff);

	XGpio_Initialize(&push, XPAR_BTNS_4BIT_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff);



	while (1)
	{
	  psb_check = XGpio_DiscreteRead(&push, 1);
	 if(psb_check == 1)
		 XGpio_DiscreteWrite(&out, 1, 1);
	 else if(psb_check == 2)
		 XGpio_DiscreteWrite(&out, 1, 2);
	 else if(psb_check == 4)
			 XGpio_DiscreteWrite(&out, 1, 4);
	 else if(psb_check == 8){
		 XGpio_DiscreteWrite(&out, 1, 1);
		 for (i=0; i<19000000; i++);
		 XGpio_DiscreteWrite(&out, 1, 2);
		 for (i=0; i<19000000; i++);
		 XGpio_DiscreteWrite(&out, 1, 4);
		 for (i=0; i<19000000; i++);
		 XGpio_DiscreteWrite(&out, 1, 7);
	 }

	 else
		 XGpio_DiscreteWrite(&out, 1, 0);
	  for (i=0; i<40000000; i++);
	}

}
