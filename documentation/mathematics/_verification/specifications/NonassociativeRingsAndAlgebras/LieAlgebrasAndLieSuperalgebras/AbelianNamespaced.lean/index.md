# Verification target: Abelian Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b16518292b5fe099cb93d0b315e892d5f184f5d8",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b16518292b5fe099cb93d0b315e892d5f184f5d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/liemodule-istrivial.md) | 44 | `declaration-track:201b098e69f0cf015286fc9b5bb3bcf521a64c487cb4e1ae0a7a7e1a7d83db27` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/trivial-lie-zero.md) | 48 | `result-track:566fdc41712e87798adac4689a5a065df15c7db63d2895b0076d60b450c09feb` |
| 3 | `instance` | [LieModule.instIsTrivialOfSubsingleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/liemodule-instistrivialofsubsingleton-source-edition-2.md) | 52 | `declaration-track:b3f0ae7de3b0dda63fc604eec049bdf15cdc947ec28827141933eb51249ddb9b` |
| 4 | `instance` | [LieModule.instIsTrivialOfSubsingleton'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/liemodule-instistrivialofsubsingleton.md) | 56 | `declaration-track:aae3b88538d261e7b34d3737ea180570f68f12287caa7b1b5a2c2573dd3bf54d` |
| 5 | `abbrev` | [IsLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/islieabelian.md) | 61 | `declaration-track:7debe7dfb8221dc35e80d585150f87c360a0d96905f6318b08273c06481dbb0f` |
| 6 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/lieideal-islieabelian-of-trivial.md) | 64 | `declaration-track:6afca379e293362fea9cd6a61d0a8d281837dc4087801ae6b52986f433c49d81` |
| 7 | `theorem` | [Function.Injective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/function-injective-islieabelian.md) | 68 | `result-track:71ac75d52566254e090c6acb9586ecfa52f3c29993de9a232b6fcb982967f8b0` |
| 8 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/function-surjective-islieabelian.md) | 77 | `result-track:9919b1dbf7ea781f9fac58820a9ea5c974be9dfeac7901b0937418f3b9171dfd` |
| 9 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/lie-abelian-iff-equiv-lie-abelian.md) | 85 | `result-track:04bbf4c87e4fefb068a464acfd798565a4c5b445adddf6dcbfe4557bb73695ff` |
| 10 | `theorem` | [commutative_ring_iff_abelian_lie_ring](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/commutative-ring-iff-abelian-lie-ring.md) | 90 | `result-track:598c03d7cd774b38648b7a9f752da3b3d643f58ecc4485a1ba3249c32e5d3d9e` |
| 11 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/ker.md) | 107 | `declaration-track:7d26873c96bc80d3f7f7cf30046387c4a76093f7de00af8f5193fa3b92738ef0` |
| 12 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/mem-ker.md) | 111 | `result-track:be1a5fe7cd8c9e9f4743cd184f2c0cfef1aa0f37528f06256fca86dfeb649af5` |
| 13 | `lemma` | [isFaithful_iff_ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/isfaithful-iff-ker-eq-bot.md) | 115 | `result-track:345fe00720d3bd99ae2d2044c70748a4427057a847cc2e1b6219a28ca604f402` |
| 14 | `lemma` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/ker-eq-bot.md) | 119 | `result-track:774e8e3ed8bd2c443a25ba5b047c58c2b3c48ee52d65eae9dbe4aa87f2a99614` |
| 15 | `def` | [maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivsubmodule.md) | 124 | `declaration-track:2bbdc888519ea147681621768a48c44b09c485ffcfe2ae9f8bfb45a6a425cb4f` |
| 16 | `theorem` | [mem_maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/mem-maxtrivsubmodule.md) | 132 | `result-track:6a1a515c0cc2320294553e75fb1be7a0c3c90e259f3203037e1eac57fa6d949b` |
| 17 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/instance.md) | 135 | `declaration-track:af5b973e91394a9a4fc7a2f8b263e3ba7f440e3c9ab93262b94e8e2e15672eb6` |
| 18 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot.md) | 138 | `result-track:6bfc966f14fbbe5f221402d3df89cbaa2b31cb670f85373b9c93d1f7a897d631` |
| 19 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/le-max-triv-iff-bracket-eq-bot.md) | 145 | `result-track:973559661159cea1f6c4906a87c0b0cf51df8d81240ea65c6f04dc0e16aac9a2` |
| 20 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/trivial-iff-le-maximal-trivial.md) | 154 | `result-track:9102413c6103523b388f1651c7fbbc5d773825fe733a0203dce17384eaed0078` |
| 21 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/istrivial-iff-max-triv-eq-top.md) | 159 | `result-track:e45e8a772fdafc35acc4aca2e39246f2858faece4f1d893ce05223168e2525dc` |
| 22 | `def` | [maxTrivHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivhom.md) | 168 | `declaration-track:3d1d9320c74c3d7383868704ce5ed981ce23a7f57f863c7efd3f4377113a6f1d` |
| 23 | `theorem` | [coe_maxTrivHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/coe-maxtrivhom-apply.md) | 177 | `result-track:1fd8ee98de374ddad25b59f5192dbdd180d10db3082e759ededcd10085288c61` |
| 24 | `def` | [maxTrivEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivequiv.md) | 182 | `declaration-track:4babd33c245d8089270384641d490b5da183cfd7b330a60645ca13782dca32aa` |
| 25 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/coe-maxtrivequiv-apply.md) | 190 | `result-track:44634272aae0e17eb5b9a22ceccc7e2bbe9535047287d235921ecba3cdfe7e58` |
| 26 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivequiv-of-refl-eq-refl.md) | 195 | `result-track:1ec3ed9e8a5285a3e5f2dfd60f99a1722428f7099328f1af0eae48b8e953f9d4` |
| 27 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm.md) | 200 | `result-track:6172cbe491306debe1dfdfced95ae52cfa2fedfd397f1e027b6eb946b0d589d3` |
| 28 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/maxtrivlinearmapequivliemodulehom.md) | 206 | `declaration-track:110b11ab0097147d0b25448bb14f67cac65c351b0aa7da5842b6e916a5e8f4ce` |
| 29 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/coe-maxtrivlinearmapequivliemodulehom.md) | 219 | `result-track:82eb1d63ffbf2cf84c98792fd37a5bbc7b8679f7f347ce121ed81f0d63b82123` |
| 30 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm.md) | 223 | `result-track:bec36e3c01cd58712db35cf0ec0b7999923c8be27f2966e656b955e28ebe9d04` |
| 31 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom.md) | 228 | `result-track:09403cd6732ea35eb97116bf4286418021c93515597707b28ee4f67db372ecd2` |
| 32 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom-symm.md) | 237 | `result-track:4f9fecada32e1087b220944d29da1094e29ad94fe04a4df90cb1534f2ed37638` |
| 33 | `abbrev` | [center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/center.md) | 252 | `declaration-track:7fc4180d1c29407455d2abccba052d0f5a5d738b65a1562bcbe4c5e4ba5d0d9a` |
| 34 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/instance-source-edition-2.md) | 255 | `declaration-track:ece6b2b295406149d1c4042b350770c07acba4d493f6f232ee2f2f239392fcf5` |
| 35 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/ad-ker-eq-self-module-ker.md) | 259 | `result-track:712c879299f34657bef076bb638a9f0f2c5b3b547878532f929c32d474a498d6` |
| 36 | `theorem` | [self_module_ker_eq_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/self-module-ker-eq-center.md) | 263 | `result-track:464cba741ad42b440fa8a5029410963092fe459887c60760ebadb45f713cd692` |
| 37 | `theorem` | [abelian_of_le_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/abelian-of-le-center.md) | 267 | `result-track:691b9fffc6b04c0765fdab2a3421a0544efc520fd4950f68c9f3b02c533194b8` |
| 38 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/islieabelian-iff-center-eq-top.md) | 271 | `result-track:f426dc73d15aaec1735cf2570c4d92c46282dfd8abc6142980caba90eefff547` |
| 39 | `theorem` | [isFaithful_self_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/isfaithful-self-iff.md) | 274 | `result-track:ba979d4f433a5f9f3c5b3bc0db27e29ce4755ebd92ded66cdf333f8603c9c452` |
| 40 | `theorem` | [center_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/center-eq-bot.md) | 278 | `result-track:707e2b90d1c633a1c2b883eb8381b37f9cee968d1f0cb464106d5ce43174f52d` |
| 41 | `lemma` | [commute_toEnd_of_mem_center_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/commute-toend-of-mem-center-left.md) | 290 | `result-track:4c567b24c050ac3885e3f9eaaf34e885bb92250ec4309b75ac58a11f5a89a089` |
| 42 | `lemma` | [commute_toEnd_of_mem_center_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/commute-toend-of-mem-center-right.md) | 294 | `result-track:ff86c89f9953946bbcf1b2b4922bad9301f3bf21bed683949d9313e24163c03d` |
| 43 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/liesubmodule-trivial-lie-oper-zero.md) | 311 | `result-track:ad9d3cfbefd16ea811d81dbdfe9949940461908eb83ed2309323031628542227` |
| 44 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot.md) | 316 | `result-track:69bc68adf5915695a7ad7d5f05e26f3ec67fc4253bfb4a9e43ded7aadef49a12` |
| 45 | `lemma` | [lie_eq_self_of_isAtom_of_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/lie-eq-self-of-isatom-of-ne-bot.md) | 327 | `result-track:6970f78289e2ec45d6ba36cf63e9a0ca3652b30463a8bd3461026135c101b23b` |
| 46 | `lemma` | [lie_eq_self_of_isAtom_of_nonabelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianNamespaced.lean/declarations/lie-eq-self-of-isatom-of-nonabelian.md) | 331 | `result-track:7bf1cba368f8ea2627097b596baeec6fe4f63c37116ea84a20ea4c75c04f544e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8630d0f8f46bddfdac7f8e179ac66215a65cb5e758669e27e27b0aaeb6cfd7b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
