# Verification target: Source Complete Corrected Abel Pairing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1d86e8d422dc8bb725a7156a0f6487b8ca58fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1d86e8d422dc8bb725a7156a0f6487b8ca58fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCorrectedOmegaPeanoTaylor` — import line 6; external provider; requires a separately pinned dependency.
- `SourceStrictComplementaryAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeCorrectedAbelPairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/completecorrectedabelpairing.md) | 35 | `declaration-track:6dbcb15b67cc4ea8e48f5d9046c28b9b36103b9fa11d94eb80fc74baec59fa4f` |
| 2 | `theorem` | [correctedCompleteOmega_eq_complete_pairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/correctedcompleteomega-eq-complete-pairing.md) | 41 | `result-track:b94b7a0b593d89b770d9d20b03cf95077d2e8a5e7673929d4a5ab393a29fe046` |
| 3 | `theorem` | [completeOmega_eq_complete_pairing_add_actualPeanoError](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/completeomega-eq-complete-pairing-add-actualpeanoerror.md) | 48 | `result-track:1f2cbbc2eff926c3eb5fb5223172e452d2f6c5c131eb1113335e8638dbdadfa3` |
| 4 | `theorem` | [integerJ_eq_complete_pairing_add_actual_errors](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/integerj-eq-complete-pairing-add-actual-errors.md) | 54 | `result-track:69a6f4db8445d22a03bd03bb2c2b710b2d7920b718707660865b62f06e06f27c` |
| 5 | `theorem` | [mertensResidual_eq_complete_pairing_add_plain_add_actual_errors](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/mertensresidual-eq-complete-pairing-add-plain-add-actual-errors.md) | 61 | `result-track:caa6f6bfa33cf011ddadbf733fe6fe2661a22f0ebe604782e7aebc03f4d80a71` |
| 6 | `theorem` | [integerJ_sub_complete_pairing_abs_le_of_actual_row_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/integerj-sub-complete-pairing-abs-le-of-actual-row-bound.md) | 70 | `result-track:80478a12b3f8a9ae878d5166d6e0e3f31a39348337c97677ea037733da6d62b7` |
| 7 | `theorem` | [residual_sub_complete_pairing_sub_zeta_abs_lt_of_actual_row_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/residual-sub-complete-pairing-sub-zeta-abs-lt-of-actual-row-bound.md) | 79 | `result-track:ec5a501f023c4a1c136e3b0fc467da3f65c678dd48ad198611ed837474616cd2` |
| 8 | `theorem` | [estimate_of_complete_corrected_Abel_tail_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairingNamespaced.lean/declarations/estimate-of-complete-corrected-abel-tail-at-radius.md) | 89 | `result-track:83b4eeb38f95769cba5dccb8cc965a8e292932754aac222a8c6b18dd0f8528cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=692d69ed5d41376dc9ca55cab67ece23178efacb4e284e479404848ad649b710 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
