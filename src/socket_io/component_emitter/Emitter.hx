package socket_io.component_emitter;

/**
	Strictly typed version of an `EventEmitter`. A `TypedEventEmitter` takes type
	parameters for mappings of event names to event data types, and strictly
	types method calls to the `EventEmitter` according to these event maps.
**/
@:jsRequire("@socket.io/component-emitter", "Emitter") extern class Emitter<ListenEvents, EmitEvents, ReservedEvents> {
	function new();
	/**
		Adds the `listener` function as an event listener for `ev`.
	**/
	function on<Ev>(ev:Ev, listener:FallbackToUntypedListener<Dynamic>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Adds a one-time `listener` function as an event listener for `ev`.
	**/
	function once<Ev>(ev:Ev, listener:FallbackToUntypedListener<Dynamic>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function off<Ev>(?ev:Ev, ?listener:FallbackToUntypedListener<Dynamic>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Emits an event.
	**/
	function emit<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Emits a reserved event.
		
		This method is `protected`, so that only a class extending
		`StrictEventEmitter` can emit its own reserved events.
	**/
	private function emitReserved<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Returns the listeners listening to an event.
	**/
	function listeners<Ev>(event:Ev):Array<FallbackToUntypedListener<Dynamic>>;
	/**
		Returns true if there is a listener for this event.
	**/
	function hasListeners<Ev>(event:Ev):Bool;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function removeListener<Ev>(?ev:Ev, ?listener:FallbackToUntypedListener<Dynamic>):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	/**
		Removes all `listener` function as an event listener for `ev`.
	**/
	function removeAllListeners<Ev>(?ev:Ev):Emitter<ListenEvents, EmitEvents, ReservedEvents>;
	static var prototype : Emitter<Dynamic, Dynamic, Dynamic>;
}