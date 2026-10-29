# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Observers.LeanSourceHeader

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b8eec52256b4af46812dbf2ee1d9957f4f692c2` · SHA-256 `96cdddbadda0ed82e3dc66ad26a2c93ce9b311b06cbdcfd7481bc172851532ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55ae01d0b0d9a1d7dfae63098f7e4c719d64566277be6ff0cd339c7cdafd9ae9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanSourceHeader.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
