# Verification target: Actual Muntz Inventory Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3c61dd0e95b1a26cccf154bfa923bc7fa6c2855",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3c61dd0e95b1a26cccf154bfa923bc7fa6c2855`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples.md) | 23 | `declaration-track:798ac8bfa18359918ce7348e575d2844ea72f975215eee26163bcd411e93994f` |
| 2 | `def` | [actualMuntz](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actualmuntz.md) | 27 | `declaration-track:7117c30277af843f420b5b80015fc07922699f25f101456d913d60ea1e5b79ae` |
| 3 | `def` | [upperInventory](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/upperinventory.md) | 31 | `declaration-track:a18871b45cac99503c4a4015c2cc0062f4eca7f71fad554b6df3112e641632ff` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actuallogsource-zero-nonpos.md) | 33 | `result-track:67ce3499e2402fe6216b77cf20d2dcce0f4ac8170d474dbff620b0af3c2c99fa` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actuallogsource-zero-at-zero.md) | 37 | `result-track:df3138af7048fe535ad8d143191e6ffd55fc803bd4b644b1aebf3a3c6987985c` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/sample-zero-above-inventory.md) | 40 | `result-track:a9f9cd5661be4665054355f88d3ec1dcb8546fb08d396df102083bedac2352f1` |
| 7 | `theorem` | [allSamples_summable](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/allsamples-summable.md) | 46 | `result-track:3c818652539c13ba1f42d99a6012bdffe102d8fd95c4b629cb8e8bb006685da8` |
| 8 | `theorem` | [positiveSamples_summable](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-summable.md) | 53 | `result-track:63b812ade3dc503a7de67feddbffd76ec26a9b0b0958d757a2c558921d968126` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-eq-allsamples.md) | 57 | `result-track:08371dd877ee979116ffba30f45184a94b040f2561850b7ba858083184619fb1` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/allsamples-eq-closed-inventory.md) | 62 | `result-track:e114da90f4d791416fd393b8b2f957a36cd057b382f4e0c1fec09af2fb475214` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-eq-closed-inventory.md) | 70 | `result-track:34e7bb78b8db10147fdb2f4c0242b35d4ca129e7d8059eb13bad284d37bb0eff` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actualmuntz-eq-positivesamples.md) | 79 | `result-track:7f56f4ba80d71d70d2a18f6abd6b3f77a3ea60e5eeba7c3413f44d422ea21e1f` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actualmuntz-eq-closed-inventory.md) | 83 | `result-track:a4628c1e79b5a8ff0d6e610dda938f14415912c7cc228ef6c93b92fcddd6513c` |
| 14 | `theorem` | [touching_sample_zero](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/touching-sample-zero.md) | 88 | `result-track:f4531171cdb51b312303cb27f826b228603ec1968ec807f948792c2bb28ad7ee` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-zero-nonpos.md) | 93 | `result-track:abea4915e1c015d262c0594176dcf8d5745d862030283ab15fc2a7f32ca96b9f` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-zero-above.md) | 100 | `result-track:4ee061e519df74cff89beb275c51d5c0df7ec7618929d5a746a86c542f14fa18` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actualmuntz-zero-outside.md) | 114 | `result-track:62f6164a253d1ae40a27c27b10ef89e00a1148598fadfd9bceed2124de811902` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/positivesamples-measurable.md) | 121 | `result-track:b8cfee70273fbce9a1135ee94d9795d72f9a51ab64222564d4b934abc84d1700` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../MeasureAndIntegration/ActualMuntzInventoryAttempt03Namespaced.lean/declarations/actualmuntz-measurable.md) | 125 | `result-track:e434c1ad06ce59760525d6803a9f46c4d25551f4532a76d29040c55cf76e172b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0b96057f277dc22d4a35db7994f88ff063bafa7983a1e8b1f7e4e03cf20895f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
