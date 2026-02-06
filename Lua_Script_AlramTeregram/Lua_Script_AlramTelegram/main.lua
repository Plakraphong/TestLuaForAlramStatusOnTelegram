--set default volume levels
Volume1 = 50;
Volume2 = 50;
Volume3 = 50;
Volume4 = 45;
Volume5 = 50;
--adds elements to objects list
WaterTankLevel = Volume1;
EDI_TapWater = Volume2;
RO1_Tank = Volume3;
RO2_Tank = Volume4;
EDI_Tank = Volume5;

--set bits Alram
Alarm_WaterTankLow = 0;
Alarm_EDI_TapWaterLow = 0;
Alarm_RO1_TankLow = 0;
Alarm_RO2_TankLow = 0;
Alarm_EDI_TankLow = 0;
--Function to set alarms
function SetAlarms()
    if WaterTankLevel < 50 and WaterTankLevel > 30 then
        Alarm_WaterTankLow = 1;
        print("Alarm: Water Tank Level is Low "..WaterTankLevel,"%");
    elseif WaterTankLevel <= 30 then
        Alarm_WaterTankLow = 1;
        print("Alarm: Water Tank Level is Very Low "..WaterTankLevel,"%");
    else
        Alarm_WaterTankLow = 0;
    end
    -- WaterTankLevel check completed
    if EDI_TapWater < 50 and EDI_TapWater > 30 then
        Alarm_EDI_TapWaterLow = 1;
        print("Alarm: EDI Tap Water Level is Low "..EDI_TapWater,"%");
    elseif EDI_TapWater <= 30 then
        Alarm_EDI_TapWaterLow = 1;
        print("Alarm: EDI Tap Water Level is Very Low "..EDI_TapWater,"%");
    else
        Alarm_EDI_TapWaterLow = 0;
    end
    -- EDI_TapWater check completed
    if RO1_Tank < 50 and RO1_Tank > 30 then
        Alarm_RO1_TankLow = 1;
        print("Alarm: RO1 Tank Level is Low "..RO1_Tank,"%");
    elseif RO1_Tank <= 30 then
        Alarm_RO1_TankLow = 1;
        print("Alarm: RO1 Tank Level is Very Low "..RO1_Tank,"%");
    else
        Alarm_RO1_TankLow = 0;
    end
    -- RO1_Tank check completed
    if RO2_Tank < 50 and RO2_Tank > 30 then
        Alarm_RO2_TankLow = 1;
        print("Alarm: RO2 Tank Level is Low "..RO2_Tank,"%");
    elseif RO2_Tank <= 30 then
        Alarm_RO2_TankLow = 1;
        print("Alarm: RO2 Tank Level is Very Low "..RO2_Tank,"%");
    else
        Alarm_RO2_TankLow = 0;
    end
    -- RO2_Tank check completed
    if EDI_Tank < 50 and EDI_Tank > 30 then
        Alarm_EDI_TankLow = 1;
        print("Alarm: EDI Tank Level is Low "..EDI_Tank,"%");
    elseif EDI_Tank <= 30 then
        Alarm_EDI_TankLow = 1;
        print("Alarm: EDI Tank Level is Very Low "..EDI_Tank,"%");
    else
        Alarm_EDI_TankLow = 0;
    end
    -- EDI_Tank check completed
end
--Call the function to set alarms
SetAlarms();
--end of alarms
--return true to indicate successful execution
return true;
--end of code

