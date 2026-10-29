# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctLagSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1a6195ae9e3ac53ef921200647156df28eab651",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1a6195ae9e3ac53ef921200647156df28eab651`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctShiftPairCount`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctShiftPairCount.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointValidCenterSetAtLag](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/endpointvalidcentersetatlag.md) | 17 | `declaration-track:1e95ff7f4832d1f1d5a45c28b57a881afcc4e274fec4b4f5000b8f2d62012332` |
| 2 | `theorem` | [endpointValidCenterSetAtLag_eq_range](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/endpointvalidcentersetatlag-eq-range.md) | 20 | `result-track:aa07cf281bb9bd4b76dbaa94f505bb5a0e06fb9211f1a87363102b01900a3c86` |
| 3 | `theorem` | [card_endpointValidCenterSetAtLag](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/card-endpointvalidcentersetatlag.md) | 28 | `result-track:3a9ae1dc5c6b17a3c1ac0d1152a58b753c98b0594bb41a2772ea625aeba43875` |
| 4 | `def` | [centeredFourDistinctRawSupportCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctrawsupportcount.md) | 36 | `declaration-track:105934eacb53a28bc7a94c0a027ca76c93025043eedc892e12729babe09161ce` |
| 5 | `theorem` | [centeredFourDistinctRawSupportCount_le_lagSensitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctrawsupportcount-le-lagsensitive.md) | 43 | `result-track:89a1ded24d7c82a5c1fa63f4b1a1648fdeff2ab58ef0eee28b6b57a9a8df09d9` |
| 6 | `theorem` | [centeredFourDistinctRawSupportCount_eq_zero_of_endpoint_lt_lag](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctrawsupportcount-eq-zero-of-endpoint-lt-lag.md) | 62 | `result-track:49a0a7a99dd61ca8ad0dfacc6dde020cd73cdc47a7a1a518acc8b49400fe7406` |
| 7 | `def` | [centeredFourDistinctWindingRawSupportCeiling](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctwindingrawsupportceiling.md) | 72 | `declaration-track:75392079a8cb91a4e5f54f736f1c5ad5510e4ad4bf1aba1e3a2a796078927632` |
| 8 | `theorem` | [centeredFourDistinctRawSupportCount_le_windingCeiling](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctrawsupportcount-le-windingceiling.md) | 76 | `result-track:e6262978845bee31087f7fc8f1cac6f61f52153f568b2b60d3d45cc43178392c` |
| 9 | `def` | [centeredFourDistinctWindingRawSupportCeilingSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctwindingrawsupportceilingsum.md) | 84 | `declaration-track:e789f3221b28c02e10d804f936055ddd94c3e7c9b77927504634f201ea526f57` |
| 10 | `theorem` | [centeredFourDistinctWindingRawSupportCeilingSum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/centeredfourdistinctwindingrawsupportceilingsum-le.md) | 91 | `result-track:45d2dc4a8d8c48232b2fd8be4555466e6bfb6d3aa8ffed2cfa26c2a9345ae3ae` |
| 11 | `structure` | [RegularCenteredFourDistinctLagSupportSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/regularcenteredfourdistinctlagsupportsourcedata.md) | 114 | `declaration-track:7e57c541094b1f6f48893fa32d5aeb953754dfdf89ca919b3b2ec1c7c3bc8946` |
| 12 | `def` | [RegularCenteredFourDistinctLagSupportSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredFourDistinctLagSupport.lean/declarations/regularcenteredfourdistinctlagsupportsource.md) | 124 | `declaration-track:eee90d971f1e9d92284b4ff65e52d3053e855f355521c10990954632ac46f515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6154cb663c6458b302ce8afbdedb1370feeb8c2a820e7c069f1bca4cf5304c7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
