# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompletePsiMeanSquareBoundary.Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec6029ba18c5b1c02fbb40a291ca6019bf4b649",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec6029ba18c5b1c02fbb40a291ca6019bf4b649`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completePsiSquare](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/declarations/completepsisquare--5977ac278f9ea5fb487adc86.md) | 23 | `declaration-track:5977ac278f9ea5fb487adc86f365614e7cf95195740b1db0dd9977ddf1eacb88` |
| 2 | `theorem` | [eventual_positive_square_floor_excludes_vanishing_factor](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/declarations/eventual-positive-square-floor-excludes-vanishing-factor--55cc67aa6b51ef35e6295128.md) | 25 | `result-track:55cc67aa6b51ef35e62951285f5d93c7e55f4fbdb78ff411f08118dccd9d5e45` |
| 3 | `theorem` | [positive_log_power_factor_tends_to_zero](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/declarations/positive-log-power-factor-tends-to-zero--4b67c9e88337bf0d8a0ea45a.md) | 40 | `result-track:4b67c9e88337bf0d8a0ea45aa81836f12d804858454a387d9a786ba5ab8db594` |
| 4 | `theorem` | [complete_psi_floor_excludes_negative_log_saving](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/declarations/complete-psi-floor-excludes-negative-log-saving--7154b6af0eec42e37769dab7.md) | 48 | `result-track:7154b6af0eec42e37769dab71362c0b54ad31157d11af2f3b342a013b33c416b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb214364a77d0d1d4711743bdf0e567a65110e23d403550f10b38651b2465cfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
