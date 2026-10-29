# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef5dab6a79d1ae2d4fb99069c010c17deb50831c` · SHA-256 `8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Causal.QuantizerTower
import BinaryMatrix.Quantization

/-!
# Boolean-matrix quantizers as causal observations

This domain adapter connects the generic DAF causal recursion to
`BinMat.Quantizer`.  It remains downstream of both abstractions: the owning
DAF causal modules do not import the BinaryMatrix domain.
-/

open ObservableRecursion

namespace CausalObservation

open BinMat

universe uQ

/-- The identity recursion observed by one existing Boolean-matrix quantizer. -/
def quantizerIdentitySystem
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    System PUnit State PUnit where
  Observation := fun _ => BinMat m n
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

end CausalObservation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e8e419d3f07e64a31d7dc46e4526bfdcbbb5c34c4d476a55866ba8354cbf4ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
