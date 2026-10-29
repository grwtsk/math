# Verification target: Tensor Product Free Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "247aa29a6abf08130084e306273eba524a4261b9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `247aa29a6abf08130084e306273eba524a4261b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisAux](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basisaux.md) | 56 | `declaration-track:4e275333055ff3cd7790e3eb88eab8eda8cd0d5163c22e531a0954ed60a421e5` |
| 2 | `theorem` | [basisAux_tmul](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basisaux-tmul.md) | 61 | `result-track:bc26b7852825a642bf11606f5eff7bf5d55159033368b71a99fcf6f1338f16ba` |
| 3 | `theorem` | [basisAux_map_smul](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basisaux-map-smul.md) | 66 | `result-track:a649465720b7c8c0c9b9628000c0fa9e50f31b8c9343c8218dc74704d697dc17` |
| 4 | `def` | [basis](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basis.md) | 73 | `declaration-track:820d9993e906ed40abb91bf60ee0804ac2907f0b6eaaab1edce57a78933c4b91` |
| 5 | `theorem` | [basis_repr_tmul](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basis-repr-tmul.md) | 77 | `result-track:bc1a393515b9f56894af5d0cbbf1855ff69eef3dba9ee6b086a07df7dfa7829e` |
| 6 | `theorem` | [basis_repr_symm_apply](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basis-repr-symm-apply-source-edition-2.md) | 81 | `result-track:b8029ad93f30f9328c471139d8f55e48a6fc16872774395b64fca69eb52a958d` |
| 7 | `theorem` | [basis_apply](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basis-apply.md) | 87 | `result-track:e585ab80a6660189a16a22bbb82c3368fe372722909146d8100129d6ffdf9932` |
| 8 | `theorem` | [basis_repr_symm_apply'](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basis-repr-symm-apply.md) | 89 | `result-track:834523f390803b4f173a4eb3b10c3e1383e2c50bcaa6fe4ee59d6b2c64a11272` |
| 9 | `lemma` | [Tensor Product Free Namespaced](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basechange-linearmap.md) | 100 | `result-track:44fdb123d6844b88d14f93664073900d2430bda619540ae94c25792bd4326092` |
| 10 | `lemma` | [Tensor Product Free Namespaced](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/basechange-end.md) | 110 | `result-track:de161ce937ed5d2753544286a8ad7bb150f46fd6d2c8731c31f819404308e2e0` |
| 11 | `instance` | [instFree](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/instfree.md) | 118 | `declaration-track:4a18c17125a46e8d2cfa60e43bba038b939fb5710cd7f3da6b54883963e464c0` |
| 12 | `lemma` | [toMatrix_baseChange](../../../../CommutativeAlgebra/TensorProductFreeNamespaced.lean/declarations/tomatrix-basechange.md) | 138 | `result-track:f842a45cc3d33006cd9e30c0fb916eb298949bcd635b0585d03dd37de49ab5dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fc19cb64143977c3ddf008255d3bd2178f781b9ce399254d1f9e10778e32c3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
