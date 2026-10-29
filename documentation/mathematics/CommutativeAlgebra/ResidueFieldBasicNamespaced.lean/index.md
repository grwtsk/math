# Residue Field Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a0b5c8d0412db11351f30cf0fa58f47b06bc50`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/ResidueFieldBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [residue_def](declarations/residue-def.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ker_residue](declarations/ker-residue.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [residue_eq_zero_iff](declarations/residue-eq-zero-iff.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [residue_ne_zero_iff_isUnit](declarations/residue-ne-zero-iff-isunit.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [residue_surjective](declarations/residue-surjective.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [ResidueField.algebra](declarations/residuefield-algebra.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ResidueField.algebraMap_eq](declarations/residuefield-algebramap-eq.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lift](declarations/lift.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_comp_residue](declarations/lift-comp-residue.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift_residue_apply](declarations/lift-residue-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_id](declarations/map-id.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_comp](declarations/map-comp.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_comp_residue](declarations/map-comp-residue.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_residue](declarations/map-residue.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_id_apply](declarations/map-id-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_map](declarations/map-map.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mapEquiv](declarations/mapequiv.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mapEquiv.symm](declarations/mapequiv-symm.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mapEquiv_trans](declarations/mapequiv-trans.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapEquiv_refl](declarations/mapequiv-refl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapAut](declarations/mapaut.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [residue_smul](declarations/residue-smul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [finite_of_module_finite](declarations/finite-of-module-finite.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [finite_of_finite](declarations/finite-of-finite.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isLocalHom_residue](declarations/islocalhom-residue.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faa3c5ed2588d38c1d788215954e1c2d983f89a326a07d4559f1abb365919445 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
