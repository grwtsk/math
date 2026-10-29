# Verification target: Source Actual Zero Moving Tail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b056d442994d76e356c5d4440bf4e5b42ae6190",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b056d442994d76e356c5d4440bf4e5b42ae6190`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualZeroArithmeticDictionary` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZeroMovingRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeromovingradius.md) | 21 | `declaration-track:d596c2f6fcb25bb124291deb8ae30e34ef2edb597d99db6c5eba14cf5b4b5a71` |
| 2 | `def` | [actualZeroMovingEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeromovingenvelope.md) | 24 | `declaration-track:bf1fa761f8a5e9cf06f36111c015c30895bd30d3eb44ca30e9c52e14f2a9999a` |
| 3 | `theorem` | [actualZeroMovingHeight_ge_four](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeromovingheight-ge-four.md) | 29 | `result-track:5c3466f668d529ca4211bc8039475836e652edfbe3968ae99b3509e562558091` |
| 4 | `theorem` | [actualZeroMovingTail_norm_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeromovingtail-norm-bound.md) | 41 | `result-track:afb9585e0bc25fc89e7003d0014b0dd99b3833b74c52d84bf5efb723ac91f7bd` |
| 5 | `theorem` | [logarithmic_tail_antitone](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/logarithmic-tail-antitone.md) | 66 | `result-track:89886a2723f0db9bb00b39fbd4d16f18ccb8cf7a39e0067c973fdbe449234ef2` |
| 6 | `theorem` | [actualZeroAboveMovingHeight_norm_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeroabovemovingheight-norm-bound.md) | 90 | `result-track:bf9b0ed67f0184209af0e6ed0b5e6b778728ec9f9f1026d29b00df67474850fa` |
| 7 | `theorem` | [envelope_le_inverse_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/envelope-le-inverse-eighth.md) | 123 | `result-track:113df5a49092bb6596acd98560861c8b84c7bab42473d085f6392aebf30ab231` |
| 8 | `theorem` | [actualZeroMovingTail_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualzeromovingtail-tendsto-zero.md) | 147 | `result-track:8c0643796387aa8b0d2d5d9801cdb83d5ce8bdbd1ac65817122ab90fa8f554a5` |
| 9 | `theorem` | [actualFullZeroContribution_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualfullzerocontribution-sub-movinghead.md) | 160 | `result-track:91813311136b0eacb5034279ec93d2ff9acc67747dc2db3a985bf81f8ca8f586` |
| 10 | `theorem` | [actualSourceQuadraticValue_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTail.lean/declarations/actualsourcequadraticvalue-sub-movinghead.md) | 167 | `result-track:e8ba0ad50016a4375a61d38f6519715b8cd30a4179559be9affaf3ea29b72432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=816fcf5bb550ca12010f94404435d32f4369b609f2bde33a2e340516eba95c72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant29f1cba773fcda79c7cf0960fb42cf66566da55fdbcd04cf2f846058735236d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
