# Verification target: GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a786e01e3018eff6dc3d8165971ac537a28fecac",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a786e01e3018eff6dc3d8165971ac537a28fecac`.

Source path: `GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ExceptionalKernelCharacterChiFour`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExceptionalKernelCharacterChiFour.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modFourMertensPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourmertensprefix.md) | 45 | `declaration-track:e86192071cbf4c3c83f796f1c26a538ec2690fb15098174566ec55b9bc8799cc` |
| 2 | `def` | [modFourUnitMertensDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourunitmertensdiscrepancy.md) | 51 | `declaration-track:82d5c7d338946a548b2d3ce30d4f5450bd1b6626561b3b71f83ddccd9740afc3` |
| 3 | `def` | [modFourUnitSignedMobiusTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourunitsignedmobiusterm.md) | 56 | `declaration-track:f64bf867ddd5ac226989b27bfef701db61c1b7baa5972d7d40b0c6ef3e443d65` |
| 4 | `theorem` | [chiFourMobiusTerm_eq_modFourSigned](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/chifourmobiusterm-eq-modfoursigned.md) | 64 | `result-track:1bce9eff93756298d005ee6a8b98ae4b7431a5b623cb9504a66b00e136244845` |
| 5 | `theorem` | [chiFourTwistedMertensPrefix_eq_modFourDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/chifourtwistedmertensprefix-eq-modfourdiscrepancy.md) | 90 | `result-track:a587158c1e67090e97c24614a5151f77e59ce5b65a8cc34b9b260d773e4c56f3` |
| 6 | `theorem` | [parityMertensPrefix_odd_eq_modFour_one_add_three](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/paritymertensprefix-odd-eq-modfour-one-add-three.md) | 112 | `result-track:b50f3b3241dcb5e996a93740c13fdcca88159c5c3acaa46cf641cbf09b9783d1` |
| 7 | `theorem` | [two_mul_modFourMertensPrefix_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/two-mul-modfourmertensprefix-one.md) | 149 | `result-track:785ba345879b8860e79076c23c16fedc93430541cf842dd2fce19fad819ae2b8` |
| 8 | `theorem` | [two_mul_modFourMertensPrefix_three](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/two-mul-modfourmertensprefix-three.md) | 160 | `result-track:bfb0b9c62f913bfc7d092fad7e1610cd214efd913a2b8a8edf2f7cfb07cad1c3` |
| 9 | `def` | [DyadicModFourMertensDiscrepancySquareRootEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/dyadicmodfourmertensdiscrepancysquarerootenergy.md) | 170 | `declaration-track:f8e6120d779957c6354d559c9589e4d8479d6fb41eccfc464a8e5380daf9f18d` |
| 10 | `theorem` | [dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/dyadicchifourtwistedmertensenergy-iff-modfourdiscrepancy.md) | 180 | `result-track:11040a7bcd532526f9c6948bbc0db697d0c664132fa52fd3a8c3d6451f2b732e` |
| 11 | `def` | [DyadicModFourUnitResidueMertensSquareRootEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/dyadicmodfourunitresiduemertenssquarerootenergy.md) | 201 | `declaration-track:5992dd0647cb3e9525de1ac617a4038436bf2f45a4185c334985ac40f2b95918` |
| 12 | `theorem` | [modFourDiscrepancyEnergy_of_unitResidues](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourdiscrepancyenergy-of-unitresidues.md) | 212 | `result-track:ff8367ff8a6858a77e7888ae54544240dad335944254d0022c93f0d98f26d350` |
| 13 | `theorem` | [chiFourEnergy_of_modFourUnitResidues](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/chifourenergy-of-modfourunitresidues.md) | 238 | `result-track:0dd883eceb4472c90d8cc9e6eb4b117abe0661ae9864bf10390caeaf3d4c9b35` |
| 14 | `theorem` | [naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/naturalscalecongruencel1-of-pointwise-modfourresidues-twounit-regular.md) | 246 | `result-track:4d947ffa587437c188f8795dfd5f9f4b18c4372499ea634618c133f59b2bc237` |
| 15 | `structure` | [ToModFourUnitResidueMertensSquareRootEnergyAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/tomodfourunitresiduemertenssquarerootenergyadapter.md) | 259 | `declaration-track:262535eb25b89c52492255fb06a5f2be1cac5f514e00d45ea166bdba3f55c04d` |
| 16 | `structure` | [ModFourAPMertensSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourapmertenssourcedata.md) | 266 | `declaration-track:65372787e28caee4bfe6f84eec3ba5bd243ce729c639b6109ffb6d7c18597501` |
| 17 | `def` | [ModFourAPMertensSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourapmertenssource.md) | 276 | `declaration-track:d04991e3b759343f07580884db35d2d208df6e09f0cac1885f865624550e643b` |
| 18 | `abbrev` | [ModFourAPMertensAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/declarations/modfourapmertensadapter.md) | 286 | `declaration-track:a624f2de91f2be8b9929b28a62f731463e45778280fab846c979fe4ddd32e24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d56f5db033fa48f3f41041067762c5225e985ac3786340a8c697bd7f86000a02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
