# Verification target: Pivot Orthonormal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aa359efd7482d0e7ae977cbe4c36853121b58ce",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aa359efd7482d0e7ae977cbe4c36853121b58ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_orthonormal_frame_of_intrinsicPlane](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/declarations/exists-orthonormal-frame-of-intrinsicplane.md) | 31 | `result-track:53548c3a57256e7be5251c545852573d378d3a6afb6037cece12313c5943b875` |
| 2 | `theorem` | [exists_orthogonal_rowChange_of_orthonormal_frames](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/declarations/exists-orthogonal-rowchange-of-orthonormal-frames.md) | 68 | `result-track:b12f80f60a0756361641603cc10769673faef29724d2e6013f24e96fb205da1c` |
| 3 | `theorem` | [intrinsicPlane_controlled_orthonormal_pivot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/declarations/intrinsicplane-controlled-orthonormal-pivot.md) | 86 | `result-track:8fa704dc849f408c01973bda0c0231d1398c604fcd752e41307d80e64e2c8b2c` |
| 4 | `theorem` | [controlledPivotDomain_orthonormal_representative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotOrthonormal.lean/declarations/controlledpivotdomain-orthonormal-representative-iff.md) | 95 | `result-track:d08d9e93d2711d5ca0561b18a5a0e71fac464faa490c13a93091c8780af96349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f79651f3bdd7ac440c6425861f7189134829aa0647b5cb2a5234952282308bdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PivotOrthonormal/Variant41dc682e95b86d75291338390a7dab9f098be596fe45b913ced6cb16f60caa5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
