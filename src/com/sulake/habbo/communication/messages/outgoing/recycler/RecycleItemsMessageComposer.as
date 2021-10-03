package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_736:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_736 = new Array();
         var_736.push(param1.length);
         var_736 = var_736.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_736;
      }
   }
}
