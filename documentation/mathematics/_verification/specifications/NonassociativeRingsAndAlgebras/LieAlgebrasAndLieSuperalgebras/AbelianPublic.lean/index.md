# Verification target: Abelian Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5edea4b5c08393e1828db6da3384b2ec694df5f2",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5edea4b5c08393e1828db6da3384b2ec694df5f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liemodule-istrivial.md) | 40 | `declaration-track:2cb6d8f412b47f8e1e15830e2bffa1ac9ab72018aebdf9ff28750e656ed2ad97` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/trivial-lie-zero.md) | 43 | `result-track:0c119ca026a22a74402078f603cace533226039a15ebad8d512999b35af8e57b` |
| 3 | `instance` | [LieModule.instIsTrivialOfSubsingleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liemodule-instistrivialofsubsingleton-source-edition-2.md) | 47 | `declaration-track:ee5ffd61ee9e979178b1cf3e7423edf16fbdba0e3afefd25ee9bf718a8f3dfec` |
| 4 | `instance` | [LieModule.instIsTrivialOfSubsingleton'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liemodule-instistrivialofsubsingleton.md) | 51 | `declaration-track:309f804ad635957a03ca65cc358ddca58b0ce809bfc59dd26c5eb161d6fe2a42` |
| 5 | `abbrev` | [IsLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/islieabelian.md) | 56 | `declaration-track:8854fd7bfe91e7655fabe59e92c900fbd7961357342f33d0677f48a210109d2d` |
| 6 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/lieideal-islieabelian-of-trivial.md) | 59 | `declaration-track:b42698556b7dbda31270e604c435c768d9423b0e0808e80843f70f1bf0dfaa91` |
| 7 | `theorem` | [Function.Injective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/function-injective-islieabelian.md) | 63 | `result-track:78791a51a20ef0228e921e1ce008ae277208cce2be5b24e676772a48b8cbb614` |
| 8 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/function-surjective-islieabelian.md) | 72 | `result-track:ca43572d5aab01a2822e63300250fdc08421d0471d0fb7a61dc02bbd6303fd39` |
| 9 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/lie-abelian-iff-equiv-lie-abelian.md) | 80 | `result-track:af55190c83148d0c0e5e1971bd19e5257327762cf0e742b7a2d1c98b571cfd4a` |
| 10 | `theorem` | [isMulCommutative_iff_isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/ismulcommutative-iff-islieabelian.md) | 85 | `result-track:61e7e93a8727fbf7372ef51ce4ff3f862442a0932c131c8eb13a9f2971a6f773` |
| 11 | `theorem` | [LieSubalgebra.isLieAbelian_lieSpan_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liesubalgebra-islieabelian-liespan-iff.md) | 93 | `result-track:34f193cd1becbcd59b8703fd4042d780203117188289d4aa9e243aedecefeb28` |
| 12 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/ker.md) | 139 | `declaration-track:338885b22cccbb6d0d0fa45537f048acceff683f59e9598d6199a28a1bfac24d` |
| 13 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/mem-ker.md) | 143 | `result-track:3cade5459f3574769c803aa281a4641fabddb31a2b6727dec1406465a4d46b9d` |
| 14 | `lemma` | [_root_.LieIdeal.isLieAbelian_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/root-lieideal-islieabelian-iff.md) | 147 | `result-track:59481688e14a8234466fa2c46f8a7b558102afa38fc20d2f80ef6b27fb4c12ff` |
| 15 | `lemma` | [isFaithful_iff_ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/isfaithful-iff-ker-eq-bot.md) | 156 | `result-track:8f259f6ec1ead47db108b305a330fbb60f56704b6327c550146be9509221e4f4` |
| 16 | `lemma` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/ker-eq-bot.md) | 160 | `result-track:ea39a4a82036aaba448ebcf099aad2a385728ae5abb125f3dcf67bc6991851b4` |
| 17 | `def` | [maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivsubmodule.md) | 165 | `declaration-track:d663f777df32569dd064144ca0c00cec2a3079bd7702dc3de05513ad55d2b8e0` |
| 18 | `theorem` | [mem_maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/mem-maxtrivsubmodule.md) | 173 | `result-track:006def327291050d4c21ac338f883ef5ba34a161b6dd9c32c89bc20ecf7e9df3` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-2.md) | 176 | `declaration-track:1a432b564f61c6e81ef7bd5c60bbbd43a5a06e3d03524539471df3970865a1c8` |
| 20 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot.md) | 179 | `result-track:49ff770fa9fbb470f632cf32a84d5e0e29359dfc5b1a36158234a5a67d3bbc5a` |
| 21 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/le-max-triv-iff-bracket-eq-bot.md) | 186 | `result-track:ca7858b1e34563ff232c6d7b4b17afba48808bd1d4191d5d0c9e78d83e5e947c` |
| 22 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/trivial-iff-le-maximal-trivial.md) | 195 | `result-track:db77187d03e9ca4a1b7e5fed0d117667c80e9e0e39fd412bc38ba3f8f5a2b678` |
| 23 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/istrivial-iff-max-triv-eq-top.md) | 200 | `result-track:445d846c37adb38636c35a5f2f3e66d7332b93790937ccdf4d9713cdcf77df39` |
| 24 | `def` | [maxTrivHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivhom.md) | 209 | `declaration-track:ade455631c6ffda077c72b61283413d94866caf3f3bb81e02cc60157582a82da` |
| 25 | `theorem` | [coe_maxTrivHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/coe-maxtrivhom-apply.md) | 218 | `result-track:093955066e885a7782ce38cce1f035e40240c3ed88dc0fe7776608a3fc2560a3` |
| 26 | `def` | [maxTrivEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivequiv.md) | 223 | `declaration-track:24777c2e09dc0f7191d5e3a50621a81fda5bf1d77c648b113332795824183cef` |
| 27 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/coe-maxtrivequiv-apply.md) | 231 | `result-track:55f292dfc6f4ac33e7ff9a36f187c8cf88b46f1e09e98c950f5461004bc65638` |
| 28 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivequiv-of-refl-eq-refl.md) | 236 | `result-track:8a0c41ee387522056213769c6d7803d331ea87ce54fc2271461a32f2c8520ecc` |
| 29 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm.md) | 241 | `result-track:0c36eb16f5fa14180681266e493ebc508dbf241b6d8d6314f984295b6ff74493` |
| 30 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/maxtrivlinearmapequivliemodulehom.md) | 247 | `declaration-track:a9146d7f56531f4cb4812358a03573c174060756c98f48b9e72500ba8bd7e647` |
| 31 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/coe-maxtrivlinearmapequivliemodulehom.md) | 260 | `result-track:386e7c5647adf1041eadf3b2c9aad8717e8e17f27b5ecabb091bb64d648d2bd5` |
| 32 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm.md) | 264 | `result-track:40d19b2d4cc01575f5afa8eeb1809703a94a660c6ca94faab3b6ea429b1f1f1d` |
| 33 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom.md) | 269 | `result-track:02675b0694399c42d002ef7da2feefbc5be0a1cd9503edaeb21cf9a7977c67ad` |
| 34 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom-symm.md) | 274 | `result-track:684cb2e66b40ddf034e3e325f46b085c414690421d26ec96827f8999e8debd4b` |
| 35 | `abbrev` | [center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/center.md) | 285 | `declaration-track:94e379826a1be51b23f679e501f56cd3c1d92754860bf7679ac89dd165775188` |
| 36 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-7.md) | 288 | `declaration-track:c204be75f79e9b7156c616057858ffe715357df6922c1add3afe143ea222f80b` |
| 37 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/ad-ker-eq-self-module-ker.md) | 294 | `result-track:bb3d49dff49650a07712b417bc48112e45d824bd355e92047da6314f1e5b08e0` |
| 38 | `theorem` | [self_module_ker_eq_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/self-module-ker-eq-center.md) | 298 | `result-track:34e2dd523d2502c6b874b92d9bac81a0fed5ffc3ed99ebf7ab717615936d6b71` |
| 39 | `theorem` | [abelian_of_le_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/abelian-of-le-center.md) | 302 | `result-track:a1bc6ca03772c03ca5cca6b1958cdc25c82ab256d0ac5c9e41a8fb12533edcd9` |
| 40 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/islieabelian-iff-center-eq-top.md) | 306 | `result-track:31c53d2959527266e29d70f5187d9b99add65e3bba0e4c9fed01a1041ad28f4c` |
| 41 | `theorem` | [isFaithful_self_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/isfaithful-self-iff.md) | 309 | `result-track:def2b6ad4943f12c24b31a3a07e84b1268cf30c1f1e5b16650d9f9ba36902824` |
| 42 | `theorem` | [center_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/center-eq-bot.md) | 313 | `result-track:b29672af2b856586116c4059d36a9b706a3cb1f33b5f583b288088ebb8714d37` |
| 43 | `lemma` | [commute_toEnd_of_mem_center_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/commute-toend-of-mem-center-left.md) | 327 | `result-track:cf4fdf66a5d98c060a8ed588fe655b529b4b16f64a80e7b4acc0b4988edbe6ac` |
| 44 | `lemma` | [commute_toEnd_of_mem_center_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/commute-toend-of-mem-center-right.md) | 331 | `result-track:50d131b74e624a6c5957eabc5f2b191ab93a7618d76ca89580ad94c6a988acfc` |
| 45 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liesubmodule-trivial-lie-oper-zero.md) | 348 | `result-track:7600da2d0f86a2da72ea553d1cff62dc0f68a11e36fdddba29c1ce3f59dc07a9` |
| 46 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot.md) | 353 | `result-track:be512d4a05d53e65b7103c54614a208c50b3c8c8aa8aaa84b4900b86447d63ea` |
| 47 | `lemma` | [lie_eq_self_of_isAtom_of_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/lie-eq-self-of-isatom-of-ne-bot.md) | 364 | `result-track:7b839e4d440aaab765a0d9cbf178a0c40066f5f8bcfd99d0a9f4e4d68c98b1d7` |
| 48 | `lemma` | [lie_eq_self_of_isAtom_of_nonabelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/lie-eq-self-of-isatom-of-nonabelian.md) | 368 | `result-track:3fb624dbd54eabe1fb6542a18340c6e691fdd4b1c19af4ae8536fd3568431464` |
| 49 | `def` | [TrivialLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/trivialliemodule.md) | 380 | `declaration-track:98491f7be11130b1c4d424532d791423d43e443bc8996ade4906bb75df6af345` |
| 50 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-3.md) | 386 | `declaration-track:36cd1c620d0ac1d8728b1e1facfa5400142c6d1f0bb0037ccdecfc932e83e7b6` |
| 51 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-4.md) | 388 | `declaration-track:69d81d0f445a90aeae8343491a1b84ba399ba68cebc6181660123604db9f0b35` |
| 52 | `def` | [equiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/equiv.md) | 391 | `declaration-track:e4bfb16b3e0aaf9581c338010c5aa41452d9ac6b7db68383286e754b4d6a6999` |
| 53 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-5.md) | 393 | `declaration-track:a9fd16f2f93c1641964bf51b9c81dff73166130cad5f0372eed81414da899cd0` |
| 54 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance.md) | 399 | `declaration-track:00ee74d47a94511942f0dc9abbc3d722b543b0d73ba5b7a068f21f5c766b44a3` |
| 55 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/declarations/instance-source-edition-6.md) | 402 | `declaration-track:b53b43f229e50630bee9480c282932fd980c4b629ce3d639266ee8f54665948a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e157bce56ccf59876f945ac9e2e687a42880c9ebffe8f87325e9afb5e0cff3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
