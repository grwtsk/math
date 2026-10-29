# Verification target: Source Weighted Orbit Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8315d94adf5d69d2bacb31c936d4af56fdef9eea",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8315d94adf5d69d2bacb31c936d4af56fdef9eea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceUpperBoundaryEvent` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceArithmeticOrbit` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceOrbitCoordinates` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtcoefficient.md) | 42 | `declaration-track:5a774803cd4a9775124ec4b77c532d7e07811fd91ebfa1a4cee61084abed8dca` |
| 2 | `def` | [centeredCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredcoefficient.md) | 46 | `declaration-track:bf2944c35a5fd00052fd04b4f3abd5ceef59332f2c503ebbf250d00a9492c295` |
| 3 | `theorem` | [centeredCoefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredcoefficient-eq.md) | 50 | `result-track:1ae58fce022dd94450cfd275314c7cdc951f97bb1a54f978cdc460bcf408d320` |
| 4 | `def` | [centeredForwardAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredforwardat.md) | 54 | `declaration-track:a9144f69aead2cc7e87cafb0361a1465569224155c2ab8952e7a30ea97ef7ae5` |
| 5 | `theorem` | [complexify_reflected_eq_reflection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/complexify-reflected-eq-reflection.md) | 59 | `result-track:1c7b8693dc11fdd834b5bf58e00796b757bcbbbc0a27169de7bda36e433a89f2` |
| 6 | `theorem` | [mangoldtAt_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtat-eq-finiteprofile.md) | 75 | `result-track:08167786d33fb68f678513fae3b1364c5ce4ab1c8b8bab5235751e089ee3bf09` |
| 7 | `theorem` | [centeredForwardAt_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredforwardat-eq-finiteprofile.md) | 83 | `result-track:eb9baa48ab0300bb90850b234cc15dd872be24e49fc0d8a7b3c64aa93efe125e` |
| 8 | `theorem` | [reflectedMobiusAt_eq_reflection_forward](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/reflectedmobiusat-eq-reflection-forward.md) | 92 | `result-track:17da3f4a047d85ccbc722588d70d3d615b86905d68846c1dd5cd4fe1f52f57ac` |
| 9 | `theorem` | [reflectedMobiusAt_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/reflectedmobiusat-eq-finiteprofile.md) | 97 | `result-track:913ac15387f946c2cb80dd8fd763829719055edda108a392407ce3209ed6a6f1` |
| 10 | `theorem` | [mangoldtAt_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtat-mem-finiteorbit.md) | 106 | `result-track:18ce5bc43040ed0286c3060dc92a283895ef37a1b5f4f7ee087220ec2b720cb7` |
| 11 | `theorem` | [centeredForwardAt_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredforwardat-mem-finiteorbit.md) | 112 | `result-track:0fa939416ff2587c584eb74c4126f8634981df19efb170a18e375f99ae823fe1` |
| 12 | `theorem` | [reflectedMobiusAt_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/reflectedmobiusat-mem-finiteorbit.md) | 118 | `result-track:07534a0ce505ca7d7a0c4289ebb15042a94b291e9886f3edabea24b3757102f3` |
| 13 | `theorem` | [centeredForwardAt_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredforwardat-actual.md) | 124 | `result-track:ec26944a5a6917c528263a157ae951374e84a96c1ef3f45a841e3c015587a8ce` |
| 14 | `theorem` | [mangoldtComplexL2_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtcomplexl2-eq-finiteprofile.md) | 129 | `result-track:2164b3a656141b16457be97cffd03d114e0ec6ed1bb6d4e64b3332b1ef19e871` |
| 15 | `theorem` | [centeredMobiusComplexL2_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredmobiuscomplexl2-eq-finiteprofile.md) | 137 | `result-track:dd179d0fdd3acb0263a296524225bbcdb86922973836bdc6f844dd7c4cad0fe9` |
| 16 | `theorem` | [centeredReflectedComplexL2_eq_finiteProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredreflectedcomplexl2-eq-finiteprofile.md) | 145 | `result-track:096f82bf20eeaabf9ac3cca25ac34f4e70a1d39c8c46f56ce976e8ea884dd6d2` |
| 17 | `theorem` | [mangoldtComplexL2_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtcomplexl2-mem-finiteorbit.md) | 153 | `result-track:6fa27d47f2d650fe8be0feccba1efd6e269cf8c0882c7170dcabb7db08ef55ba` |
| 18 | `theorem` | [centeredMobiusComplexL2_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredmobiuscomplexl2-mem-finiteorbit.md) | 159 | `result-track:bf02a3b041945d61c28c21dd238ef6818d188080b91b92c4fcb6611b091681be` |
| 19 | `theorem` | [centeredReflectedComplexL2_mem_finiteOrbit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredreflectedcomplexl2-mem-finiteorbit.md) | 166 | `result-track:371336a11ed877b0f794d2141d8efca605737e6fb3d66d4bfd3a2efdf21f9d4e` |
| 20 | `theorem` | [source_reflected_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/source-reflected-atoms.md) | 174 | `result-track:457a1aaa0af16b266ab94af108b83b39f6fe011c1ae21682c8358ff6cbc5060b` |
| 21 | `theorem` | [centeredDiagonalAt_eq_reflected_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centereddiagonalat-eq-reflected-atoms.md) | 182 | `result-track:3435a6061153c45f1055be8e2f85347f80c8fc666fe74452d48deb366f0534ac` |
| 22 | `theorem` | [arithmeticDiagonal_reflected_labels_distinct](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/arithmeticdiagonal-reflected-labels-distinct.md) | 201 | `result-track:7bfd499c92a587eeda4487cd3ba0e8fd12ee49a627fa22c6508b612b1e8e9c47` |
| 23 | `theorem` | [readoutAt_eq_reflected_profiles](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/readoutat-eq-reflected-profiles.md) | 206 | `result-track:22f883d1fb8ebaf11eebda6c1cca665dc48f1cd901ce795f4905c067e3adefd2` |
| 24 | `theorem` | [jointAt_eq_reflected_profiles](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/jointat-eq-reflected-profiles.md) | 219 | `result-track:4ffea32b06038eb04784f3dd0b77201f78c84a33e42f1722a098d5a36a38e5dd` |
| 25 | `theorem` | [arithmeticReadout_eq_reflected_profiles](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/arithmeticreadout-eq-reflected-profiles.md) | 230 | `result-track:121121b446bc1604efbe15866a67a9cd37ec0206c3cc95806fe1c61f661a2684` |
| 26 | `theorem` | [actual_signed_profile_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/actual-signed-profile-reconstruction.md) | 242 | `result-track:076a03c4826971c443475c56bf00b9a2904751815f2f389f4632266e7fe31160` |
| 27 | `theorem` | [arithmeticReadout_eq_profiles_with_centering](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/arithmeticreadout-eq-profiles-with-centering.md) | 253 | `result-track:7eb8a9309fd563b8f50c8d0841cf4ca3541722c7adc5939a5082039d982fcae7` |
| 28 | `def` | [weightedAtomInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/weightedatominteraction.md) | 266 | `declaration-track:004e7387a4cac3855e1d9736ffee09850aa2ff8e70429df803710a0a36ab15bf` |
| 29 | `theorem` | [weighted_profile_pairing_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/weighted-profile-pairing-eq-sum.md) | 272 | `result-track:098379d03be24cb089af58c0b886d3552e4f70418c0cadde71a5d0b9b696d88c` |
| 30 | `theorem` | [jointAt_eq_arithmetic_offDiagonal_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/jointat-eq-arithmetic-offdiagonal-atoms.md) | 292 | `result-track:17857927b47808e93d1808920488f44bf719322c53ca2751917211d6856f555d` |
| 31 | `theorem` | [arithmeticReadout_eq_arithmetic_offDiagonal_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/arithmeticreadout-eq-arithmetic-offdiagonal-atoms.md) | 316 | `result-track:458963520d83d5e872773987231dc63e9e9315f6940cbe930a507e88bc5f0e27` |
| 32 | `def` | [mangoldtCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtcoordinates.md) | 327 | `declaration-track:a8c7417d45b52b6e9f8f5c5bd0ed9921d737df8b8d478199cfb9ccdcbc7e93ec` |
| 33 | `def` | [centeredCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredcoordinates.md) | 331 | `declaration-track:e3428788763afe902e9f2811ba2cf314ed1da6c333fc0da62d0bcdc7c6ab0a55` |
| 34 | `theorem` | [mangoldtAt_eq_synthesis](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/mangoldtat-eq-synthesis.md) | 335 | `result-track:31db6c4ae685e694386526b7e21188bca4a8db256ae5b80770a95331102fb28e` |
| 35 | `theorem` | [centeredForwardAt_eq_synthesis](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/centeredforwardat-eq-synthesis.md) | 342 | `result-track:627fd803d9b2f2aa8a07662f431539bf39227de02bff385d34e65b0f40a68027` |
| 36 | `theorem` | [reflectedMobiusAt_eq_synthesis](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/reflectedmobiusat-eq-synthesis.md) | 349 | `result-track:8812c8a70685df04d65cfb867d20dea90f2e803244ddff29fbc1f15eca568300` |
| 37 | `theorem` | [readoutAt_eq_reflected_matrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/readoutat-eq-reflected-matrix.md) | 356 | `result-track:36fc917d10471061477f08a001bdcf0d814f7e153db70f542aa38d0a23e85963` |
| 38 | `theorem` | [jointAt_eq_reflected_matrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/jointat-eq-reflected-matrix.md) | 366 | `result-track:67de437d24268bc25ac0e9bf2f632a3ab3958b96d713f2c477cbb78ae1c01de5` |
| 39 | `theorem` | [arithmeticReadout_eq_reflected_matrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/arithmeticreadout-eq-reflected-matrix.md) | 376 | `result-track:1a83d6e78fe813d18b36ddc992280e41cdf9233cacabeb37388254ec67938268` |
| 40 | `theorem` | [actual_signed_matrix_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWeightedOrbitAdapter.lean/declarations/actual-signed-matrix-reconstruction.md) | 386 | `result-track:b20df37591ed87686c7de1778652e018440dc559cdb0e70940df921029236e3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6d73593117e2e7b79f7bf73cfc3f9736bccb5d63cfc7f10848a972bcdc99f5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWeightedOrbitAdapter/Variant86de4d6aa1fd44d9c387bf28ce9c5d6e063fc3d59746c4811d7c4e8fc7f2355d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
