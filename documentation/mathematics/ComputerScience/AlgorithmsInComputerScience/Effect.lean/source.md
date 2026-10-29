# Effect — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec0100d28719fa39ed3968a4fc7daa6fde828f75` · SHA-256 `63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Set.Basic

/-!
# Independent operational effects

Effects are independent coordinates.  In particular, observing an element
does not imply permission to retain, transmit, train on, transform, or execute
it.
-/

namespace Mathematics.Capability

inductive Effect
  | observe
  | retain
  | transmit
  | transform
  | train
  | execute
  deriving DecidableEq, Repr

structure EffectProfile where
  admits : Set Effect

def EffectProfile.Refines
    (child parent : EffectProfile) : Prop :=
  child.admits ⊆ parent.admits

instance : LE EffectProfile :=
  ⟨EffectProfile.Refines⟩

namespace EffectProfile

@[refl] theorem le_refl (profile : EffectProfile) :
    profile ≤ profile :=
  Set.Subset.rfl

theorem le_trans
    {first second third : EffectProfile}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third :=
  Set.Subset.trans first_le_second second_le_third

def meet (left right : EffectProfile) : EffectProfile where
  admits := left.admits ∩ right.admits

theorem meet_le_left (left right : EffectProfile) :
    meet left right ≤ left :=
  Set.inter_subset_left

theorem meet_le_right (left right : EffectProfile) :
    meet left right ≤ right :=
  Set.inter_subset_right

end EffectProfile

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9203f40a112db733bf4b59810980306be22b63fbccfe0b98f48451b65b11c295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Effect/Variant63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
