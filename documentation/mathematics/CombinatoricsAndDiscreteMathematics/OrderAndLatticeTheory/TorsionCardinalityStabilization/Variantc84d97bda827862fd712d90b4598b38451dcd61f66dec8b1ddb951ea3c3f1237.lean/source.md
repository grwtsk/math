# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityStabilization.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7fa9d8b41b05a15608755271ed428bfb94a062c` · SHA-256 `c84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.TorsionLedger
import Mathlib.Order.Monotone.Basic

/-!
# Cardinality stabilization under a uniform finite torsion bound

This elementary result isolates the combinatorial fact from stronger claims
about group structure, generators, transition maps, or Bockstein data.
-/

namespace Mathematics.Homology

/-- A uniformly bounded monotone sequence of finite cardinalities stabilizes. -/
theorem torsionCardinality_eventuallyConstant
    (cardinality : Nat → Nat) :
    Monotone cardinality →
    (∃ bound, ∀ stage, cardinality stage ≤ bound) →
      ∃ stableStage,
        ∀ stage, stableStage ≤ stage →
          cardinality stage = cardinality stableStage := by
  intro monotoneCardinality bounded
  obtain ⟨bound, boundedBy⟩ := bounded
  obtain ⟨value, stableStage, stable⟩ :=
    converges_of_monotone_of_bounded monotoneCardinality boundedBy
  exact ⟨stableStage, fun stage later ↦
    (stable stage later).trans (stable stableStage (le_refl _)).symm⟩

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45a59e272f0225c446ca9a9e9280d5f1041da3be6e95b61fc75ce19a0fefd043 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TorsionCardinalityStabilization/Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
