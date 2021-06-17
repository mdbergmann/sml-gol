
fun is_alive (true, neighbours) =
    if neighbours < 2 then false
    else
        if neighbours > 3 then false
        else true
  | is_alive (false, neighbours) =
    case neighbours of
        3 => true
      | _ => false                         
