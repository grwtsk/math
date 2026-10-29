# Elliptic Quadratic Residue Carrier Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticQuadraticResidueCarrier/Variantb9190572b368d4f2888bb65eefac2184dc0d6355a1bc4b677a8af16430d192ba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90632f819c55f4569c021762789049279a812ac4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EllipticQuadraticResidueCarrierNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OddPrimeSurface](declarations/oddprimesurface.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ShortWeierstrassCoefficients](declarations/shortweierstrasscoefficients.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [modp](declarations/modp.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [shortWeierstrassValue](declarations/shortweierstrassvalue.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [discriminantCore](declarations/discriminantcore.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [discriminantNonzero](declarations/discriminantnonzero.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [hasSquareRoot](declarations/hassquareroot.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [QuadraticResidueFiberKind](declarations/quadraticresiduefiberkind.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [quadraticResidueFiberKind](declarations/quadraticresiduefiberkind-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [BitMatrixFiberAdmission](declarations/bitmatrixfiberadmission.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [bitMatrixAdmissionFor](declarations/bitmatrixadmissionfor.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [OneByOneBitMatrixTruthToken](declarations/onebyonebitmatrixtruthtoken.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [oneByOneBitMatrixTruthLabel](declarations/onebyonebitmatrixtruthlabel.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [oneByOneBitMatrixTruthAlphabet](declarations/onebyonebitmatrixtruthalphabet.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [reduceOneByOne](declarations/reduceonebyone.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [reduceFiberOneByOne](declarations/reducefiberonebyone.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [AffinePoint](declarations/affinepoint.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pointCarriesSquareWitness](declarations/pointcarriessquarewitness.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [EllipticQuadraticResidueCarrier](declarations/ellipticquadraticresiduecarrier.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [examplePrime](declarations/exampleprime.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [exampleCoefficients](declarations/examplecoefficients.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [exampleCarrier](declarations/examplecarrier.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [finiteLocalCarrierAuthority](declarations/finitelocalcarrierauthority.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exampleCarrier_finiteLocalAuthority](declarations/examplecarrier-finitelocalauthority.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [shortWeierstrassValue_uses_Ax_plus_B](declarations/shortweierstrassvalue-uses-ax-plus-b.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exampleCarrier_nonsingular](declarations/examplecarrier-nonsingular.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [squareFiber_routes_to_squareBitMatrixWitness](declarations/squarefiber-routes-to-squarebitmatrixwitness.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zeroFiber_routes_to_oneByOneBoundary](declarations/zerofiber-routes-to-onebyoneboundary.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nonsquareFiber_routes_to_residue](declarations/nonsquarefiber-routes-to-residue.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [oneByOneTruthAlphabet_exact](declarations/onebyonetruthalphabet-exact.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [squareFiber_reduces_to_true](declarations/squarefiber-reduces-to-true.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zeroFiber_reduces_to_null](declarations/zerofiber-reduces-to-null.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonsquareFiber_reduces_to_false](declarations/nonsquarefiber-reduces-to-false.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [example_zero_boundary_classification](declarations/example-zero-boundary-classification.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [example_square_classification](declarations/example-square-classification.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [example_nonsquare_classification](declarations/example-nonsquare-classification.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [example_square_reduces_to_true](declarations/example-square-reduces-to-true.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [example_zero_reduces_to_null](declarations/example-zero-reduces-to-null.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [example_nonsquare_reduces_to_false](declarations/example-nonsquare-reduces-to-false.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [admittedPoint_squareWitness_example](declarations/admittedpoint-squarewitness-example.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [zeroBoundaryPoint_squareWitness_example](declarations/zeroboundarypoint-squarewitness-example.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ellipticCurveObjectCandidate](declarations/ellipticcurveobjectcandidate.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ellipticCurveObjectCandidate_mem_modularityImportCandidates](declarations/ellipticcurveobjectcandidate-mem-modularityimportcandidates.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ellipticCurveObjectCandidate_retains_final_target](declarations/ellipticcurveobjectcandidate-retains-final-target.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [ellipticCurveObjectDefinitionResidue](declarations/ellipticcurveobjectdefinitionresidue.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ellipticCurveObjectDefinitionObligation](declarations/ellipticcurveobjectdefinitionobligation.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ellipticCurveObjectCandidateObligation](declarations/ellipticcurveobjectcandidateobligation.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ellipticQuadraticResidueCarrier_does_not_settle_modularity](declarations/ellipticquadraticresiduecarrier-does-not-settle-modularity.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ellipticQuadraticResidueCarrier_does_not_settle_BSD](declarations/ellipticquadraticresiduecarrier-does-not-settle-bsd.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ellipticQuadraticResidueCarrier_does_not_prove_all_fibers_square](declarations/ellipticquadraticresiduecarrier-does-not-prove-all-fibers-square.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ellipticQuadraticResidueCarrier_does_not_settle_asymptotic_residue](declarations/ellipticquadraticresiduecarrier-does-not-settle-asymptotic-residue.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ellipticQuadraticResidueCarrier_does_not_complete_hasse_weil](declarations/ellipticquadraticresiduecarrier-does-not-complete-hasse-weil.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [finalModularityResidueAfterCarrier](declarations/finalmodularityresidueaftercarrier.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [finalBsdResidueAfterCarrier](declarations/finalbsdresidueaftercarrier.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [finalModularityCheckedAfterCarrier](declarations/finalmodularitycheckedaftercarrier.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [finalBsdCheckedAfterCarrier](declarations/finalbsdcheckedaftercarrier.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [finalModularity_afterCarrier_hasResidue](declarations/finalmodularity-aftercarrier-hasresidue.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [finalBsd_afterCarrier_hasResidue](declarations/finalbsd-aftercarrier-hasresidue.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc87bd1ac4aa3a792a7b2b70c28c43c643634d6aead503ebf47c4c84c02a4eaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticQuadraticResidueCarrier/Variantb9190572b368d4f2888bb65eefac2184dc0d6355a1bc4b677a8af16430d192ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
