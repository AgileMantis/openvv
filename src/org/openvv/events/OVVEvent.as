/**
 * Copyright (c) 2013 Open VideoView
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
 * documentation files (the "Software"), to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
 * to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of
 * the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
 * THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package org.openvv.events
{
  import flash.events.Event;
  public class OVVEvent extends Event
  {
	/**
	 * Events of this type represent 1 second of continuous viewability has occurred
	 */	  
    public static const OVVDiscernibleImpression:String = "OVVDiscernibleImpression";
	
	/**
	 * Events of this type represent 5 seconds of continuous viewability have occurred
	 */    
	public static const OVVImpression:String = "OVVImpression";
	
	/**
	 * Events of this type represent informational logging messages
	 */	
    public static const OVVLog:String = "OVVLog";
	
	/**
	 * Events of this type represent an error that has occurred  
	 */	
    public static const OVVError:String = "OVVError";

	/**
	 * An optional object containing additional information
	 */	
    private var _data:Object;

	/**
	 * Constructor.
	 *  
	 * @param type What this event represents 
	 * @param data Optional, additional data
	 * @param bubbles Whether to bubble up the display list or not
	 * @param cancelable Whether the event can be cancelled or not
	 * 
	 */	
    public function OVVEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false) {
      super(type, bubbles, cancelable);
      _data = data;
    }
	
	/**
	 * @return A generic object, or null   
	 */	
    public function get data():Object {
      return _data;
    }
  }
}

