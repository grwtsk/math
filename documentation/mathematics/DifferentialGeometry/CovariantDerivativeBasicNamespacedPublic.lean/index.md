# Covariant Derivative Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba2001d70aecd37f77d8576635be665896eff63e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/CovariantDerivativeBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCovariantDerivativeOn](declarations/iscovariantderivativeon-source-line-100-occurrence-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ContMDiffCovariantDerivativeOn](declarations/contmdiffcovariantderivativeon.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mono](declarations/mono.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [iUnion](declarations/iunion.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [congr_of_eqOn](declarations/congr-of-eqon.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [congr_of_eventuallyEq](declarations/congr-of-eventuallyeq.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [zero](declarations/zero.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [smul_const](declarations/smul-const.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [affine_combination](declarations/affine-combination.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Covariant Derivative Basic Namespaced Public](declarations/affine-combination-source-line-258-occurrence-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [finite_affine_combination](declarations/finite-affine-combination.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Covariant Derivative Basic Namespaced Public](declarations/finite-affine-combination-source-line-292-occurrence-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [add_one_form](declarations/add-one-form.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [differenceAux](declarations/differenceaux.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [differenceAux_tensorial](declarations/differenceaux-tensorial.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [difference](declarations/difference.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [difference_apply](declarations/difference-apply.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [CovariantDerivative](declarations/covariantderivative.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/anonymous-instance.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isCovariantDerivativeOn](declarations/iscovariantderivativeon.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [zero](declarations/zero-source-line-393-occurrence-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofIsCovariantDerivativeOnOfOpenCover](declarations/ofiscovariantderivativeonofopencover.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [of_isCovariantDerivativeOn_of_open_cover_coe](declarations/of-iscovariantderivativeon-of-open-cover-coe.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [ContMDiffCovariantDerivative](declarations/contmdiffcovariantderivative.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [contMDiffCovariantDerivativeOn_univ_iff](declarations/contmdiffcovariantderivativeon-univ-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [affineCombination](declarations/affinecombination.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteAffineCombination](declarations/finiteaffinecombination.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [ContMDiffCovariantDerivative.affineCombination](declarations/affinecombination-source-line-467-occurrence-2.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ContMDiffCovariantDerivative.finiteAffineCombination](declarations/finiteaffinecombination-source-line-480-occurrence-2.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [addOneForm](declarations/addoneform.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [difference](declarations/difference-source-line-512-occurrence-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=496d0bb2cccb14a723aec42abd1c5317407ca13de71cd4e39d3eeee68ef52635 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
