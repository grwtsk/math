# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityProjectors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c704448768339770aa5b21459dfdc2b9fd291867",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c704448768339770aa5b21459dfdc2b9fd291867`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ChiFourMertensResidueDecomposition.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenPositiveEndpointShiftSet](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/evenpositiveendpointshiftset.md) | 43 | `declaration-track:b1ffad27adf504e75f058f59be3f4abf326bdbbd4dde4b0f38ccfa4640914937` |
| 2 | `def` | [oddPositiveEndpointShiftSet](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/oddpositiveendpointshiftset.md) | 48 | `declaration-track:f1f36ba4ec4c1cb9b160fe0421f53855afb4174a0f620cc4d164ef211df4d6ba` |
| 3 | `theorem` | [evenPositiveEndpointShiftSet_union_odd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/evenpositiveendpointshiftset-union-odd.md) | 53 | `result-track:0b422c818addf21dd6d7fac2ba4e398c52e4f8dc549fe84ad87189450b3a7a8d` |
| 4 | `theorem` | [evenPositiveEndpointShiftSet_disjoint_odd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/evenpositiveendpointshiftset-disjoint-odd.md) | 72 | `result-track:6afec08443d7e1dd5f16ba08b660eb2bd510aee740cfa33d1a55bb0668576f42` |
| 5 | `theorem` | [one_add_twoKernelShiftCharacter_eq_evenSelector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/one-add-twokernelshiftcharacter-eq-evenselector.md) | 84 | `result-track:cf95432a1105b0ab93aadd2c3372afeaf52fe0367859d95594f5764ada369306` |
| 6 | `theorem` | [one_sub_twoKernelShiftCharacter_eq_oddSelector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/one-sub-twokernelshiftcharacter-eq-oddselector.md) | 99 | `result-track:18e52eeed081342bcbdf930e9529507ec7567adeb9df0d2f3d0e3947e5239756` |
| 7 | `def` | [twoKernelEvenShiftAggregate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twokernelevenshiftaggregate.md) | 115 | `declaration-track:5294ce38d281319dfed6746a4027b10d7897d69f521820e824ced47780eec9e2` |
| 8 | `def` | [twoKernelOddShiftAggregate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twokerneloddshiftaggregate.md) | 125 | `declaration-track:24a34cf30f5cebac83428dad3e53c55b85931c1aafe735a77df47188ff04aad5` |
| 9 | `theorem` | [twoKernelPairPlusAggregate_eq_two_mul_evenShift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twokernelpairplusaggregate-eq-two-mul-evenshift.md) | 135 | `result-track:dcda70db9750398bb0d7ca77324b966ca0d21a657ce8313a183254369a398848` |
| 10 | `theorem` | [twoKernelPairMinusAggregate_eq_two_mul_oddShift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twokernelpairminusaggregate-eq-two-mul-oddshift.md) | 171 | `result-track:7175e83c70f6ed1715a47133a45da9b0f9761e159930da1571720ca9186dac91` |
| 11 | `def` | [twoNonunitEvenShiftOrbitMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitevenshiftorbitmajorant.md) | 206 | `declaration-track:6e9c46d128d0f7e69286941914be6fb9a71ca76bfe964a8cc05ebec750a8da08` |
| 12 | `def` | [twoNonunitOddShiftOrbitMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitoddshiftorbitmajorant.md) | 213 | `declaration-track:b5536dcc4db9564d66e4e8300d4c4bfb6f58ce097dba30f61ad0d6b3d8b86a09` |
| 13 | `theorem` | [twoNonunitRegularOrbitMajorant_eq_even_add_odd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitregularorbitmajorant-eq-even-add-odd.md) | 221 | `result-track:3b7c3af927f5b9f8b49b88930ac333e87e0688af9949fcc27ab01e9b8eb4a959` |
| 14 | `def` | [twoNonunitEvenShiftEndpointMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitevenshiftendpointmajorant.md) | 244 | `declaration-track:b58fac8af2323cbe3d40585d2f44bdca6d2e9eb49173585988101545b8fc8397` |
| 15 | `def` | [twoNonunitOddShiftEndpointMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitoddshiftendpointmajorant.md) | 257 | `declaration-track:3579b14532dde46a1da7257ea2b872146917e4b7d566c868f0fc6ce3954859f6` |
| 16 | `theorem` | [twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitregularorbitendpointmajorant-eq-even-add-odd.md) | 271 | `result-track:a52a26bd2731b90ddffe9b16998d7109859a889b46b74a7674886367727223ad` |
| 17 | `def` | [DyadicNaturalScaleTwoNonunitEvenShiftBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/dyadicnaturalscaletwononunitevenshiftbudget.md) | 297 | `declaration-track:a7436f0f600cdc60a0a96b5e51daaa3d4f3d6b1b3ac106759573201752a94fa7` |
| 18 | `def` | [DyadicNaturalScaleTwoNonunitOddShiftBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/dyadicnaturalscaletwononunitoddshiftbudget.md) | 306 | `declaration-track:aa05d9ff5edf7b1948a38e681fe63fde97f8716ae52d095a32d14edff17bff53` |
| 19 | `theorem` | [regularOrbitBudget_of_even_and_odd_shift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/regularorbitbudget-of-even-and-odd-shift.md) | 316 | `result-track:fd24040edeeb9b19bbdfe00c893371f4f2e2180e6433a562a34a75e8bc15ed22` |
| 20 | `theorem` | [naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_shiftParity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/naturalscalecongruencel1-of-pointwise-modfour-twounit-shiftparity.md) | 331 | `result-track:3523a14abf9a38cd3451de89a0eb20a91351b92cd27f9a5198dcf6087a78175b` |
| 21 | `structure` | [ToTwoNonunitEvenShiftBudgetAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/totwononunitevenshiftbudgetadapter.md) | 343 | `declaration-track:bc77da9dfc11174f269c1346b97eae2967cd676c99f4883f1771daf428b40a46` |
| 22 | `structure` | [ToTwoNonunitOddShiftBudgetAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/totwononunitoddshiftbudgetadapter.md) | 349 | `declaration-track:177836ddf0340fc3918d3618a2f9579760cea682ccbc137dc43219f1f57eb0dc` |
| 23 | `structure` | [TwoNonunitEvenShiftAnalyticData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitevenshiftanalyticdata.md) | 355 | `declaration-track:70ed44582b2d8d2b57e9c29ff1f0e72dcda0245c4335250a4c78f9152e864542` |
| 24 | `def` | [TwoNonunitEvenShiftAnalyticSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitevenshiftanalyticsource.md) | 367 | `declaration-track:1d313df06cba5c16222f7aa4cf1b7979d734dd47fbefe5234b716d14fb44d886` |
| 25 | `abbrev` | [TwoNonunitEvenShiftAnalyticAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitevenshiftanalyticadapter.md) | 379 | `declaration-track:9a25a1b14b04712c80902ca946d842b4057edb50a235ebb8b48b911733721c8c` |
| 26 | `structure` | [TwoNonunitOddShiftAnalyticData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitoddshiftanalyticdata.md) | 385 | `declaration-track:14da52cacb3e7308ea0939e72462629eeb3d784dc4a42e7ee58f5b46bf7ca7d1` |
| 27 | `def` | [TwoNonunitOddShiftAnalyticSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitoddshiftanalyticsource.md) | 397 | `declaration-track:d3952e4fabf6c2134ba5355ad8a52e69efce73c3185d7170372ceacebca3a73e` |
| 28 | `abbrev` | [TwoNonunitOddShiftAnalyticAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitShiftParityProjectors.lean/declarations/twononunitoddshiftanalyticadapter.md) | 409 | `declaration-track:3587fb4bfdfbaaa05fdbb01b3f54adf8568a0c86974e992cad9c1fa9fa41e9f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92e7dd4921db31090daa1306b176ad6fff3e252caee7b4209fff00544bc36edc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
