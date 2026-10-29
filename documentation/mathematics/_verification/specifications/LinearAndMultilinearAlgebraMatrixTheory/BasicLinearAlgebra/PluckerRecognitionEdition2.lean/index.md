# Verification target: Plucker Recognition Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38f0ebf21752508dff76dc25c11035565672a711",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38f0ebf21752508dff76dc25c11035565672a711`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotExistence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [columnSubmatrix_update_selection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/columnsubmatrix-update-selection.md) | 27 | `result-track:8caa529c51f019cca9093d1627afe15aa30350479708f9e1fc3dc591c55ad78f` |
| 2 | `theorem` | [det_updateCol_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/det-updatecol-identity.md) | 39 | `result-track:3dc6ac2e14fae9882161133f4adf27cde8ef0a83809e23b85524ba7f6a45dd3c` |
| 3 | `theorem` | [normalized_entry_eq_columnMinor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/normalized-entry-eq-columnminor.md) | 50 | `result-track:34bcc5238fe2f341324423189a382cc5c4beba9a10d3a0fcd21fc35ffa44853f` |
| 4 | `theorem` | [pivotNormalize_entry_eq_ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/pivotnormalize-entry-eq-ratio.md) | 58 | `result-track:8fc720f0861201302290e792cc75f0187a9e93df9dbb9667bbb777e75517f7e5` |
| 5 | `theorem` | [columnMinor_proportional_of_ordered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/columnminor-proportional-of-ordered.md) | 66 | `result-track:6e9db3fd976cb0bd979ef3488c81423f0dcaeaf95e3147fe75562eb0aee1ab96` |
| 6 | `theorem` | [pivotNormalize_eq_of_columnMinor_proportional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/pivotnormalize-eq-of-columnminor-proportional.md) | 81 | `result-track:c5ab727b4540013c6daf3d67e29e36df46ce2d7231d8b85b76598a696a23a20c` |
| 7 | `theorem` | [exists_rowChange_of_frameRowSpace_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/exists-rowchange-of-framerowspace-eq.md) | 94 | `result-track:3eefa4262f2b4aaa2840187d8c86769b85d98447a46a3a7d9112e97c17b137a2` |
| 8 | `theorem` | [frameRowSpace_eq_iff_rowChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/framerowspace-eq-iff-rowchange.md) | 116 | `result-track:3c163a81fde8b2c63b8fd2be7149622b39b69f711c0dab04d563a8dbfef2d155` |
| 9 | `theorem` | [columnMinor_proportional_of_frameRowSpace_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/columnminor-proportional-of-framerowspace-eq.md) | 126 | `result-track:b970f2ac930fa9d69eb1e28580cf8673ca424761148c8e142958e52fbfd7b521` |
| 10 | `theorem` | [frameRowSpace_eq_of_columnMinor_proportional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/framerowspace-eq-of-columnminor-proportional.md) | 137 | `result-track:f2d20e0ea09537e5f030c329741a4bee73faf16b4c8cc32c32c09b9cee6e0df3` |
| 11 | `theorem` | [frameRowSpace_eq_iff_orderedMinor_proportional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/framerowspace-eq-iff-orderedminor-proportional.md) | 150 | `result-track:a32ef7c540b80d241c81816743390897d183fded9b0281d58b2f128acd412c2a` |
| 12 | `theorem` | [orderedMinor_factor_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/orderedminor-factor-unique.md) | 164 | `result-track:3b29b61e29ef50f62452a3bab02144ecf7cd0b3ff8d357215d12023149a4e60c` |
| 13 | `theorem` | [orderedMinor_factor_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/orderedminor-factor-pos.md) | 172 | `result-track:e125af58d44f694fd061d4f053c7e0835c687f21ba61be73c252c4a85f882558` |
| 14 | `theorem` | [frameRowSpace_eq_iff_positive_orderedMinor_proportional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/framerowspace-eq-iff-positive-orderedminor-proportional.md) | 185 | `result-track:e054dd2d94e05a28750f2019a415219b13865b482c6ad2789ef0fd2925da5a43` |
| 15 | `theorem` | [exists_positive_rowChange_of_frameRowSpace_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PluckerRecognitionEdition2.lean/declarations/exists-positive-rowchange-of-framerowspace-eq.md) | 201 | `result-track:77d87ea474ad8fa7fe2fdec56cc2d37bd75a5109ef7c25afe98aa831c4a6b2a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9ec211480938f49b676e8f9c088a159ed0307ffd189d445baa33ebfc94bc1f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
