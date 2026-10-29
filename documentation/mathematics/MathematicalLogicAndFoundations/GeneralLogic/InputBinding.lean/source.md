# Input Binding — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a40e2fb364a2e7e53a976b6d15db59641755933d` · SHA-256 `f52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Checks.LiteralReplay
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FrontendBinding.Basic
import Lean.Data.Json.Basic
import Lean.Data.Json.FromToJson.Basic

/- Native observation has a separate IO/compiler boundary from kernel checking.
It must read the original command-line paths, never a Python-projected copy.
Metadata fences detect observed drift; they do not assert an atomic snapshot. -/
private def readInput (path : String) : IO ByteArray := do
  let file : System.FilePath := path
  let before ← file.symlinkMetadata
  if before.type != .file || before.byteSize > 4194304 then
    throw (IO.userError "bounded regular original input required")
  let bytes ← IO.FS.withFile file .read fun handle => do
    let mut bytes := ByteArray.empty
    while bytes.size <= 4194304 do
      let remaining := 4194305 - bytes.size
      let chunk ← handle.read (min 65536 remaining).toUSize
      bytes := bytes ++ chunk
      if bytes.size > 4194304 then
        throw (IO.userError "bounded regular original input required")
      if chunk.isEmpty then break
    return bytes
  let after ← file.symlinkMetadata
  if after.type != .file || before.byteSize != after.byteSize ||
      before.modified != after.modified || bytes.size > 4194304 ||
      bytes.size.toUInt64 != before.byteSize then
    throw (IO.userError "original input drift")
  return bytes

def main (args : List String) : IO UInt32 := do
  let [planPath, expectedPath, observedPath] := args
    | IO.eprintln "exactly three original input paths required"; return 2
  let plan ← readInput planPath
  let expected ← readInput expectedPath
  let observed ← readInput observedPath
  let actual : GRWTSK.FrontendBinding.Inputs :=
    ⟨plan.toList, expected.toList, observed.toList⟩
  let frozen : GRWTSK.FrontendBinding.Inputs :=
    ⟨LiteralReplay.rawPlan, LiteralReplay.rawExpected, LiteralReplay.rawObserved⟩
  if !GRWTSK.FrontendBinding.check frozen actual then
    IO.eprintln "literal input binding mismatch"
    return 1
  IO.println (Lean.Json.mkObj [
    ("schema", Lean.Json.str "noe.frontend-input-binding/1"),
    ("status", Lean.Json.str "exact-original-input-bytes"),
    ("paths", Lean.toJson args),
    ("bytes", Lean.toJson [plan.size, expected.size, observed.size])]).compress
  return 0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=190b131bd90857e0c9a90b14c4333e7c667bc0b83a0372e50a436a9889c6e125 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/InputBinding/Variantf52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
