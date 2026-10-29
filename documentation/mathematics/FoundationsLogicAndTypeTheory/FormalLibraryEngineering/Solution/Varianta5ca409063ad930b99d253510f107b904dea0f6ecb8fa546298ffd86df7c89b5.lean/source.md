# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `858fb52dcc60ca4b7579724de2deb60b9d0509ea` · SHA-256 `a5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
open Lean Elab Term

/-- Same name, never compared: now uninhabited. -/
structure S : Type where
  a : Nat
  h : False

def T : Type := S

elab "pr% " s:term : term => do
  return Expr.proj `S 0 (← elabTerm s none)

theorem tgt : ∀ (s : T), (pr% s) = (0 : Nat) := by
  intro s
  exact (S.h s).elim
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0abbb69b3ed43ed7c21f6d644cde428c87a0ebddf6382114432efc147882864 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
