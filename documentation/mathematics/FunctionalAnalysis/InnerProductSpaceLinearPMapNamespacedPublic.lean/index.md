# Inner Product Space Linear PMap Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceLinearPMapNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](declarations/isformaladjoint.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsFormalAdjoint.symm](declarations/isformaladjoint-symm.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [adjointDomain](declarations/adjointdomain.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [adjointDomainMkCLM](declarations/adjointdomainmkclm.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [adjointDomainMkCLM_apply](declarations/adjointdomainmkclm-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [adjointDomainMkCLMExtend](declarations/adjointdomainmkclmextend.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [adjointDomainMkCLMExtend_apply](declarations/adjointdomainmkclmextend-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [adjointAux](declarations/adjointaux.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [adjointAux_inner](declarations/adjointaux-inner.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [adjointAux_unique](declarations/adjointaux-unique.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [adjoint](declarations/adjoint-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_adjoint_domain_iff](declarations/mem-adjoint-domain-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](declarations/mem-adjoint-domain-of-exists.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](declarations/adjoint-apply-of-not-dense.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [adjoint_apply_of_dense](declarations/adjoint-apply-of-dense.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjoint_apply_eq](declarations/adjoint-apply-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](declarations/adjoint-isformaladjoint.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](declarations/isformaladjoint-le-adjoint.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](declarations/topmap-adjoint-eq-adjoint-topmap-of-dense.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instStar](declarations/inststar.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isSelfAdjoint_def](declarations/isselfadjoint-def.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Inner Product Space Linear PMap Namespaced Public](declarations/dense-domain.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [adjoint](declarations/adjoint.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_adjoint_iff](declarations/mem-adjoint-iff.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Inner Product Space Linear PMap Namespaced Public](declarations/adjoint-graph-eq-graph-adjoint.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Inner Product Space Linear PMap Namespaced Public](declarations/graph-adjoint-tolinearpmap-eq-adjoint.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [adjoint_isClosed](declarations/adjoint-isclosed.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Inner Product Space Linear PMap Namespaced Public](declarations/isclosed.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9652fb9e519d3c34f488c7b01b8f6dcd910ef5aa4cccef20cec9d5aceeb7600 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
