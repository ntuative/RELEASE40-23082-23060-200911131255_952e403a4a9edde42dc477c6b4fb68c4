package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_641:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1766:int;
      
      private var var_1767:int;
      
      private var var_1865:Boolean;
      
      private var var_932:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_641);
         var_1767 = param1;
         var_1766 = param2;
         _color = param3;
         var_932 = param4;
         var_1865 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1766;
      }
      
      public function get presetNumber() : int
      {
         return var_1767;
      }
      
      public function get brightness() : int
      {
         return var_932;
      }
      
      public function get apply() : Boolean
      {
         return var_1865;
      }
   }
}
