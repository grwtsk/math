# Verification target: Source Actual Riesz Centered Reconstruction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab1c8bf3323c31a742f8fdd40bef0836896e3af",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantf5fbf35aeb047ea9747b782a6cd6b81bfb23654682e8a3592cec9dbd5ea3519d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab1c8bf3323c31a742f8fdd40bef0836896e3af`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantf5fbf35aeb047ea9747b782a6cd6b81bfb23654682e8a3592cec9dbd5ea3519d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantf5fbf35aeb047ea9747b782a6cd6b81bfb23654682e8a3592cec9dbd5ea3519d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `SourceFiveCancelledFactorialBudget` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRieszContinuousRamp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualrieszcontinuousramp.md) | 32 | `declaration-track:c0cd5ab3c9947389a22691ec94f982132af43e3468e5edeb5a4cc1e66df2a293` |
| 2 | `def` | [actualMangoldtRieszPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtrieszprimitive.md) | 35 | `declaration-track:46b274f42753e8a8c951e1b5d22992db68ed22c7bef05260a130af19bd8fe61c` |
| 3 | `def` | [actualRieszContinuousMagnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualrieszcontinuousmagnitude.md) | 41 | `declaration-track:82ee15c016346acc8d4879191e9fcee6ac71b45e4f871169b002509aa9d9bc50` |
| 4 | `theorem` | [ramp_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/ramp-continuous.md) | 44 | `result-track:1d73ab2e1bffd269f11e6ce997f151aa27b3afa03ab4183994adb962acd49d3d` |
| 5 | `theorem` | [actualMangoldtRieszPrimitive_eq_fixed_ramps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtrieszprimitive-eq-fixed-ramps.md) | 48 | `result-track:7a6923da479522bf76b441264f119740463a1788ef24a1a9f9d2b2b8d5bc2847` |
| 6 | `theorem` | [continuousRamp_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/continuousramp-contdiff.md) | 68 | `result-track:f1881d179308e41d66462c2c3934867c206818de2b5bd41f7633f80394e7059d` |
| 7 | `theorem` | [continuousRamp_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/continuousramp-deriv.md) | 72 | `result-track:5347af7866645e45e30ea9adee027e82ec837e7325e08e2a96adf394c7e9bdd1` |
| 8 | `theorem` | [continuousRamp_first_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/continuousramp-first-deriv.md) | 78 | `result-track:c7c0dbd4317a229cd32483cc8ee108955d3477eb053aa31ff1684f3f488e644a` |
| 9 | `theorem` | [actualMangoldtRieszPrimitive_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtrieszprimitive-continuouson.md) | 84 | `result-track:d364c5d0fa42ce628e2e53b6aed2003df433e5d6700b8de90e8c285060e0806f` |
| 10 | `theorem` | [actualMangoldtRieszPrimitive_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtrieszprimitive-zero.md) | 97 | `result-track:baca05b4ba64e1d399252fa85c93e9a61e72f4cce4c5f23f4fa9fab163524e2a` |
| 11 | `theorem` | [actualMangoldtRiesz_pairing_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtriesz-pairing-intervalintegrable.md) | 101 | `result-track:900e4bfb7185f1806740686e34c2cf821d14d9ab48d56efe0ba7883ad6251819` |
| 12 | `theorem` | [ramp_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/ramp-integral.md) | 109 | `result-track:07cf8e01677f217692438435e82868385e27450a67f1dffbc52e7f077d73ac8e` |
| 13 | `theorem` | [continuousRamp_pairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/continuousramp-pairing.md) | 152 | `result-track:feeca08c9a4676ae5408a2603dcc88a7800d111e426dfb0866602cdf1f57448c` |
| 14 | `theorem` | [coefficient_transport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/coefficient-transport.md) | 188 | `result-track:481c392a4032cbdba2303cf0955099a87fa10ed095e2a638218aaa753a3098a0` |
| 15 | `theorem` | [actualMangoldtRiesz_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualmangoldtriesz-reconstruction.md) | 199 | `result-track:04380f399f934c30b58a5c543575fe7d082f2070b06dda83ed8a3590e1c3601c` |
| 16 | `theorem` | [actualRiesz_continuousMoment_eq_neg_magnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualriesz-continuousmoment-eq-neg-magnitude.md) | 253 | `result-track:19f3ea5c5a406707b1231f76a09ad0bbe083d991edb44017a28bd6793ba89073` |
| 17 | `theorem` | [actualCorrelation_Riesz_endpoint_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcorrelation-riesz-endpoint-ledger.md) | 260 | `result-track:72c126ba26aeda7bd201c3bb30271cfe252e787c2a8bcdf34eaa073df72de903` |
| 18 | `theorem` | [actualCorrelation_Riesz_curvature_moments](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcorrelation-riesz-curvature-moments.md) | 273 | `result-track:cf110eefbcc6f4bd4b3bca804d45b96ae896fe6cf45d36650798eb88a1a44755` |
| 19 | `def` | [actualRieszLinearCenter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualrieszlinearcenter.md) | 302 | `declaration-track:3ee01c6ad0b6306bb9d73b49328d558b8dca8bbd21aa17bf7e05337503e272da` |
| 20 | `def` | [actualCenteredMangoldtRieszPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcenteredmangoldtrieszprimitive.md) | 306 | `declaration-track:4433c408c53f709ba0994d14d0746f588b2ebc878e5563602ef47099ec480dbd` |
| 21 | `theorem` | [actualCenteredMangoldtRiesz_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcenteredmangoldtriesz-intervalintegrable.md) | 310 | `result-track:be89db15adf9e0c6263b66b556877ee9513ef3e969e3daece5ab09ec07084fcf` |
| 22 | `theorem` | [actualCenteredMangoldtRiesz_readout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcenteredmangoldtriesz-readout.md) | 318 | `result-track:2cdd69f7be6e167f1b01173b83336ce68f2c115de686785e37768ca314b85a96` |
| 23 | `theorem` | [actualCenteredMangoldtRiesz_area_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNamespaced.lean/declarations/actualcenteredmangoldtriesz-area-bound.md) | 350 | `result-track:22476299f8eda6a381d876ad91119489aca3612a75700f5643d05003f18ec246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eead892185720e359c7be5dc8d44e7796bea99773c629b6b8914d147721f2bf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantf5fbf35aeb047ea9747b782a6cd6b81bfb23654682e8a3592cec9dbd5ea3519d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantf5fbf35aeb047ea9747b782a6cd6b81bfb23654682e8a3592cec9dbd5ea3519d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
