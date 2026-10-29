# Verification target: Bounded Actual Signed Prefixes Are Exactly Summable Record Increments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4878ca84797189a2864074d3ec1975c0bec775",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4878ca84797189a2864074d3ec1975c0bec775`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RecordEndpoint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [record_summable_iff_levels_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/declarations/record-summable-iff-levels-bounded.md) | 26 | `result-track:16f9a0a9ad44cb06fce96678f2cd3ace77b0aaafda3a0dfc9a810cd1e5f77455` |
| 2 | `theorem` | [record_summable_iff_signed_prefixes_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/declarations/record-summable-iff-signed-prefixes-bounded.md) | 44 | `result-track:62d536b75237b9a47a7dc04cf8235672ed80505eabe5e76ad6e832b837a7e842` |
| 3 | `theorem` | [record_level_converges_to_total](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/declarations/record-level-converges-to-total.md) | 55 | `result-track:1ca6d8f7ef77ed0a252f41cb6d4eaf24b5761ee6f879e20ea781c1005caa7cd7` |
| 4 | `theorem` | [total_record_height_is_least_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BoundedActualSignedPrefixesAreExactlySummableRecordIncrements.lean/declarations/total-record-height-is-least-bound.md) | 59 | `result-track:0eb1734df04a90c302e89b8413d431c387647f5d217efbf9a070e199fc8b2230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2ed56b1b1eae45d426b7de2e3f8a4282d2856a84b033ad96d4e8135a7a9d198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
