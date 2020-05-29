open! Core
open! Async

let command =
  let open Command.Let_syntax in
  Command.async
    ~summary:"spotify to apple music sync server"
    (let%map () = return ()
     and config_file = Command.Param.flag "config-file" (Command.Param.required Command.Param.string) ~doc:"CONFIG get settings from this file"
     in
     (fun () ->
         print_endline config_file |> Deferred.return)
    )
;;

let () = Command.run command
