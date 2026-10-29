import Lean

/-! Parse source headers with the pinned compiler. This reports imports without
loading their implementations or claiming elaboration, provenance or proof status. -/
def main (paths : List String) : IO UInt32 := do
  if Lean.versionString != "4.33.0" then
    IO.eprintln "BLOCKED_TOOLCHAIN"
    return 3
  let mut failed := false
  for path in paths do
    let input ← IO.FS.readFile path
    let ctx := Lean.Parser.mkInputContext input path
    let (header, state, messages) ← Lean.Parser.parseHeader ctx
    let mut diagnostics : Array String := #[]
    for message in messages.toList do
      diagnostics := diagnostics.push (← message.toString)
    failed := failed || messages.hasErrors
    IO.println <| (Lean.Json.mkObj [
      ("path", Lean.toJson path),
      ("header_end_byte", Lean.toJson state.pos.byteIdx),
      ("imports", Lean.toJson (Lean.Elab.headerToImports header |>.map fun i => i.module.toString)),
      ("failed", Lean.toJson messages.hasErrors),
      ("diagnostics", Lean.toJson diagnostics)]).compress
  return if failed then 1 else 0
