#include "get_temp.h"
#include "em_common.h"
#include "app_assert.h"
#include "sl_sensor_rht.h"

void get_temp(){

  int32_t rawVal =0;
  int32_t degC =0;
  uint32_t rh=0;
  app_assert_status(sl_sensor_rht_get(&rh, &rawVal));
  app_log_info("%sRawval: %d \n", __FUNCTION__,&rawVal);
  degC = (rawVal * 1 *0.01*1) - 273 ;
  app_log_info("%sTemperature: %d degC\n", __FUNCTION__,degC);
}
