# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Positive.ComplexSymmetryAndPositivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0da3dd7304b071d891dcf1f4b7daad931e4d4ab1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0da3dd7304b071d891dcf1f4b7daad931e4d4ab1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroExclusions.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.ComplexAnalysis.ReflectionCounterexamples`](../../../../../../FunctionsOfAComplexVariable/ReflectionCounterexamples.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.HermitianCounterexamples`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianCounterexamples.lean/index.md) — import line 4; pinned internal source present.
- `Lean` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_trivial_zero_is_excluded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/declarations/use-trivial-zero-is-excluded.md) | 8 | `result-track:2e837c201ed931fe4a9ee0004c02b7806c31a533194e26ee1bf4ab7464d5fd73` |
| 2 | `theorem` | [use_pole_is_excluded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/declarations/use-pole-is-excluded.md) | 9 | `result-track:1ad9aa6311c84cc440743e51aa4225d82d11f4c3504c40c5bcfb21b54328e1f0` |
| 3 | `theorem` | [use_critical_reflection_is_not_gaussian_rotation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/declarations/use-critical-reflection-is-not-gaussian-rotation.md) | 10 | `result-track:ccfea4c55a63e87a00183ead88d68ec01f143924044190a8069b7ac9153a8983` |
| 4 | `theorem` | [use_hermitian_does_not_imply_positive_semidefinite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/declarations/use-hermitian-does-not-imply-positive-semidefinite.md) | 11 | `result-track:2eb4b1fb654c72c694828f75fd56b0f8addabb5157213b9b6904aa20cef25110` |
| 5 | `elab` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComplexSymmetryAndPositivity.lean/declarations/elab.md) | 13 | `declaration-track:529f6a721a8b93493e50cb8e4353084deb9355816d76be223f106d2dec22349c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd58f80ef6b6d16701d03e37a4ea064e9a33faf5e2266ccdb2cc588e31a1816e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence38b09278d0b4d454f458fb7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
