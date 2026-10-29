# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteGainFixtures.Variant3cb383b2c926c828eff7413521cf5ca91ab99d62b172c43dacc44b33ee358aff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d07eb7aaf20587cacb2b32b7471ad888f4bdb36e` · SHA-256 `3cb383b2c926c828eff7413521cf5ca91ab99d62b172c43dacc44b33ee358aff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FiniteGainCertificates

/-!
# Finite exact positive and adverse fixtures

These fixtures test the sign and edge certificate; they are not source decoders.
Research direction and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.FiniteGainFixtures

/-- Advance the eight-state fixture by three positions modulo eight. -/
def next (r : Fin 8) : Fin 8 := ⟨(r.val + 3) % 8, Nat.mod_lt _ (by decide)⟩

/-- Signed edge gain: three on states zero through four and negative five thereafter. -/
def gain (r : Fin 8) : ℝ := if r.val ≤ 4 then 3 else -5

/-- The real-valued storage of a fixture state is its natural-number coordinate. -/
def storage (r : Fin 8) : ℝ := r.val

theorem eight_state_edge_equality (r : Fin 8) :
    gain r + storage r - storage (next r) = 0 := by
  fin_cases r <;> norm_num [gain, storage, next]

theorem eight_state_orbit :
    [next 0, next 3, next 6, next 1, next 4, next 7, next 2, next 5] =
      [3, 6, 1, 4, 7, 2, 5, 0] := by decide

theorem adverse_edge_rejected : (-1 : ℝ) + storage 0 - storage 0 < 0 := by
  norm_num [storage]

end FormalResearch.RiemannHypothesis.FiniteGainFixtures
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afe9cdc35f2eeb6ebd6ba5e97f32c0478e8b19ba0c5f66bf3e160f35e82606a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant3cb383b2c926c828eff7413521cf5ca91ab99d62b172c43dacc44b33ee358aff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
