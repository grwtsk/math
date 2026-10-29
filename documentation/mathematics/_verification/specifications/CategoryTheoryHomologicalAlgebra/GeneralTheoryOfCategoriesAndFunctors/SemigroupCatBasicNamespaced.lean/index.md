# Verification target: Semigroup Cat Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6822f754e024e85f9348656e06888f4173af81c1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6822f754e024e85f9348656e06888f4173af81c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.PEmptyInstances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MagmaCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/magmacat.md) | 48 | `declaration-track:f1087e5e47b1a3325f6ca9c79e7f9453e0b5ebd0f775e7b33fdde215db4a0478` |
| 2 | `instance` | [bundledHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/bundledhom.md) | 59 | `declaration-track:956cb25a0fc3393e25c5dd97a2862dbb97e246cd6d1a752a17d7b9c1aa2b6d48` |
| 3 | `instance` | [instConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instconcretecategory-source-edition-2.md) | 70 | `declaration-track:9a4d589629eaefc3865ae449cc68177fe5ec538459acaa1850b19131857096e7` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 75 | `declaration-track:e43961de0bad84c647388c3750530462e8db388a415f4a72e1d4aad206a50c00` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance.md) | 85 | `declaration-track:370534c213204c91eaf40008244876ab05d6c64a6e93ac319b89719cd484ac2c` |
| 6 | `instance` | [instMulHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instmulhomclass.md) | 88 | `declaration-track:99498c2eb41c745583209de79e462ef71b797716f97d16576c2cca6b8a7886a3` |
| 7 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/of.md) | 93 | `declaration-track:72096a33c5059802ec088271b0c86e9ea4fd0d9c8003e7890472b2fc0f34610a` |
| 8 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/coe-of.md) | 102 | `result-track:4f6003fb9db9ea856bc4d21bfee0de5cf89cff6fd000ff35e93e2c53d69fd567` |
| 9 | `lemma` | [MulEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequiv-coe-eq.md) | 108 | `result-track:90a4dc51339453e2c9ec8d0d7978c71b323654346ea6a9ce765a283e914bcf70` |
| 10 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/ofhom-source-edition-2.md) | 115 | `declaration-track:b5a76abd934efe93159232dc3f4c336d58a1417ff5002b047540623e0037dec7` |
| 11 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/ofhom-apply.md) | 123 | `result-track:b33d51dd85e414ee1569f28d0ea914ec62395baf4729a90c7c26d98bda8abe2f` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 129 | `declaration-track:ee32e4b633060da1b4c8d77fa9fee3ba826b7f61327f018aa96de85dbf69f2cc` |
| 13 | `def` | [SemigroupCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/semigroupcat.md) | 136 | `declaration-track:f7596123110591dd3904b99dd111954a25be9d4963d7505640d3faea48a8794a` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 147 | `declaration-track:fce8a86816736908bf78400d8095ec3bc452063bc490f8e46b2ef1e545f4af7e` |
| 15 | `instance` | [instConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instconcretecategory.md) | 154 | `declaration-track:57b23cf070097508c03ebe0b1078e3646e7291afde740207302d512304de465f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 160 | `declaration-track:7705e1f8bd2793db7dcee25c8f86a92291553eae6dfe0c5618a36de8091f0d5a` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:7f2c3a08e218395e8b49616ce5ffcd240c4ce4613590227951b52167764fc6f7` |
| 18 | `instance` | [instMulHomClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instmulhomclass-source-edition-2.md) | 173 | `declaration-track:b7d3cf73eed7304b8b013af04d8c330274596b2d1996f179920598b154d77cae` |
| 19 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/of-source-edition-2.md) | 178 | `declaration-track:b19142ea3af31fc1ac0bb06113ec8455695f074d7c88a012b3a71117e555d531` |
| 20 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/coe-of-source-edition-2.md) | 187 | `result-track:593b5f906a2967b94dc86fc4126a575c2add8a1fac350a85c7245649125c5c4f` |
| 21 | `lemma` | [MulEquiv_coe_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequiv-coe-eq-source-edition-2.md) | 193 | `result-track:95b86d68ffbfa89718dd201ccbe9bf8df5e1334d61595361c74bdba27f75dd19` |
| 22 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/ofhom.md) | 200 | `declaration-track:14f9e74098cb80c4d0ad49850a591c6660f1de922c3c076e40ece3d3ce6c8ff3` |
| 23 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/ofhom-apply-source-edition-2.md) | 209 | `result-track:f836ba6c915eac0c941c921168b8153d31d52b7fa6724f9e46f56fc3fafb1496` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 216 | `declaration-track:859d552b57bdb54969eb73024b293fd1d8d1998cebc1fcf7234505941c74b89d` |
| 25 | `instance` | [hasForgetToMagmaCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/hasforgettomagmacat.md) | 220 | `declaration-track:394cf57760b096125c2144897f3f9915a31d26ca106b8b6538d58c99bfbc051f` |
| 26 | `def` | [MulEquiv.toMagmaCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequiv-tomagmacatiso.md) | 236 | `declaration-track:cf06ba9a6d69bcbd8bd80a88f3e6f8888d74f7a1b7771daaa172916758adc9df` |
| 27 | `def` | [MulEquiv.toSemigroupCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequiv-tosemigroupcatiso.md) | 256 | `declaration-track:a32fed0d52cc26c92e8842eb055aa20151f4ef415d7d7eef3c99d28a4eaf8e3f` |
| 28 | `def` | [magmaCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/magmacatisotomulequiv.md) | 269 | `declaration-track:9635f95888e39a4846717b699f0845943b269f9d61eecf0b9b91c441ac9dc275` |
| 29 | `def` | [semigroupCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/semigroupcatisotomulequiv.md) | 277 | `declaration-track:cd788dfe561d4c177852f69c66dd43ad5fb992e140f622c3f53bbf0d687d6d32` |
| 30 | `def` | [mulEquivIsoMagmaIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequivisomagmaiso.md) | 289 | `declaration-track:957e3cf4972c97e98fd94e41ddb3a37baba3efb773aef31c16cc9929735e7f4e` |
| 31 | `def` | [mulEquivIsoSemigroupCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/mulequivisosemigroupcatiso.md) | 301 | `declaration-track:0106d8adb8e1fc512df524ab9ea7e83c7ced383c74a62218d96352269a67933e` |
| 32 | `instance` | [MagmaCat.forgetReflectsIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/magmacat-forgetreflectsisos.md) | 309 | `declaration-track:56a9e3a6bd81a2141c73a23471f0c64b8c0af89430b4b9a191321dc9460d849e` |
| 33 | `instance` | [SemigroupCat.forgetReflectsIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/semigroupcat-forgetreflectsisos.md) | 319 | `declaration-track:a31b36ee9494ca765da3edbecbc8e1220da2822ebe92c5d7118eb27fb90dc496` |
| 34 | `instance` | [SemigroupCat.forget₂Full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/semigroupcat-forget-full.md) | 332 | `declaration-track:ccc6d11e9d1387ace0fd78a9c06838150bfc6e299e35bc1f1acc0fcf9eb55a0e` |
| 35 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SemigroupCatBasicNamespaced.lean/declarations/example.md) | 340 | `declaration-track:71654cc1b7060ddec842961dc2659dbe7566f652922b89b33d56e76f4b72ca1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a760be1acf6b4b3da60de0c378113736c5cf343dd666ee2774d89945ea9f84b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
