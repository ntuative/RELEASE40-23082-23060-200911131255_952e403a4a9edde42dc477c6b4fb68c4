package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_562:String;
      
      private var var_1155:String;
      
      private var var_1156:String;
      
      private var var_1137:int;
      
      private var _gender:int;
      
      private var var_1157:String;
      
      private var _name:String;
      
      private var var_1154:Boolean;
      
      private var var_618:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_618 = param1.readBoolean();
         this.var_1154 = param1.readBoolean();
         this.var_562 = param1.readString();
         this.var_1137 = param1.readInteger();
         this.var_1156 = param1.readString();
         this.var_1155 = param1.readString();
         this.var_1157 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1157;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1156;
      }
      
      public function get categoryId() : int
      {
         return var_1137;
      }
      
      public function get online() : Boolean
      {
         return var_618;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1154;
      }
      
      public function get lastAccess() : String
      {
         return var_1155;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_562;
      }
   }
}
