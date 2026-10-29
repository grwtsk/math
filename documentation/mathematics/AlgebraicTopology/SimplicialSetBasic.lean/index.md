# Simplicial Set Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc492df90c82879d734541013506254e5d2e1940`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/SimplicialSetBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [SSet](declarations/sset.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [largeCategory](declarations/largecategory.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [hasLimits](declarations/haslimits-source-edition-2.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [hasColimits](declarations/hascolimits.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hom_ext](declarations/hom-ext-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [comp_app](declarations/comp-app.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [const](declarations/const.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [comp_const](declarations/comp-const.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [const_comp](declarations/const-comp.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [uliftFunctor](declarations/uliftfunctor.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Truncated](declarations/truncated.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [largeCategory](declarations/largecategory-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [hasLimits](declarations/haslimits.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [hasColimits](declarations/hascolimits-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [uliftFunctor](declarations/uliftfunctor-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [hom_ext](declarations/hom-ext.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [trunc](declarations/trunc.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [truncation](declarations/truncation.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [truncationCompTrunc](declarations/truncationcomptrunc.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [Truncated.sk](declarations/truncated-sk.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [Truncated.cosk](declarations/truncated-cosk.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [sk](declarations/sk.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [cosk](declarations/cosk.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [skAdj](declarations/skadj.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coskAdj](declarations/coskadj.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [cosk_reflective](declarations/cosk-reflective.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [sk_coreflective](declarations/sk-coreflective.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [cosk.fullyFaithful](declarations/cosk-fullyfaithful.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [cosk.full](declarations/cosk-full.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [cosk.faithful](declarations/cosk-faithful.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [coskAdj.reflective](declarations/coskadj-reflective.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [sk.fullyFaithful](declarations/sk-fullyfaithful.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [sk.full](declarations/sk-full.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [sk.faithful](declarations/sk-faithful.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [skAdj.coreflective](declarations/skadj-coreflective.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [Augmented](declarations/augmented.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [δ_comp_δ_apply](declarations/comp-apply-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [δ_comp_δ'_apply](declarations/comp-apply-source-edition-3.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [δ_comp_δ''_apply](declarations/comp-apply.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [δ_comp_δ_self_apply](declarations/comp-self-apply-source-edition-3.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [δ_comp_δ_self'_apply](declarations/comp-self-apply-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [δ_comp_σ_of_le_apply](declarations/comp-of-le-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [δ_comp_σ_self_apply](declarations/comp-self-apply.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [δ_comp_σ_self'_apply](declarations/comp-self-apply-source-edition-4.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [δ_comp_σ_succ_apply](declarations/comp-succ-apply-source-edition-2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [δ_comp_σ_succ'_apply](declarations/comp-succ-apply.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [δ_comp_σ_of_gt_apply](declarations/comp-of-gt-apply.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [δ_comp_σ_of_gt'_apply](declarations/comp-of-gt-apply-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [σ_comp_σ_apply](declarations/comp-apply-source-edition-4.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [δ_naturality_apply](declarations/naturality-apply-source-edition-2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [σ_naturality_apply](declarations/naturality-apply.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4032afc67c3c70c4e43aaf1643084af6f4cdb625d5f00e806e6a55cadecf3627 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
