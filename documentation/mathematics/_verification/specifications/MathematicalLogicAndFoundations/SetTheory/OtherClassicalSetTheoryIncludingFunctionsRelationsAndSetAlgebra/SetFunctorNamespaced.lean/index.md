# Verification target: Set Functor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69292af043c1e5b683240b2e34431f28eced605b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantda7a458746b1803eaf7ff68f1cd5986f39431c1aeb17981bf639ecb3fbcc232d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69292af043c1e5b683240b2e34431f28eced605b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantda7a458746b1803eaf7ff68f1cd5986f39431c1aeb17981bf639ecb3fbcc232d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantda7a458746b1803eaf7ff68f1cd5986f39431c1aeb17981bf639ecb3fbcc232d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monad](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/monad.md) | 36 | `declaration-track:becdf205cbc2f9100411b061da5e450a65d65c55ce471f7d6252fce00f9133e6` |
| 2 | `theorem` | [bind_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/bind-def.md) | 43 | `result-track:dfa7288b576b07fb7dd5c1dcac2cc7d9e52db2c1ffb84afb329b4dab3b055d7f` |
| 3 | `theorem` | [fmap_eq_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/fmap-eq-image.md) | 48 | `result-track:d5a0605c31ea8c0150029c8cf6b9f7e07c88c2174bca86ca6af0bf922d42e0da` |
| 4 | `theorem` | [seq_eq_set_seq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/seq-eq-set-seq.md) | 53 | `result-track:f966bdc79233394556f599e67ea580c10e8d80ab4bee8b6f19e1fadca275766f` |
| 5 | `theorem` | [pure_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/pure-def.md) | 58 | `result-track:296f9db028101405c2b24489957ac4fce2e29869f47f279d9986da80d219d290` |
| 6 | `theorem` | [image2_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/image2-def.md) | 64 | `result-track:2be35f5a908782c2fa2496965a18d5ef04867cb7cb7a3b60b569b89eb5ef21bf` |
| 7 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/instance-source-edition-2.md) | 70 | `declaration-track:17e5698b8e90fddebeb97e43a63b78e971ae9f6853872edcadc0f0db8ff563e1` |
| 8 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/instance.md) | 77 | `declaration-track:17c2bafa808a2c1b3ff84f80df3885afb63a18ad60ab16a0f689d4254624f3e4` |
| 9 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/instance-source-edition-3.md) | 80 | `declaration-track:8e0aef3b3f22a3f5b9343ff2bbae24507574e4b723eb509a3cff587b674b0aa2` |
| 10 | `theorem` | [mem_coe_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/mem-coe-of-mem.md) | 89 | `result-track:129c09d7b14a43b21b5596a1d7017d3b993f0a17947f098a82d9ff7637eb614b` |
| 11 | `theorem` | [coe_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/coe-subset.md) | 92 | `result-track:418807cd7e2c50e96894b506318b9ea39a8cdfa057c2f0be1cab72793559320a` |
| 12 | `theorem` | [mem_of_mem_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/mem-of-mem-coe.md) | 95 | `result-track:41959c8b509a0cfd7a0c272d3d51a2879a518c70bab4a0ead281db060e324826` |
| 13 | `theorem` | [eq_univ_of_coe_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/eq-univ-of-coe-eq.md) | 98 | `result-track:90bc678abcfbd93b107c71c8df33cc50ee8dc3420e37d2a46ba1f1eb77b46211` |
| 14 | `theorem` | [image_coe_eq_restrict_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetFunctorNamespaced.lean/declarations/image-coe-eq-restrict-image.md) | 101 | `result-track:0d81964b1d4cccd6491f60d8b8809f552fae8dbe56f2d2aa14e47631ff927f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa615dc4a63a0c3f335073324ccf8fa7a2d1dbeb857a719dfe7b527832487079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantda7a458746b1803eaf7ff68f1cd5986f39431c1aeb17981bf639ecb3fbcc232d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantda7a458746b1803eaf7ff68f1cd5986f39431c1aeb17981bf639ecb3fbcc232d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
