# Verification target: Quotient Measure Preserving Quotient Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aba70ce7bfdd38ef616ea18f3d7f50ac02c4371b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aba70ce7bfdd38ef616ea18f3d7f50ac02c4371b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [QuotientGroup.measurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/declarations/quotientgroup-measurablesmul.md) | 45 | `declaration-track:baf8d91616b456aca224b0c656ad00611a87cd26376b8d9dbcb8ffcf156e6b68` |
| 2 | `theorem` | [MeasureTheory.IsFundamentalDomain.smulInvariantMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/declarations/smulinvariantmeasure-map.md) | 61 | `result-track:81e9734d76911b7c6e089262abca358cc97d6190e175e93aefd9cc2d6de688f0` |
| 3 | `theorem` | [MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/declarations/ismulleftinvariant-map.md) | 100 | `result-track:6da1bf0b501d3157cec6e64941ca411a7d7c05e4811cae04b8b4a4e74c0bc808` |
| 4 | `theorem` | [MeasureTheory.IsFundamentalDomain.map_restrict_quotient](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/declarations/measuretheory-isfundamentaldomain-map-restrict-quotient.md) | 125 | `result-track:fa303ac151c30281d8c83e6a6b029376fb554f6b7941808da3a4abd1be5a25de` |
| 5 | `theorem` | [MeasurePreservingQuotientGroup.mk'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/QuotientMeasurePreservingQuotientGroup.lean/declarations/measurepreservingquotientgroup-mk.md) | 150 | `result-track:5c9fc7b200e087b9abeda5b3baef37fdc12182e7d806c3a4d4442c9e6b4a1851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1e24c84f84beac562d4ea07eb54e8835edba2ce176066703389df3680dcadfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
