#include "get_temp.h"
#include "em_common.h"
#include "app_assert.h"
#include "sl_sensor_rht.h"

//uint32_t calcul(float pRawVal);

long get_temp(){

  int32_t rawVal =0;
  int32_t degC =0;
  uint32_t rh=0;
  //sl_status_t sc;

  app_assert_status(sl_sensor_rht_get(&rh, &rawVal));
  app_log_info("%sRawval: %d \n", __FUNCTION__, rawVal);
  degC = (rawVal * 1 *0.01*1)*10;
 // degC = calcul(1e-3*rawVal);
  app_log_info("%sTemperature: %d degC\n", __FUNCTION__,degC);
  return (long)degC;
}

/*
uint32_t calcul(float pRawVal){
  uint8_t expo = -3;
  int32_t nb = 1000*pRawVal;
  return (0x00ffffff & nb) | (expo << 24);
}
*/
