# Verification target: Group List Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "584f96c1ce5fab316ead03a7c000ee7384260767",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant909178ef52f61904b31b3f88fa20c27c74a5f9b4a332267417672f0a669c6d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `584f96c1ce5fab316ead03a7c000ee7384260767`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant909178ef52f61904b31b3f88fa20c27c74a5f9b4a332267417672f0a669c6d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant909178ef52f61904b31b3f88fa20c27c74a5f9b4a332267417672f0a669c6d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Forall₂.prod_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/forall-prod-le-prod.md) | 36 | `result-track:06320878201268b800dfee031530fce2852707795ff0729a680611db51dc6c5b` |
| 2 | `lemma` | [Sublist.prod_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/sublist-prod-le-prod.md) | 52 | `result-track:1a11ff6bdc6b006943618b5e36ff3f9117af284065fb2cb85646cdb335a50158` |
| 3 | `lemma` | [SublistForall₂.prod_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/sublistforall-prod-le-prod.md) | 67 | `result-track:d30b7474269045ece741d79aa22c7fb5859564117927ce43b098ed494ef1f735` |
| 4 | `lemma` | [prod_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-le-prod.md) | 78 | `result-track:f2a4bd0006b751e60e5a6b4226a5e09c149383990c0023cb718882b8ab6174f0` |
| 5 | `lemma` | [prod_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-lt-prod.md) | 86 | `result-track:d849fd6102705b61e6bc33f6dd617180f681f5bf289bd86a275acbe234ecdb05` |
| 6 | `lemma` | [prod_lt_prod_of_ne_nil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-lt-prod-of-ne-nil.md) | 102 | `result-track:19a66fc0b2b638ca812a423cc4ab1360d800684abdb7f40be13c4abca139354d` |
| 7 | `lemma` | [prod_le_pow_length](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-le-pow-length.md) | 110 | `result-track:dcf34d00ee2a23c749e9e0ae50a1bfef7c098cb40359416f7f92628e42547557` |
| 8 | `lemma` | [pow_length_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/pow-length-le-prod.md) | 119 | `result-track:cefaba4d889a1c6ae754d5172a5c0ef2a6a7374cfcdd1e8045b6783499fa01f2` |
| 9 | `lemma` | [exists_lt_of_prod_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/exists-lt-of-prod-lt.md) | 128 | `result-track:40e22839a909cb67f51797c8235bfc417c5d548fa38d53999306801c3264cf60` |
| 10 | `lemma` | [exists_le_of_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/exists-le-of-prod-le.md) | 137 | `result-track:2fc087471db9363a28b1415ff81b1357c20901d462bf3aac7247641a82a99eb0` |
| 11 | `lemma` | [one_le_prod_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/one-le-prod-of-one-le.md) | 147 | `result-track:d734f6e6a263db1d1efa3fbfa45143b9d653c3349d88989d9cd2cf529768b4f6` |
| 12 | `lemma` | [max_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/max-prod-le.md) | 157 | `result-track:56fcd9e5f63e4897406f2ec3507695a6a8883372ffc234deff1cf31f985fc0d4` |
| 13 | `lemma` | [prod_min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-min-le.md) | 166 | `result-track:dd6b20bbdb7741ef54e68de7c18d097bc12d4c97a76ebfd8dd32c84d1b44d1c0` |
| 14 | `lemma` | [monotone_prod_take](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/monotone-prod-take.md) | 176 | `result-track:78db8577e281342326156cdb5a48b315984a99762224b1c035b09f8dbfb7a1aa` |
| 15 | `theorem` | [le_prod_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/le-prod-of-mem.md) | 185 | `result-track:9ca6ebc54fb0c76f5664231816e1cc8b12e71a74e8029238bd1901f2d0d61f0e` |
| 16 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 202 | `result-track:c73df3147ea9badee4677924e182cec3bf458691fd0adfcc5be9fd1ba3777014` |
| 17 | `lemma` | [le_prod_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/le-prod-of-submultiplicative.md) | 214 | `result-track:9aaf714da079cc65eb1ce1ac242f7beb1f9b511105b848a9662724ca55dd621f` |
| 18 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 220 | `result-track:e14e4b32049a22d56d7a3b749f3ebbce67d236a90919a287ddac5477d5ab3773` |
| 19 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 235 | `result-track:1bf9949866cfccd999c43c63c48c39120d78d5846fa68d40dae2a8a170918c81` |
| 20 | `lemma` | [sum_le_foldr_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/sum-le-foldr-max.md) | 243 | `result-track:6962065ced0ac1c962bcde167f5c261c5d29f32be2ec109a4adec5f9cfd27927` |
| 21 | `lemma` | [one_lt_prod_of_one_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/one-lt-prod-of-one-lt.md) | 252 | `result-track:eba9bbe2b8a09503eb65b93c70164e0f2890975473702e3f11bd3604c28fbec2` |
| 22 | `lemma` | [single_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/single-le-prod.md) | 265 | `result-track:fc718f4257cfda1e433c1e08065d4bb85b67ddc0678eba467c739d33660249de` |
| 23 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 276 | `result-track:ac850c6b4dce68e419820a2043109053b8aee8ab5762c6746c6cfd00d09aad26` |
| 24 | `lemma` | [prod_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/prod-eq-one-iff.md) | 280 | `result-track:b59274cc7abebb0de5f055532ec5c46998d7dbbdb4dde323df3f69d508f23a50` |
| 25 | `theorem` | [apply_prod_le_sum_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/apply-prod-le-sum-map.md) | 292 | `result-track:842acab37a255e62ca78ba23bc96f2709b23c0ededabb5fdc0263764f7599b56` |
| 26 | `theorem` | [sum_map_le_apply_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupListNamespacedPublic.lean/declarations/sum-map-le-apply-prod.md) | 298 | `result-track:02ca6cc6b9927cf1a12789f27b93e6e466bcea5218faacc49df88a389ead85c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac4d49a98c88e78e76e3b3e1b4330cf72ddc8a5c421d2418505cf6d00c924d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant909178ef52f61904b31b3f88fa20c27c74a5f9b4a332267417672f0a669c6d58.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant909178ef52f61904b31b3f88fa20c27c74a5f9b4a332267417672f0a669c6d58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
