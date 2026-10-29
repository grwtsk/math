# Elliptic Bit Matrix Residue Loci

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `500210eee5d74be532306923a3be4f0dedac0594`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EllipticBitMatrixResidueLoci.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BitResidueProjectionMode](declarations/bitresidueprojectionmode.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [bitResidueProjection](declarations/bitresidueprojection.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [EllipticBitMatrixResidueLocus](declarations/ellipticbitmatrixresiduelocus.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [locusTruthConsistent](declarations/locustruthconsistent.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [boundaryAdmitted_square_projects_one](declarations/boundaryadmitted-square-projects-one.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [boundaryAdmitted_zero_projects_one](declarations/boundaryadmitted-zero-projects-one.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [boundaryAdmitted_nonsquare_projects_zero](declarations/boundaryadmitted-nonsquare-projects-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [boundaryResidue_square_projects_one](declarations/boundaryresidue-square-projects-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [boundaryResidue_zero_projects_zero](declarations/boundaryresidue-zero-projects-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundaryResidue_nonsquare_projects_zero](declarations/boundaryresidue-nonsquare-projects-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sampleCompressedString](declarations/samplecompressedstring.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sampleSlice](declarations/sampleslice.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [squareResidueLocus](declarations/squareresiduelocus.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [zeroBoundaryAdmittedResidueLocus](declarations/zeroboundaryadmittedresiduelocus.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [zeroBoundaryResidueLocus](declarations/zeroboundaryresiduelocus.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nonsquareResidueLocus](declarations/nonsquareresiduelocus.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [squareResidueLocus_truth_consistent](declarations/squareresiduelocus-truth-consistent.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zeroBoundaryAdmittedResidueLocus_truth_consistent](declarations/zeroboundaryadmittedresiduelocus-truth-consistent.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zeroBoundaryResidueLocus_truth_consistent](declarations/zeroboundaryresiduelocus-truth-consistent.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonsquareResidueLocus_truth_consistent](declarations/nonsquareresiduelocus-truth-consistent.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [example_square_locus_projects_one](declarations/example-square-locus-projects-one.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [example_zero_locus_projects_one_under_boundaryAdmitted](declarations/example-zero-locus-projects-one-under-boundaryadmitted.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [example_zero_locus_projects_zero_under_boundaryResidue](declarations/example-zero-locus-projects-zero-under-boundaryresidue.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [example_nonsquare_locus_projects_zero](declarations/example-nonsquare-locus-projects-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [elliptic_bitmatrix_residue_locus_finite_local_only](declarations/elliptic-bitmatrix-residue-locus-finite-local-only.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [elliptic_bitmatrix_residue_locus_does_not_settle_modularity](declarations/elliptic-bitmatrix-residue-locus-does-not-settle-modularity.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [elliptic_bitmatrix_residue_locus_does_not_settle_BSD](declarations/elliptic-bitmatrix-residue-locus-does-not-settle-bsd.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [elliptic_bitmatrix_residue_locus_does_not_complete_HasseWeil](declarations/elliptic-bitmatrix-residue-locus-does-not-complete-hasseweil.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc50be4422dff91003e244923656e7438d95007481a5cb2cf9ac4a8cd838575 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
