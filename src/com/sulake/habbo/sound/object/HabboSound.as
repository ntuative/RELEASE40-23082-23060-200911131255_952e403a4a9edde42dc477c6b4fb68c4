package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_936:SoundChannel = null;
      
      private var var_753:Boolean;
      
      private var var_937:Sound = null;
      
      private var var_581:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_937 = param1;
         var_937.addEventListener(Event.COMPLETE,onComplete);
         var_581 = 1;
         var_753 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_753;
      }
      
      public function stop() : Boolean
      {
         var_936.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_753 = false;
         var_936 = var_937.play(0);
         this.volume = var_581;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_581;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_936.position;
      }
      
      public function get length() : Number
      {
         return var_937.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_581 = param1;
         if(var_936 != null)
         {
            var_936.soundTransform = new SoundTransform(var_581);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_753 = true;
      }
   }
}
