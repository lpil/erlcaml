type pid = Pid

external self : unit -> pid = "erlang:self/0"

let get_self = self ()
