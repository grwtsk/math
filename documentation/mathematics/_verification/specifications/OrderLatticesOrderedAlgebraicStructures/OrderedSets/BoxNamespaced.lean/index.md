# Verification target: Box Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd0dcdffa29711211bb5544b25401e98f9f5577",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd0dcdffa29711211bb5544b25401e98f9f5577`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Disjointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Icc_neg_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/icc-neg-mono.md) | 36 | `result-track:dafaf2d0f065f9a3531414cac245873864f0f7f8973412c021e76d206a1fb155` |
| 2 | `def` | [box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/box.md) | 42 | `declaration-track:2c5b8e270b07e82ef32e1fdd919c4da211dd835fd0dec6a6115dd38e1c19d8e7` |
| 3 | `lemma` | [box_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/box-zero.md) | 45 | `result-track:871e622032c72fecd481a9b97e0fcbac2054d4d40bbc472eae3e593ac9c83310` |
| 4 | `lemma` | [box_succ_eq_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/box-succ-eq-sdiff.md) | 47 | `result-track:9837cbe83ab7540cdee8202dbab88c15929ce674b1f796fa40cb24c228741b2c` |
| 5 | `lemma` | [disjoint_box_succ_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/disjoint-box-succ-prod.md) | 52 | `result-track:e5551a864634b1b4bb0030a312982c512e8911850abb1a1069e837c4d6a7a071` |
| 6 | `lemma` | [box_succ_union_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/box-succ-union-prod.md) | 55 | `result-track:f11e4a079f746dcb161b5bb44e99a2a6a369ccb1b7a7d52339e89791a77d65df` |
| 7 | `lemma` | [box_succ_disjUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/box-succ-disjunion.md) | 59 | `result-track:c324c94c68a27cc005f47cbcb09ffffe1a5ebdcd6a44e93a6dd2eb3b1bdbec45` |
| 8 | `lemma` | [zero_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/zero-mem-box.md) | 63 | `result-track:f2eed6b89177e1e44c3598bff5d4feb9307f3186969dae4ad074f2c72f1b69c5` |
| 9 | `lemma` | [eq_zero_iff_eq_zero_of_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/eq-zero-iff-eq-zero-of-mem-box.md) | 65 | `result-track:f059d07e06f1e3dc947f2ab6599ee805e98d6a811349a0a4cc9cf131387aa092` |
| 10 | `lemma` | [card_box_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/card-box-succ.md) | 79 | `result-track:b37ed29b1ff8f4353d57b5a8acf235d4b7a56102866235da895f8ac59f6f0c49` |
| 11 | `lemma` | [card_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/card-box.md) | 96 | `result-track:62c59d2f130ad5ee47f3e567fc7af73a467f5a5a18b54be8e6b1c19d15d77885` |
| 12 | `lemma` | [mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/mem-box.md) | 104 | `result-track:d57a88afac3bab579296428465703146af2e48b65cff8cbec50f78e66628274b` |
| 13 | `lemma` | [existsUnique_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoxNamespaced.lean/declarations/existsunique-mem-box.md) | 111 | `result-track:702a8a705af5f846a4b6a007ce2c3f784d7776badf1799a6c98e5435de905a06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=998333ebf4d4f607d7ae02d8546e316c00810a54fea3fa03209220ad9a4375a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
