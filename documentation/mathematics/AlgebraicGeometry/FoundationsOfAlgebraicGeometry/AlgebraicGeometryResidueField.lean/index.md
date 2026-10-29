# Algebraic Geometry Residue Field

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `792670dd14036d842d52537264831e99cd46bdd8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryResidueField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [residueField](declarations/residuefield.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [residue](declarations/residue.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Spec_map_residue_apply](declarations/spec-map-residue-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [residue_surjective](declarations/residue-surjective.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [descResidueField](declarations/descresiduefield.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [residue_descResidueField](declarations/residue-descresiduefield.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [evaluation](declarations/evaluation-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [germ_residue](declarations/germ-residue.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [Γevaluation](declarations/evaluation.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](declarations/evaluation-eq-zero-iff-notmem-basicopen.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](declarations/evaluation-ne-zero-iff-mem-basicopen.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Hom.residueFieldMap](declarations/hom-residuefieldmap.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [residue_residueFieldMap](declarations/residue-residuefieldmap.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [residueFieldMap_id](declarations/residuefieldmap-id.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [residueFieldMap_comp](declarations/residuefieldmap-comp.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [evaluation_naturality](declarations/evaluation-naturality.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [evaluation_naturality_apply](declarations/evaluation-naturality-apply-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Γevaluation_naturality](declarations/evaluation-naturality-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Γevaluation_naturality_apply](declarations/evaluation-naturality-apply.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [residueFieldCongr](declarations/residuefieldcongr.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [residueFieldCongr_refl](declarations/residuefieldcongr-refl.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [residueFieldCongr_symm](declarations/residuefieldcongr-symm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [residueFieldCongr_inv](declarations/residuefieldcongr-inv.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [residueFieldCongr_trans](declarations/residuefieldcongr-trans.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [residueFieldCongr_trans_hom](declarations/residuefieldcongr-trans-hom.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [residue_residueFieldCongr](declarations/residue-residuefieldcongr.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Hom.residueFieldMap_congr](declarations/hom-residuefieldmap-congr.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [fromSpecResidueField](declarations/fromspecresiduefield.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [residueFieldCongr_fromSpecResidueField](declarations/residuefieldcongr-fromspecresiduefield.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Hom.Spec_map_residueFieldMap_fromSpecResidueField](declarations/hom-spec-map-residuefieldmap-fromspecresiduefield.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [fromSpecResidueField_apply](declarations/fromspecresiduefield-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [range_fromSpecResidueField](declarations/range-fromspecresiduefield.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [descResidueField_fromSpecResidueField](declarations/descresiduefield-fromspecresiduefield.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [descResidueField_stalkClosedPointTo_fromSpecResidueField](declarations/descresiduefield-stalkclosedpointto-fromspecresiduefield.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [SpecToEquivOfField_eq_iff](declarations/spectoequivoffield-eq-iff.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [SpecToEquivOfField](declarations/spectoequivoffield.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74f477baa6e706d2b1cf83016f3aca43d35cc38501d2fcd0c55af5340394601c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
