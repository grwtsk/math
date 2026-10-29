# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Real.Variante15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cba783274a992ab72c07a6d31ab751f71d9faa2` · SHA-256 `e15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
! This file was ported from Lean 3 source file `test/real.lean`
! leanprover-community/mathlib commit d7943885503965d07ccaeb390d65fbc3f45962e6
! Please do not edit these lines, except to modify the commit id
! if you have ported upstream changes.
-/
import Mathlib.Basic.Real.Basic

private axiom test_sorry : ∀ {α}, α
unsafe def testRepr (r : ℝ) (s : String) : Lean.Elab.Command.CommandElabM Unit :=
unless toString (repr r) = s do throwError "got {repr r}"

run_cmd unsafe testRepr 0 "Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)"
run_cmd unsafe testRepr 1 "Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/)"
run_cmd
  unsafe testRepr (37 : ℕ) "Real.ofCauchy (sorry /- 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, ... -/)"
run_cmd unsafe testRepr (2 + 3) "Real.ofCauchy (sorry /- 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, ... -/)"
run_cmd unsafe testRepr ⟨CauSeq.Completion.mk <| ⟨fun n ↦ 2^(-n:ℤ), test_sorry⟩⟩
                        "Real.ofCauchy (sorry /- 1, (1 : Rat)/2, (1 : Rat)/4, (1 : Rat)/8, \
                        (1 : Rat)/16, (1 : Rat)/32, (1 : Rat)/64, (1 : Rat)/128, (1 : Rat)/256, \
                        (1 : Rat)/512, ... -/)"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72ecefd91f75eff03a9375692cd3de410cf267fc2b2ec1ff46537fc35a8c710b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Real/Variante15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
