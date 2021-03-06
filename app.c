/***************************************************************************//**
 * @file
 * @brief Core application logic.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "gatt_db.h"
#include "app.h"
#include "sl_sensor_rht.h"
#include "get_temp.h"
#include "sl_simple_led_instances.h"
#include "sl_simple_timer.h"
// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;

static sl_simple_timer_t mon_timer;
long tempValue;


int n = 0;
static void mon_callback();
static uint8_t id_conn = 0;


/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application init code here!                         //
  app_log_info("%s\n", __FUNCTION__);
  //sl_led_init(&sl_led_led0);
  sl_simple_led_init_instances();
  // This is called once during start-up.                                    //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  bd_addr address;
  uint8_t address_type;
  uint8_t system_id[8];

  switch (SL_BT_MSG_ID(evt->header)) {
    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:

      sl_simple_timer_stop(&mon_timer);

      // Extract unique ID from BT Address.
      sc = sl_bt_system_get_identity_address(&address, &address_type);
      app_assert_status(sc);

      // Pad and reverse unique ID to get System ID.
      system_id[0] = address.addr[5];
      system_id[1] = address.addr[4];
      system_id[2] = address.addr[3];
      system_id[3] = 0xFF;
      system_id[4] = 0xFE;
      system_id[5] = address.addr[2];
      system_id[6] = address.addr[1];
      system_id[7] = address.addr[0];

      sc = sl_bt_gatt_server_write_attribute_value(gattdb_system_id,
                                                   0,
                                                   sizeof(system_id),
                                                   system_id);
      app_assert_status(sc);

      // Create an advertising set.
      sc = sl_bt_advertiser_create_set(&advertising_set_handle);
      app_assert_status(sc);

      // Set advertising interval to 100ms.
      sc = sl_bt_advertiser_set_timing(
        advertising_set_handle,
        160, // min. adv. interval (milliseconds * 1.6)
        160, // max. adv. interval (milliseconds * 1.6)
        0,   // adv. duration
        0);  // max. num. adv. events
      app_assert_status(sc);
      // Start general advertising and enable connections.
      sc = sl_bt_advertiser_start(
        advertising_set_handle,
        sl_bt_advertiser_general_discoverable,
        sl_bt_advertiser_connectable_scannable);
      app_assert_status(sc);
      break;

    // -------------------------------
    // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id:
      sl_sensor_rht_init();

      sl_simple_timer_stop(&mon_timer);
      app_log_info("%s: connexion ouverte!\n", __FUNCTION__);

      break;

    // -------------------------------
    // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id:
      sl_sensor_rht_deinit();
      sl_simple_timer_stop(&mon_timer);
      app_log_info("%s: connexion fermee!\n", __FUNCTION__);
      // Restart advertising after client has disconnected.
      sc = sl_bt_advertiser_start(
        advertising_set_handle,
        sl_bt_advertiser_general_discoverable,
        sl_bt_advertiser_connectable_scannable);
      app_assert_status(sc);
      break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////
    case sl_bt_evt_gatt_server_user_read_request_id:

      sl_simple_timer_stop(&mon_timer);
      if(evt->data.evt_gatt_server_user_read_request.characteristic == gattdb_temperature){
          app_log_info("%s: reading temp and humidty....\n", __FUNCTION__);
          tempValue = get_temp();
          app_log_info("%sTemperature: %d degC\n", __FUNCTION__,tempValue);
          app_assert_status(sl_bt_gatt_server_send_user_read_response(evt->data.evt_gatt_server_user_read_request.connection,
                                                            gattdb_temperature,
                                                            0,
                                                            sizeof(tempValue),
                                                            (uint8_t*)&tempValue,
                                                            NULL));
      }
      break;



    //obtention des ??venements sur le CCCD
    case sl_bt_evt_gatt_server_characteristic_status_id:

      app_log_info("%s condition check!!!\n", __FUNCTION__);
      if(evt->data.evt_gatt_server_user_read_request.characteristic == gattdb_temperature){
          app_log_info("characteristic access: temperature\n", __FUNCTION__);
          app_log_info("status_flags: %lu", __FUNCTION__, (evt->data.evt_gatt_server_characteristic_status.status_flags));

              if (evt->data.evt_gatt_server_characteristic_status.client_config_flags == gatt_notification) {
                  app_log_info("\n------MODE NOTIF-------\n", __FUNCTION__);

                  tempValue = get_temp();
                  sc = sl_simple_timer_start(&mon_timer,
                                             1000,
                                             mon_callback,
                                             NULL,
                                             true);
                  app_assert_status(sc);
                  app_assert_status(sl_bt_gatt_server_send_notification(evt->data.evt_gatt_server_user_read_request.connection,
                                                                             gattdb_temperature,
                                                                             sizeof(tempValue),
                                                                             (uint8_t*)&tempValue
                                                                             ));





}




      }


      sl_simple_timer_stop(&mon_timer);
      break;




    case sl_bt_evt_gatt_server_user_write_request_id:


      sl_simple_timer_stop(&mon_timer);
          app_log_info("%s condition check!!!\n", __FUNCTION__);
          if (evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_digital) {
              app_log_info("characteristic access: digital\n", __FUNCTION__);

              if(evt->data.evt_gatt_server_attribute_value.value.data[0] != 0){
                  app_log_info("sl_led0: ON\n");
                  sl_led_turn_on(*sl_simple_led_array);
              }
              else{
                  app_log_info("sl_led0: OFF \n");
                  sl_led_turn_off(*sl_simple_led_array);
              }
             id_conn = evt->data.evt_gatt_server_user_write_request.connection;
             sc =  sl_bt_gatt_server_send_user_write_response(evt->data.evt_gatt_server_user_write_request.connection,
                                                              gattdb_digital,
                                                              SL_STATUS_OK);

              app_log_info("code: %d\n", __FUNCTION__, evt->data.evt_gatt_server_characteristic_status.status_flags);
              app_assert_status(sc);





          }
          break;



    // -------------------------------
    // Default event handler.
    default:
      break;

  }

}



static void mon_callback()
{
  long tempValue;
  tempValue = get_temp();
  app_log_info("\n---------------\nn=%d, temp = %d", n, tempValue);

  n++;

}

