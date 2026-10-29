# Verification target: Prop Instances

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e22bfeea679bc1fb205ea502d62e12ffad151f25",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant450354363d6e3a6cc1c1cd00b8b1201d7556dd87318f351e34ac60ff0bc0b172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e22bfeea679bc1fb205ea502d62e12ffad151f25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant450354363d6e3a6cc1c1cd00b8b1201d7556dd87318f351e34ac60ff0bc0b172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant450354363d6e3a6cc1c1cd00b8b1201d7556dd87318f351e34ac60ff0bc0b172.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Disjoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prop.instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-instdistriblattice.md) | 17 | `declaration-track:cd62317176a482bedf4f7a50a7ab7e1cac3acacb04d05b0297c27e10296f731a` |
| 2 | `instance` | [Prop.instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-instboundedorder.md) | 29 | `declaration-track:629a37371670100a7255eec52c779163008e599bb0282235b5a6c12b6ffefb0e` |
| 3 | `theorem` | [Prop.bot_eq_false](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-bot-eq-false.md) | 36 | `result-track:3c1d7bf92dd181dda2889605c8a9e00591371ab7539e6f90a70a535163513641` |
| 4 | `theorem` | [Prop.top_eq_true](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-top-eq-true.md) | 40 | `result-track:8456d83904fe4bc5d893109675d694296939b58414cacb8824645a9d01c3779e` |
| 5 | `instance` | [Prop.le_isTotal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-le-istotal.md) | 43 | `declaration-track:4420d367b644c4c67c0709b0acac38342c15de59ff505350a4a682cff0708878` |
| 6 | `instance` | [Prop.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-linearorder.md) | 46 | `declaration-track:e24d6100b57abf45ae8a5f660f4d0a32239ef60ad00d43567b6ead24ef3dec01` |
| 7 | `theorem` | [sup_Prop_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/sup-prop-eq.md) | 51 | `result-track:0c2b78d133bffb170b6107eb27b501b07bb2de8cf31c6b5ceaf783461cc5b156` |
| 8 | `theorem` | [inf_Prop_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/inf-prop-eq.md) | 55 | `result-track:a8e3c075105e6da1f2edf8597e4005b817f6d653cd9b8c3e76c6c7dcc16ae96b` |
| 9 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/disjoint-iff.md) | 62 | `result-track:8e0f4201651a5a7637a45c01eaa269fc712978548e80ffc63b8a7e53cdb15236` |
| 10 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/codisjoint-iff.md) | 72 | `result-track:3b6014ac743d690233d551db900b9c848c9536b00dd8201bf511d943b35c6bb2` |
| 11 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/iscompl-iff.md) | 76 | `result-track:462b4abd94c6df2f89bbb9bc5680bfa460348c109afa98478a39bc14a33787a3` |
| 12 | `theorem` | [Prop.disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-disjoint-iff.md) | 83 | `result-track:d07957d92567f9a60f216aa04386275be60d1f93748e55c31cd1268b21fa7387` |
| 13 | `theorem` | [Prop.codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-codisjoint-iff.md) | 87 | `result-track:3d2a523510f6fc7af8cb1bb39c2688147cda49adbcc807670922a1fd0e212284` |
| 14 | `theorem` | [Prop.isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-iscompl-iff.md) | 91 | `result-track:b56066d4957251acfbd7419a1e22c0c71571ae86257cc1401f93da663aaf0864` |
| 15 | `instance` | [Prop.decidablePredBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-decidablepredbot.md) | 100 | `declaration-track:fb1df3da81af51f16bde0ba55f2fb7ade3a44162a1e85bdd2d9b8065f2d0a979` |
| 16 | `instance` | [Prop.decidablePredTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-decidablepredtop.md) | 102 | `declaration-track:b4386ea5be4758afea285cd88cf7b3c7ed2b55419dc852f767079dbec3f98584` |
| 17 | `instance` | [Prop.decidableRelBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-decidablerelbot.md) | 104 | `declaration-track:e342be5a0779e4f846919f7c5ea3a86e801014d5c91d79e154d68c6a20e4c2ec` |
| 18 | `instance` | [Prop.decidableRelTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PropInstances.lean/declarations/prop-decidablereltop.md) | 106 | `declaration-track:f04d817d78fb78d24e40b3143d42809642509765bdf8d85b6060efbc878260c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ad021afbe3e8e52123b9846bcfc60b139c31cbd735fdf9702040dcb95cbf4e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant450354363d6e3a6cc1c1cd00b8b1201d7556dd87318f351e34ac60ff0bc0b172.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant450354363d6e3a6cc1c1cd00b8b1201d7556dd87318f351e34ac60ff0bc0b172.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
