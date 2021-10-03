package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1817:Boolean;
      
      private var var_1377:Array;
      
      private var var_1821:Boolean;
      
      private var var_1818:Boolean;
      
      private var var_1814:Boolean;
      
      private var var_152:Array;
      
      private var var_1815:Boolean;
      
      private var var_1819:Boolean;
      
      private var var_1378:Array;
      
      private var var_1820:Boolean;
      
      private var var_1816:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1816;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1817;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1821;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1815;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1819;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1377;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_152 = [];
         var_1377 = [];
         _roomMessageTemplates = [];
         var_1378 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_152.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1377.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1378.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1815 = param1.readBoolean();
         var_1814 = param1.readBoolean();
         var_1821 = param1.readBoolean();
         var_1818 = param1.readBoolean();
         var_1816 = param1.readBoolean();
         var_1819 = param1.readBoolean();
         var_1817 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1820 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1818;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1378;
      }
      
      public function get issues() : Array
      {
         return var_152;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1820;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1814;
      }
   }
}
