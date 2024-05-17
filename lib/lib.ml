type backend = Mrmime | Ocamlnet

type line_feed = Windows | Unix

let input_adjust backend line =
  match backend with
  | Mrmime -> let len = String.length line in
              let final = line.[len - 1] in
              if final == '\r'
              then String.sub line 0 (len - 1) ^ "\n"
              else line ^ "\n"
  | Ocamlnet -> line

let output_adjust backend line_feed email =
  match backend, line_feed with
  | Ocamlnet, Windows -> (* write email out as Windows *)
     assert false
  | Ocamlnet, Unix -> (* write email out as Unix *)
     assert false
  | Mrmime, Windows -> (* write email out with bespoke Mr. Mime code *)
     assert false
  | Mrmime, Unix -> (* filter out '\r's; write email out *)
     assert false
  
