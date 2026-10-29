# Verification target: Basis Vector Space Namespaced Extend Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d42fd41be01506542dcbbf77f9b8aa977ff59f49",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variante6c0b36796b6cc46fcc0ee32ae33695383ec1bede8345a4d94498ff4b4b4be09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d42fd41be01506542dcbbf77f9b8aa977ff59f49`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variante6c0b36796b6cc46fcc0ee32ae33695383ec1bede8345a4d94498ff4b4b4be09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Variante6c0b36796b6cc46fcc0ee32ae33695383ec1bede8345a4d94498ff4b4b4be09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/extend.md) | 55 | `declaration-track:916efd915826fbba7b3d8c3506d3c16fb6132026232df66d7ba9e2f59c5d2dc7` |
| 2 | `theorem` | [extend_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/extend-apply-self.md) | 61 | `result-track:fbbb60cdbd31dcf51c822048d6f7a42cf7501ef99a7c53ad41149cdbaab7a8fb` |
| 3 | `theorem` | [coe_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/coe-extend.md) | 65 | `result-track:2b9d4c63d5efea15f5539e8dffce169d50acf42bcbefb5bf7d09cc2719fcfdbf` |
| 4 | `theorem` | [range_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/range-extend.md) | 68 | `result-track:f8d8d69e8d2e3a656a445184922b02414cacee37fff96c0a43afbe9435a46e0f` |
| 5 | `def` | [sumExtendIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/sumextendindex.md) | 75 | `declaration-track:a4099f7c62c585dad19607e38e1e8d55510bc6a81a71d58b2ae702a9fbfc3feb` |
| 6 | `def` | [sumExtend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/sumextend.md) | 79 | `declaration-track:954d5b4aaef5f48455f75b989dd8ea81cebda32c559b167d3869d633c014c6c4` |
| 7 | `theorem` | [subset_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/subset-extend.md) | 91 | `result-track:6f59968e3818b054efd48a6db59524ed4eeebda53fcfd0b383ffe749415e1574` |
| 8 | `def` | [extendLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/extendle.md) | 96 | `declaration-track:5db4b92e7319648b20861bffa1c5173b6043df02fdd802b646bd2a4ef0dd3072` |
| 9 | `theorem` | [extendLe_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/extendle-apply-self.md) | 102 | `result-track:3d94d99d8d6c04fcfd93fd76fa3839ca8570f38a2d38680d59dc5258121804e8` |
| 10 | `theorem` | [coe_extendLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/coe-extendle.md) | 107 | `result-track:1397513962857dd63f16736bd9077a35a10e92c8e636805b93da0ee2d1e7ac10` |
| 11 | `theorem` | [range_extendLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/range-extendle.md) | 111 | `result-track:a5e6684594b4f578335462677a9eacecc65132694545d5b0c493da3357850cb2` |
| 12 | `theorem` | [subset_extendLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/subset-extendle.md) | 115 | `result-track:ac02330f83c7c7dec1d8ea97b495bf54998067ab45340c6267aa6696c998b26b` |
| 13 | `theorem` | [extendLe_subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/extendle-subset.md) | 119 | `result-track:bc99b1cf8b6fa8f33b226158b10c6ad3a0b4e949b39eced991e8228bd4eb39dc` |
| 14 | `def` | [ofSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofspan.md) | 124 | `declaration-track:04530aa9fcae5dc04d5994e611d0b9a5121e374aeeb46370ab15dfe8d83f38b7` |
| 15 | `theorem` | [ofSpan_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofspan-apply-self.md) | 128 | `result-track:1eda7ee718758a30580b5935329628676093f513054141e03ab849204a127e67` |
| 16 | `theorem` | [coe_ofSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/coe-ofspan.md) | 134 | `result-track:050ae3664b3251141886c1a13b7c9a919395492534dbdb297b112c325e0ade1a` |
| 17 | `theorem` | [range_ofSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/range-ofspan.md) | 137 | `result-track:f81b17d79b086c0988e63af09cf6753249b820deeda2c48cd1436e52a1137503` |
| 18 | `theorem` | [ofSpan_subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofspan-subset.md) | 141 | `result-track:da75926bfd4dde41abfd0b52e34a49d7cafd89de87519dcdad64dbc7c24e2e9d` |
| 19 | `def` | [ofVectorSpaceIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofvectorspaceindex.md) | 149 | `declaration-track:279d5df78211b62052ab0b41c3fe323192192f074076e588de5406c932cb3b1e` |
| 20 | `def` | [ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofvectorspace.md) | 153 | `declaration-track:ca880577927b423e465f38bff315ed5280477489b8edb973d30900b048360570` |
| 21 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/instance.md) | 157 | `declaration-track:3cbff2a60b6802ee1af3093377a4534be8b265cd507c39e57da1388185c19ca0` |
| 22 | `theorem` | [ofVectorSpace_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofvectorspace-apply-self.md) | 160 | `result-track:18af7751403a307702989102fc73b85d4480c6109cd838c269806c488d223271` |
| 23 | `theorem` | [coe_ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/coe-ofvectorspace.md) | 165 | `result-track:52b5670fca5e9e9192b02333a3ecd9eee9dbade2167caa982e589f2cf47ee698` |
| 24 | `theorem` | [ofVectorSpaceIndex.linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/ofvectorspaceindex-linearindependent.md) | 168 | `result-track:369f0d0daa9a4b0537ce48b8966b57a196fc78e5034626f9858d55dc4160baf5` |
| 25 | `theorem` | [range_ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/range-ofvectorspace.md) | 174 | `result-track:6843f03c90c38f58ac48a3dce333707c96ef88aa10713595561dc9b219bb47ed` |
| 26 | `theorem` | [exists_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/exists-basis.md) | 177 | `result-track:36a415375be0a59bb41ffb4e7c0277e6a62f80e7180439fc17d8d9e102c0f5be` |
| 27 | `theorem` | [VectorSpace.card_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/vectorspace-card-fintype.md) | 190 | `result-track:d462816aaef4b89a9f467a00d82bbbc15ec6922ce64bd93be7b2f4b6b16e2491` |
| 28 | `theorem` | [nonzero_span_atom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/nonzero-span-atom.md) | 200 | `result-track:82ed4a1eec6194d20103dbe560c93554fb8c4349896896b3dcd95c7814559ecb` |
| 29 | `theorem` | [atom_iff_nonzero_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/atom-iff-nonzero-span.md) | 217 | `result-track:a2a72746d19ba141bd535038872312c054b9d96aeb6c69278c7568707068a845` |
| 30 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/instance-source-edition-2.md) | 231 | `declaration-track:588ba72d62cb6d53050edaca9518ae1d158bafc010d4850c45c9f5f25ce211ba` |
| 31 | `theorem` | [LinearMap.exists_leftInverse_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/linearmap-exists-leftinverse-of-injective.md) | 241 | `result-track:d42c8d052789849b2bd7322e72b9f952cb5733443c5d2eff60bf0b811044a9f1` |
| 32 | `theorem` | [Submodule.exists_isCompl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/submodule-exists-iscompl.md) | 263 | `result-track:cc80f136f1c2546aa0df0dbeac4cfa2fa2138aaeded9219f867a6db92724aadf` |
| 33 | `instance` | [Submodule.complementedLattice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/submodule-complementedlattice.md) | 267 | `declaration-track:08350b6047b760dc5f0321da13de8ba8cf328abd081171e0df7438020138b804` |
| 34 | `theorem` | [LinearMap.exists_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/linearmap-exists-extend.md) | 272 | `result-track:439b67c5b2e66f21c01775f3259f327eabf1471d0f88ea05145c26a013d2e89e` |
| 35 | `theorem` | [LinearMap.exists_extend_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/linearmap-exists-extend-of-notmem.md) | 277 | `result-track:e608230074e28381179687bc352a4635c4525206c73548b160e04f87ef6ac9b0` |
| 36 | `theorem` | [Submodule.exists_le_ker_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/submodule-exists-le-ker-of-notmem.md) | 292 | `result-track:55f89bd12e39560a64b6ec38a0977948e397631afbeebf9567a8dffa1b529556` |
| 37 | `theorem` | [Submodule.exists_le_ker_of_lt_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/submodule-exists-le-ker-of-lt-top.md) | 303 | `result-track:1a5819a11293013523436a6b6d297d2260b4a4e797a45e0e334324785bf8a1c5` |
| 38 | `theorem` | [quotient_prod_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpaceNamespacedExtendLe.lean/declarations/quotient-prod-linearequiv.md) | 309 | `result-track:b178b7141875fe1ccaf4abb845139715bc0872855fbdf56464b424b4642ed84c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=072893654663b15bb7b89ba9d54516618614a2a766d63b9cf0f4cbb3db7a1147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variante6c0b36796b6cc46fcc0ee32ae33695383ec1bede8345a4d94498ff4b4b4be09.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/VectorSpace/Variante6c0b36796b6cc46fcc0ee32ae33695383ec1bede8345a4d94498ff4b4b4be09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
