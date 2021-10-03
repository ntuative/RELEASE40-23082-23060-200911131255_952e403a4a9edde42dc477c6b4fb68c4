package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1133:String = "F";
      
      public static const const_942:String = "M";
       
      
      private var var_89:Number = 0;
      
      private var var_562:String = "";
      
      private var var_2063:int = 0;
      
      private var var_1800:String = "";
      
      private var var_1797:int = 0;
      
      private var var_1799:int = 0;
      
      private var var_1801:String = "";
      
      private var var_1187:String = "";
      
      private var _id:int = 0;
      
      private var var_202:Boolean = false;
      
      private var var_220:int = 0;
      
      private var var_2064:String = "";
      
      private var _name:String = "";
      
      private var var_1798:int = 0;
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_220;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_202)
         {
            var_220 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_202)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2063;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_202)
         {
            var_1797 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2064;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_202)
         {
            var_1801 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_202)
         {
            var_2064 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_202)
         {
            var_1799 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_202)
         {
            var_562 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_202)
         {
            var_2063 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_202)
         {
            var_1187 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1797;
      }
      
      public function get groupID() : String
      {
         return var_1801;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_202)
         {
            var_1798 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_202)
         {
            var_1800 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_202 = true;
      }
      
      public function get sex() : String
      {
         return var_1187;
      }
      
      public function get figure() : String
      {
         return var_562;
      }
      
      public function get webID() : int
      {
         return var_1798;
      }
      
      public function get custom() : String
      {
         return var_1800;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_202)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_202)
         {
            var_90 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_202)
         {
            var_89 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1799;
      }
   }
}
