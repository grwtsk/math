# Verification target: Source Complete Corrected Abel Pairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64d3b1a4438ca112a8b573b7796640487bd4019",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64d3b1a4438ca112a8b573b7796640487bd4019`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCorrectedOmegaPeanoTaylor` — import line 1; external provider; requires a separately pinned dependency.
- `SourceStrictComplementaryAbel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeCorrectedAbelPairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/completecorrectedabelpairing.md) | 27 | `declaration-track:2fa9ec2d930f0639108f496a29bf9a415a718c762f514152ae22555fe4f92c54` |
| 2 | `theorem` | [correctedCompleteOmega_eq_complete_pairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/correctedcompleteomega-eq-complete-pairing.md) | 33 | `result-track:d35a0a37a1696d39b3fc1d4e2aa5c50f5305bc65a9995db687ce3e1508c0f15e` |
| 3 | `theorem` | [completeOmega_eq_complete_pairing_add_actualPeanoError](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/completeomega-eq-complete-pairing-add-actualpeanoerror.md) | 40 | `result-track:b6a6be398ec2211c149bfa906fab6bc327343f2df545ce66ad82ef24bb8bd8ca` |
| 4 | `theorem` | [integerJ_eq_complete_pairing_add_actual_errors](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/integerj-eq-complete-pairing-add-actual-errors.md) | 46 | `result-track:b37c45d24f07181ee37ed08c0edb4295597fd05cc01d547763bef20ddd1abe77` |
| 5 | `theorem` | [mertensResidual_eq_complete_pairing_add_plain_add_actual_errors](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/mertensresidual-eq-complete-pairing-add-plain-add-actual-errors.md) | 53 | `result-track:fcf22b68f963f061d9621c3a59b7549036ebb928f43c59c35c6736757527abc9` |
| 6 | `theorem` | [integerJ_sub_complete_pairing_abs_le_of_actual_row_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/integerj-sub-complete-pairing-abs-le-of-actual-row-bound.md) | 62 | `result-track:07d46149f24122cdae24f68eafc7db6dc7a7350e603428927117287fe3f39b2a` |
| 7 | `theorem` | [residual_sub_complete_pairing_sub_zeta_abs_lt_of_actual_row_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/residual-sub-complete-pairing-sub-zeta-abs-lt-of-actual-row-bound.md) | 71 | `result-track:238299112e83e68411cebbdd328000b2c09f0c5cb22962bab4601c8a150e86e7` |
| 8 | `theorem` | [estimate_of_complete_corrected_Abel_tail_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceCompleteCorrectedAbelPairing.lean/declarations/estimate-of-complete-corrected-abel-tail-at-radius.md) | 81 | `result-track:f67134cd9004498be193fb4fcfc195ea462525305f6326bb12c8e44723bb37b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8c6b12e3613b28da73f4c12c1fc63fadb16329be56a856bc34da2ea7da3e4e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
