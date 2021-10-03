package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1807:String;
      
      private var var_1014:String;
      
      private var var_1866:Boolean;
      
      private var var_1805:int;
      
      private var var_1808:Boolean;
      
      private var var_1780:String = "";
      
      private var _category:int;
      
      private var var_1160:int;
      
      private var var_1806:Boolean;
      
      private var var_1810:int = -1;
      
      private var _objId:int;
      
      private var var_1809:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:int)
      {
         super();
         var_1805 = param1;
         var_1014 = param2;
         _objId = param3;
         var_1160 = param4;
         _category = param5;
         var_1807 = param6;
         var_1866 = param7;
         var_1808 = param8;
         var_1806 = param9;
         var_1809 = param10;
      }
      
      public function get classId() : int
      {
         return var_1160;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1866;
      }
      
      public function get stripId() : int
      {
         return var_1805;
      }
      
      public function get stuffData() : String
      {
         return var_1807;
      }
      
      public function get songId() : int
      {
         return var_1810;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1780 = param1;
         var_1810 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1809;
      }
      
      public function get itemType() : String
      {
         return var_1014;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get slotId() : String
      {
         return var_1780;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1806;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1808;
      }
   }
}
