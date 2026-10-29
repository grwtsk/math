# Verification target: Bounded Order Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c50d04793da88a5584a4d2885309494881bca2f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c50d04793da88a5584a4d2885309494881bca2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean.json)

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
| 1 | `theorem` | [top_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/top-sup-eq.md) | 35 | `result-track:50aba978ae0561e2559abedf4c133fd8a2654948056cf9085dc0e07ffa251cdc` |
| 2 | `theorem` | [sup_top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/sup-top-eq.md) | 36 | `result-track:189d2e23a510a6b24357ba9176fbc69f5062752293a360565f87914178f77d59` |
| 3 | `theorem` | [bot_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/bot-sup-eq.md) | 44 | `result-track:3467e486b8b91cd45e244069ebdfcd7a2ee1c9fea9b85b10c97d3eac8fdec4ac` |
| 4 | `theorem` | [sup_bot_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/sup-bot-eq.md) | 45 | `result-track:ab35485ec12e29e9571577a745f8a18273744df730d88a43a607868a264cbb46` |
| 5 | `theorem` | [sup_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/sup-eq-bot-iff.md) | 48 | `result-track:693257a639ec7405ff125e1a4d215fcf0f93d511539d7a82a388dca26bc5d4d7` |
| 6 | `theorem` | [min_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/min-bot-left.md) | 58 | `result-track:447c49bb8c89d67fff29a736da3f1ff4274ef9accdb8e3f28967bc9737b66fff` |
| 7 | `theorem` | [min_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/min-bot-right.md) | 59 | `result-track:008322020b10b9ca1b4c8e99387057b28d501353f1bd75451859fa72d09c5013` |
| 8 | `theorem` | [max_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/max-bot-left.md) | 61 | `result-track:2ef804cfe5feedacf08cd66c1e46f6eaf402a5a1862793cd2169c18a5ae5269c` |
| 9 | `theorem` | [max_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/max-bot-right.md) | 62 | `result-track:d2f1f12a01e63c8f9738afc0b709fa3aa8e73e1e1dc50cb36fc84f5997af4776` |
| 10 | `theorem` | [max_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/max-eq-bot.md) | 64 | `result-track:dd78629854af219d1c572804d880bff59d781ed27940ca71103e7921ee8539c5` |
| 11 | `theorem` | [min_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/min-eq-bot.md) | 67 | `result-track:06a7fc0e3ac965fc4b6516919dd82e375a228e7b6c5060535994e84d23320c34` |
| 12 | `lemma` | [min_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/min-ne-bot.md) | 71 | `result-track:321e6f7210c0e0a9d06d603aa90e5d8d0d50919394e6cbf9e1760c386cd996ea` |
| 13 | `theorem` | [WellFoundedGT.induction_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderLatticePublic.lean/declarations/wellfoundedgt-induction-top.md) | 81 | `result-track:7d593427a6d0b71a371dde65043f7bdb3fbbe70a6a6e9f249a2d38c0e98c0934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37d3d53c21aac9d85c279f1c8e82aa48fcaae60c01bff520393eaf217a696f57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
