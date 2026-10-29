# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gaussian.Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46649f877b1eef18fe82c5b3efb465394c9db3d6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean/index.md) · [Full source](../../../../../../../Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46649f877b1eef18fe82c5b3efb465394c9db3d6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Hermite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_gaussian_eq_hermite_mul_gaussian](../../../../../../../Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean/declarations/deriv-gaussian-eq-hermite-mul-gaussian--1a45db80fec54af8b873c513.md) | 38 | `result-track:1a45db80fec54af8b873c513b4980f403c5726af3fd0dee2077184275f72973d` |
| 2 | `theorem` | [hermite_eq_deriv_gaussian](../../../../../../../Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean/declarations/hermite-eq-deriv-gaussian--90e0b31f64688aed6441027d.md) | 55 | `result-track:90e0b31f64688aed6441027db4af5b44461b9c4c435c170681bbb9b20e915c8c` |
| 3 | `theorem` | [hermite_eq_deriv_gaussian'](../../../../../../../Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean/declarations/hermite-eq-deriv-gaussian--deb7926ff9febe7674103e54.md) | 63 | `result-track:deb7926ff9febe7674103e546eb35ce1c413322d62d86d42fecd0c4d6eef8363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc5a70b81183a61c6dae52ec0fd350e6cb1765e37d22e61bc10cc7c64611baae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant43e1563a4cfbdc3be52f301c8809ce778bad386da68d297708d05b6a11ca985f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
