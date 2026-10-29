# Verification target: Big Operators Group Multiset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65fc4d7378219cf35500b19e3f4a24ac4920a006",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Varianta7a06f51caceaaded4479ce1e43576f08b4b4609e197c81812af86ecc9335ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65fc4d7378219cf35500b19e3f4a24ac4920a006`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Varianta7a06f51caceaaded4479ce1e43576f08b4b4609e197c81812af86ecc9335ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Varianta7a06f51caceaaded4479ce1e43576f08b4b4609e197c81812af86ecc9335ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_prod_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/one-le-prod-of-one-le.md) | 29 | `result-track:1f066542f8dbd889c821a737dfc1e06e54083f052c34d9a00a89a4679c93cb8c` |
| 2 | `lemma` | [single_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/single-le-prod.md) | 33 | `result-track:a8c365e068e0ce822450db594da04a4577e89b40de8a4de3d22eba85f2844014` |
| 3 | `lemma` | [prod_le_pow_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-le-pow-card.md) | 37 | `result-track:e8afb6c170a58ada5bce32564fadb36fbd93e68d933dc0b7bdea9f40a88b4513` |
| 4 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 42 | `result-track:4dc98e78db7486f92584486ab740f679969a190201add8fe95ec67eb03dad45d` |
| 5 | `lemma` | [prod_le_prod_of_rel_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-le-prod-of-rel-le.md) | 49 | `result-track:96759e38566385b92a45e7bc63c3c98029c102b6db0cf916e15b9f04f54878b6` |
| 6 | `lemma` | [prod_map_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-map-le-prod-map.md) | 57 | `result-track:073967c4bfecc63304668e288f95388e58760916d6fbd272fe037e42f9fe85b2` |
| 7 | `lemma` | [prod_map_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-map-le-prod.md) | 62 | `result-track:9b2299391d2d475edb9b0deaf7b7417c273ed12b22c8f429d8a4fa086ed78293` |
| 8 | `lemma` | [prod_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-le-prod-map.md) | 66 | `result-track:6278b9bf7505f871effd43b6b6bef57ac9d2f6ae1b8948780843c796e190fe0e` |
| 9 | `lemma` | [pow_card_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/pow-card-le-prod.md) | 70 | `result-track:3d26b0c07def4e6af175d80f9f31df0ff68885e20280794da99f38d3ef9ef4a8` |
| 10 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 80 | `result-track:44082f9caf4a7f8e1ce755d96cb33fb2720e7a6ca54c54d4e8d2512ebb6aab66` |
| 11 | `lemma` | [le_prod_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/le-prod-of-submultiplicative.md) | 94 | `result-track:5c4fb79b2a0dc426a6a51f59e54ace0a0ecc4c5b4fe94da81881f01013a37e15` |
| 12 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 100 | `result-track:ccc281125937874d678a1b8f53934ebb9c90dd97a1c10a7c2a85a91ae0e5c994` |
| 13 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 116 | `result-track:7cddc578610b7057637fd8ae6d1bbe0f49f81ac5751809c0b60ce189bdc02861` |
| 14 | `lemma` | [prod_lt_prod'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-lt-prod.md) | 127 | `result-track:21caecd652fd1fab3b24b00fb6402b3cf7c9007eded6ad63a12cec2c49c4b427` |
| 15 | `lemma` | [prod_lt_prod_of_nonempty'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-lt-prod-of-nonempty.md) | 134 | `result-track:ca7532083d024bb45ead6763a3f991e928526600d8bdf6ccb7b103b35f2f7c09` |
| 16 | `lemma` | [prod_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-eq-one-iff.md) | 144 | `result-track:e59120ce979513d085b58bb3d77fecd8a4526ef13838f335b7049439cb5d1896` |
| 17 | `lemma` | [le_prod_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/le-prod-of-mem.md) | 147 | `result-track:e65f2f0689ec8c1b2afceba33cd6c644985affd25a9b92c1cbaf45f3b00f12c4` |
| 18 | `lemma` | [max_le_of_forall_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/max-le-of-forall-le.md) | 154 | `result-track:ccd0ea406d28b7570c74848519428b197f5b59eb5a118b2aba79bfc5a6296802` |
| 19 | `lemma` | [max_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/max-prod-le.md) | 160 | `result-track:c69b073cd7c8cb988fe461393532dd6798b0ec55683da3a31bf8c1966491808f` |
| 20 | `lemma` | [prod_min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/prod-min-le.md) | 168 | `result-track:d660f8dd697b355cb1303a3cf338f6b3f282188d09b2c5402bf153a9bfbf67d6` |
| 21 | `lemma` | [abs_sum_le_sum_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupMultiset.lean/declarations/abs-sum-le-sum-abs.md) | 175 | `result-track:a3d02dcaeb64e13dfd9a20686cb6ef0c6418280c347d6d56e38ef718aeb5d337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb7b85fd44d049c3ab2cba466d8430631829dd85a33cd0af1b595b7c7023f8a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Varianta7a06f51caceaaded4479ce1e43576f08b4b4609e197c81812af86ecc9335ff7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Multiset/Varianta7a06f51caceaaded4479ce1e43576f08b4b4609e197c81812af86ecc9335ff7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
