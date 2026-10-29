# Booleanisation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e15db43a4b927e7635fd4eddda9ef36b76eeee5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanisationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Booleanisation](declarations/booleanisation.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lift](declarations/lift.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [comp](declarations/comp.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instCompl](declarations/instcompl.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [compl_lift](declarations/compl-lift.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compl_comp](declarations/compl-comp.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [LE](declarations/le.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [LT](declarations/lt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instLE](declarations/instle.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instLT](declarations/instlt.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instSup](declarations/instsup.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instInf](declarations/instinf.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instBot](declarations/instbot.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instTop](declarations/insttop.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instSDiff](declarations/instsdiff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [lift_le_lift](declarations/lift-le-lift.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [comp_le_comp](declarations/comp-le-comp.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [lift_le_comp](declarations/lift-le-comp.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [not_comp_le_lift](declarations/not-comp-le-lift.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [lift_lt_lift](declarations/lift-lt-lift.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [comp_lt_comp](declarations/comp-lt-comp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [lift_lt_comp](declarations/lift-lt-comp.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [not_comp_lt_lift](declarations/not-comp-lt-lift.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [lift_sup_lift](declarations/lift-sup-lift.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [lift_sup_comp](declarations/lift-sup-comp.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [comp_sup_lift](declarations/comp-sup-lift.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [comp_sup_comp](declarations/comp-sup-comp.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lift_inf_lift](declarations/lift-inf-lift.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [lift_inf_comp](declarations/lift-inf-comp.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [comp_inf_lift](declarations/comp-inf-lift.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [comp_inf_comp](declarations/comp-inf-comp.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lift_bot](declarations/lift-bot.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [comp_bot](declarations/comp-bot.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [lift_sdiff_lift](declarations/lift-sdiff-lift.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [lift_sdiff_comp](declarations/lift-sdiff-comp.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [comp_sdiff_lift](declarations/comp-sdiff-lift.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [comp_sdiff_comp](declarations/comp-sdiff-comp.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instPreorder](declarations/instpreorder.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instSemilatticeInf](declarations/instsemilatticeinf.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instDistribLattice](declarations/instdistriblattice.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instBoundedOrder](declarations/instboundedorder.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instBooleanAlgebra](declarations/instbooleanalgebra.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [liftLatticeHom](declarations/liftlatticehom.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [liftLatticeHom_injective](declarations/liftlatticehom-injective.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9773a624267cc5553c1bd9401919863af6d16493cef2aa4e09213a39d1cf426 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
