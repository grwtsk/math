# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SignedTentCorrectionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95dc754402a8484b809561312d66e16e9927294d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SignedTentCorrectionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95dc754402a8484b809561312d66e16e9927294d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SignedTentCorrectionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SignedTentCorrectionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection`](../../../../NumberTheory/SignedTentCorrection.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_density_term_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/first-density-term-control.md) | 18 | `result-track:9e464527a9463d4b75a2f4543b30ff393e37e70d86f872eaf7a6a30853eae97a` |
| 2 | `theorem` | [second_density_term_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/second-density-term-control.md) | 24 | `result-track:92c5075faabe657819e7e5c8d125e50787ee20cde9bf98271ed8ba838bb0c3c8` |
| 3 | `theorem` | [empty_prefix_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/empty-prefix-control.md) | 29 | `result-track:dc05cadee3d8b77f03c7395c2226b4e99d040611a1b499de56bfc692ea756bb9` |
| 4 | `theorem` | [radius_not_diameter_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/radius-not-diameter-control.md) | 35 | `result-track:d5eaafccceab8a26fbd4bce1221912b277fecee24733d01a86f20266c11f0430` |
| 5 | `theorem` | [square_two_bounds_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/square-two-bounds-control.md) | 40 | `result-track:a00a6497bd26db03dd45f58842a67f64bea46ea8d5a2ea1bbea6aaf296ebfa58` |
| 6 | `theorem` | [first_square_domain_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/first-square-domain-control.md) | 47 | `result-track:ef3f43169bbc236693ec895337b9cac8efb9c2d04fb92633e5cd1929ca94bf08` |
| 7 | `theorem` | [singular_density_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/singular-density-control.md) | 51 | `result-track:87637289893b13d816ac6c658a2cd49efd255099acd575c8b5edd6d81736112e` |
| 8 | `theorem` | [equality_margin_control](../../../../MeasureAndIntegration/SignedTentCorrectionControls.lean/declarations/equality-margin-control.md) | 55 | `result-track:c3aa7a709782594b674b7d570dfcd62ca5b7b9de23e198fa19ceb3b2a6220bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19a252e3305d37f19f9ca835c1ad6e3c6d3efd15b274bfd632ea0167eac2f1af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/SignedTentCorrectionControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/SignedTentCorrectionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
