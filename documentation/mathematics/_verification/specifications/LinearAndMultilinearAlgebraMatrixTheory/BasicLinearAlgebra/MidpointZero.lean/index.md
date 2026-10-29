# Verification target: Midpoint Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa0dbba2e9b8fb473211429f5796daaa3971a30a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa0dbba2e9b8fb473211429f5796daaa3971a30a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MidpointZero/Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_inv_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/linemap-inv-two.md) | 22 | `result-track:d650cbd34540020d26b1e0e7fb406e6d4bc8424f93089c6b710dcab33ad593a5` |
| 2 | `theorem` | [lineMap_one_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/linemap-one-half.md) | 26 | `result-track:37be6e40fa9ccddd75e6fa5ee69f17861b8232df3e861ed211a180aa904bdd13` |
| 3 | `theorem` | [homothety_invOf_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/homothety-invof-two.md) | 30 | `result-track:25bb554041367cf89ddfb11412f193b176bd806ca5c69c52ea6f7ed84c066ad6` |
| 4 | `theorem` | [homothety_inv_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/homothety-inv-two.md) | 35 | `result-track:6a8d57053b1ada2662242f337f61adb032f5363b000a687346f72b7b6fb0be5e` |
| 5 | `theorem` | [homothety_one_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/homothety-one-half.md) | 39 | `result-track:d2b47f2b5fdba078f4530d2ea0e2ef8957f04c844f9d0a0a9a36f5513b38ec1a` |
| 6 | `theorem` | [pi_midpoint_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MidpointZero.lean/declarations/pi-midpoint-apply.md) | 44 | `result-track:43b5e11a0c4a88ba426d3f86c9dcc4595ae4c74948c0b347a7363c14ea8ac367` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fdfacd3ffb0567c8c2c63c43a3d0839c7601f6c6caf92ec0037ec8c334417a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MidpointZero/Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
