# Verification target: GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2014e78cd3486736ca7ad3be6001ba99a09f6798",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2014e78cd3486736ca7ad3be6001ba99a09f6798`.

Source path: `GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ParityFourierResidueVariance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPointwiseToDyadicGeometric.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityMertensResidueBucket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/paritymertensresiduebucket.md) | 42 | `declaration-track:9bc9c6f8d59f626ca246c930a54bf6d59b45166097b0b380cd23927cdec58d53` |
| 2 | `def` | [parityMertensResidueEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/paritymertensresidueenergy.md) | 51 | `declaration-track:ebb24ecbca01d0e72fa1d8dca96e7bdf54f0c07a2274692372ac1fc87bf724c6` |
| 3 | `def` | [parityMertensResidueVariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/paritymertensresiduevariance.md) | 57 | `declaration-track:dbbd5bad2bf91705ca48f505b9d19279392544e0e975dbe2ad5f385aad1f410a` |
| 4 | `theorem` | [sum_parityMertensResidueBucket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/sum-paritymertensresiduebucket.md) | 63 | `result-track:56f8f65dd96f83a4093dec61d62d6013b9ce43496711a409e8f97c58c36d483a` |
| 5 | `theorem` | [parityOnePointMobiusFourierSum_eq_residueBuckets](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityonepointmobiusfouriersum-eq-residuebuckets.md) | 77 | `result-track:2fd85214cc44dcdb370a37b4e399099de4d02e81f3f9bb256d48ac079ea9b757` |
| 6 | `theorem` | [stdAddChar_conj_mul_orthogonality](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/stdaddchar-conj-mul-orthogonality.md) | 96 | `result-track:7422cfad8e782809d349335fc0ff98543b06069ff739f7cd30881f7104de03f3` |
| 7 | `theorem` | [stdAddChar_parseval_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/stdaddchar-parseval-norm-sq.md) | 127 | `result-track:7ff22e90b2cfa509f825b49813c1f2a7b1ab3dd076aed373f43362a55808605e` |
| 8 | `theorem` | [sum_norm_sq_parityOnePointMobiusFourierSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/sum-norm-sq-parityonepointmobiusfouriersum.md) | 188 | `result-track:3f8c65719a6599db6c7ccb45b7813ddd712b2a44cb80cd4b5a8b1ad789e99f2f` |
| 9 | `theorem` | [normalized_nonzero_parityFourierEnergy_eq_residueVariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/normalized-nonzero-parityfourierenergy-eq-residuevariance.md) | 202 | `result-track:8c0422e95ede2269143a601ccaf2324a0904f3c40d69fc7d1f48dedce272ca92` |
| 10 | `theorem` | [parityMertensResidueVariance_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/paritymertensresiduevariance-nonneg.md) | 231 | `result-track:bff6f03b536083afaa25b6caa24c0dd7eda04af2ca85c8066e6cf3c379295bef` |
| 11 | `def` | [paritySquarefreeDiagonalNonzeroFourierL1](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/paritysquarefreediagonalnonzerofourierl1.md) | 239 | `declaration-track:a04985df6a8610e6a9f213993862bfb4b368c6675fc30d0d4cf874fba509d991` |
| 12 | `def` | [parityResidueVarianceDiagonalModulusMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityresiduevariancediagonalmodulusmajorant.md) | 246 | `declaration-track:5df2205712db60630225a2e54c53489a3c0fe964ffff6bb4d0bd2a4b717a5df5` |
| 13 | `def` | [parityFourierNonzeroModulusMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityfouriernonzeromodulusmajorant.md) | 256 | `declaration-track:ec8e67d8fc16984ece7545f55fe9ff06b1376cf41b4779c9cfb23176c2b606a6` |
| 14 | `theorem` | [parityFourierQuadraticMajorant_le_energy_add_diagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityfourierquadraticmajorant-le-energy-add-diagonal.md) | 264 | `result-track:d93ca8bbb115fd4275cb9cda39100614fb110e4fbdf6990b0095dff79324d3e5` |
| 15 | `theorem` | [parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityfouriernonzeromodulusmajorant-le-residuevariancediagonal.md) | 285 | `result-track:8cacf3cad45d0b9625d90ac656b9fc9559727be41e8e9dbfe3112c5322600a7f` |
| 16 | `def` | [parityResidueVarianceDiagonalEndpointMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityresiduevariancediagonalendpointmajorant.md) | 327 | `declaration-track:75cf3c25630d52c1ded5e5a0357301c82b35ce4a48e3b571203b20112faf4feb` |
| 17 | `theorem` | [parityFourierNonzeroFrequencyEndpointMajorant_le_residueVarianceDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/parityfouriernonzerofrequencyendpointmajorant-le-residuevariancediagonal.md) | 336 | `result-track:672c51302efa2d50fd89248c63b15ca2533b86ac8e99315afd9f1408905688dd` |
| 18 | `def` | [DyadicNaturalScaleParityResidueVarianceDiagonalBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/dyadicnaturalscaleparityresiduevariancediagonalbudget.md) | 353 | `declaration-track:b70bbed11ac227aac3bcbd96bfd3b7b9cd1a467af9496d1fb1d6a232a362e808` |
| 19 | `theorem` | [nonzeroParityFourierBudget_of_residueVarianceDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/nonzeroparityfourierbudget-of-residuevariancediagonal.md) | 363 | `result-track:7013825acac8338e13d05d1c79f9e482269d248151a125117d57d45669921d04` |
| 20 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_residueVarianceDiagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierResidueVariance.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-residuevariancediagonal.md) | 377 | `result-track:aa270cd13260d2221658dce21209cf023cf46632f54218651690d062dc17194c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9497792411cf042389ca1df1119507dbae9d8f6ad3102a5a263b78257f93f82b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ParityFourierResidueVariance.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
