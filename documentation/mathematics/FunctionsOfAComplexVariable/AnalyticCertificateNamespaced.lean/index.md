# Analytic Certificate Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e418f53026b4bd9bbb239099908aadd06bacff8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/AnalyticCertificateNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalAnalyticCertificatePredicates](declarations/localanalyticcertificatepredicates.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsLocalAnalyticCertificate](declarations/islocalanalyticcertificate.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasLocalAnalyticCertificate](declarations/haslocalanalyticcertificate.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [local_certificate_requires_membership](declarations/local-certificate-requires-membership.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [local_certificate_requires_locality](declarations/local-certificate-requires-locality.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [local_certificate_requires_representation](declarations/local-certificate-requires-representation.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [local_certificate_requires_convergence](declarations/local-certificate-requires-convergence.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [local_certificate_requires_identification](declarations/local-certificate-requires-identification.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [UniversalLocalAnalyticTheoremSchema](declarations/universallocalanalytictheoremschema.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [universal_local_analytic_iff_certificate](declarations/universal-local-analytic-iff-certificate.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positive_local_certificate_implies_analytic](declarations/positive-local-certificate-implies-analytic.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [analytic_implies_positive_local_certificate](declarations/analytic-implies-positive-local-certificate.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [GlobalAnalyticCertificatePredicates](declarations/globalanalyticcertificatepredicates.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [GlobalAnalyticCertificateData](declarations/globalanalyticcertificatedata.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [IsGlobalAnalyticCertificate](declarations/isglobalanalyticcertificate.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasGlobalAnalyticCertificate](declarations/hasglobalanalyticcertificate.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [global_certificate_requires_cover](declarations/global-certificate-requires-cover.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [global_certificate_requires_all_local_clauses](declarations/global-certificate-requires-all-local-clauses.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [global_certificate_requires_locality](declarations/global-certificate-requires-locality.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [global_certificate_requires_representation](declarations/global-certificate-requires-representation.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [global_certificate_requires_convergence](declarations/global-certificate-requires-convergence.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [global_certificate_requires_identification](declarations/global-certificate-requires-identification.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [global_certificate_requires_compatibility](declarations/global-certificate-requires-compatibility.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [UniversalGlobalAnalyticTheoremSchema](declarations/universalglobalanalytictheoremschema.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [universal_global_analytic_iff_certificate](declarations/universal-global-analytic-iff-certificate.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [positive_global_certificate_implies_analytic](declarations/positive-global-certificate-implies-analytic.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [analytic_implies_positive_global_certificate](declarations/analytic-implies-positive-global-certificate.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc558a1ad38c26ac397c6e90484332ab99606e020f9020cf0a2a3cd91b2f1573 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/AnalyticCertificate/Variant07fcfac9941840ec129faef1273f65a4158edf82e8734d538f550dd76a042ffc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
