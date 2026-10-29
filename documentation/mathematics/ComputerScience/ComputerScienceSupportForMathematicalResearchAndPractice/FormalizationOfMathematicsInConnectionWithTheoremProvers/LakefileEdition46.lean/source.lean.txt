import Lake
open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/cf51f918b89b321b61ba95cd694cf54ad2f0298cdf8515e5218c5687a58994d4/src"
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
