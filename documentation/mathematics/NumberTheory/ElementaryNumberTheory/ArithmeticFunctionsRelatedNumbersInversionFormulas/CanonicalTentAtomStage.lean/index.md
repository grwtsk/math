# Canonical Tent Atom Stage

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalTentAtomStage.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SquarePair](declarations/squarepair.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [squarePairFintype](declarations/squarepairfintype.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [squarePair_exponent_pos](declarations/squarepair-exponent-pos.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [squarePair_prime](declarations/squarepair-prime.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pairAtom](declarations/pairatom.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pairAtom_prime_val](declarations/pairatom-prime-val.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pairAtom_exponent_val](declarations/pairatom-exponent-val.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pairAtom_injective](declarations/pairatom-injective.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pairAtomEmbedding](declarations/pairatomembedding.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [squareStageAtoms](declarations/squarestageatoms.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [squareAtomStage](declarations/squareatomstage.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pairToWitness](declarations/pairtowitness.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairToWitness_injective](declarations/pairtowitness-injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairToWitness_surjective](declarations/pairtowitness-surjective.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [pairWitnessEquiv](declarations/pairwitnessequiv.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stageReadout_reindex](declarations/stagereadout-reindex.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [stageEnergy_reindex](declarations/stageenergy-reindex.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exp_logLocation_pairAtom](declarations/exp-loglocation-pairatom.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [squareLogTest](declarations/squarelogtest.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [squareLogTest_pairAtom](declarations/squarelogtest-pairatom.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pairTentMass](declarations/pairtentmass.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pairTentMass_eq_squareTentMangoldt](declarations/pairtentmass-eq-squaretentmangoldt.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pairAtom_tent_sum_eq_pairTentMass](declarations/pairatom-tent-sum-eq-pairtentmass.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [stageReadout_squareLogTest_eq](declarations/stagereadout-squarelogtest-eq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [squareAtomStageAlignment](declarations/squareatomstagealignment.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [squareRootAmplitude](declarations/squarerootamplitude.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [squareLogTest_pairAtom_nonneg](declarations/squarelogtest-pairatom-nonneg.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [squareRootAmplitude_sq_pairAtom](declarations/squarerootamplitude-sq-pairatom.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stageEnergy_squareRootAmplitude_eq](declarations/stageenergy-squarerootamplitude-eq.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [squareRoot_quadraticization](declarations/squareroot-quadraticization.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b973876e44a422524a13cb2616a84683da08cde7297d0507df8128230f03d3f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
