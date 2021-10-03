package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2152:Boolean;
      
      private var var_2151:int;
      
      private var var_2153:Boolean;
      
      private var var_1367:String;
      
      private var var_1157:String;
      
      private var var_1987:int;
      
      private var var_1758:String;
      
      private var var_2154:String;
      
      private var var_1757:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1987 = param1.readInteger();
         this.var_1367 = param1.readString();
         this.var_1758 = param1.readString();
         this.var_2152 = param1.readBoolean();
         this.var_2153 = param1.readBoolean();
         param1.readString();
         this.var_2151 = param1.readInteger();
         this.var_1757 = param1.readString();
         this.var_2154 = param1.readString();
         this.var_1157 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1157;
      }
      
      public function get avatarName() : String
      {
         return this.var_1367;
      }
      
      public function get avatarId() : int
      {
         return this.var_1987;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2152;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2154;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1757;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2153;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1758;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2151;
      }
   }
}
