# Verification target: Source Actual Riesz Centered Reconstruction Native03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da07043012d1491c97f6f7088a19a97417a7dd56",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da07043012d1491c97f6f7088a19a97417a7dd56`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `SourceFiveCancelledFactorialBudget` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRieszContinuousRamp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualrieszcontinuousramp.md) | 24 | `declaration-track:42ca1478738586c18a88bb8f53d87ff78a03e7afbccb13c2648f0c1761e26d82` |
| 2 | `def` | [actualMangoldtRieszPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtrieszprimitive.md) | 27 | `declaration-track:f8546fb3dff2bc705ff57a577a7792e375639748fcf6edba374da4ac2c7eaa5e` |
| 3 | `def` | [actualRieszContinuousMagnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualrieszcontinuousmagnitude.md) | 33 | `declaration-track:183e938349850e20a1567879c9a8794cdf1db93f8b47d3fcd09a4ba5bdabf718` |
| 4 | `theorem` | [ramp_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/ramp-continuous.md) | 36 | `result-track:e7c93aeed397e6fce862a74d727810d13a9baf7d7e341bbaf0828722465e5529` |
| 5 | `theorem` | [actualMangoldtRieszPrimitive_eq_fixed_ramps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtrieszprimitive-eq-fixed-ramps.md) | 40 | `result-track:cf99df2cfd8bcc6ab3a7de3d89f177f90635e5c021468c4b26b6ac62cd45edc9` |
| 6 | `theorem` | [continuousRamp_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/continuousramp-contdiff.md) | 60 | `result-track:b7366bfa959864b3eb55426c34fa63d4e184592a8e50774e685d107c72d1bf98` |
| 7 | `theorem` | [continuousRamp_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/continuousramp-deriv.md) | 64 | `result-track:1f867a9b98fd594f7904194797a1cc3d6ce2db6ce297d46dd4c63519df8b4bf8` |
| 8 | `theorem` | [continuousRamp_first_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/continuousramp-first-deriv.md) | 70 | `result-track:a0b01b49c5c3ea57e2b984489d4196bad0b40f0a77ea34a45d274be62ef82708` |
| 9 | `theorem` | [actualMangoldtRieszPrimitive_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtrieszprimitive-continuouson.md) | 76 | `result-track:025aa18340ef772c19dd0d430f42a25f406c00ee9306eedf623ec543db520e25` |
| 10 | `theorem` | [actualMangoldtRieszPrimitive_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtrieszprimitive-zero.md) | 89 | `result-track:37fbb1a7fa1ee02f6092f52a92b5dd02fa5dfb98524237939f80033094e9cf56` |
| 11 | `theorem` | [actualMangoldtRiesz_pairing_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtriesz-pairing-intervalintegrable.md) | 93 | `result-track:a73464229924c45575a11d59799bfcc66dbaf2bd3d755494e8a49f40c2a66630` |
| 12 | `theorem` | [ramp_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/ramp-integral.md) | 101 | `result-track:01bbcea6975e52038202b9d313533f46148e6f7e288db634a0c3248aa4d2b9b7` |
| 13 | `theorem` | [continuousRamp_pairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/continuousramp-pairing.md) | 144 | `result-track:044530399b61624fda7ed59940264adf389a93d86425dfc575c77ee8b469115a` |
| 14 | `theorem` | [coefficient_transport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/coefficient-transport.md) | 180 | `result-track:50a02823a06ba32d05d135e070771d1afa3bcf4dc3ed37451de397eb0870a22d` |
| 15 | `theorem` | [actualMangoldtRiesz_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualmangoldtriesz-reconstruction.md) | 191 | `result-track:20c93fcc00611e14fa51c1f3c9b9f5e5c74b5c3d2a976d64cafeaa8202ddcec1` |
| 16 | `theorem` | [actualRiesz_continuousMoment_eq_neg_magnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualriesz-continuousmoment-eq-neg-magnitude.md) | 245 | `result-track:87b6694a96d5174b6b5cf73264fe3da6741145c7aee02ce65a20a9a40490d6c0` |
| 17 | `theorem` | [actualCorrelation_Riesz_endpoint_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcorrelation-riesz-endpoint-ledger.md) | 252 | `result-track:222d1854c5f32f57f7f3e45ce45ec6498a3f47276f464657ee0e9779c135e59b` |
| 18 | `theorem` | [actualCorrelation_Riesz_curvature_moments](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcorrelation-riesz-curvature-moments.md) | 265 | `result-track:9f11caa21f57e55f06b37f35e58bc6d6e9559b88edd4d3a0c9edd491c2635862` |
| 19 | `def` | [actualRieszLinearCenter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualrieszlinearcenter.md) | 294 | `declaration-track:6d732f14ebc6cfc5865c78f3ee720710e81ba82ac7bb58e50e2c8d8293ac6cab` |
| 20 | `def` | [actualCenteredMangoldtRieszPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcenteredmangoldtrieszprimitive.md) | 298 | `declaration-track:6fd1ef6d01d8a78d479dd8849e16052edf3d3ea3c5e3b4bdb29fba0bc61177cc` |
| 21 | `theorem` | [actualCenteredMangoldtRiesz_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcenteredmangoldtriesz-intervalintegrable.md) | 302 | `result-track:86273263eb7c28d323d7587540a0848ecca65c16736f425607a86e106f8afe93` |
| 22 | `theorem` | [actualCenteredMangoldtRiesz_readout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcenteredmangoldtriesz-readout.md) | 310 | `result-track:6c353194fecf5b2208fe5789d2a51f5839b753eba0ded6fe2c236641e6074e39` |
| 23 | `theorem` | [actualCenteredMangoldtRiesz_area_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative03.lean/declarations/actualcenteredmangoldtriesz-area-bound.md) | 339 | `result-track:0481660a9b85664167ce6250609c97f6f53108a6aab79441d6aaf36ee1564c80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e6a80e568ff9cb448ccddff6cdf1285daa4ced746bd3d4e021b9238f8d85c7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
