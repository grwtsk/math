# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMatcherFamilyControls.Variantde35bcd76e2c9a4ba859d0887cbd9789c7d15a1d8a4de43fbc8951b3998dc0d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aafc95d74df2a638b6140bd3ed2162afc2421470` · SHA-256 `de35bcd76e2c9a4ba859d0887cbd9789c7d15a1d8a4de43fbc8951b3998dc0d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanMatcherFamily
open Lean Elab Command

namespace LeanMatcherFamily.Controls
def walk : Nat → Nat
  | 0 => 0
  | n + 1 => walk n
def plain (n : Nat) := n + 1
end LeanMatcherFamily.Controls

elab "#matcher_family_controls" : command => liftTermElabM do
  let candidates := #[`LeanMatcherFamily.Controls.walk.match_1,
    `LeanMatcherFamily.Controls.walk, `LeanMatcherFamily.Controls.plain,
    `LeanMatcherFamily.Controls.missing, Name.str .anonymous "LeanMatcherFamily.Controls.walk.match_1"]
  let first ← LeanMatcherFamily.observe candidates
  let repeated ← LeanMatcherFamily.observe candidates
  let equationsOnly ← LeanMatcherFamily.observe #[`LeanMatcherFamily.Controls.walk.match_1] false
  let output ← liftM <| IO.getEnv "NOE_MATCHER_CONTROL_OUTPUT"
  let some output := output | throwError "CONTROL_OUTPUT_REQUIRED"
  liftM <| IO.FS.writeFile output ((Json.mkObj [
    ("first", first), ("repeat", repeated), ("equations_only", equationsOnly)]).compress ++ "\n")

#matcher_family_controls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57de7d5dac7aae1fdb6769ff1bf84409343a7feb1f25a71353d1e2e88611f1f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanMatcherFamilyControls/Variantde35bcd76e2c9a4ba859d0887cbd9789c7d15a1d8a4de43fbc8951b3998dc0d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
