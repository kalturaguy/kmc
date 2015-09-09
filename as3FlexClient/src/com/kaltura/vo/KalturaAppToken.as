// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2015  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.kaltura.vo
{
	import com.kaltura.vo.BaseFlexVo;

	[Bindable]
	public dynamic class KalturaAppToken extends BaseFlexVo
	{
		/**
		* The id of the application token
		* 
		**/
		public var id : String = null;

		/**
		* The application token
		* 
		**/
		public var token : String = null;

		/**
		**/
		public var partnerId : int = int.MIN_VALUE;

		/**
		* Creation time as Unix timestamp (In seconds)
		* 
		**/
		public var createdAt : int = int.MIN_VALUE;

		/**
		* Update time as Unix timestamp (In seconds)
		* 
		**/
		public var updatedAt : int = int.MIN_VALUE;

		/**
		* Application token status
		* 
		* @see com.kaltura.types.KalturaAppTokenStatus
		**/
		public var status : int = int.MIN_VALUE;

		/**
		* Expiry time of current token (unix timestamp in seconds)
		* 
		**/
		public var expiry : int = int.MIN_VALUE;

		/**
		* Type of KS (Kaltura Session) that created using the current token
		* 
		* @see com.kaltura.types.KalturaSessionType
		**/
		public var sessionType : int = int.MIN_VALUE;

		/**
		* User id of KS (Kaltura Session) that created using the current token
		* 
		**/
		public var sessionUserId : String = null;

		/**
		* Expiry duration of KS (Kaltura Session) that created using the current token (in seconds)
		* 
		**/
		public var sessionDuration : int = int.MIN_VALUE;

		/**
		* Comma separated privileges to be applied on KS (Kaltura Session) that created using the current token
		* 
		**/
		public var sessionPrivileges : String = null;

		/** 
		* a list of attributes which may be updated on this object 
		**/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('expiry');
			arr.push('sessionType');
			arr.push('sessionUserId');
			arr.push('sessionDuration');
			arr.push('sessionPrivileges');
			return arr;
		}

		/** 
		* a list of attributes which may only be inserted when initializing this object 
		**/ 
		public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}

		/** 
		* get the expected type of array elements 
		* @param arrayName 	 name of an attribute of type array of the current object 
		* @return 	 un-qualified class name 
		**/ 
		public function getElementType(arrayName:String):String
		{
			var result:String = '';
			switch (arrayName) {
			}
			return result;
		}
	}
}