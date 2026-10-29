# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsyncElab.Variantc9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `453879d6e57e85f6a7463a6a983663ec6c5656f5` · SHA-256 `c9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect

open Lean Elab Term Std.Time in
elab "now_ms%" : term => do
  -- Synchronize env
  let env := (← getEnv).checked.get
  let hasC := env.constants.contains `c
  logInfo m!"Contains `c`: {hasC}"
  -- Get time
  let now ← Timestamp.now
  let ms := now.toMillisecondsSinceUnixEpoch.toInt.natAbs
  elabTerm (Syntax.mkNatLit ms) (mkConst ``Nat)

/-- info: Contains `c`: false -/
#guard_msgs in
def old := now_ms%

theorem a : True := by /-- a -/ sleep 1000; trivial
theorem b : True := by /-- b -/ sleep 1000; trivial
theorem c : True := by /-- c -/ sleep 1000; trivial

/-- info: Contains `c`: true -/
#guard_msgs in
def new := now_ms%

open Lean Architect in
run_meta
  -- Running a, b, c should be all parallel and hence the time should be ≈1s and ≪2s
  assert! new - old < 1100
  assert! getProofDocString (← getEnv) ``a == "a"
  assert! getProofDocString (← getEnv) ``b == "b"
  assert! getProofDocString (← getEnv) ``c == "c"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18ca9917c399849f393787fa2b1239611373b7e6b464ec6809732c0be0c8828b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncElab/Variantc9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
