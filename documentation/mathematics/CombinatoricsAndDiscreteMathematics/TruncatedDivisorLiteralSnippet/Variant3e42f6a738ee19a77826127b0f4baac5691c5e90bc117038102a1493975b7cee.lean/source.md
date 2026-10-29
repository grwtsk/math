# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedDivisorLiteralSnippet.Variant3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f5781dd214ead878802ba4975d66d9c0bbbba69` · SHA-256 `3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open TruncatedDivisorResidualScratch DampedDivisorCoefficient
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (ε : ℝ) (n : ℕ) : truncatedDivisorCoefficient X ε n =
    ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
      (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) := rfl

example (X : ℕ) (ε : ℝ) (n : ℕ) (hn : n ≤ X) :
    truncatedDivisorCoefficient X ε n = dampedDivisorCoefficient ε n :=
  truncatedDivisorCoefficient_eq_full X ε n hn

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      (∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n) -
        (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) :=
  damped_floor_eq_truncated_prefix X ε x hX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_truncated_prefix X ε x hX hx
end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f4822e93cf43a71453e7674bf738367ff682fe60858c9fd4006bddab3bbc3a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TruncatedDivisorLiteralSnippet/Variant3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
