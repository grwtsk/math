# Complete source: GRWTSK.Order.Embeddings.Checks.Positive.PrefixObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e938e01a85e205343e27d80991fff40aa68b2bb` · SHA-256 `6351f7c8ff76d7a50e5028b649405d1d8f65b3d6836724f1488c4da0da33f79a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

set_option autoImplicit false

example {Node Label : Type*} (relation : Node → Node → Prop)
    (a b c : Node) (hac : relation a c) (hbc : relation b c)
    (hab : ¬ relation a b) (hba : ¬ relation b a) :
    ¬ ∃ address : Node → List Label,
      PreservesPrefix relation address ∧ ReflectsPrefix relation address :=
  no_prefix_representation_of_incomparable_upper relation a b c hac hbc hab hba

example (m n : Nat) : chainAddress m <+: chainAddress n ↔ m ≤ n :=
  chainAddress_prefix_iff m n

example (Label : Type*) :
    ¬ ∃ address : Diamond → List Label,
      PreservesPrefix DiamondLe address ∧ ReflectsPrefix DiamondLe address :=
  diamond_has_no_prefix_representation Label

-- These hypotheses really hold for the same concrete map; reflection really fails.
example : Function.Injective diamondAddress := diamondAddress_injective
example : PreservesPrefix DiamondLe diamondAddress := diamondAddress_preserves
example : ¬ ReflectsPrefix DiamondLe diamondAddress := diamondAddress_not_reflects

example : diamondAddress .left <+: diamondAddress .right := by decide
example : ¬ DiamondLe .left .right := by simp [DiamondLe]

example : DiamondLe .left .top ∧ DiamondLe .right .top := by simp [DiamondLe]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d01ed3ff970dff2517a6dc3f4bb5356d118adf2459ae9a4d309ae2a05fb3cb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/Checks/Positive/PrefixObstruction__SourceOccurrence9982a26bcf28c4dd2d915d64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
