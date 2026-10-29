# Verification target: Source Renormalized Actual Signed Tail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d210a5cd9c9b621abcc08956f418c81db224ab4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d210a5cd9c9b621abcc08956f418c81db224ab4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEarlyLowerBound` — import line 1; external provider; requires a separately pinned dependency.
- `SourceSignedTailLinearConsumer` — import line 2; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [renormalizedActualSignedTail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/renormalizedactualsignedtail.md) | 28 | `declaration-track:1f9c46710b6a802bc7e8f0a6a9fb1fc4ba28e945d4c91a94628e7ba3f189bca6` |
| 2 | `theorem` | [renormalized_tail_eq_signed_short_and_tail_sub_scale](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/renormalized-tail-eq-signed-short-and-tail-sub-scale.md) | 35 | `result-track:2907052d635c2e94333baeda604c65cb205d4f2f05f212544ff777b92970612b` |
| 3 | `theorem` | [complete_pairing_eq_renormalized_tail_add_actual_head](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/complete-pairing-eq-renormalized-tail-add-actual-head.md) | 41 | `result-track:46a3d600a8319a158a8f7b0fd6d68563ba83737212434119a2c742dff2b6f481` |
| 4 | `theorem` | [complete_pairing_sub_renormalized_tail_abs_le_seven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/complete-pairing-sub-renormalized-tail-abs-le-seven.md) | 51 | `result-track:4ec819524227d3e76d988ca98fab6fa29ca8036287187990afdac52a98e02147` |
| 5 | `theorem` | [renormalized_tail_complete_pairing_comparisons](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/renormalized-tail-complete-pairing-comparisons.md) | 59 | `result-track:64154fc785ac401569d0439c27b08fda3ef11b97c9e596e6cfaa2baa9802a94a` |
| 6 | `theorem` | [residual_sub_renormalized_tail_sub_zeta_abs_lt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/residual-sub-renormalized-tail-sub-zeta-abs-lt.md) | 68 | `result-track:288d997afd166f2e28fb599eb1ef212b15d4b002c1437394d39a09f966ce0013` |
| 7 | `theorem` | [renormalized_tail_upper_iff_complete_pairing_upper_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/renormalized-tail-upper-iff-complete-pairing-upper-at-radius.md) | 83 | `result-track:c866444800b9e6f6a6c22fcb6a71bab7f99511576befbbbb637204c66dabbcde` |
| 8 | `theorem` | [estimate_of_renormalized_actual_signed_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRenormalizedActualSignedTail.lean/declarations/estimate-of-renormalized-actual-signed-tail.md) | 102 | `result-track:9a353772264b783c206133734fc057bd0cd0019284dce608e008cec701e32bb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b26fa87671091678a645e7330386c1ae0f0d35b825705681cc29d61e712ec1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
