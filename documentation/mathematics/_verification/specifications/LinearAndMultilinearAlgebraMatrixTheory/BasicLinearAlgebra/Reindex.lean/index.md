# Verification target: Reindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f489b5db244f772d2ec4475619142d64db56a99f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reindex/Variant65ed4b0bb31cc8712e4bce96d82ab2573bb8ad35261a3d4cadedcd9548efbbfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f489b5db244f772d2ec4475619142d64db56a99f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reindex/Variant65ed4b0bb31cc8712e4bce96d82ab2573bb8ad35261a3d4cadedcd9548efbbfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reindex/Variant65ed4b0bb31cc8712e4bce96d82ab2573bb8ad35261a3d4cadedcd9548efbbfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv.md) | 40 | `declaration-track:2f8fc3ed07aedb0e4aee2758d8ec0a112f8e3ab870d5e1ca777e79a7dda38690` |
| 2 | `theorem` | [reindexLinearEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-apply.md) | 46 | `result-track:b118869164ead76f9637ed39db92b84d67f3c73d6c07214216dfcfce7cbb196f` |
| 3 | `theorem` | [reindexLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-symm.md) | 51 | `result-track:e78449faa587742a590e8a4dffd649d3e0f1e5d6c2202eed3c0cef43909dc246` |
| 4 | `theorem` | [reindexLinearEquiv_refl_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-refl-refl.md) | 56 | `result-track:2259d87f15c764ab409cf9442ab0173a695e9ff82afad25e5d6d63d7cce2383d` |
| 5 | `theorem` | [reindexLinearEquiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-trans.md) | 60 | `result-track:3c4e89aeb93a1ac16edf8cb613790ddaad880544c29250a657ac65f7e45af3e0` |
| 6 | `theorem` | [reindexLinearEquiv_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-comp.md) | 66 | `result-track:ef211391cb02e379e392969c63bfce1ab8692857c75e2c72deb6e8318e3e3ad0` |
| 7 | `theorem` | [reindexLinearEquiv_comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-comp-apply.md) | 72 | `result-track:237d691b7aa5e8a6d499125f56da2a8b496e50c3ca4d207ec04dbc952c8b6840` |
| 8 | `theorem` | [reindexLinearEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-one.md) | 78 | `result-track:33a12b0bcc8f3aa53840b6fda240a7af9a73a0d5b4912e783969c2a24df85a0f` |
| 9 | `theorem` | [reindexLinearEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexlinearequiv-mul.md) | 88 | `result-track:534ac136cc7bf95c52be7733602196867dac2c2f42904fcaf873b0ad9199e3b6` |
| 10 | `theorem` | [mul_reindexLinearEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/mul-reindexlinearequiv-one.md) | 94 | `result-track:f8a16c5a4ae036339442263c3ac8de5659ab796b228d29774a06f6f7748f9b8b` |
| 11 | `def` | [reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexalgequiv.md) | 111 | `declaration-track:9ef1ecaecfe034b800a245287e16c19fbf8896e07693ba2f5221cfd08f466f3d` |
| 12 | `theorem` | [reindexAlgEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexalgequiv-apply.md) | 118 | `result-track:ffcebbe6cf88078bd1a7a583e677520c2a9dc29ef5f91687c4ea7500b1651876` |
| 13 | `theorem` | [reindexAlgEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexalgequiv-symm.md) | 123 | `result-track:0ba4036bd9705ee2696777bc69958c9f8fd292adee5c5f8124d14e6bc55fd77d` |
| 14 | `theorem` | [reindexAlgEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexalgequiv-refl.md) | 128 | `result-track:0efb2de411595feed8ad4da4d8e31b49bb8c73385c0369dba775702de9758245` |
| 15 | `theorem` | [reindexAlgEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/reindexalgequiv-mul.md) | 131 | `result-track:e73e85fd70199346514d10fa1465dd3e00221139a85414189a10c763aedd0fd3` |
| 16 | `theorem` | [det_reindexLinearEquiv_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/det-reindexlinearequiv-self.md) | 141 | `result-track:788222ac8d97628c24f36e14ad97d66b60c2b442384b0a4bde587f26b046455e` |
| 17 | `theorem` | [det_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reindex.lean/declarations/det-reindexalgequiv.md) | 149 | `result-track:5d4812a20f074693fbadd9e27b15249ded2d07251f59d1463e2325ff06e0503f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4ee7abca6340171fc3eadeec2e966a8f280679ca37c9cf569146f0bfa259122 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Reindex/Variant65ed4b0bb31cc8712e4bce96d82ab2573bb8ad35261a3d4cadedcd9548efbbfe.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Reindex/Variant65ed4b0bb31cc8712e4bce96d82ab2573bb8ad35261a3d4cadedcd9548efbbfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
