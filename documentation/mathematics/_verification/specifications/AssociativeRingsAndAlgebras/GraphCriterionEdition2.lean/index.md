# Verification target: Graph Criterion Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb5e2154781b31cedeff4dbeaee238ebed7b55ad",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb5e2154781b31cedeff4dbeaee238ebed7b55ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.Congruence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/admissible.md) | 27 | `declaration-track:9d33b93b0d8a2e9a3398cc62eadecce12ae7aa70918752c5cd2ed722ace3840e` |
| 2 | `def` | [Marked](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/marked.md) | 32 | `declaration-track:37f48c628b4b3be9fd3a246f5ec6720c8bdb38dcf6b4d000035c2bf5e9d16efd` |
| 3 | `def` | [Connected](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/connected.md) | 38 | `declaration-track:41fe862889e1c683e92ef87fdfe351cbe4f66e74cde1ea7b29cb09cc8b2f1689` |
| 4 | `def` | [IsGraphWitness](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/isgraphwitness.md) | 44 | `declaration-track:633ee6ac9f2f46ab55ff2f1b35e6e2cc00c03f416fe5b6bd061c747e14b1d258` |
| 5 | `def` | [HasGraphWitness](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/hasgraphwitness.md) | 56 | `declaration-track:ad5127f1f85f123d0f3051dab07fb0ceb783c4baaacb536c4ceab35b753f2ed3` |
| 6 | `def` | [principalColor](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor.md) | 64 | `declaration-track:cabb557ffaffb4e35d1d5650096bce71a936c8e2d18679fdea58ce2736bef314` |
| 7 | `theorem` | [principalColor_le](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-le.md) | 68 | `result-track:4a0c39cb68536996ba12a366913058b851f56f7b396f19ddcb5fd8257c614e47` |
| 8 | `theorem` | [map_bot_equality](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/map-bot-equality.md) | 74 | `result-track:388c8cd4cbede96d35e221fb7221e712222fdb5d0d826df8decbc203900eecf4` |
| 9 | `theorem` | [principalColor_eq_bot](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-eq-bot.md) | 81 | `result-track:739b1231b171c47df0cb4d4467fe05a4f3c5fab39a37c6e06fb5f2e41566a6b4` |
| 10 | `theorem` | [principalColor_triangle](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-triangle.md) | 86 | `result-track:59a4981b539f48f8fa2ffee6b447ceb4ee636b483e6b43aa573c7929649133ab` |
| 11 | `theorem` | [principalColor_reflect](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-reflect.md) | 95 | `result-track:67b1f0a1597a6f9609150c64b503725de4094364cb49e5d167ab843c50850dcf` |
| 12 | `theorem` | [admissible_id](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/admissible-id.md) | 110 | `result-track:05b4f9a57f061f1b320672e535849aa49abb581683aebe9c8974c382770672b8` |
| 13 | `theorem` | [Admissible.comp](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/admissible-comp.md) | 113 | `result-track:842af1f73dc2ea328da689b45dc42207709a89da311e14670c4f91e82109f741` |
| 14 | `theorem` | [marked_map](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/marked-map.md) | 119 | `result-track:35d2aa06075433484f8cd9824896dede73a46bbf5e67280228be9bafa7e3a20b` |
| 15 | `theorem` | [connected_map](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/connected-map.md) | 127 | `result-track:59211a0e765316e07306e616fadfed40461409071f58dc69326c3026fe183624` |
| 16 | `theorem` | [translation_admissible](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/translation-admissible.md) | 143 | `result-track:84dc53496d06eb9560017794dc2fd4b980ad4c5f19eacd1e77fd8a09c62a0537` |
| 17 | `def` | [pathCongruence](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/pathcongruence.md) | 153 | `declaration-track:bb28c49cd72ee62ccd36adc2e59e8b291e8adee75c80bd8177604d434bdbf12e` |
| 18 | `theorem` | [principalColor_connected](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-connected.md) | 160 | `result-track:c97794bfbebd26d82d4c47a08dc2da2436ae9af28d33d46e6e668bce42c38356` |
| 19 | `theorem` | [principalColor_isGraphWitness](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/principalcolor-isgraphwitness.md) | 178 | `result-track:0e49cdef91b128c4ad6d3d597d89c8bcbe3264a065dc6ca136dc5dbdd7e8a243` |
| 20 | `def` | [graphAlgebra](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/graphalgebra.md) | 194 | `declaration-track:e57be2c9e2a3251cb5b5e8c72498543195d20f7fa20ea247a6edcbb074416556` |
| 21 | `theorem` | [graphAlgebra_preserves](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/graphalgebra-preserves.md) | 205 | `result-track:b547b844ab7dd27fa716a3aa75445ec63ab847b5b13765d5a6be7b975031f5ed` |
| 22 | `def` | [labelCongruence](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/labelcongruence.md) | 216 | `declaration-track:210129bfe99fe7378b67b7a7c820fb4318b3e8610c892cbb8a29325d5ba7f9be` |
| 23 | `theorem` | [labelCongruence_apply](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/labelcongruence-apply.md) | 232 | `result-track:195c6dbaa65f72c85e3c6d315a8e02660afb5811a8d9c556241f2232874f8c00` |
| 24 | `theorem` | [labelCongruence_le_iff](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/labelcongruence-le-iff.md) | 236 | `result-track:ec67f771a0e046c738f3816e740fb9374b1f53e5f1cb9ece45da4d943ae226a5` |
| 25 | `theorem` | [connected_below_congruence](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/connected-below-congruence.md) | 249 | `result-track:f833004daeb9509807f533617181094154a804fbc0e5f4fdd44ddef513d046cb` |
| 26 | `theorem` | [labelCongruence_surjective](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/labelcongruence-surjective.md) | 262 | `result-track:17b2f0c87136c0fb4f2c2c2735aaa787f2ac95614b877520cfd4682cd9601a2e` |
| 27 | `def` | [graphOrderIso](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/graphorderiso.md) | 284 | `declaration-track:253e183f97753fc3eedc0b7c04094da6950d37277240510e6794e65ddfaad7a4` |
| 28 | `theorem` | [graph_criterion](../../../../AssociativeRingsAndAlgebras/GraphCriterionEdition2.lean/declarations/graph-criterion.md) | 297 | `result-track:d18b662f7893fade62a8e64b1c6d99767f9fd94b0fd270f68ebed1e4d8befeb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dab95e766ebf72e9c271eab19f7d54ff9e2d7ac43456acd39441adf288c34cc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
