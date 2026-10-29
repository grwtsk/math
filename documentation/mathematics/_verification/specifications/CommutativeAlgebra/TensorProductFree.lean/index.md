# Verification target: Tensor Product Free

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f66ff92fb87e5e6f05db1edfcb76423ee6d82f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TensorProductFree.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TensorProductFree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f66ff92fb87e5e6f05db1edfcb76423ee6d82f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisAux](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basisaux.md) | 48 | `declaration-track:78af8adf3d732edc9950b19e09ce18169029d8e026d6449965cc509e317d49df` |
| 2 | `theorem` | [basisAux_tmul](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basisaux-tmul.md) | 53 | `result-track:02b35058393e1b158c945e036c0f7fbccd83d1340750d56da3f6c121b29134cc` |
| 3 | `theorem` | [basisAux_map_smul](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basisaux-map-smul.md) | 58 | `result-track:a764dfc2f12c1af27dcb6bb233f32f326d355839bb70985aab4f241182937fd8` |
| 4 | `def` | [basis](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basis.md) | 65 | `declaration-track:83bd993ecbf7a1bd601708df830267bdcb97aeff7434926f808fbd680270d348` |
| 5 | `theorem` | [basis_repr_tmul](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basis-repr-tmul.md) | 69 | `result-track:6f4560d5c91fda9467cef715a4ed7fa59af7455ad65f4e3adf3759f7d45971eb` |
| 6 | `theorem` | [basis_repr_symm_apply](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basis-repr-symm-apply.md) | 73 | `result-track:25aa8578d0820c021769ef9fa575db4afb5c9dd7bdcd8e87ecaf5b54da6b62cf` |
| 7 | `theorem` | [basis_apply](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basis-apply.md) | 79 | `result-track:0ec54a56f3382303cdb15d3dbc56a4755bbe5c538608e121815d48419149598e` |
| 8 | `theorem` | [basis_repr_symm_apply'](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/basis-repr-symm-apply-source-edition-2.md) | 81 | `result-track:f572ad27f1ffe3d3c74641797ab76d19a8803431611374b9aa01cdf5f6ca545c` |
| 9 | `lemma` | [_root_.Basis.baseChange_linearMap](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/root-basis-basechange-linearmap.md) | 92 | `result-track:7bd7bf906db6e4415b355036f39bd95ac73426cb0af2955d13e6cbafedac5e36` |
| 10 | `lemma` | [_root_.Basis.baseChange_end](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/root-basis-basechange-end.md) | 102 | `result-track:7dc075ea1432c991b351851f4e33b31d14be7d15c49ba04f01f65dadae4a2be7` |
| 11 | `instance` | [instFree](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/instfree.md) | 110 | `declaration-track:82e5803077cc2307722bf510c97e1f69141b40db368e4669e8a600ed7e69a7ba` |
| 12 | `lemma` | [toMatrix_baseChange](../../../../CommutativeAlgebra/TensorProductFree.lean/declarations/tomatrix-basechange.md) | 130 | `result-track:78b9184487cf8b1540e0be4bd83fb4c725b0973ae204e4908b9388b40bffd507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a1982d73adf435e4cc0f94067c899680efdb3344286e3c6a0068b7db61b8a54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Free/Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
