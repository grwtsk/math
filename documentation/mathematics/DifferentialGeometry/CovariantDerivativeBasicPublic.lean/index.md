# Covariant Derivative Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c9563d266d97b9201d51fce894db3958bc18e43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/CovariantDerivativeBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCovariantDerivativeOn](declarations/iscovariantderivativeon.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ContMDiffCovariantDerivativeOn](declarations/contmdiffcovariantderivativeon.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mono](declarations/mono.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [iUnion](declarations/iunion.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [congr_of_eqOn](declarations/congr-of-eqon.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [congr_of_eventuallyEq](declarations/congr-of-eventuallyeq.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [zero](declarations/zero.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [smul_const](declarations/smul-const.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [affine_combination](declarations/affine-combination.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [_root_.ContMDiffCovariantDerivativeOn.affine_combination](declarations/affine-combination-source-line-250-occurrence-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [finite_affine_combination](declarations/finite-affine-combination.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [_root_.ContMDiffCovariantDerivativeOn.finite_affine_combination](declarations/finite-affine-combination-source-line-284-occurrence-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [add_one_form](declarations/add-one-form.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [differenceAux](declarations/differenceaux.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [differenceAux_tensorial](declarations/differenceaux-tensorial.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [difference](declarations/difference.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [difference_apply](declarations/difference-apply.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [CovariantDerivative](declarations/covariantderivative.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/anonymous-instance.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isCovariantDerivativeOn](declarations/iscovariantderivativeon-source-line-380-occurrence-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [zero](declarations/zero-source-line-385-occurrence-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofIsCovariantDerivativeOnOfOpenCover](declarations/ofiscovariantderivativeonofopencover.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [of_isCovariantDerivativeOn_of_open_cover_coe](declarations/of-iscovariantderivativeon-of-open-cover-coe.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [ContMDiffCovariantDerivative](declarations/contmdiffcovariantderivative.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [contMDiffCovariantDerivativeOn_univ_iff](declarations/contmdiffcovariantderivativeon-univ-iff.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [affineCombination](declarations/affinecombination.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteAffineCombination](declarations/finiteaffinecombination.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [ContMDiffCovariantDerivative.affineCombination](declarations/affinecombination-source-line-459-occurrence-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ContMDiffCovariantDerivative.finiteAffineCombination](declarations/finiteaffinecombination-source-line-472-occurrence-2.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [addOneForm](declarations/addoneform.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [difference](declarations/difference-source-line-504-occurrence-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa1a4a8f13abcc5156d016d33d65a617ea93808b265f428711f5100712845ba5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
