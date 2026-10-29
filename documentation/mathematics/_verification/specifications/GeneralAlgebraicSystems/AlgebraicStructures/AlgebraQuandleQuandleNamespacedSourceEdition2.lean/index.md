# Verification target: Algebra Quandle Quandle Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d2040e1e28fe8cd08490a2082d897089148780f",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d2040e1e28fe8cd08490a2082d897089148780f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Aut` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Shelf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/shelf.md) | 103 | `declaration-track:b5ee1166f0ed585ece678baffbff5fa2cfc531f31ed2039d9ddc5d2ff9af7e88` |
| 2 | `class` | [UnitalShelf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/unitalshelf.md) | 114 | `declaration-track:b3e2bd03b6cc5733c26902a406e85df5eadf95c9bc956c4201108e48379d3511` |
| 3 | `structure` | [ShelfHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/shelfhom.md) | 123 | `declaration-track:5970036bb7a75f52fca310671c2a91c2db516d5f92adbd64dc27cb0cb1caf2ad` |
| 4 | `class` | [Rack](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/rack.md) | 139 | `declaration-track:bc0eff1617de9ee4648bdd68e41b3eb738b857ff50e0cd833d7d8d854fe00d18` |
| 5 | `lemma` | [act_act_self_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-act-self-eq.md) | 169 | `result-track:aca130930f3eca8a9f5e243b871b172602fc02b48d869bca55a8349413606729` |
| 6 | `lemma` | [act_idem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-idem.md) | 174 | `result-track:6d6c0d02fbb6ec39247023ede46979e6f6d0e2a3dc0e1e452c550b554ce32ccb` |
| 7 | `lemma` | [act_self_act_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-self-act-eq.md) | 177 | `result-track:9af8573fec2673472e2f58a677c792169e78f2688d65564eee1732756d1a99ed` |
| 8 | `lemma` | [assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/assoc.md) | 185 | `result-track:8342e922239eb930ed580b94ece0f61eec631976bbba88ab4e83f7c314b06a32` |
| 9 | `def` | [act'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act.md) | 201 | `declaration-track:479d379cee191e075530ee9bc6504fa5a12aca47834336a3b35ccd355fefc7be` |
| 10 | `theorem` | [act'_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-apply.md) | 209 | `result-track:c684ac0e43418cac719b8421b91972a500add6938dbfe794c77af604bbd58103` |
| 11 | `theorem` | [act'_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-symm-apply.md) | 214 | `result-track:47131b325a6820ad77c852ec52c12e1005b6bbcc048a04ae1e249682c1e9dfe5` |
| 12 | `theorem` | [invAct_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/invact-apply.md) | 219 | `result-track:35ff32afe551151d581f4e07781e9547a9ebd6c70f80652bff48c8b793dacf40` |
| 13 | `theorem` | [invAct_act_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/invact-act-eq.md) | 224 | `result-track:68436727695d1458697c13b70dce67f1a04df7ff9d027b1dfb6cf879d36478e3` |
| 14 | `theorem` | [act_invAct_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/act-invact-eq.md) | 229 | `result-track:c6f01cf64ca61c8856a6002c65b672078708e57583bbd929551e7a0304af67c6` |
| 15 | `theorem` | [left_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/left-cancel.md) | 233 | `result-track:95496814e4697d8bc1eaa90a691d3b1dc36ff5f6062d0685e2486995dedf1326` |
| 16 | `theorem` | [left_cancel_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/left-cancel-inv.md) | 240 | `result-track:6243b05ea34ef1e7d57626ffbd54bc70367d38e7501efbc42b64ace513588b7e` |
| 17 | `theorem` | [self_distrib_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-distrib-inv.md) | 247 | `result-track:2453548b15ac765db2e0f7ec29aca033d8242c0347a6c792216d222e3a3681d4` |
| 18 | `theorem` | [ad_conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/ad-conj.md) | 259 | `result-track:650f3e15b1c50554a9a4477b57f19d071c2956ac327ae5f9a345da3fc409106b` |
| 19 | `instance` | [oppositeRack](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/oppositerack.md) | 266 | `declaration-track:7d995f1cdd6fb25536e9026d2b4aaa02e8dd7341086c4bdc99540d0fcaf735ca` |
| 20 | `theorem` | [op_act_op_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/op-act-op-eq.md) | 282 | `result-track:d850da7a172fe84f84327d888964fa16d423c6f80c193bf7a21e85088cb18635` |
| 21 | `theorem` | [op_invAct_op_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/op-invact-op-eq.md) | 287 | `result-track:0acfab3748121f76e6f9b9edd60e4df7abb94344b7a1f688664d55461b3e229e` |
| 22 | `theorem` | [self_act_act_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-act-act-eq.md) | 292 | `result-track:1b407cb0b1f6c521784e626ef7ffd8ec6e1c971454f37515bf14d6890926712a` |
| 23 | `theorem` | [self_invAct_invAct_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-invact-invact-eq.md) | 296 | `result-track:fa1fab4ca466f779f747a452eec2ff9aa2431252320ad260fc48b917fd7fca6f` |
| 24 | `theorem` | [self_act_invAct_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-act-invact-eq.md) | 302 | `result-track:48bfadcf924490269f6ee32d2910e09d4a55a9d36dd11a5eb96e343951bbf5ea` |
| 25 | `theorem` | [self_invAct_act_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-invact-act-eq.md) | 310 | `result-track:11f0684825bdcad50500337540dd16d163892380e5f9dd3309c4ca5d89e57d8b` |
| 26 | `theorem` | [self_act_eq_iff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-act-eq-iff-eq.md) | 315 | `result-track:33655cefd54a51d5b56550fe78ad6302580111744d72fcd1ac7a3406937b2c2d` |
| 27 | `theorem` | [self_invAct_eq_iff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/self-invact-eq-iff-eq.md) | 323 | `result-track:535dbdcabb760fbbc6f423069495b4f8d30da5818128d42692dd88724b7cedd6` |
| 28 | `def` | [selfApplyEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/selfapplyequiv.md) | 331 | `declaration-track:553e512b29e4f467adb6e25a33f32eebf32910ae0079dc9b87ecfea74f1381ea` |
| 29 | `def` | [IsInvolutory](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/isinvolutory.md) | 341 | `declaration-track:a0015e2d358a9185a15c25fc6388532b04c129913f6d1c04368f84b3d911532c` |
| 30 | `theorem` | [involutory_invAct_eq_act](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/involutory-invact-eq-act.md) | 345 | `result-track:70fb6cee3adddd47ac6c9eac26bd9a98c3d5dae5bfb0f672d7318f6792dda0b1` |
| 31 | `def` | [IsAbelian](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/isabelian.md) | 352 | `declaration-track:5c8eded23dcc536b4c1c6c92d6245b0d5ca42549803f5460eeeeb970eaf4077d` |
| 32 | `theorem` | [assoc_iff_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/assoc-iff-id.md) | 358 | `result-track:20d4767ecfb72eefe9eff63d47295a5cd3e5e64af550510c5bb97dc16e969754` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 369 | `declaration-track:fcee0d8edefba0571ad67a2e3b2d7bba33244ba6efa11cbe016df97e51496968` |
| 34 | `theorem` | [toFun_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/tofun-eq-coe.md) | 373 | `result-track:094ea56ccac4cad3f7cd5ee7377b4a61feb7a98733301a66f45589d162c55c93` |
| 35 | `theorem` | [map_act](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/map-act.md) | 377 | `result-track:6758a40643da63783c55a98dd0196fd7731f90f4b912d62b9fc2d1372211a867` |
| 36 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/id.md) | 382 | `declaration-track:eea745968e072d86eb87d96f1eebb6c9b7e4c5f71a04882d5451b8d6731bb588` |
| 37 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/inhabited.md) | 387 | `declaration-track:c53e013140af093571d995e7aaabe74b6d04365d440fd557c30cfd60ab9ac72e` |
| 38 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/comp.md) | 392 | `declaration-track:d9769d33cfadf4ea242f689dd5437f8bc7e9fc0c33bcd18236e728cf6da5c7fa` |
| 39 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/comp-apply.md) | 399 | `result-track:2b1bb5ca20f8b60b26133396c7ee80d147bfac63e2a6d146ce7420b00b830159` |
| 40 | `class` | [Quandle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/quandle.md) | 407 | `declaration-track:0a17b628b70086c5d7e3084b6335a7806357b4e9a4511596caa9c692aeef79cc` |
| 41 | `theorem` | [fix_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/fix-inv.md) | 421 | `result-track:fac923bad5f77e19b07b1d3c313064e8036f4c0eaa01cf5010ce9f70bfbbf20f` |
| 42 | `instance` | [oppositeQuandle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/oppositequandle.md) | 426 | `declaration-track:a92b6fa3cc9966075c8ba03733ea4e16766fd81dc891436f70176810959be1ae` |
| 43 | `def` | [Conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/conj.md) | 438 | `declaration-track:2d33197c5453f144b7c1cacdb5fbe4357e8a31401a6e0155bf601000f799e280` |
| 44 | `instance` | [Conj.quandle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/conj-quandle.md) | 441 | `declaration-track:ca1138a9317b0da403407841ff4a3901f749baaaf042a63ba1a033b904e2bf9c` |
| 45 | `theorem` | [conj_act_eq_conj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/conj-act-eq-conj.md) | 457 | `result-track:c2dcbc6b369bb8b16fb81d260a1bb002006622eda09a02e4e0b2feff08296ccd` |
| 46 | `theorem` | [conj_swap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/conj-swap.md) | 462 | `result-track:dd74d88fbc589edec9ce06704f0ee4049fd6184821a06729bd442e9dc32b497f` |
| 47 | `def` | [Conj.map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/conj-map.md) | 469 | `declaration-track:592859a656e7a292e7a33236daddf47d91299348b68aa9e77c3560311f933384` |
| 48 | `def` | [Dihedral](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/dihedral.md) | 484 | `declaration-track:42e807f7778277274b2cf599d3c3e6accf380f4888cc1fdcce41c09c22e5b754` |
| 49 | `def` | [dihedralAct](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/dihedralact.md) | 491 | `declaration-track:d4882238f67c66c9a728a9e9a4d88f611057c66d8e5dd3587a7aeb02f392e781` |
| 50 | `theorem` | [dihedralAct.inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/dihedralact-inv.md) | 494 | `result-track:6908435f664fe02830cfae80d4c32cbe6c1bd657761e7e4310a9c264864d4023` |
| 51 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/instance.md) | 500 | `declaration-track:5eea6b17acf1129735e36e289061e57a656e3433872bc76b9489a51e30cdee7e` |
| 52 | `def` | [toConj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toconj.md) | 522 | `declaration-track:974183387da8e10c1cd7944ac3c54b300173f5906dbf9c9ed103ee2a7cd5af0b` |
| 53 | `inductive` | [PreEnvelGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgroup.md) | 593 | `declaration-track:cadc17b47dee6800f6c28a4c68e9407c3785298ac699280312535358aa4a20ca` |
| 54 | `instance` | [PreEnvelGroup.inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgroup-inhabited.md) | 600 | `declaration-track:cade9ed2de347c1b0fc9ab6179c17e9a9525e9d8e9054b95a7603e60f31dabb1` |
| 55 | `inductive` | [PreEnvelGroupRel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-source-edition-2.md) | 611 | `declaration-track:7ed0509dd58f17305ea9b5c4d502994b37ee7a49cc557dade5ceb61f2a139083` |
| 56 | `instance` | [PreEnvelGroupRel'.inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-inhabited.md) | 628 | `declaration-track:015c3e1eff6fb27b1b471004f6ab396a9338a72b94fcb1868f4d2ea2db097d25` |
| 57 | `inductive` | [PreEnvelGroupRel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel.md) | 636 | `declaration-track:19695aa49f99bb52c290a12bf0434cd2671608d4a95a388468eabb6caac6e106` |
| 58 | `theorem` | [PreEnvelGroupRel'.rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-rel.md) | 642 | `result-track:362306d4a3d3b98d46adbc8fe648af9c1c3944c550b2a2645f2da7ba5efead65` |
| 59 | `theorem` | [PreEnvelGroupRel.refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-refl.md) | 647 | `result-track:b6f971da5355d47aefc5d48635bbc6f91d19cf5e090daa0adb0f06a39e29c7c7` |
| 60 | `theorem` | [PreEnvelGroupRel.symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-symm.md) | 653 | `result-track:490e0e1da7e373779994760fee3f7e266a9dd501560f48921901f1458c7300bd` |
| 61 | `theorem` | [PreEnvelGroupRel.trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgrouprel-trans.md) | 659 | `result-track:bdefeec4d544d4bb449411c9a0364282c2df276cf705ba0cada7b5288a73bd74` |
| 62 | `instance` | [PreEnvelGroup.setoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/preenvelgroup-setoid.md) | 664 | `declaration-track:55f46afefe1e8b10a47632c85b484c17d8a0e65406d85f4eb339286053ea6b9d` |
| 63 | `def` | [EnvelGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/envelgroup.md) | 675 | `declaration-track:27743c19e24a3e8dac891c5c0e7b40c791e31c3869e80585c53a84897cfe7f98` |
| 64 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 681 | `declaration-track:6fe4e36d504792fc7b1e086331011b1305d15132fc6998ba4433390e6153158a` |
| 65 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 695 | `declaration-track:734c4648e805edecc6bb7f54f11ebf3a33703f49c1f35e380a3ad0da029a21c5` |
| 66 | `instance` | [EnvelGroup.inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/envelgroup-inhabited.md) | 699 | `declaration-track:861b312912a9aadd028435c1d0f86482569ad03402d3d6963b2c3cc4a4af827e` |
| 67 | `def` | [toEnvelGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toenvelgroup.md) | 706 | `declaration-track:6e04186d42bec7ad1b2d99fdbee0621e2a2c0e6db34fb565898d25d1a683a878` |
| 68 | `def` | [toEnvelGroup.mapAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toenvelgroup-mapaux.md) | 715 | `declaration-track:c777825b8b28ae4c24796c4ae5d81f7a1890f581efd0726f18dd078e6481bb92` |
| 69 | `theorem` | [well_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/well-def.md) | 729 | `result-track:250065dc88ab4ae6c8c8a7ba44d147b2117c1f60e925dd824f5453258f3ea4b2` |
| 70 | `def` | [toEnvelGroup.map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toenvelgroup-map.md) | 750 | `declaration-track:b69336ee8348b510dc451ecef12228806932e2f8526b7972bd90455ab64e9bd7` |
| 71 | `theorem` | [toEnvelGroup.univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toenvelgroup-univ.md) | 785 | `result-track:da602c2a660de287bbb0d9a33534b9c6ba186746a0811d3e82c9ccd7a4ae0ce5` |
| 72 | `theorem` | [toEnvelGroup.univ_uniq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/toenvelgroup-univ-uniq.md) | 793 | `result-track:ef6485fb07a484d2c6c8713b037ff533e4bd122949b4a9b97155f260f61a12ac` |
| 73 | `def` | [envelAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/envelaction.md) | 804 | `declaration-track:f1cad6e51d79dcfea8e3d409adc7cc427e4332a86f3f989a0ef2715a3c168c68` |
| 74 | `theorem` | [envelAction_prop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuandleQuandleNamespacedSourceEdition2.lean/declarations/envelaction-prop.md) | 809 | `result-track:b8b2016655a2e08ebd5adee724e06ab402798a0676813e32d9b6fba7991f2bb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a0b2260c42877a6aa944a4f2f63f1bc97d75bc31d2217bb69568cfbc4e5003b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
