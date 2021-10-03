package com.sulake.habbo.help.tutorial
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.avatar.ChangeUserNameResultMessageEvent;
   import flash.display.BitmapData;
   
   public class TutorialNameChangeView implements ITutorialUIView
   {
      
      private static var var_1475:uint = 13232628;
      
      private static var var_2062:uint = 11129827;
       
      
      private var var_835:Boolean;
      
      private var _window:IWindowContainer;
      
      private var var_834:NameSuggestionListRenderer;
      
      private var var_53:TutorialUI;
      
      public function TutorialNameChangeView(param1:IItemListWindow, param2:TutorialUI)
      {
         super();
         var_53 = param2;
         var_53.localization.registerParameter("help.tutorial.button.nameok","name",var_53.help.ownUserName);
         var _loc3_:IWindowContainer = param2.buildXmlWindow("tutorial_change_name") as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.procedure = windowProcedure;
         _window = _loc3_;
         var_835 = true;
         param1.addListItem(_loc3_ as IWindow);
         setButtonStateNormal(_loc3_.findChildByName("button_name_check"));
         setNormalView();
         var_53.prepareForTutorial();
      }
      
      public function setNameAvailableView(param1:String) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc2_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var_53.localization.registerParameter("help.tutorial.name.available","name",param1);
         _loc2_.text = var_53.localization.getKey("help.tutorial.name.available");
         var _loc3_:ITextFieldWindow = _window.findChildByName("input") as ITextFieldWindow;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.text = param1;
         var _loc4_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.visible = false;
         var_835 = false;
      }
      
      public function get id() : String
      {
         return TutorialUI.const_260;
      }
      
      private function nameOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(_loc2_ != null)
         {
            _loc2_.color = var_1475;
         }
      }
      
      private function setButtonStateNormal(param1:IWindow) : void
      {
         var _loc3_:* = null;
         var _loc2_:IBitmapWrapperWindow = param1 as IBitmapWrapperWindow;
         switch(param1.name)
         {
            case "button_name_check":
               _loc3_ = BitmapDataAsset(var_53.assets.getAssetByName("tutorial_button_name_check"));
         }
         if(_loc2_ != null && _loc3_ != null && _loc3_.content != null)
         {
            _loc2_.bitmap = (_loc3_.content as BitmapData).clone();
         }
      }
      
      public function setNameNotAvailableView(param1:int, param2:String, param3:Array) : void
      {
         var _loc8_:* = null;
         if(_window == null)
         {
            return;
         }
         var _loc4_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc4_ == null)
         {
            return;
         }
         switch(param1)
         {
            case ChangeUserNameResultMessageEvent.var_1020:
               var_53.localization.registerParameter("help.tutorial.name.taken","name",param2);
               _loc4_.text = var_53.localization.getKey("help.tutorial.name.taken");
               break;
            case ChangeUserNameResultMessageEvent.var_1017:
               var_53.localization.registerParameter("help.tutorial.name.invalid","name",param2);
               _loc4_.text = var_53.localization.getKey("help.tutorial.name.invalid");
               break;
            case ChangeUserNameResultMessageEvent.var_1021:
               break;
            case ChangeUserNameResultMessageEvent.var_1019:
               _loc4_.text = var_53.localization.getKey("help.tutorial.name.long");
               break;
            case ChangeUserNameResultMessageEvent.var_1018:
               _loc4_.text = var_53.localization.getKey("help.tutorial.name.short");
         }
         var _loc5_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.visible = true;
         var_834 = new NameSuggestionListRenderer(var_53);
         var _loc6_:int = var_834.render(param3,_loc5_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.numChildren)
         {
            _loc8_ = _loc5_.getChildAt(_loc7_);
            _loc8_.color = var_1475;
            _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,nameSelected);
            _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,nameOver);
            _loc8_.addEventListener(WindowMouseEvent.const_28,nameOut);
            _loc7_++;
         }
      }
      
      private function nameSelected(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = _loc2_.text;
         setNormalView();
         var _loc4_:ITextFieldWindow = _window.findChildByName("input") as ITextFieldWindow;
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.text = _loc3_;
      }
      
      private function windowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc3_:ITextFieldWindow = _window.findChildByName("input") as ITextFieldWindow;
         if(_loc3_ == null)
         {
            return;
         }
         switch(param2.name)
         {
            case "input":
               if(param1.type == WindowMouseEvent.const_42)
               {
                  if(!var_835)
                  {
                     return;
                  }
                  _loc3_.text = "";
                  var_835 = false;
               }
               break;
            case "button_ok":
               if(param1.type == WindowMouseEvent.const_42)
               {
                  if(_loc3_.text.length < 1)
                  {
                     return;
                  }
                  var_53.changeName(_loc3_.text);
               }
               break;
            case "button_cancel":
               if(param1.type == WindowMouseEvent.const_42)
               {
                  var_53.showView(TutorialUI.const_83);
               }
               break;
            case "button_usecurrent":
               if(param1.type == WindowMouseEvent.const_42)
               {
                  var_53.changeName(var_53.help.ownUserName);
               }
               break;
            case "button_name_check":
               switch(param1.type)
               {
                  case WindowMouseEvent.const_42:
                     if(_loc3_.text.length < 1)
                     {
                        return;
                     }
                     var_53.checkName(_loc3_.text);
                     break;
                  case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
                     setButtonStateOver(param2);
                     break;
                  case WindowMouseEvent.const_28:
                     setButtonStateNormal(param2);
               }
         }
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_834 != null)
         {
            var_834.dispose();
            var_834 = null;
         }
      }
      
      private function setButtonStateOver(param1:IWindow) : void
      {
         var _loc3_:* = null;
         var _loc2_:IBitmapWrapperWindow = param1 as IBitmapWrapperWindow;
         switch(param1.name)
         {
            case "button_name_check":
               _loc3_ = BitmapDataAsset(var_53.assets.getAssetByName("tutorial_button_name_check_over"));
         }
         if(_loc2_ != null && _loc3_ != null && _loc3_.content != null)
         {
            _loc2_.bitmap = (_loc3_.content as BitmapData).clone();
         }
      }
      
      public function setNormalView() : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc1_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.text = var_53.localization.getKey("help.tutorial.name.info");
         var _loc2_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = false;
      }
      
      private function nameOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(_loc2_ != null)
         {
            _loc2_.color = var_2062;
         }
      }
   }
}
