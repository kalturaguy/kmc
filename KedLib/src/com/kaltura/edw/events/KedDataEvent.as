package com.kaltura.edw.events
{
	import flash.events.Event;
	
	
	/**
	 * An event with data, used for general KED events.
	 * */
	public class KedDataEvent extends Event {
		
		/**
		 * this is the event dispatched by KED when the selected entry is reloaded
		 * */
		public static const ENTRY_RELOADED:String = "kedEntryReloaded";
		
		/**
		 * this is the event dispatched by KED after the selected entry was updated 
		 */		
		public static const ENTRY_UPDATED:String = "kedEntryUpdated";
		
		/**
		 * this event tells the envelope app that the window should be closed
		 * */
		public static const CLOSE_WINDOW:String = "kedCloseWindow";
		
		/**
		 * this event tells the envelope app that a category had beed deleted
		 * */
		public static const CATEGORY_CHANGED:String = "kedCategoryChanged";
		
		/**
		 * this event tells the envelope app that the replacement entry should be opened
		 * */
		public static const OPEN_REPLACEMENT:String = "kedOpenReplacement"; 
		
		
		
		public var data:*;
		
		public function KedDataEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			var e:KedDataEvent = new KedDataEvent(this.type, this.bubbles, this.cancelable);
			e.data = this.data;
			return e;
		}
	}
}