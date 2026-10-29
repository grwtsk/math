# Verification target: Center

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4fde65113ca128223555a0e3767da92eccbfe72",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4fde65113ca128223555a0e3767da92eccbfe72`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfBraiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/halfbraiding.md) | 55 | `declaration-track:d4e3ad408f62c610a25c2b0d22623223f98c728045b5cd62467706cae9f684df` |
| 2 | `def` | [Center](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/center.md) | 75 | `declaration-track:74e83682d458e9d90695d2f49247e2450349d26f43dbda19f2e39d86ee905207` |
| 3 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/hom.md) | 85 | `declaration-track:452d8daaf7098ae2a2f21de6cfa8baa96fbd89bf6569f8f8aa6c591065f7005d` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/instance.md) | 92 | `declaration-track:4b451234e1417175e7f3f7f2fc4300a786fec1c78df9d68447d622132ae8c693` |
| 5 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/ext.md) | 96 | `result-track:739ed57854bf23fb27ee571b4d893cdda072066fa7d84b4f608f60be871dfe83` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:b8144dde53bf9b9e69a153e684a16ffbabdfbac7866d84f5d3e2c785210eea3b` |
| 7 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/id-f.md) | 105 | `result-track:858b4646eb8f3a399a2dd6010bd9930b669fb4efa498e19133ef2e973ce2c692` |
| 8 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/comp-f.md) | 110 | `result-track:a61446fbd8f5caae686eb03ae6d0438f2dde31a5e3aa307eba37cfbd3b37432b` |
| 9 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/isomk.md) | 118 | `declaration-track:ee130f4138f92989ec5e0b87e68cc8525e86b1530ccab6a0637b5033df7e70bf` |
| 10 | `instance` | [isIso_of_f_isIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/isiso-of-f-isiso.md) | 124 | `declaration-track:b626c2d764e76670ea91f387abee256469b0d5b67773bf4b52660004bd091945` |
| 11 | `def` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensorobj.md) | 131 | `declaration-track:eff8e68cc686a5131f6ff9950e6a306300c63c1096c20feba09703bcae3f8e69` |
| 12 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensorhom.md) | 165 | `declaration-track:d190ddd408eacb22f5515f312b87f23b7972279818958d9af808651815a31a8b` |
| 13 | `def` | [tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensorunit-source-edition-2.md) | 181 | `declaration-track:b1f937b57687aa00b4c1cc41e781bd6d044748f8cb93555180357b4d700f280d` |
| 14 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/associator.md) | 191 | `declaration-track:e6ebbc2816a8d63d14c74185aa46d47272f9a5b06b699ee52298b7cf8a546881` |
| 15 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/leftunitor.md) | 200 | `declaration-track:9e22c0557381b39e2053f6a1014c1a4a28de447c78c85905563571b573111f29` |
| 16 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/rightunitor.md) | 210 | `declaration-track:7867eebb9d6ceeb6b169cf4f1318e4585014c218c9de5cdead9efa224ee2b0d1` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/instance-source-edition-4.md) | 226 | `declaration-track:bf7078d4054f93bece7663488e26a5c815423de0157c7a274df1abd6a573169c` |
| 18 | `theorem` | [tensor_fst](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensor-fst.md) | 239 | `result-track:7d287a175fb4f10ec7273bc8936891ae834ee91d4f98dc3053b8c2f4f52120a0` |
| 19 | `theorem` | [tensor_β](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensor.md) | 244 | `result-track:2206e3f9a915cb4279254bbbd72044502dfa46f03bd672057af72682206de8cd` |
| 20 | `theorem` | [tensor_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensor-f.md) | 252 | `result-track:f860c5b29639912e79b9f9fa8ba403ca170d1e1c2decb5ccc1e53fc9ab4030a3` |
| 21 | `theorem` | [tensorUnit_β](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/tensorunit.md) | 257 | `result-track:974828bec3a8ce977dcfe1df3b599b1f5cac45dfadee219b3bc15aca4c1104cc` |
| 22 | `theorem` | [associator_hom_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/associator-hom-f.md) | 262 | `result-track:a4a3696fcfc3982400d08f3d9c6f0389cf8fa31957d8cc1f5908310fb61984f5` |
| 23 | `theorem` | [associator_inv_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/associator-inv-f.md) | 267 | `result-track:efebdf3b85fdbf793a30ef3f005ff15182f6c213168736d5e204ff4972865f01` |
| 24 | `theorem` | [leftUnitor_hom_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/leftunitor-hom-f.md) | 273 | `result-track:b831e4301eb3a16ad7bb1b710b691e903ac6ff5432b4f211c2883206a7dc2e95` |
| 25 | `theorem` | [leftUnitor_inv_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/leftunitor-inv-f.md) | 278 | `result-track:9766f5796ffcc89b923fb2a0bb1c7005e718538969fbbc0ad4bcd60223eb27d8` |
| 26 | `theorem` | [rightUnitor_hom_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/rightunitor-hom-f.md) | 284 | `result-track:9fdb1a6c145ac9c106b86b25cf343673812de8e04c8fd2c9b902ae20f79ce808` |
| 27 | `theorem` | [rightUnitor_inv_f](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/rightunitor-inv-f.md) | 289 | `result-track:3dba501ad2f193a5d65ff1a0eed87f7f14fe81f91c404e1371398e4e78aecd89` |
| 28 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/forget.md) | 302 | `declaration-track:6b860dc7e9d72db185df94bdf5b62f9e9dcb547221fbae00da18a0a09a9ee7de` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/instance-source-edition-3.md) | 309 | `declaration-track:b8688fe60caf1f1e097e5d2798a91986ecd30acb45647ddb5b14a9053a69c7fa` |
| 30 | `def` | [braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/braiding.md) | 316 | `declaration-track:672e554ad742e583f1a3fa6b4721971d0f5a80887a6311c6a41e90a4662e3d93` |
| 31 | `instance` | [braidedCategoryCenter](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/braidedcategorycenter.md) | 326 | `declaration-track:e1bbf54f837e01de0818e3e1fa74113f39adaee90826952dd7d7ebb14fa18c56` |
| 32 | `def` | [ofBraidedObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/ofbraidedobj.md) | 344 | `declaration-track:837476fe72e73d4306cfc89a18299cfba2bdc5f922cf886131624b013097a780` |
| 33 | `def` | [ofBraided](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/Center.lean/declarations/ofbraided.md) | 358 | `declaration-track:0cf35ade812e3dbbd1f151186e9b50ca48d0b2ddabcbb864be44e544d6b991af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d907cfe7db8be4131dd5062aaae4ce1e2a7488585b9108fc6e2141308744566d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
