package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1044:int;
      
      private var var_1045:String;
      
      private var var_1705:String;
      
      private var _index:int;
      
      private var var_1706:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1044 = param1;
         var_1705 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1045;
      }
      
      public function get questionId() : int
      {
         return var_1044;
      }
      
      public function get questionText() : String
      {
         return var_1705;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1045 = param1;
         var_1706 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1706;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
