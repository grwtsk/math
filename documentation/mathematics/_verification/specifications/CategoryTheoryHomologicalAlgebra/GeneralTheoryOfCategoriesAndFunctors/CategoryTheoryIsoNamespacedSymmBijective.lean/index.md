# Verification target: Category Theory Iso Namespaced Symm Bijective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f68548a595b10ba5826a817a2949ebc9a8600912",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9143f5c4c68544fe3357822573610a648b98597c112183603fb0826b69eccdb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f68548a595b10ba5826a817a2949ebc9a8600912`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9143f5c4c68544fe3357822573610a648b98597c112183603fb0826b69eccdb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9143f5c4c68544fe3357822573610a648b98597c112183603fb0826b69eccdb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/iso.md) | 55 | `declaration-track:1105ab4027804faebeaec0356c008bed724f0aada48729702a6b70fa66ad2a53` |
| 2 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/ext.md) | 76 | `result-track:c82b45466a0464cf525b580dea242217491b6a43307cf0f2ea543dd7a309d457` |
| 3 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm.md) | 90 | `declaration-track:8ff33f7fb96d57c10cb554717c84f2a0cd48c8f82a8fcf33f58cb22465f772b6` |
| 4 | `theorem` | [symm_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-hom.md) | 95 | `result-track:b65e6915be065faf6ac78835e66da4700170ac698ad0b8888a1f3cc37ec63b27` |
| 5 | `theorem` | [symm_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-inv.md) | 99 | `result-track:80c37123ee1883687129090d5bdfa46f817593b9b12a0577576f5b207bf0287c` |
| 6 | `theorem` | [symm_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-mk.md) | 103 | `result-track:7141ea45d1c2ca96bb17abe61688eb9af1270ab13aec7f0fc437b1b8b1525387` |
| 7 | `theorem` | [symm_symm_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-symm-eq.md) | 109 | `result-track:73cc7bd064edd79318ee2fb02c4c47bb629a5a06b1748e85ef5d25eb43cd744c` |
| 8 | `theorem` | [symm_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-bijective.md) | 111 | `result-track:f14f379a86a70752c80e086ff7d293b80107a2a5b3c999b5aa89c322cb59e607` |
| 9 | `theorem` | [symm_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-eq-iff.md) | 115 | `result-track:d204c6a3683b10dcee7b66ed4ed55033fa252385a0433c94f69cb078232f59c2` |
| 10 | `theorem` | [nonempty_iso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/nonempty-iso-symm.md) | 118 | `result-track:32b45cf8a0e3931c3710af1a0394f36ab74ece89a1bace7cbe915016dec981a4` |
| 11 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/refl.md) | 123 | `declaration-track:8ed0c1d0035513b397afa6fd762fee106df386ada1bcd3e7e2371c0c6ef79412` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/instance.md) | 127 | `declaration-track:2a16a0bb0cb7975bd41b0c941b066e9473bb60fee25856f5046e89d0e25e619b` |
| 13 | `theorem` | [nonempty_iso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/nonempty-iso-refl.md) | 129 | `result-track:a26f7001639d0a5b2864d7673b739fb4facc968de42666471241a1c2c6abb26f` |
| 14 | `theorem` | [refl_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/refl-symm.md) | 132 | `result-track:b64c1a4afd8a62d44cb9ec2e59cdea979c7376e88d55be32ffb26ad42e4e3aaa` |
| 15 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/trans.md) | 136 | `declaration-track:413b20df7d986fd2d15c82fbd08bfda5e7c5435e4ddf4762052d817730159c4d` |
| 16 | `instance` | [instTransIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/insttransiso.md) | 141 | `declaration-track:033aec272e65e793a40092b5e7d61af1eb4255dcbcf0ec844c3c61d2f98dadec` |
| 17 | `theorem` | [trans_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/trans-mk.md) | 148 | `result-track:54a7f184038737be1dde8963bf607b64954d7f8255b4cd62cfe1d84511c3a5a6` |
| 18 | `theorem` | [trans_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/trans-symm.md) | 155 | `result-track:07b48d2debdaf5b2294f4febc5790c4c0874e8f35332c5ef85284a5077133535` |
| 19 | `theorem` | [trans_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/trans-assoc.md) | 159 | `result-track:979e4ed69bf030fbb63303bc76b329b79794668552cb8e27ca84b024bcd4183b` |
| 20 | `theorem` | [refl_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/refl-trans.md) | 164 | `result-track:c6bb86944cf15ff821e6268b8cf11c70f29ec46762b285489de2276d9213c7ae` |
| 21 | `theorem` | [trans_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/trans-refl.md) | 167 | `result-track:0247ae96f4f53e45c431f9c607743a510f1ce0e3508f05b51eda26328dc94a69` |
| 22 | `theorem` | [symm_self_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-self-id.md) | 170 | `result-track:ffb7b866a4b42b051e29f834305badfe6f329556638fae2b7efbc513c1f8179f` |
| 23 | `theorem` | [self_symm_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/self-symm-id.md) | 174 | `result-track:8a6e8e7b5892ab3b592bf3cb355f2f11e61b3d4d98e26a1cf97c6403e6fca95d` |
| 24 | `theorem` | [symm_self_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/symm-self-id-assoc.md) | 178 | `result-track:f279fe5fb12df2bcde78cfa7ee7664b074fc6904674851d451cd33823c819efd` |
| 25 | `theorem` | [self_symm_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/self-symm-id-assoc.md) | 182 | `result-track:91ef52f39d947cf3bc65908130064bbcf495f3583dce3ed3eed0efca6136f148` |
| 26 | `theorem` | [inv_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-comp-eq.md) | 185 | `result-track:aee3ae49ab893915e545d218f562fc7aa3744e5e5cc18032919b6a47460e6e47` |
| 27 | `theorem` | [eq_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-inv-comp-source-edition-2.md) | 188 | `result-track:cbc650058f07c529f882e1eeeae53b9b575289e9352b37b5e8850c15aeda6d38` |
| 28 | `theorem` | [comp_inv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-inv-eq.md) | 191 | `result-track:50aeaf6dcf6e174c9fb4af340b376eccb9a6ce2c44d7860e5ec0986532816e62` |
| 29 | `theorem` | [eq_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-comp-inv-source-edition-2.md) | 194 | `result-track:f97c3a4ca734502ca2346e68e3b1d54813f9b913297e40a6eaab0a27aacf9853` |
| 30 | `theorem` | [inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-eq-inv.md) | 197 | `result-track:8d51fc688ca74d6704af9fa173691190364719e0f2b705adc1a6111c2b00dd56` |
| 31 | `theorem` | [hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/hom-comp-eq-id.md) | 201 | `result-track:8db11b7f1c89c4a3734c9f44f8e68d1b966c7ed2f3b5fd42a8345c95add5c7b1` |
| 32 | `theorem` | [comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-hom-eq-id.md) | 204 | `result-track:135a609b5251a1ab3f0ab248282b84f6f54d9d4d13e13f05929a71978b4d4e65` |
| 33 | `theorem` | [inv_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-comp-eq-id.md) | 207 | `result-track:1b0935bfe6a742d5099f716a3a3fbc493b73d85dd8f77d1b6086bac362d486ac` |
| 34 | `theorem` | [comp_inv_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-inv-eq-id.md) | 210 | `result-track:1db22b10190a886cf35c12251ef5673ad6623b1c0e16b0363952706e8a860852` |
| 35 | `theorem` | [hom_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/hom-eq-inv.md) | 213 | `result-track:0b73115819877c1c77d77f0fcda19013001298ff61923a0fe3fa2c17b67bd9f9` |
| 36 | `def` | [homToEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/homtoequiv.md) | 219 | `declaration-track:4c2321a23de6642cf56b6c01e27156a097f92c5214a33db0f101e0ec73303902` |
| 37 | `def` | [homFromEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/homfromequiv.md) | 227 | `declaration-track:bac97e9316e21786b4e066f149935dec56bbdb1edddf983d87e6276a9cf0a7d5` |
| 38 | `class` | [IsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/isiso.md) | 236 | `declaration-track:d153e9ad25288f55815d1fe9dd69b177c5feebf9cf4a4843ade701762819a3df` |
| 39 | `def` | [inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv.md) | 242 | `declaration-track:d330b942a7147fe398bd3b4ffefc7f44e61e0bcfada85190a81a3273cf94174b` |
| 40 | `theorem` | [hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/hom-inv-id.md) | 248 | `result-track:d6058d81e1cc8c65f38d078f1a37f37599a14e724657aa7e3f1b02e5bc011e00` |
| 41 | `theorem` | [inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-hom-id.md) | 252 | `result-track:3eb875eaacb097ff3f1d6ac5914e137d977842b4191e009cad30ee8e0d7e0cec` |
| 42 | `theorem` | [hom_inv_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/hom-inv-id-assoc.md) | 266 | `result-track:27d873f9f3edeb628353a9d5e8d4194745f3f6be9928d284275f796236033c54` |
| 43 | `theorem` | [inv_hom_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-hom-id-assoc.md) | 270 | `result-track:7c007bb4e68a3e224446c029173547c4aa612ea482ae512356fa5ac4a3c326c5` |
| 44 | `lemma` | [Iso.isIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/iso-isiso-hom.md) | 275 | `result-track:234a9dda57e0e07c87b842937f7eb9e91314d0340ae91a8776a5c2e2c8c12c6c` |
| 45 | `lemma` | [Iso.isIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/iso-isiso-inv.md) | 278 | `result-track:01591fbf5da5e00873bff3988fe5e3260b8c5c8d70f60c417197a3daa9c6e428` |
| 46 | `def` | [asIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/asiso.md) | 285 | `declaration-track:c8095264461d1d3d88be508e29fc7a1fe991d21b32f2b989e0ebba174215f7cd` |
| 47 | `theorem` | [asIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/asiso-hom.md) | 292 | `result-track:80cb3ee805c198510fb81a8143efe11473cfab9742dbcc8b31507d1cce4e2f87` |
| 48 | `theorem` | [asIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/asiso-inv.md) | 299 | `result-track:91b62c04bb31c8e9a17ecba4c7eb9b64ac326d8a4e5aea8bfc8d26d71df962fd` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/instance-source-edition-2.md) | 305 | `declaration-track:56cda2e39ca4a3b78d57d10f403751f52ec74ca45355d6b35be32a44bac49d6b` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/instance-source-edition-4.md) | 310 | `declaration-track:d322625c0557a8b864eaf401b2866ac9898c8a1b818cc95174b48986c78f54a1` |
| 51 | `theorem` | [inv_eq_of_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-eq-of-hom-inv-id.md) | 316 | `result-track:6cf62c002125dee6be70bb68203d26c4aae8d005c7728ba5d95a8b850ecc40a8` |
| 52 | `theorem` | [inv_eq_of_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-eq-of-inv-hom-id.md) | 321 | `result-track:4f262ed02e22fffb6eb19fde5b72cd6149f49459681d328396995b37a4135c63` |
| 53 | `theorem` | [eq_inv_of_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-inv-of-hom-inv-id.md) | 327 | `result-track:ed38d186e3d89bd2510863e66567ed90a163d19969e2bed0c0f92efc8987a1a5` |
| 54 | `theorem` | [eq_inv_of_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-inv-of-inv-hom-id.md) | 331 | `result-track:27d2c92d1c886f5ee779e3d9d953cd9527ff1b7275281f8739b68d8cfcdfccb5` |
| 55 | `instance` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/id.md) | 335 | `declaration-track:f4b9256076d48a3abf1a3b9308164f0fa86827d4fbe2336db4f7a2445630f0f0` |
| 56 | `instance` | [inv_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-isiso.md) | 339 | `declaration-track:6ac86294b3a7dfadc898eed03021f0c39603ac82758f6acd1d9618c936031658` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/instance-source-edition-3.md) | 346 | `declaration-track:5c5bf1232bd8b5e77415ff0fad3412d6f3a8630361ce9c914a7c1eb4722285a2` |
| 58 | `lemma` | [comp_isIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-isiso.md) | 353 | `result-track:29dbf4b23ea0fae36a5397154cd019061e613cdbfc4dab24ec680fc8750b893a` |
| 59 | `theorem` | [inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-id.md) | 356 | `result-track:409e3213d053106c7f1099884b26073a5e7bcd3fb81a52e4a098c6160b2adeca` |
| 60 | `theorem` | [inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-comp.md) | 361 | `result-track:f6bce0525eecfb11eba31de59407a3c34e2707b5fca4438398fc641957237ef2` |
| 61 | `theorem` | [inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-inv.md) | 366 | `result-track:38b91eadb0e5bafa670641f90b6355c84bab11f797f6a354b215c8fff631d111` |
| 62 | `theorem` | [Iso.inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/iso-inv-inv.md) | 371 | `result-track:f97b7cdeb89995163861d45c68c1e8ccc7e30548643181d89367f4ee8b549fa3` |
| 63 | `theorem` | [Iso.inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/iso-inv-hom.md) | 376 | `result-track:bfaae2020842a677f8837aca4f2214f3da5d85d36f9dc3e6ed3d25b8ac1a4fcd` |
| 64 | `theorem` | [inv_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-comp-eq-source-edition-2.md) | 381 | `result-track:dccb8dd18a5a84fbe8f170cfe303dd8d62487b95026eb94f2b8e91708a3c2a76` |
| 65 | `theorem` | [eq_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-inv-comp.md) | 385 | `result-track:35874893a661aedd47bf9f9450cd05d75b2d830e6a263a4ace7111d0e7282a87` |
| 66 | `theorem` | [comp_inv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-inv-eq-source-edition-2.md) | 389 | `result-track:a6f572165db386086a7360639705f2b86ada48248a85972e44d4e47a34a54db6` |
| 67 | `theorem` | [eq_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-comp-inv.md) | 393 | `result-track:966c579a7384752fbc5e22af9eb0f3b67f65470fcab0a1c41a6fd6c0b5e6d318` |
| 68 | `theorem` | [of_isIso_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/of-isiso-comp-left.md) | 396 | `result-track:fd685873dedc8a341e7c00de9dd2aec6afe168a085372331cae7f1a1a5343914` |
| 69 | `theorem` | [of_isIso_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/of-isiso-comp-right.md) | 401 | `result-track:210544a6ce4ada53086d410cc00f129a87e47eb59ce90b8e8a548693e4d5038c` |
| 70 | `theorem` | [of_isIso_fac_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/of-isiso-fac-left.md) | 406 | `result-track:17feea3e8bc3c8483c7d78fe1b48289e1aec2829f4dbe1e2579f8050ad766c72` |
| 71 | `theorem` | [of_isIso_fac_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/of-isiso-fac-right.md) | 412 | `result-track:18f257e2ec981edea4b76ea6eca7e49f14e35b4e69cdf67729e7367bfc6a9f9a` |
| 72 | `theorem` | [eq_of_inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/eq-of-inv-eq-inv.md) | 422 | `result-track:92921008db14f5dfad6055f015bcdcd1e24b5e1a42216e79f3879f0c424b14e9` |
| 73 | `theorem` | [IsIso.inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/isiso-inv-eq-inv.md) | 426 | `result-track:459b5ef1ff9c88f69ce8b4f2fe4da389b9dcbdca95d611e8cfc1eb09d5e798d4` |
| 74 | `theorem` | [hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/hom-comp-eq-id-source-edition-2.md) | 429 | `result-track:8fcf9ff8197beea3c0916151caa7b6b2d101242247c72e32e656ec96bbc63e25` |
| 75 | `theorem` | [comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-hom-eq-id-source-edition-2.md) | 432 | `result-track:512fddef8f5da94e449a8dfb23cfd3df72c922ab357d6d7c3612b7b8088950cf` |
| 76 | `theorem` | [inv_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-comp-eq-id-source-edition-2.md) | 435 | `result-track:e73383c0e834b5f2a848ceb642cda4b94386b137fa62b80251d58cafe861bea3` |
| 77 | `theorem` | [comp_inv_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/comp-inv-eq-id-source-edition-2.md) | 438 | `result-track:ad44a621328e11edcd35666fb3d5028e354c764b4f9c4f52cf6caedb9589d964` |
| 78 | `theorem` | [isIso_of_hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/isiso-of-hom-comp-eq-id.md) | 441 | `result-track:72984bb2493ae82bca766ad8b458e5b1566d3f6a206c483174e6a3c12e0a45bd` |
| 79 | `theorem` | [isIso_of_comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/isiso-of-comp-hom-eq-id.md) | 445 | `result-track:09c0ce0da3d29dafdbbf8e9aba9244c535c3869e356ee5b3eb21a8bfff65587a` |
| 80 | `theorem` | [inv_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-ext.md) | 452 | `result-track:2f6585be2c2c04725ccddfcb6b23b83b828d7f4b8177c6356f92cbe0c3f360cd` |
| 81 | `theorem` | [inv_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/inv-ext-source-edition-2.md) | 456 | `result-track:66a6286741aef7ba3bce8840f4ba50582c23cfb828129bed411f5920dce536ee` |
| 82 | `theorem` | [cancel_iso_hom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-hom-left.md) | 474 | `result-track:050d45a8752e275c69068b4fec199ca9a35d392ba292467be4d71cc26e528b22` |
| 83 | `theorem` | [cancel_iso_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-inv-left.md) | 479 | `result-track:ef97a9bb64f448c8388310217a5b08b59f3f0f7ae1725dd2f6bb93b2457dc2e8` |
| 84 | `theorem` | [cancel_iso_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-hom-right.md) | 484 | `result-track:c6826dbff6a6166cd27984ab0dded3d164b623522a6095d424782445adbb95f3` |
| 85 | `theorem` | [cancel_iso_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-inv-right.md) | 489 | `result-track:86febbb8c9020b5080a89a09c5601844fcda1842eb52b841602b61e3c7027464` |
| 86 | `theorem` | [cancel_iso_hom_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-hom-right-assoc.md) | 501 | `result-track:4dc62c85c4385339567f792768f0f81f5e274512349f2c458dc19ab873dc9027` |
| 87 | `theorem` | [cancel_iso_inv_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/cancel-iso-inv-right-assoc.md) | 506 | `result-track:37322c7efca16972f26fca6d41aa184009bfa3f7bb7fb1a865ccd97dca072706` |
| 88 | `lemma` | [map_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-hom-inv-id.md) | 515 | `result-track:7bb308cf682fc9ad71d77ffbbcee8f455c106a465a4e4bcd2b9086faafbcf511` |
| 89 | `lemma` | [map_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-inv-hom-id.md) | 520 | `result-track:5f705d10874c144154588d26ef34386e1a538226955ac0d03d99e9e8db0da8f8` |
| 90 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/mapiso.md) | 537 | `declaration-track:9045c6cfe0718c1ff107f36ce54a9a54e4dccc43a6399bc30aca14bc51d59939` |
| 91 | `theorem` | [mapIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/mapiso-symm.md) | 542 | `result-track:5ad973bb149f0b644609a8a4df36969dd7967f2212f601ebbe7908443e7053a6` |
| 92 | `theorem` | [mapIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/mapiso-trans.md) | 546 | `result-track:f117e753ece003636f2443c50a3256497c9319408c782e0d4fefa86cd3b89313` |
| 93 | `theorem` | [mapIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/mapiso-refl.md) | 551 | `result-track:76ab85cbe6c105ec8ac82a2e85d18ad49da9a504b2481aa1680ad5e862cb4bf0` |
| 94 | `instance` | [map_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-isiso.md) | 554 | `declaration-track:be83d9412268143b31a9c858d48c9063345a41d7bbbf6190b619c1f8a6855ff0` |
| 95 | `theorem` | [map_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-inv.md) | 558 | `result-track:7b6f2b5c8a157185cfa4f46f624db88ad7a705601d254e77133e1f37c9838f6d` |
| 96 | `theorem` | [map_hom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-hom-inv.md) | 563 | `result-track:bdb403339772328130f8825255d1ccbc53f712ec799f768b31cd8bf839bb350b` |
| 97 | `theorem` | [map_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIsoNamespacedSymmBijective.lean/declarations/map-inv-hom.md) | 567 | `result-track:38f60bbe3901abca200167697231d44bd15b630ddf4bac14571d09b214b1e1f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dec1eaab8a237114bac117d76841ce987df3701fa4bf74c2ddbb060acfafc43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9143f5c4c68544fe3357822573610a648b98597c112183603fb0826b69eccdb7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant9143f5c4c68544fe3357822573610a648b98597c112183603fb0826b69eccdb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
