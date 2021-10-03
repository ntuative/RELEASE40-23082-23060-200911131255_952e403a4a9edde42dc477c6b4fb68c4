package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1426:String;
      
      private var var_1190:int;
      
      private var var_704:IDropMenuWindow;
      
      private var var_53:ModerationManager;
      
      private var var_386:ITextFieldWindow;
      
      private var var_55:IFrameWindow;
      
      private var var_285:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String)
      {
         super();
         var_53 = param1;
         var_1190 = param2;
         var_1426 = param3;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_292)
         {
            return;
         }
         if(!var_285)
         {
            return;
         }
         var_386.text = "";
         var_285 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_55;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_285 || false)
         {
            var_53.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_53.connection.send(new ModMessageMessageComposer(var_1190,var_386.text));
         this.dispose();
      }
      
      public function getId() : String
      {
         return var_1426;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_53.initMsg.messageTemplates.length);
         param1.populate(var_53.initMsg.messageTemplates);
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_53)
         {
            return;
         }
         var _loc3_:String = var_53.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_285 = false;
            var_386.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_55 != null)
         {
            var_55.destroy();
            var_55 = null;
         }
         var_704 = null;
         var_386 = null;
         var_53 = null;
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function show() : void
      {
         var_55 = IFrameWindow(var_53.getXmlWindow("send_msgs"));
         var_55.caption = "Msg To: " + var_1426;
         var_55.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_386 = ITextFieldWindow(var_55.findChildByName("message_input"));
         var_386.procedure = onInputClick;
         var_704 = IDropMenuWindow(var_55.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_704);
         var_704.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_55.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_55.visible = true;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1321;
      }
   }
}
