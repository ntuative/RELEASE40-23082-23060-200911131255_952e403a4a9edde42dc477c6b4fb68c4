package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_562:String;
      
      private var var_2157:String;
      
      private var var_2159:int;
      
      private var var_2156:int;
      
      private var var_1187:String;
      
      private var var_1157:String;
      
      private var _name:String;
      
      private var var_825:int;
      
      private var _respectLeft:int;
      
      private var var_2155:int;
      
      private var var_1840:int;
      
      private var var_2158:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2156;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1157;
      }
      
      public function get customData() : String
      {
         return this.var_2157;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_825;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2159;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2158;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1840;
      }
      
      public function get sex() : String
      {
         return this.var_1187;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_562 = param1.readString();
         this.var_1187 = param1.readString();
         this.var_2157 = param1.readString();
         this.var_1157 = param1.readString();
         this.var_2155 = param1.readInteger();
         this.var_2158 = param1.readString();
         this.var_2159 = param1.readInteger();
         this.var_2156 = param1.readInteger();
         this.var_1840 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_825 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2155;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
   }
}
