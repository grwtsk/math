# Verification target: Category Theory Concrete Category Basic Has Forget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "806e2c55258cbd3d6165f5b3d975d9768ead9ca3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `806e2c55258cbd3d6165f5b3d975d9768ead9ca3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Types` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-source-edition-2.md) | 73 | `declaration-track:ebe656372e80454ded6759695ae53d5861ef3fffdf5420a1e501326916475992` |
| 2 | `abbrev` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget.md) | 83 | `declaration-track:616f61df530454cc8ae00f3935330fceede4b698d3442ec18cc858d29a4ecce7` |
| 3 | `abbrev` | [HasForget.types](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-types.md) | 87 | `declaration-track:36ad3389172d2e0aa6f61e753d542072ed17af3f55b42e84302a832d1994d85f` |
| 4 | `def` | [HasForget.hasCoeToSort](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-hascoetosort.md) | 98 | `declaration-track:2053ae6fb12e5cf0d3dba7eb51a6f06ef05baa7afcb6e971e0a5f7834ce81688` |
| 5 | `abbrev` | [HasForget.instFunLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-instfunlike.md) | 109 | `declaration-track:f44c961c353146b10e6f8a730917b0f0b0572085a4a2bf8d3a3ba658fa552dce` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-hom-ext.md) | 116 | `result-track:bb2b9a1dd69f3e9f6c6aa04bc87a491f645be4fe4feabba3f3e71209ef16db5c` |
| 7 | `theorem` | [forget_map_eq_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-map-eq-coe.md) | 122 | `result-track:8638016f1199e898647fe6e5751b8ddddf42af3e56be0c14d67adbff3e5b30ad` |
| 8 | `theorem` | [congr_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/congr-hom.md) | 127 | `result-track:e433e7a6f6b04f76d7c277c9f3ebebef6f9f557cd0f50a8f69431562b9d0af98` |
| 9 | `theorem` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/coe-id.md) | 130 | `result-track:0f90f256726067d45c5e19b769edf9e7c63683951c4ae89beffa0d9109d976d7` |
| 10 | `theorem` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/coe-comp.md) | 133 | `result-track:0ebce5af32b3cca3abf207d864631851a059f9514977acdb358c804a2aec29fd` |
| 11 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/id-apply.md) | 136 | `result-track:d7632c84e58b6262f3db15858fefae5933bac4037954ba204d9659c18962ece5` |
| 12 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/comp-apply-source-edition-2.md) | 139 | `result-track:cdfff50fec3e9f7d61dcde02b86109f5ac858b8862eb863daa0d4e1425a675c1` |
| 13 | `theorem` | [comp_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/comp-apply.md) | 143 | `result-track:c8ff0a881a9168056491b9575f0a613db245db3c50e6d66d14a0c1bb10dfae5d` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-congr-hom.md) | 146 | `result-track:6f117a18b5731eea5ff9faa92786f9420aee8417d2e9f5bed38f83bc8ca19d38` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-congr-arg.md) | 149 | `result-track:23fd02a4f3b64cc5b05c378d0396dfd6ca926640dff12aada2f920ff884fa0ce` |
| 16 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-hascoetofun-type.md) | 153 | `result-track:fd51ab5e1afe54c1295d297e3ec2da2c83e9fe5103c1b94aeb99dee7d83f46d8` |
| 17 | `class` | [HasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget.md) | 160 | `declaration-track:22c9d59b8f8b6cd11ec5767881e002477da3e995cd13c9b45061d3c2a3025cdc` |
| 18 | `abbrev` | [forget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-source-edition-2.md) | 169 | `declaration-track:8f6ad599d4f46aa8e9bd9eefbee7d1eb1d676580990d63afc25be80c3b6b997e` |
| 19 | `lemma` | [forget₂_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-comp-apply.md) | 175 | `result-track:7dd1891e737c8d175f9279556ae605bf2884466efab9652b341c7c7c3310f9fd` |
| 20 | `instance` | [forget₂_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-faithful.md) | 182 | `declaration-track:9de430799380841af1a006e61a51fd970ac5b2447db4140d8e03bfcb6a577a54` |
| 21 | `instance` | [InducedCategory.hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/inducedcategory-hasforget.md) | 186 | `declaration-track:436994d3b22635e509558f0f4903963c50e55fffc6e6f592002b77afcf77e2ea` |
| 22 | `instance` | [InducedCategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/inducedcategory-hasforget-source-edition-2.md) | 191 | `declaration-track:ad3aafd741c8ec9d4eddcef8b70343788ba096f4df23c8b10d0cb31051f40ba1` |
| 23 | `instance` | [FullSubcategory.hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/fullsubcategory-hasforget-source-edition-2.md) | 196 | `declaration-track:b6ac937a2d3f23388cebdf4f8f268060381a1a6c7a870b80060788c48ce00016` |
| 24 | `instance` | [FullSubcategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/fullsubcategory-hasforget.md) | 200 | `declaration-track:33e830d9ebc454609e54238ba93e53a6f18c1141596b78114cf817922baa2a70` |
| 25 | `def` | [HasForget₂.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-mk.md) | 208 | `declaration-track:13f4d712b4bf0059eba1fda4f094e41f964d37efa998df73a288c66291aabd68` |
| 26 | `def` | [HasForget₂.trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-trans.md) | 219 | `declaration-track:c671b48b99bb074152aec89a00e5977c9b8d63d4887ed6ab13c02b4896b1c71b` |
| 27 | `def` | [hasForgetToType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforgettotype.md) | 230 | `declaration-track:d2afcae12e1f34bcb8284c044e2feebf5efe7bfc07fd5b83e30716a0f19dd289` |
| 28 | `class` | [ConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory.md) | 248 | `declaration-track:417814f2b07abc5af55699c5bae17f45f8cf5b99441ad7041ee72e6544cf46d0` |
| 29 | `abbrev` | [ToType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/totype.md) | 272 | `declaration-track:60aa2712fda4dc989f21239aa30047f7aed6b41ce1e0d058f32ed3f534d9e16b` |
| 30 | `abbrev` | [ToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/tohom.md) | 279 | `declaration-track:33f1b576c16a5a29fb31ab04b0de7ce202ca79c4684a9d4c9ae8c2f885177466` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/instance.md) | 288 | `declaration-track:515b1e71b57c345196628e4fec0fd7435b178d60e83bd9ef5a185eee1627eabe` |
| 32 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/homequiv.md) | 294 | `declaration-track:f4aee78222b06c192fcc2dd328eb9ee747fab901c1ce0872376cfdf6ba87f288` |
| 33 | `lemma` | [hom_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hom-bijective.md) | 300 | `result-track:108d3e1cb2bc5d9d824ac5ae80580b5c5a209be9d226207ad528ced003643be0` |
| 34 | `lemma` | [hom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hom-injective.md) | 303 | `result-track:7622cf29086d6b72331e5f5d42bcf76cb62ae82a741f3c11c0177a1296ee155c` |
| 35 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/ext.md) | 307 | `result-track:28b4a0f2e0e48ecd5a77de453006195d1357ed0299bdb2f92cd28fb2169c3762` |
| 36 | `lemma` | [coe_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/coe-ext.md) | 310 | `result-track:936e8d364052fd94214ca1bf6b5c6b449da2320f759a4e25633b7a3cbbfa67b4` |
| 37 | `lemma` | [ext_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/ext-apply.md) | 313 | `result-track:ff91d0fdce5df84c39110d3f5f2679721101f4de5ba9330778937b7d088fb90b` |
| 38 | `instance` | [toHasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/tohasforget.md) | 320 | `declaration-track:37744fbbfdbfd93e4ea10ea8a2e404997de1e35bf911b87ea874ee2dce52ad57` |
| 39 | `theorem` | [forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-obj.md) | 327 | `result-track:2ca37c899b284a248bb966c9af6a4a16609fc338e74c9ca61bb566ebac4faadd` |
| 40 | `theorem` | [ConcreteCategory.forget_map_eq_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-forget-map-eq-coe.md) | 331 | `result-track:cfa16ca63b9c288e99e50ecda8158521573a3b1cdc2a6eaedc3ef1f39c082bc0` |
| 41 | `theorem` | [congr_fun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/congr-fun.md) | 337 | `result-track:0e812df2a7c5f893b825ff6b5448c21eec787e33efac6ba63e37c323f33f669e` |
| 42 | `theorem` | [congr_arg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/congr-arg.md) | 343 | `result-track:bbe0f8e4d4bec1343e39c02ccadb010522a7fabe019ffc2bf9dc4deaa5571805` |
| 43 | `theorem` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hom-id.md) | 346 | `result-track:9c4b014c37787bcdd5177ec1e97a73b52bf00f6c755d84678e9cd8eec753cb9b` |
| 44 | `theorem` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hom-comp.md) | 349 | `result-track:b5b5d7f500e83e2deeef8979e16f61f94a7c0bdff824c94b283511d5a7ec4530` |
| 45 | `theorem` | [coe_toHasForget_instFunLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/coe-tohasforget-instfunlike.md) | 354 | `result-track:e6245dc2b8f54d79ede832a169cfc2b8fd9f00ea364136338baf7b2a578445d7` |
| 46 | `lemma` | [ConcreteCategory.forget₂_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/concretecategory-forget-comp-apply.md) | 359 | `result-track:bf3c76af3d297b5e80340f250f7cecceb0fc54f9bd0f6a0de50fc93f3d2fa579` |
| 47 | `instance` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hom-isiso.md) | 368 | `declaration-track:c69952e5316ee891d2908d57203e40dfb4bb613f2a964328503182818cbe1bf8` |
| 48 | `lemma` | [NatTrans.naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/nattrans-naturality-apply.md) | 373 | `result-track:5dda33c69055ec193675e18f1931ed5b7d28f345045b91b73a6e6c4d6bef97e0` |
| 49 | `abbrev` | [HasForget.toFunLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-tofunlike.md) | 390 | `declaration-track:6f25ed7be9053c6d301bac6cee40a6f6a1afda05d975ee9491ae44369b42bad0` |
| 50 | `abbrev` | [HasForget.toConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/hasforget-toconcretecategory.md) | 403 | `declaration-track:fb9b972fd1c3a788452bd99628c5494404a47f3137d8c7af0411f68a966b7f86` |
| 51 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/example.md) | 411 | `declaration-track:6f0bf584360f89e8b72f792cce7fb3f2ca2092fed31b4e3f0606dc2583651d27` |
| 52 | `theorem` | [forget_eq_ConcreteCategory_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/forget-eq-concretecategory-hom.md) | 418 | `result-track:d18f4d37b062d09b37da51344abcc102d30117cb430425d67e27aa786523ac7b` |
| 53 | `abbrev` | [Types.instFunLike](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/types-instfunlike.md) | 429 | `declaration-track:472c38bc8aa4d22672f56eae18fd243109e138770279414f023352f0224f772e` |
| 54 | `abbrev` | [Types.instConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/types-instconcretecategory.md) | 437 | `declaration-track:6fb3a1a882ca6bc137070aa9788428ef0c81cade5005c31b70830778cec2e749` |
| 55 | `instance` | [InducedCategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/inducedcategory-concretecategory.md) | 445 | `declaration-track:316868882d4739361e6742c8339f40e31c944a922a6fee348dd795794a58dab8` |
| 56 | `instance` | [FullSubcategory.concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicHasForget.lean/declarations/fullsubcategory-concretecategory.md) | 456 | `declaration-track:c715cd9b9934f1d4481ddc3d743dd2a90bada452c9f961ede9ead191a025f946` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e1051c0117b3dae206e1c3beb57414bf72d80545aadfa41d80b5d5d7bda8ed6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta5f683b68d94d3040049a5786a0612fdfef9d33dfcc318af33fb0092e19ad05d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
