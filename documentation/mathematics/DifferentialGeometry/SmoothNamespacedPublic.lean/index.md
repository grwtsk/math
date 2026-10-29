# Smooth Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be64afd7d24be3e00ba3bab182e2d930ac7a18ff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/SmoothNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [smoothSheaf](declarations/smoothsheaf.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [smoothSheaf.coeFun](declarations/smoothsheaf-coefun.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [smoothSheaf.obj_eq](declarations/smoothsheaf-obj-eq.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [smoothSheaf.eval](declarations/smoothsheaf-eval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [smoothSheaf.evalHom](declarations/smoothsheaf-evalhom-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [smoothSheaf.evalAt](declarations/smoothsheaf-evalat.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [smoothSheaf.ι_evalHom](declarations/smoothsheaf-evalhom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [smoothSheaf.eval_surjective](declarations/smoothsheaf-eval-surjective.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [smoothSheaf.eval_germ](declarations/smoothsheaf-eval-germ.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [smoothSheaf.contMDiff_section](declarations/smoothsheaf-contmdiff-section.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ContMDiff.smoothSheafHom](declarations/contmdiff-smoothsheafhom.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [smoothPresheafGroup](declarations/smoothpresheafgroup.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [smoothSheafGroup](declarations/smoothsheafgroup.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [smoothPresheafCommGroup](declarations/smoothpresheafcommgroup.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [smoothSheafCommGroup](declarations/smoothsheafcommgroup.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [smoothSheafCommGroup.compLeft](declarations/smoothsheafcommgroup-compleft.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [smoothPresheafRing](declarations/smoothpresheafring.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [smoothSheafRing](declarations/smoothsheafring.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [smoothPresheafCommRing](declarations/smoothpresheafcommring.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [smoothSheafCommRing](declarations/smoothsheafcommring.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `example` | [(anonymous)](declarations/example.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [smoothSheafCommRing.coeFun](declarations/smoothsheafcommring-coefun.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [smoothSheafCommRing.forgetStalk](declarations/smoothsheafcommring-forgetstalk.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_hom](declarations/smoothsheafcommring-forgetstalk-hom.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_inv](declarations/smoothsheafcommring-forgetstalk-inv.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [smoothSheafCommRing.evalAt](declarations/smoothsheafcommring-evalat.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [smoothSheafCommRing.evalHom](declarations/smoothsheafcommring-evalhom-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [smoothSheafCommRing.eval](declarations/smoothsheafcommring-eval.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [smoothSheafCommRing.ι_evalHom](declarations/smoothsheafcommring-evalhom.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [smoothSheafCommRing.evalHom_germ](declarations/smoothsheafcommring-evalhom-germ.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [smoothSheafCommRing.forgetStalk_inv_comp_eval](declarations/smoothsheafcommring-forgetstalk-inv-comp-eval.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [smoothSheafCommRing.forgetStalk_hom_comp_evalHom](declarations/smoothsheafcommring-forgetstalk-hom-comp-evalhom.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [smoothSheafCommRing.eval_surjective](declarations/smoothsheafcommring-eval-surjective.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [smoothSheafCommRing.eval_germ](declarations/smoothsheafcommring-eval-germ.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ContMDiff.smoothSheafCommRingHom](declarations/contmdiff-smoothsheafcommringhom.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1c93142d15a15947e2885c8c636a75dcf8782239dd630f05761092950cf8a72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant88e18cb0b301420d097cee3e7adf8dec7995be37e4890ea72ce21f42bf1892c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
