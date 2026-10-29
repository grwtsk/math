# Verification target: Source Actual Riesz Centered Reconstruction Native01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8225d44b41a05bd1b36f3adb5a242453ef3f67ca",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8225d44b41a05bd1b36f3adb5a242453ef3f67ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean.json)

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
| 1 | `def` | [actualRieszContinuousRamp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualrieszcontinuousramp.md) | 24 | `declaration-track:5b9cfc92938498cd8a2b4e2f1a0eb274388c40c1ba75db87ee5164934bf0e3da` |
| 2 | `def` | [actualMangoldtRieszPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtrieszprimitive.md) | 27 | `declaration-track:0575b7ca69a4e906ef44e12cdf922cf0573114d5c09300c2a66cd4415a4972d9` |
| 3 | `def` | [actualRieszContinuousMagnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualrieszcontinuousmagnitude.md) | 33 | `declaration-track:753873d8ffeed03c549dbed5bd6f0299a85a3f63fdf06438b1ac9bf12ffef64b` |
| 4 | `theorem` | [ramp_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/ramp-continuous.md) | 36 | `result-track:1c611aa30e018a873f65f744063ffc04d7c62343d658989d17072dc59c461751` |
| 5 | `theorem` | [actualMangoldtRieszPrimitive_eq_fixed_ramps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtrieszprimitive-eq-fixed-ramps.md) | 40 | `result-track:45132c3067f969954cdcb07c9638b9a28a10ef5835f0a07bb9dbb3fefe376aca` |
| 6 | `theorem` | [continuousRamp_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/continuousramp-contdiff.md) | 60 | `result-track:d96fe8b01314a6bf8fcd13379518fd5a1654f8836a284952615a0e6ffbbb6b9b` |
| 7 | `theorem` | [continuousRamp_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/continuousramp-deriv.md) | 64 | `result-track:1e86e0ebc5a11b52409dcf3b9055879adc7829a233146d1f24d0e3aec8455df2` |
| 8 | `theorem` | [continuousRamp_first_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/continuousramp-first-deriv.md) | 69 | `result-track:131e6c74d3551c6e494591520e5557c465fdac8277fac75ef3b7f0cb72e0a19f` |
| 9 | `theorem` | [actualMangoldtRieszPrimitive_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtrieszprimitive-continuouson.md) | 75 | `result-track:c695cb4e6bb32992e611f698e86945af409e2f91447a8dfeac0736c90f4ff6cf` |
| 10 | `theorem` | [actualMangoldtRieszPrimitive_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtrieszprimitive-zero.md) | 88 | `result-track:1b778010e80aacf4c50c629eee9f777c6e0122927114ff4dcb89f7058e63c44b` |
| 11 | `theorem` | [actualMangoldtRiesz_pairing_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtriesz-pairing-intervalintegrable.md) | 92 | `result-track:297d3d20a9788083c2280e85b50cfe31c56204cf7f8632264843a2c79639dd4e` |
| 12 | `theorem` | [ramp_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/ramp-integral.md) | 100 | `result-track:2fd2d12aa5113946f2668ed99ade5f8e6e9b945a5120bad2596043a518c8671d` |
| 13 | `theorem` | [continuousRamp_pairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/continuousramp-pairing.md) | 138 | `result-track:c9b09d3d8d399fe85f69178bd84ba4c8f6dd9188ef943fd8476a7275a40a8e9d` |
| 14 | `theorem` | [coefficient_transport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/coefficient-transport.md) | 174 | `result-track:aceab7976856f1cc6b349c4e1a7e7276d32f8a834424314b8bbb2115309d5749` |
| 15 | `theorem` | [actualMangoldtRiesz_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualmangoldtriesz-reconstruction.md) | 185 | `result-track:647b98d8fa46ac48195333f94b4628aef472e4a2063d81dc76ff245036fb11f2` |
| 16 | `theorem` | [actualRiesz_continuousMoment_eq_neg_magnitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualRieszCenteredReconstructionNative01.lean/declarations/actualriesz-continuousmoment-eq-neg-magnitude.md) | 231 | `result-track:82fad11bc5bc3702063b8e4f52c0339822b559ec891fd1f5486d1516ac4917c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d9a92b8d75d4b6cf0d2aeeed04df4bf922434c2e2b17e76f139a8781a21439c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
