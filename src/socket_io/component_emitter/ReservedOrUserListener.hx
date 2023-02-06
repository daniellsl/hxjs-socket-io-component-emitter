package socket_io.component_emitter;

/**
	Type of a listener of a user event or a reserved event. If `Ev` is in
	`ReservedEvents`, the reserved event listener is returned.
**/
typedef ReservedOrUserListener<ReservedEvents, UserEvents, Ev> = FallbackToUntypedListener<Dynamic>;