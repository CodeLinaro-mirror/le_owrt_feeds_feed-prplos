#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "usp_err_codes.h"
#include "vendor_defs.h"
#include "vendor_api.h"
#include "usp_api.h"

#include <sys/un.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <errno.h>

#include <ctype.h>

/*
obuspa -r /etc/config/vtv_obuspa_usp_app.txt  -x /usr/lib/vtv_obuspa_usp_app.so -f /etc/obuspa_usp_app.db -R "Device.X_VANTIVA-COM_USP_app." -v 3 -s /tmp/obuspa_usp_app.cli
*/

#define NUM_ELEM(x) (sizeof((x)) / sizeof((x)[0]))

int Operation_Cmd(dm_req_t *req, char *command_key, kv_vector_t *input_args, kv_vector_t *output_args);

static int result = 0;

int GetResult(dm_req_t *req, char *buf, int len);

typedef enum tag_OPERATION_e {
  OPERATION_ADD,
  OPERATION_SUB,
  OPERATION_MUL,
  OPERATION_DIV,
  OPERATION_INVALID
} OPERATION_t;

int operate(int totalvalue, OPERATION_t operation, int value)
{
   switch (operation)
   {
       case OPERATION_ADD:
          totalvalue += value;
          break;

       case OPERATION_SUB:
          totalvalue -= value;
          break;

       case OPERATION_MUL:
          totalvalue *= value;
          break;

       case OPERATION_DIV:
          totalvalue /= value;
          break;
   }
   return totalvalue;
}

int calculate(char *input)
{
    int totalValue = 0;
    int currentValue = 0;

    OPERATION_t operation = OPERATION_ADD; // always start with add

    while (*input) 
    {
        if (isdigit(*input)) 
        {
            currentValue = currentValue * 10 + (*input - '0');
        }
        else
        {
            totalValue = operate(totalValue, operation, currentValue);
            currentValue = 0;

            switch (*input)
            {
                case '+':
                default:
                  operation = OPERATION_ADD;
                  break;

                case '-':
                  operation = OPERATION_SUB;
                  break;

                case '*':
                  operation = OPERATION_MUL;
                  break;

                case '/':
                  operation = OPERATION_DIV;
                  break;
            }
        }
        input++;
    }

    totalValue = operate(totalValue, operation, currentValue);

    return totalValue;
}

static char *set_paramb_input_args[] = { "Sum" };
static char *set_paramb_output_args[] = { "Result" };

int VENDOR_Init(void)
{
    int err;

    printf("%s: Enter\n", __FUNCTION__);

    err = USP_REGISTER_Object("Device.X_VANTIVA-COM_USP_app", NULL, NULL,NULL, NULL, NULL, NULL);
    if (err != USP_ERR_OK)
    {
        return err;
    }

    err = USP_REGISTER_SyncOperation("Device.X_VANTIVA-COM_USP_app.calculate()", Operation_Cmd);
    if (err != USP_ERR_OK)
    {
        return err;
    }

    err |= USP_REGISTER_OperationArguments("Device.Test.SetParamB()",
                                            set_paramb_input_args, NUM_ELEM(set_paramb_input_args),
                                            set_paramb_output_args, NUM_ELEM(set_paramb_output_args));


    err = USP_REGISTER_VendorParam_ReadOnly("Device..X_VANTIVA-COM_USP_app.result", GetResult, DM_INT);
    if (err != USP_ERR_OK)
    {
        return err;
    }

    return USP_ERR_OK;
}

#define MAX_PARAM_LEN 256

int Operation_Cmd(dm_req_t *req, char *command_key, kv_vector_t *input_args, kv_vector_t *output_args)
{
    int err;
    char *in;
    
    char buf[MAX_PARAM_LEN];

    printf("%s: Enter\n", __FUNCTION__);

    // Exit if In argument is not specified
    in = USP_ARG_Get(input_args, "Sum", NULL);
    if (in==NULL)
    {
        USP_ERR_SetMessage("%s: Input Argument ('Sum') not specified", __FUNCTION__);
        return USP_ERR_INVALID_ARGUMENTS;
    }

    printf("%s: calculating %s\n", __FUNCTION__, in);

    result = calculate(in);

    printf("%s: answer = %d\n", __FUNCTION__, result);

    snprintf(buf, MAX_PARAM_LEN, "%u", result);

    USP_ARG_Init(output_args);
    USP_ARG_Add(output_args, "Result", buf);

    printf("%s: exit\n", __FUNCTION__);

    return USP_ERR_OK;
}

int GetResult(dm_req_t *req, char *buf, int len)
{
    printf("%s: Enter\n", __FUNCTION__);
    snprintf(buf,len, "%u", result);
    return USP_ERR_OK;
}


int VENDOR_Start(void)
{
    printf("%s: Enter\n", __FUNCTION__);
    return USP_ERR_OK;
}

int VENDOR_Stop(void)
{
    printf("%s: Enter\n", __FUNCTION__);
    return USP_ERR_OK;
}

