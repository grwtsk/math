# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8de87ade80f228be67ece156957382ea02d601b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8de87ade80f228be67ece156957382ea02d601b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Hypothesis.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NontrivialZeroFreeRightHalfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane.md) | 35 | `declaration-track:af77b75883521b8a38df4734930ae78e1c9aa621aa9c739b6b7fe67d42895f0d` |
| 2 | `theorem` | [nontrivialZeroFreeRightHalfPlane_mono](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane-mono.md) | 39 | `result-track:9099cb861f0b516d9977a68720534a92a78f25936268ec686f3e6609f2b648d1` |
| 3 | `theorem` | [nontrivialZeroFreeRightHalfPlane_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane-one.md) | 48 | `result-track:c979cd3c31c5953c0b0b469d734021da34f2e0c0350c0107ad67655cba98840c` |
| 4 | `theorem` | [nontrivialZeroFreeRightHalfPlane_of_one_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane-of-one-le.md) | 56 | `result-track:c3b3c21d9fa85a0bdbb9569dd5be5a589cb310d7413557335125f7507aa2ba44` |
| 5 | `theorem` | [nontrivialZeroFreeRightHalfPlane_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane-of-rh.md) | 64 | `result-track:6f008534a49a47c0c538e9256b32566c21b1fe2238e7387ae4ab22ce2b772556` |
| 6 | `theorem` | [riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/riemannhypothesis-of-nontrivialzerofreerighthalfplane.md) | 75 | `result-track:558d3eb777f71ffc6809e7560cde642e8d394d6d5be5dab742abc376899069ac` |
| 7 | `theorem` | [nontrivialZeroFreeRightHalfPlane_half_iff_riemannHypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/nontrivialzerofreerighthalfplane-half-iff-riemannhypothesis.md) | 90 | `result-track:b0cdb370696ff4616e5c54381090e11727f29d9e5a31150aef34826d8492177a` |
| 8 | `theorem` | [Target.statement_iff_nontrivialZeroFreeRightHalfPlane_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean/declarations/target-statement-iff-nontrivialzerofreerighthalfplane-half.md) | 99 | `result-track:8d413a24378585a13a28877e2ccf63b22cdd12e26ba8e79f9f96c2b0b63728d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67ceb4c93fc4c57c5bb34981bd5d1a5ce5cf669364cd55c7fcee31b9073bc707 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
