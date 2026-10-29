# Verification target: Singular Linear Solver Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb7bac9af44cb97ea78ceb62498d1e6fc03ed04",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb7bac9af44cb97ea78ceb62498d1e6fc03ed04`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean.json)

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
| 1 | `structure` | [LinearRangeFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/linearrangefactorization.md) | 40 | `declaration-track:29a6ca91e8b639a7236fd1baa4838e276689a222b21b30984382dc53473f3703` |
| 2 | `def` | [ofRangeLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/ofrangele.md) | 50 | `declaration-track:82d260e8630e3d17da1ea98eae9d2728fd6fc527fd3a8965214fb71e588b894d` |
| 3 | `theorem` | [factor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/factor-apply.md) | 75 | `result-track:a06df53bc617e4b7174cb58fb6e510d8e11c912fa84eab29e8db12fff54134ba` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/singularprovenancefactorization.md) | 86 | `declaration-track:fd66fc2be6bd26df48bd6c0ad5ae37ec191a5ab45ac5ae99b39ee7aa1a0381f8` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/singularprovenancefactorization-apply.md) | 102 | `result-track:268c14092e0d8ca2b03356f086d2f6a282d60cc37427826f7535a88183803c88` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/singularblockschursolver.md) | 118 | `declaration-track:b18c8ca73a6d7f606bc82a4deac583f894abf189c2d25b054b77d0d3462409a6` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition2.lean/declarations/singular-schur-nonnegative.md) | 153 | `result-track:27cb788d463301beb1cca780bd4f065f9451a6e9c6caa4e70920293d015df25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c36c766bf0748efae2219e6ad2ff4c857f5a53345ac74178007965e20d7af5dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
