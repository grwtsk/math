# Verification target: GRWTSK.NumberTheory.Moebius.MobiusVonMangoldtCoefficientBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a8a9adc1ef1cb3d5a5bc40e016de055edb1adb1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a8a9adc1ef1cb3d5a5bc40e016de055edb1adb1`.

Source path: `GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusLogConvolution_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/mobiuslogconvolution-eq-vonmangoldt.md) | 21 | `result-track:492c9a7bbc6a658e29fd42f2a3b90ba6add1b308f9e8c84cef1804a1546c371b` |
| 2 | `theorem` | [vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/vonmangoldt-eq-sum-divisorsantidiagonal-mobius-log.md) | 28 | `result-track:9975691755cb264835dbbbe85476b3713a8197ff698eb452794a10e7c1f916ce` |
| 3 | `theorem` | [vonMangoldt_eq_sum_divisors_mobius_log_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/vonmangoldt-eq-sum-divisors-mobius-log-quotient.md) | 42 | `result-track:18dc9178456cf90b79e5acf0e0d393f4c694ff6b42e9b89a7145ac3fc25c3fc0` |
| 4 | `theorem` | [sum_vonMangoldt_test_eq_mobiusLogConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/sum-vonmangoldt-test-eq-mobiuslogconvolution.md) | 55 | `result-track:9b50a071a7c6ff47769dc3935a3fdcafaddaccc97870c4c4c3d41fd6152d0d1f` |
| 5 | `theorem` | [sum_vonMangoldt_complexTest_eq_mobiusLogConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/sum-vonmangoldt-complextest-eq-mobiuslogconvolution.md) | 67 | `result-track:c458074a8d4e5cfa590af7247d1640d53edee07f5bedb63bf220a74b0d7e73b5` |
| 6 | `structure` | [MobiusVonMangoldtCoefficientBridgeSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/mobiusvonmangoldtcoefficientbridgesourcedata.md) | 80 | `declaration-track:fa1c61ca59f28d378b7b4feab114cd97988658594383558fef003cde331e438c` |
| 7 | `def` | [MobiusVonMangoldtCoefficientBridgeSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean/declarations/mobiusvonmangoldtcoefficientbridgesource.md) | 89 | `declaration-track:589ba71df3b0f06a376563ebebec387369c7f60e87894a6cbacdf3c554c1d84c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71dd4759b68b6eb9f7438fb78af60dd2168e58e3b0749fc7460741d446e00819 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/MobiusVonMangoldtCoefficientBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
