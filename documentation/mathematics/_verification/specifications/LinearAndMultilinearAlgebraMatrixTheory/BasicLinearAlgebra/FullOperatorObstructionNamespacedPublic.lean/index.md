# Verification target: Full Operator Obstruction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5355a216d528948bb860349f8727fa445ea69a9c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5355a216d528948bb860349f8727fa445ea69a9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitPhaseGram_norm_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/unitphasegram-norm-invariant.md) | 44 | `result-track:ef026a0f6ae598600f95fe31f31edd6cba587967cac3b1da0d6fea53d845174e` |
| 2 | `def` | [allOnesRectangularMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/allonesrectangularmatrix.md) | 54 | `declaration-track:5e1005024c29928d8afde8542e70a54028638128d7260314e722e75d75e3cfae` |
| 3 | `def` | [allOnesRectangularOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/allonesrectangularoperator.md) | 60 | `declaration-track:8016512968be1a559cda7e4ab712ff6b634ca01e4e05e48c056c6afecaa6e097` |
| 4 | `def` | [constantOneVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/constantonevector.md) | 68 | `declaration-track:11c58ed8a271d4e2f401726731d0088ca74bae8ff75fedbeb38ca3e671309a83` |
| 5 | `theorem` | [allOnesRectangularOperator_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/allonesrectangularoperator-constant.md) | 76 | `result-track:e4e957a0f1c944dccf05f05843949d24f47b1a744c064471da9e9445422e3028` |
| 6 | `theorem` | [constantOneVector_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/constantonevector-norm-sq.md) | 88 | `result-track:56e2938abea340dbeb258746da72d2f2c6c7243b9abc7a9982b0db31d0adf3e3` |
| 7 | `theorem` | [allOnesRectangularOperator_card_mul_le_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FullOperatorObstructionNamespacedPublic.lean/declarations/allonesrectangularoperator-card-mul-le-norm-sq.md) | 101 | `result-track:b673e26c49f7771b95a416e69bad6a33a6c10d1f0c9e002b2e3c646e05132416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a9531368868031a87b740c4e5ff6e4eb6d8e30dcc314dd9dea945fcb550b4a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
