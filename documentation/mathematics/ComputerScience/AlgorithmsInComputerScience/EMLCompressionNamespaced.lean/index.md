# EMLCompression Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `048a145793732d9afe9c5f66934a7dcc3581cc4f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueAtomClass](declarations/residueatomclass.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ResidueAlgebraMode](declarations/residuealgebramode.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ResidueAlgebraMode.semantic](declarations/residuealgebramode-semantic.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ResidueAtom](declarations/residueatom.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ResidueMonomial](declarations/residuemonomial.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ResidueExpr](declarations/residueexpr.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [flattenAtoms](declarations/flattenatoms.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [appendRight](declarations/appendright.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [multiplyAlternatives](declarations/multiplyalternatives.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [zero](declarations/zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [one](declarations/one.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [add](declarations/add.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mul](declarations/mul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [support](declarations/support.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [zero_support](declarations/zero-support.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [one_support](declarations/one-support.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ProofArtifact](declarations/proofartifact.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [EMLInterface](declarations/emlinterface.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encodingAllowed](declarations/encodingallowed.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [maximallyCompressed](declarations/maximallycompressed.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [compressesNoWorse](declarations/compressesnoworse.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lower_encoding_allowed](declarations/lower-encoding-allowed.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [MoveKind](declarations/movekind.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [ProofFlowPole](declarations/proofflowpole.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [MoveKind.invertible](declarations/movekind-invertible.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [MoveKind.reducing](declarations/movekind-reducing.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [quotientMove_not_invertible](declarations/quotientmove-not-invertible.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [canonicalizeMove_reducing](declarations/canonicalizemove-reducing.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [allInvertibleMoves](declarations/allinvertiblemoves.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [allReducingMoves](declarations/allreducingmoves.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [TransportMove](declarations/transportmove.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [WeightedMove](declarations/weightedmove.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [MultinomialSourceNode](declarations/multinomialsourcenode.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [branchWeightTotal](declarations/branchweighttotal.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [CanonicalizationPolicy](declarations/canonicalizationpolicy.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ResidueExtractor](declarations/residueextractor.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [atomSurvivesEvery](declarations/atomsurvivesevery.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ResidueInvariantTrace](declarations/residueinvarianttrace.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [StableCompressionState](declarations/stablecompressionstate.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [StableCompressionState.isStable](declarations/stablecompressionstate-isstable.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [StableCompressionState.usesPositiveResidueSemantics](declarations/stablecompressionstate-usespositiveresiduesemantics.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [stableStatus](declarations/stablestatus.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [JepaConjectureSeed](declarations/jepaconjectureseed.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [JepaConjectureSeed.moveLanesWellFormed](declarations/jepaconjectureseed-movelaneswellformed.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [JepaConjectureSeed.statusResidueConsistent](declarations/jepaconjectureseed-statusresidueconsistent.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [JepaConjectureSeed.statusResidueConsistentBool](declarations/jepaconjectureseed-statusresidueconsistentbool.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [JepaConjectureSeed.acceptedForJepa](declarations/jepaconjectureseed-acceptedforjepa.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [JepaConjectureSeed.toResidue](declarations/jepaconjectureseed-toresidue.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [JepaConjectureSeed.admissionResidue](declarations/jepaconjectureseed-admissionresidue.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [JepaConjectureSeed.residues](declarations/jepaconjectureseed-residues.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [seedFromStableState](declarations/seedfromstablestate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [conjectureSeedBoundaryClaim](declarations/conjectureseedboundaryclaim.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [checkedConjectureSeed](declarations/checkedconjectureseed.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [checkedConjectureSeed_hasResidue](declarations/checkedconjectureseed-hasresidue.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [sampleResidueAtom](declarations/sampleresidueatom.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [sampleStableState](declarations/samplestablestate.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [sampleSeed](declarations/sampleseed.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sampleSeed_hasResidue](declarations/sampleseed-hasresidue.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sampleStableState_usesPositiveResidueSemantics](declarations/samplestablestate-usespositiveresiduesemantics.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sampleSeed_moveLanesWellFormed](declarations/sampleseed-movelaneswellformed.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [sampleSeed_acceptedForJepa](declarations/sampleseed-acceptedforjepa.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [sampleSeed_statusResidueConsistent](declarations/sampleseed-statusresidueconsistent.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [malformedMoveLaneSeed](declarations/malformedmovelaneseed.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [malformedMoveLaneSeed_rejected](declarations/malformedmovelaneseed-rejected.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [malformedMoveLaneSeed_residueCount](declarations/malformedmovelaneseed-residuecount.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f4847c1c53d53f7a8f20193053bf1a81786e1a1857bb99d77e1f6b53d6b861f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
