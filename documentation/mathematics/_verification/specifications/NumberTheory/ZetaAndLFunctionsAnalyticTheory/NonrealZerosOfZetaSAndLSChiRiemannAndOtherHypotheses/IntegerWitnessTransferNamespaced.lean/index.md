# Verification target: Integer Witness Transfer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d423d98dfa4ab42695577e79776171fbf688681d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant830d89876c4d0a78db0169e8195cef4aa17b9039d434fc40984bef961a0f1edc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d423d98dfa4ab42695577e79776171fbf688681d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant830d89876c4d0a78db0169e8195cef4aa17b9039d434fc40984bef961a0f1edc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant830d89876c4d0a78db0169e8195cef4aa17b9039d434fc40984bef961a0f1edc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualArithmeticCalibration` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntegerTailUpperBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integertailupperbound.md) | 25 | `declaration-track:5f9c6c75b183cde5f5124fa4e327392b357d3e16e99fd0bd9ec084b00a9e889b` |
| 2 | `theorem` | [calibration_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/calibration-at-radius.md) | 28 | `result-track:50ee47a16960bb41b537c9aca5a2f95833e5bae7522b48546e91f3266f6ee558` |
| 3 | `theorem` | [residual_le_integer](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/residual-le-integer.md) | 35 | `result-track:35cc02c012f6b83dd20a2eedd11fa1b4dcf23943d4348ddd2135a4355d781ecc` |
| 4 | `theorem` | [integer_le_residual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integer-le-residual.md) | 40 | `result-track:fbca2fee3231aac15be2fc31114d2a33267d8b46e0e7948c2020012d824c9d30` |
| 5 | `theorem` | [residual_bound_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/residual-bound-at-radius.md) | 45 | `result-track:ac22efcbbee0d6f6ffefd2a23b1083afa1b20485dd01b2d3ff74d4e8a782663d` |
| 6 | `theorem` | [integer_bound_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integer-bound-at-radius.md) | 53 | `result-track:7f0109b56b3409a93c15211962db86268ccef3c89b0a01e72caa53a1430bdf84` |
| 7 | `theorem` | [integer_tail_iff_nonnegative_budget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integer-tail-iff-nonnegative-budget.md) | 61 | `result-track:9a71f1e9acd6b3c063d8564d0bce3ab30cfeecf540b94dee8effdbea0de994bd` |
| 8 | `theorem` | [residual_tail_of_integer_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/residual-tail-of-integer-tail.md) | 71 | `result-track:9f93f324bf146b5dbef5baf4e1328fff5cf6a8ed6f1fd526fe4c47070839eea7` |
| 9 | `theorem` | [integer_tail_of_residual_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integer-tail-of-residual-tail.md) | 78 | `result-track:f3525c9656cb3d0504b9a078f548cba0ca4ad726f8d33cb1dc5d21a13bbdb4ad` |
| 10 | `theorem` | [integer_tail_iff_residual_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/integer-tail-iff-residual-tail.md) | 83 | `result-track:dbf5635226ec9753224d958f53158fa3ed0c91d175d261f0aa94061f9fc05987` |
| 11 | `theorem` | [estimate_of_integer_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/estimate-of-integer-tail.md) | 87 | `result-track:110792cf148d642f77817c8978239a29f0ff6e6b9437cae94e9c9df4ce8ab9c7` |
| 12 | `theorem` | [estimate_of_integer_bound_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerWitnessTransferNamespaced.lean/declarations/estimate-of-integer-bound-at-radius.md) | 91 | `result-track:7a258b9464f53bc545bf533af779390805fce3c670a2ef3e3d5880903fb146f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff64bc5ca793bbd83e08a8680daa9e49870eb87068e29c5a716233845981d0cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant830d89876c4d0a78db0169e8195cef4aa17b9039d434fc40984bef961a0f1edc.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant830d89876c4d0a78db0169e8195cef4aa17b9039d434fc40984bef961a0f1edc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
