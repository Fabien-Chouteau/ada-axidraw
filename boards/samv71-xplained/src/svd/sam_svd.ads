pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Microchip ATSAMRH71F20C Microcontroller
package SAM_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   CHIPID_Base : constant System.Address := System'To_Address (16#40100000#);
   FLEXCOM0_Base : constant System.Address := System'To_Address (16#40010000#);
   FLEXCOM1_Base : constant System.Address := System'To_Address (16#40014000#);
   FLEXCOM2_Base : constant System.Address := System'To_Address (16#40018000#);
   FLEXCOM3_Base : constant System.Address := System'To_Address (16#4001C000#);
   FLEXCOM4_Base : constant System.Address := System'To_Address (16#40020000#);
   FLEXCOM5_Base : constant System.Address := System'To_Address (16#40024000#);
   FLEXCOM6_Base : constant System.Address := System'To_Address (16#40028000#);
   FLEXCOM7_Base : constant System.Address := System'To_Address (16#4002C000#);
   FLEXCOM8_Base : constant System.Address := System'To_Address (16#40030000#);
   FLEXCOM9_Base : constant System.Address := System'To_Address (16#40034000#);
   FLEXRAMECC_Base : constant System.Address := System'To_Address (16#40100600#);
   GMAC_Base : constant System.Address := System'To_Address (16#4009C000#);
   HEFC_Base : constant System.Address := System'To_Address (16#40004000#);
   HEMC_Base : constant System.Address := System'To_Address (16#40080000#);
   HSDRAMC_Base : constant System.Address := System'To_Address (16#40082000#);
   HSMC_Base : constant System.Address := System'To_Address (16#40081000#);
   ICM_Base : constant System.Address := System'To_Address (16#4008C000#);
   IP1553_Base : constant System.Address := System'To_Address (16#4003C000#);
   MATRIX0_Base : constant System.Address := System'To_Address (16#40000000#);
   MCAN0_Base : constant System.Address := System'To_Address (16#40058000#);
   MCAN1_Base : constant System.Address := System'To_Address (16#4005C000#);
   NMIC_Base : constant System.Address := System'To_Address (16#400A8000#);
   PIO_Base : constant System.Address := System'To_Address (16#40008000#);
   PMC_Base : constant System.Address := System'To_Address (16#4000C000#);
   PWM0_Base : constant System.Address := System'To_Address (16#40068000#);
   PWM1_Base : constant System.Address := System'To_Address (16#4006C000#);
   QSPI_Base : constant System.Address := System'To_Address (16#40038000#);
   RSTC_Base : constant System.Address := System'To_Address (16#40100200#);
   RSWDT_Base : constant System.Address := System'To_Address (16#40100300#);
   RTC_Base : constant System.Address := System'To_Address (16#40100260#);
   RTT_Base : constant System.Address := System'To_Address (16#40100230#);
   SFR_Base : constant System.Address := System'To_Address (16#400A0000#);
   SHA_Base : constant System.Address := System'To_Address (16#40094000#);
   SPW_Base : constant System.Address := System'To_Address (16#40040000#);
   SUPC_Base : constant System.Address := System'To_Address (16#40100210#);
   TC0_Base : constant System.Address := System'To_Address (16#40070000#);
   TC1_Base : constant System.Address := System'To_Address (16#40074000#);
   TC2_Base : constant System.Address := System'To_Address (16#40078000#);
   TC3_Base : constant System.Address := System'To_Address (16#4007C000#);
   TCMECC_Base : constant System.Address := System'To_Address (16#40100400#);
   TRNG_Base : constant System.Address := System'To_Address (16#40090000#);
   WDT_Base : constant System.Address := System'To_Address (16#40100250#);
   XDMAC_Base : constant System.Address := System'To_Address (16#40098000#);
   LOCKBIT_Base : constant System.Address := System'To_Address (16#0#);
   SCnSCB_Base : constant System.Address := System'To_Address (16#E000E000#);
   SCB_Base : constant System.Address := System'To_Address (16#E000ED00#);
   SysTick_Base : constant System.Address := System'To_Address (16#E000E010#);
   NVIC_Base : constant System.Address := System'To_Address (16#E000E100#);
   MPU_Base : constant System.Address := System'To_Address (16#E000ED90#);
   FPU_Base : constant System.Address := System'To_Address (16#E000EF30#);

end SAM_SVD;
