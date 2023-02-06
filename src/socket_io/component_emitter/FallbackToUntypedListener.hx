package socket_io.component_emitter;

/**
	Returns an untyped listener type if `T` is `never`; otherwise, returns `T`.
	
	This is a hack to mitigate https://github.com/socketio/socket.io/issues/3833.
	Needed because of https://github.com/microsoft/TypeScript/issues/41778
**/
typedef FallbackToUntypedListener<T> = Dynamic;