# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18f532633ab1cf2128113476c4c679f0a3228d0d` · SHA-256 `9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Causal.QuantizerTower
import BitMatrix.Quantization.Core

/-!
# Boolean-matrix quantizers as causal observations

This domain adapter connects the generic DAF causal recursion to
`BitMatrix.Quantizer`.  It remains downstream of both abstractions: the owning
DAF causal modules do not import the BitMatrix domain.
-/

open ObservableRecursion

namespace BitMatrix.Adapters.CausalObservation

open BitMatrix

universe uQ

/-- The identity recursion observed by one existing Boolean-matrix quantizer. -/
def quantizerIdentitySystem
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    System PUnit State PUnit where
  Observation := fun _ => BitMatrix m n
  step := fun _ state => state
  observe := fun _ => Q.encode

private theorem quantizerIdentitySystem_run
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (inputs : List PUnit)
    (x : State) :
    (quantizerIdentitySystem Q).run inputs x = x := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      simpa [quantizerIdentitySystem] using ih x

/-- For identity recursion, causal equivalence is static indistinguishability. -/
theorem causalEquivalent_identity_iff_indistinguishable
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (x y : State) :
    (quantizerIdentitySystem Q).CausalEquivalent x y ↔
      Q.Indistinguishable x y := by
  constructor
  · intro h
    change Q.encode x = Q.encode y
    exact h [] PUnit.unit
  · intro h inputs ρ
    rw [quantizerIdentitySystem_run, quantizerIdentitySystem_run]
    exact h

/-- The dynamic identity quotient is exactly the quantizer's effective image. -/
noncomputable def identityCausalStateEquivEffectiveState
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    (quantizerIdentitySystem Q).CausalState ≃ Q.EffectiveState :=
  let quotientEquiv :
      (quantizerIdentitySystem Q).CausalState ≃ Quotient Q.setoid :=
    {
      toFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).1 h)
      invFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).2 h)
      left_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
      right_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
    }
  quotientEquiv.trans Q.quotientEquivEffective

end BitMatrix.Adapters.CausalObservation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce325c093e12685f9be27bebc5bc97d86ccc0e09151ee88b91212179f10344f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
