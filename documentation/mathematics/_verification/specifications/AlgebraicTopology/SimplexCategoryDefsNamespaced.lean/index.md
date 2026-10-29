# Verification target: Simplex Category Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27aad2652bd564514c7ce21eb6a6e6d1dfba1966",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variante9a3d525b7351a78f9301550a59d9c3380368c156c9f8c617beb4e81bd0072a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27aad2652bd564514c7ce21eb6a6e6d1dfba1966`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variante9a3d525b7351a78f9301550a59d9c3380368c156c9f8c617beb4e81bd0072a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variante9a3d525b7351a78f9301550a59d9c3380368c156c9f8c617beb4e81bd0072a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplexCategory](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/simplexcategory.md) | 55 | `declaration-track:397efe5fbc842f9f34c367f8145c007f751f4f815adcda31e322cf2e6bc231cc` |
| 2 | `def` | [mk](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/mk.md) | 62 | `declaration-track:1e7a9652c6d52f08a6636ea90af1d77cbc936ee9a25789dd182727b544fe34fa` |
| 3 | `def` | [len](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/len.md) | 70 | `declaration-track:0e9e323f93ab05a6e6b9c83578ee2f69724fda8bd9393470accedcbdd03a280c` |
| 4 | `theorem` | [ext](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/ext.md) | 74 | `result-track:6195cab3378b169da0ca4cc6110878051f351572fd73671d5b1f23d2c16eb84d` |
| 5 | `theorem` | [len_mk](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/len-mk.md) | 82 | `result-track:a629cf6d3d78996b602e6ee333b840011d43b4acb09240e937076e543f441cbd` |
| 6 | `theorem` | [mk_len](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/mk-len.md) | 86 | `result-track:d49edc7051ef3d6516edf31dfa5b05bb89ba62e62decdc0789ca10664af03a8f` |
| 7 | `def` | [rec](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/rec.md) | 90 | `declaration-track:d13de81b2d6f4aa219f218f5da7e377b56ba0cc495938723ca1b494bc56005e3` |
| 8 | `def` | [Hom](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/hom.md) | 94 | `declaration-track:3592efa76bb76b9975d5de6ce73ac129cfed81441b0788cc0bfab9b654251107` |
| 9 | `def` | [mk](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/mk-source-edition-2.md) | 100 | `declaration-track:b28858196f0f1814595a295c8c4dcc7115f05203542afaa418206f600d36f965` |
| 10 | `def` | [toOrderHom](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/toorderhom.md) | 104 | `declaration-track:dd145e836e286ea8d4e37b0e6d6e37d124c7ca33f168fc9c4fe916efd8509c07` |
| 11 | `theorem` | [ext'](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/ext-source-edition-2.md) | 108 | `result-track:c69eb11b039df7817767124acf7f9e0eb8fece7a1b8bb5fa6dd9ce7f1f3218df` |
| 12 | `theorem` | [mk_toOrderHom](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/mk-toorderhom.md) | 115 | `result-track:e7b14dfa7ff19c448c56e5baa6f059396c072db36842a43d01620399f023c13a` |
| 13 | `theorem` | [toOrderHom_mk](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/toorderhom-mk.md) | 119 | `result-track:ca0bfb30e2074e71f2f6843b905d6952d6e8541649e0ebb3e0ad0759f56442c8` |
| 14 | `theorem` | [mk_toOrderHom_apply](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/mk-toorderhom-apply.md) | 123 | `result-track:a1d5fb9865ce333ae8214848d23d06061dc1f41522497240517e9e876f6351eb` |
| 15 | `def` | [id](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/id.md) | 129 | `declaration-track:5d73cb83ee4af4fd411103ec5eb500cfa8c8a31b2fd7dae694467dfb3acc6014` |
| 16 | `def` | [comp](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/comp.md) | 134 | `declaration-track:d4482bd36119550a7fc585c424a2cad18d4554798d5a8996e6b1843ea84ab87e` |
| 17 | `instance` | [smallCategory](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/smallcategory.md) | 140 | `declaration-track:a4a6cec0766f2190d8088925ac12595c06cb1663e9deb61953604ac7996f5c68` |
| 18 | `lemma` | [id_toOrderHom](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/id-toorderhom.md) | 146 | `result-track:42016b024c326cf41152e0c6d01804c5e54223aa20b39fb06ba4406d84213f86` |
| 19 | `lemma` | [comp_toOrderHom](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/comp-toorderhom.md) | 150 | `result-track:416a25e52db317ace45265000331023c5db0861bf238957790ed6edc6604022e` |
| 20 | `theorem` | [Hom.ext](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 154 | `result-track:ab79c626752605768a8facf10452706aaaa5eef81f152c84265d2a072b51366b` |
| 21 | `def` | [Truncated](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/truncated.md) | 159 | `declaration-track:2d3e11a4f51ae9d9f72048e2ad2016a8ac87a15e71a6005e2970c01071a443fc` |
| 22 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/instance.md) | 162 | `declaration-track:51cf12b35a868c94d8c913d601d888555c4e8f70d2fce6ff35a5d8816fc7cc1a` |
| 23 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 167 | `declaration-track:677facb2e122dbf2b2afdc2bd42e632e941552bddd28f0c74b4ac62dd8ad473b` |
| 24 | `def` | [inclusion](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/inclusion.md) | 173 | `declaration-track:88a2520c39f3ed55833f2b3fe5792822d8ffbfed840b5a4697669ded277caf34` |
| 25 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:a3acff7e7f616444802d38840b4cce44a461267cbcb2844d4ce3051699c2eb52` |
| 26 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:87c1e1cd447d3a68a049c78ee17f9afbfe25edd9db4d09ebd2e6878fd518dc35` |
| 27 | `def` | [inclusion.fullyFaithful](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/inclusion-fullyfaithful.md) | 180 | `declaration-track:051112a956b6f73175722df868158b00e6397ebb0f284d4fa9a15cb0bc6cdcc7` |
| 28 | `theorem` | [Hom.ext](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/hom-ext.md) | 185 | `result-track:1530e974792c7b07667d93f4cc435ccef70713fdc2240c1af75d77943dfcb5fa` |
| 29 | `macro` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/macro.md) | 189 | `declaration-track:135301f7027074344999bca091172371390ca987c841d7bd00a0f96b570d6151` |
| 30 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/macro-rules.md) | 197 | `declaration-track:0cae7585e46e164c9f1279038cd7f56dbaa28c39c65ddc8b86f33087dd321146` |
| 31 | `abbrev` | [Hom.tr](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/hom-tr.md) | 207 | `declaration-track:39a87227650d25a5244cca2eb7bf8743713a65bc79556bc0cb8a5fbd4cab5e11` |
| 32 | `lemma` | [Hom.tr_comp](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/hom-tr-comp.md) | 212 | `result-track:9a9ed60398733e51c83b88e9844ea7e5751c4f5643efeda38ea2649c986293e3` |
| 33 | `def` | [incl](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/incl.md) | 219 | `declaration-track:d221388564c41aa408b4abd3e3bff022e2e2f3c312a148b4aa7ed78a896b0c50` |
| 34 | `def` | [inclCompInclusion](../../../../AlgebraicTopology/SimplexCategoryDefsNamespaced.lean/declarations/inclcompinclusion.md) | 224 | `declaration-track:53c5ad5ed2e39c49842ca81462681f38d29f6bf18262ebc0a9f9b9eae6c6bcb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=303fd5d64c3632e5067f1e43d1584f73a6d1fa7f9f5b7155e093e1b29b75d572 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variante9a3d525b7351a78f9301550a59d9c3380368c156c9f8c617beb4e81bd0072a7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variante9a3d525b7351a78f9301550a59d9c3380368c156c9f8c617beb4e81bd0072a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
