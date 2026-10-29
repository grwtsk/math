# Verification target: Jet Polynomials04 Jet Polynomials

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f969c54f668e861e45bc0a6eccc011ce4357362",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f969c54f668e861e45bc0a6eccc011ce4357362`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879.lean.json)

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
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/declarations/thetaphijetpolynomial.md) | 17 | `declaration-track:b9daaec963448d346c72448a8d3f42b9a07df41cf52c8455fb9f1a981e739154` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/declarations/thetaphijetpolynomial-abs-le.md) | 26 | `result-track:eb93e454eaa7a932435ae995163a956634d8701b62255cbaa6d6997366f59e31` |
| 3 | `def` | [thetaPhiJetDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/declarations/thetaphijetdet.md) | 41 | `declaration-track:55d279da55b948f2e920002c3daf0bd390a8402f6dcdb0c4f91a97de73781dbe` |
| 4 | `theorem` | [thetaPhiJetDet_eq_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/declarations/thetaphijetdet-eq-matrix.md) | 46 | `result-track:2c043b3fddbf24679e3ab3e05466494fed298334d98986056e2c9553749fab7f` |
| 5 | `theorem` | [thetaPhiJetDet_two_modes_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JetPolynomials04JetPolynomials.lean/declarations/thetaphijetdet-two-modes-le.md) | 55 | `result-track:5413c2bc933b3cdb33a020195b2300c6c30b4acd7ade93d260f4014f8d306007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f6202ed54b8e1b8ab131542160e5c345662d8816c38734620c59beafd849e36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variant5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
