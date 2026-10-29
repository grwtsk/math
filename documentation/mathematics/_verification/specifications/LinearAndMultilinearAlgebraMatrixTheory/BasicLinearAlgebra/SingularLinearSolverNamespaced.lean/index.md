# Verification target: Singular Linear Solver Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d9f46fb14602bd35e9d757fb79c0d8b9b1a9b37",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variant44d43c8930030e2c3934e3835e2c486b3c08f01567a2fa32ba6c860e52b7439f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d9f46fb14602bd35e9d757fb79c0d8b9b1a9b37`.

Source path: `GRWTSK/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variant44d43c8930030e2c3934e3835e2c486b3c08f01567a2fa32ba6c860e52b7439f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variant44d43c8930030e2c3934e3835e2c486b3c08f01567a2fa32ba6c860e52b7439f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRangeFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/linearrangefactorization.md) | 40 | `declaration-track:642b7f823470ab7df03434cf3db4175a4f34893b6b1ef95f188d902daa885d31` |
| 2 | `def` | [ofRangeLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/ofrangele.md) | 49 | `declaration-track:2fe1218a4ccff20b096eb0194011f366a5ca492bb8147914218dec824336bb9b` |
| 3 | `theorem` | [factor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/factor-apply.md) | 74 | `result-track:8c4412b5a49c624ea446ab7436700eee370c381e08b65fb266f0b5950c8109e5` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/singularprovenancefactorization.md) | 85 | `declaration-track:0949bc5a999db255da40ddb1ec5df68e5a1a0719800f72348db5dfd919ef5ded` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/singularprovenancefactorization-apply.md) | 101 | `result-track:b0da03d95f1228849ada7d5a7e1913e127ad93d1c5454c97f44eddf1270b147d` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/singularblockschursolver.md) | 117 | `declaration-track:50681ee5a59b91e5a2e71ede6735f05f112d01989944f4a03af1565747d8bc5f` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespaced.lean/declarations/singular-schur-nonnegative.md) | 152 | `result-track:eb7bc9ad8326424bb11f48cee7af17fba1a137cd80690262f29433ccc3d021d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce7d98927448ff04803227b89aa081e22ab536a8c1b0db3c2abafadb89f332a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variant44d43c8930030e2c3934e3835e2c486b3c08f01567a2fa32ba6c860e52b7439f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/E2d379298dcdc2e8a5018c406389e2806a3793f444914449bc81d0a7054e9fecSingularLinearSo/Variant44d43c8930030e2c3934e3835e2c486b3c08f01567a2fa32ba6c860e52b7439f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
