# Verification target: Results Alternative16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f1b87994a5e3496b38643c0e6535feba865dd9f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant861555df9e85e03729510f20eb47275b9419f411f0298a0d1071ddfe50eb3160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f1b87994a5e3496b38643c0e6535feba865dd9f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant861555df9e85e03729510f20eb47275b9419f411f0298a0d1071ddfe50eb3160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant861555df9e85e03729510f20eb47275b9419f411f0298a0d1071ddfe50eb3160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/declarations/thetaphijetpolynomial.md) | 17 | `declaration-track:bb3ca7875654aa1fd2163211d8774cbea194a1dd16c93c5ba2176f4cadd4cfd4` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/declarations/thetaphijetpolynomial-abs-le.md) | 26 | `result-track:7883655309bdc0610e344113c6c905df4268f0dd1e18216d3611e9e508f7288b` |
| 3 | `def` | [thetaPhiJetDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/declarations/thetaphijetdet.md) | 43 | `declaration-track:a9f323f3f2bbe5b1bc4a761717e6917f1ff0bcf0831fd42e9b53f75859217bb7` |
| 4 | `theorem` | [thetaPhiJetDet_eq_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/declarations/thetaphijetdet-eq-matrix.md) | 48 | `result-track:d3f8e1fbb45d239f394af6bc18d03cdabcae3cc30c2a7c524642026e7c8151ff` |
| 5 | `theorem` | [thetaPhiJetDet_two_modes_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative16.lean/declarations/thetaphijetdet-two-modes-le.md) | 56 | `result-track:2244a09f1526dfb4fa8f23a864e6386cb662fa9ef74baff72b4b9cc6ff50e48a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8977cce4185d2b97a56df02316fd63cf426acfec1622f63a8b6cea2b38ed4c5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant861555df9e85e03729510f20eb47275b9419f411f0298a0d1071ddfe50eb3160.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant861555df9e85e03729510f20eb47275b9419f411f0298a0d1071ddfe50eb3160.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
