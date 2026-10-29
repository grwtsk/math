# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13aa9c8cf64916dbfca516e4126ca636dceffaa3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13aa9c8cf64916dbfca516e4126ca636dceffaa3`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingOffDiagonalCovariance`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredAffineFourMobiusCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/centeredaffinefourmobiuscoefficient.md) | 18 | `declaration-track:771f3987f0f7887c619df0e92cf782fb8ae7132d74e9aea9778f69589f54aa25` |
| 2 | `def` | [parityCenteredAffineFourMobiusAtCenterLag](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiusatcenterlag.md) | 27 | `declaration-track:ada7c8eb84c78d9a5bfc03f8d28284ab02b4c694469fff5f05b8bff051845c3f` |
| 3 | `theorem` | [parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiusatcenterlag-eq-amplitude-mul.md) | 36 | `result-track:81cdb794772eb253f8f425d97a12658967eddb8cb9e3d8f0aa08e842e4328f55` |
| 4 | `def` | [parityCenteredAffineFourMobiusLagCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuslagcorrelation.md) | 53 | `declaration-track:5bef0b23c2559d52b8084250eb4018cc2ae5d245f84c3266f285a6f65cb6ccd5` |
| 5 | `theorem` | [parityCenteredAffineFourMobiusLagCorrelation_eq_positiveLagCovariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuslagcorrelation-eq-positivelagcovariance.md) | 61 | `result-track:c14ceadaa52a1846c9b075dc60da593bafad5e453693ab3c19026377e8b35445` |
| 6 | `def` | [parityCenteredAffineFourMobiusWindingLagCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagcorrelation.md) | 78 | `declaration-track:9e94babadddb9a154d6da648aede916dbcc4cd19115d2812d2455529fa866f0f` |
| 7 | `theorem` | [parityCenteredAffineFourMobiusWindingLagCorrelation_eq_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagcorrelation-eq-covariance.md) | 84 | `result-track:214bd93f6a6fda5a9b1d5c2526954bcb3ffbf1f6c44fa3b2dc563bd1277156d8` |
| 8 | `def` | [parityCenteredAffineFourMobiusWindingLagSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagsum.md) | 94 | `declaration-track:3aca775c1a99236035d29c7fa04a48b5c6e880809d4c42c84bb83bff693e0f36` |
| 9 | `theorem` | [parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/paritycenteredaffinefourmobiuswindinglagsum-eq-covariancelagsum.md) | 100 | `result-track:e0be53f3048a75dc7257adba031f419459850d65c42272a65c8a415a3c8ed812` |
| 10 | `def` | [RegularCenteredAffineFourMobiusLagEnvelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiuslagenvelope.md) | 113 | `declaration-track:ed6abf565b8458dd8e7a849442023ca3ee36a743403e4e6510db24ddcbadfa4f` |
| 11 | `structure` | [RegularCenteredAffineFourMobiusSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiussourcedata.md) | 131 | `declaration-track:acbb92ddc8448dde70e4a3c3b4910c96f99c24c991c32ad82dd8319a498350b2` |
| 12 | `def` | [RegularCenteredAffineFourMobiusSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredAffineFourMobius.lean/declarations/regularcenteredaffinefourmobiussource.md) | 147 | `declaration-track:30ad96dcd0a5d53c3a75cb9fd33a0452713b4f77f4b1a91feb8d849da7d6ae08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cca0972588d08359574fc6804bd9231660c247a1ed93ece38f4db75bd86573e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
