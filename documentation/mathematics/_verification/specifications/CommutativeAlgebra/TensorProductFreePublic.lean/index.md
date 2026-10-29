# Verification target: Tensor Product Free Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38af5220b4f410849cc33b16b6d628be17df1474",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38af5220b4f410849cc33b16b6d628be17df1474`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisAux](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basisaux.md) | 50 | `declaration-track:c876f8b8774277bbd17f73562695c8e9246a9318b69c69c47683bdfe9e5a0409` |
| 2 | `theorem` | [basisAux_tmul](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basisaux-tmul.md) | 55 | `result-track:38be6f512c9128180033312805b9f6a8d71b515654bfeefc5955c00044afc529` |
| 3 | `theorem` | [basisAux_map_smul](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basisaux-map-smul.md) | 60 | `result-track:f9f9f4f24b38c1094e4673188acd3d467b976cdc8fef73f750d5aa05587b4fc3` |
| 4 | `def` | [basis](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basis.md) | 67 | `declaration-track:ec3bac8f8b65e65f6aa91e43cc9471c4caa1f9c2407332a7ebced5e3998c2d59` |
| 5 | `theorem` | [basis_repr_tmul](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basis-repr-tmul.md) | 71 | `result-track:5d63c40b45ec3c15e6b0b5549d26455ae1ef7185f5d69ff28bec29c67e486a55` |
| 6 | `theorem` | [basis_repr_symm_apply](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basis-repr-symm-apply.md) | 75 | `result-track:4b17056112d04efecc7f62eed055af8c2cdc43c1aad74be05fdab7e1075cd848` |
| 7 | `theorem` | [basis_apply](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basis-apply.md) | 80 | `result-track:f40bfd3a6d8bbd5ada0a0f8cccb58403e371a09ff777a5988724f704f9d85b9b` |
| 8 | `theorem` | [basis_repr_symm_apply'](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/basis-repr-symm-apply-source-edition-2.md) | 82 | `result-track:92d68a3cea299bffe0e162ca2b3c363173055249c1ee6daaf98b391bff5485dc` |
| 9 | `lemma` | [_root_.Module.Basis.baseChange_linearMap](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/root-module-basis-basechange-linearmap.md) | 93 | `result-track:cf9dbb571a9245e6461052509eb6b1e92666f4f66c0fc8bc44643ebbad1952fd` |
| 10 | `lemma` | [_root_.Module.Basis.baseChange_end](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/root-module-basis-basechange-end.md) | 103 | `result-track:68c78eb7a0187b1073532f960c55bdd6096ce4f400bf1df3c5f387cfffd7dd92` |
| 11 | `instance` | [instFree](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/instfree.md) | 111 | `declaration-track:23c2d9ca3c2864029b397f5eb048395e22fa7c65fd3e5b2e8aa998f71bc42dd5` |
| 12 | `lemma` | [toMatrix_baseChange](../../../../CommutativeAlgebra/TensorProductFreePublic.lean/declarations/tomatrix-basechange.md) | 131 | `result-track:4a534403588d452798ab31473136121f1e87cd1c4145c88687463531add2228f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9c0b9ab817d3ff92307a86a690afc5ec4b8b374bd77c2f5ed4b9bb3331fd80d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Free/Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
