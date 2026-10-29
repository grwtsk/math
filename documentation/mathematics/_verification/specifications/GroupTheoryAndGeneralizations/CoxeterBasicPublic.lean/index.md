# Verification target: Coxeter Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "556b92e9135ec07d3437ab012daf6312c8563787",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `556b92e9135ec07d3437ab012daf6312c8563787`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/relation.md) | 104 | `declaration-track:79ef5b8f8d34cd1bce0fc83e22bd786f857a01c7e65b5f81e4d3486a842c111b` |
| 2 | `def` | [relationsSet](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/relationsset.md) | 107 | `declaration-track:ec803d7345f38abf17ce561b3914de9c67350c0ed51ba32d807cdce4430e1815` |
| 3 | `def` | [Group](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/group.md) | 111 | `declaration-track:e4b4acb48d2c06169d9c8e08d46af792c58c77ce670d1d976965cf81466f8844` |
| 4 | `def` | [simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple.md) | 115 | `declaration-track:1f2618571b8565487767f6abfddc40e58cdfca9f741e337d2fca7d1245048cad` |
| 5 | `theorem` | [reindex_relationsSet](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindex-relationsset.md) | 117 | `result-track:9259bf93043b4336673d742f0d38a3bb7d4ddc8be83121fa1d622a1cc042660d` |
| 6 | `def` | [reindexGroupEquiv](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindexgroupequiv.md) | 130 | `declaration-track:1bffb20495f840ca487645c846c60b0b851372b8d1f5bc9a4a9e257f2d62e085` |
| 7 | `theorem` | [reindexGroupEquiv_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindexgroupequiv-apply-simple.md) | 140 | `result-track:d381757937a98c42a6ba3534f0b304d7bae58c44668a3ec20652c82b9eda4bb8` |
| 8 | `theorem` | [reindexGroupEquiv_symm_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindexgroupequiv-symm-apply-simple.md) | 143 | `result-track:c2d5862780de26754f7b7b3e465e6185702858593cf0c28da9b2927cdabf93fb` |
| 9 | `structure` | [CoxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/coxetersystem.md) | 157 | `declaration-track:23c3545aa13d8ff0bc016a0031a27e05f7d4fc331661058f02ef5e294385341c` |
| 10 | `class` | [IsCoxeterGroup.](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/iscoxetergroup.md) | 162 | `declaration-track:2590c8e24f8f6f7f0f8167053d0493e23aec7bb82d04861e25abb47e82676d63` |
| 11 | `def` | [CoxeterMatrix.toCoxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/coxetermatrix-tocoxetersystem.md) | 166 | `declaration-track:4ac25ddb9300f58ad7921bf5b0283c3be138089432cdfc9208ec15bf323ddd44` |
| 12 | `def` | [reindex](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindex.md) | 180 | `declaration-track:c3d83ada788f1ad15ae8a0e4185f10ed4012cf3dba962237692bc709b27ad78a` |
| 13 | `def` | [map](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/map.md) | 185 | `declaration-track:157f5f195b8ba74c4f2977f13cab469c7b0cdea33431285c987364a4e9c54d19` |
| 14 | `def` | [simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-source-edition-2.md) | 190 | `declaration-track:964923172284542f5bb8c387b307c3594eab3119ecc61263da1d6ab3d446112b` |
| 15 | `theorem` | [_root_.CoxeterMatrix.toCoxeterSystem_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/root-coxetermatrix-tocoxetersystem-simple.md) | 193 | `result-track:cb2be168c56d4e7b2f89b43313055610453f0b9888929c3044d738de03be8504` |
| 16 | `theorem` | [reindex_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/reindex-simple.md) | 196 | `result-track:b257a6fdc6a6c7971d6397603e0f802210e90148c3e00295c7195478a66db063` |
| 17 | `theorem` | [map_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/map-simple.md) | 198 | `result-track:64db28703dc96e629951c3ef6234069a3b817498a75cc3f5fb66906204c6a654` |
| 18 | `theorem` | [simple_mul_simple_self](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-mul-simple-self.md) | 204 | `result-track:a742af37a184e5ff2c902083f19c83e642beafdb90baba576566ca1fe3bb9aaf` |
| 19 | `theorem` | [simple_mul_simple_cancel_right](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-mul-simple-cancel-right.md) | 213 | `result-track:3c43a28805fc263514a43cb9d998d14c59836151f08871d756b0fb0852b3f59a` |
| 20 | `theorem` | [simple_mul_simple_cancel_left](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-mul-simple-cancel-left.md) | 217 | `result-track:17fc3694e1aa9125d48153a1d59e45df5b8c19b846aa18ed65591629727e93c5` |
| 21 | `theorem` | [simple_sq](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-sq.md) | 220 | `result-track:8f51575a268a76e105b0679876928eb73f1b7f71bbc560a4bf3ad446d3e9d2b3` |
| 22 | `theorem` | [inv_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/inv-simple.md) | 223 | `result-track:9a5905ff19ab59f18e45239528867f4b76e7e07a87ba0bcef49276e0ada9f4e4` |
| 23 | `theorem` | [simple_mul_simple_pow](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-mul-simple-pow-source-edition-2.md) | 228 | `result-track:a9d36e9ef830993a84075bc94dcb5db098f319d5be30e0584406b9d92e44d499` |
| 24 | `theorem` | [simple_mul_simple_pow'](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-mul-simple-pow.md) | 236 | `result-track:1cb14fedc79a51f5734ced4b13291a5001f2b3640a2e3c574cb9981cdfa2927d` |
| 25 | `theorem` | [subgroup_closure_range_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/subgroup-closure-range-simple.md) | 241 | `result-track:4e6c2e4116e5afd3cc70ed00fd4c4487c0ff336f819bbc51717a91338e3c9027` |
| 26 | `theorem` | [submonoid_closure_range_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/submonoid-closure-range-simple.md) | 248 | `result-track:f66aa57876f8ccee865d1cbcebc594583f1dc08530a8164f86ebf04d23adacf8` |
| 27 | `theorem` | [simple_induction](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-induction.md) | 257 | `result-track:e0fb7df621ba8ea7566d86527181380cdd99e5736099e8e5786cd27196059972` |
| 28 | `theorem` | [simple_induction_left](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-induction-left.md) | 265 | `result-track:b93b674a0d8cc6b6d189ab16d8858f9bc46f7bcf73f8dc28543011a0089ed8b7` |
| 29 | `theorem` | [simple_induction_right](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-induction-right.md) | 278 | `result-track:0ab889aa1490abfbfb23de3495b7bb58dad658d8642ccb02f6f0821e345e1bfd` |
| 30 | `theorem` | [ext_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/ext-simple.md) | 292 | `result-track:92dc63ed4cc6978303a6a37027958d53386b9423c9ca3f6579fdf3e7b1fba152` |
| 31 | `def` | [_root_.CoxeterMatrix.IsLiftable](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/root-coxetermatrix-isliftable.md) | 298 | `declaration-track:f9e3192a95782066976d875a39c7febfa3bff38d20086dd7108e9258d0a43040` |
| 32 | `theorem` | [relations_liftable](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/relations-liftable.md) | 301 | `result-track:cf64f85630012d654fcae7bae3e4dc226a8d953d46ffcc5ad0b522fb2f9b3c6c` |
| 33 | `def` | [groupLift](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/grouplift.md) | 308 | `declaration-track:30871288074bafb76ff9a1ecfe9612ea0b244482c3d3afe1f1f0d138a9bb00df` |
| 34 | `def` | [restrictUnit](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/restrictunit.md) | 312 | `declaration-track:a18eede7b57cb605a074181a0118095c0d3078638ab8c397e6ca1a7240d6e693` |
| 35 | `theorem` | [toMonoidHom_apply_symm_apply](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/tomonoidhom-apply-symm-apply.md) | 320 | `result-track:4ba376236ff2e94f5ea83e6ed7033bb3cd166edbf7b0493e84688f7a9a4a1730` |
| 36 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/lift.md) | 332 | `declaration-track:66fe2c0e0dbc90e94705315ae299b75d2abc7227bad4aa949a718a79eb9faee6` |
| 37 | `theorem` | [lift_apply_simple](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/lift-apply-simple.md) | 352 | `result-track:d3a41e1565cb89d87b850cab829335d7645a60a0f741edd38a77fc1c69f16645` |
| 38 | `theorem` | [simple_determines_coxeterSystem](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/simple-determines-coxetersystem.md) | 358 | `result-track:203d10d802ba1734808ec62b7b48b26e6fa9e0c8ec9824af6cf0e105ea574c6e` |
| 39 | `def` | [wordProd](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod.md) | 370 | `declaration-track:6e8e40bc2e391c221717e6957df1c08e0c49bc9da90f511c3cee0c08283b8925` |
| 40 | `theorem` | [wordProd_nil](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-nil.md) | 374 | `result-track:8e5ebb2cf4c37f08c99b9b7bd16b2f2811888129a6d6cc9e587588fda06f8b2a` |
| 41 | `theorem` | [wordProd_cons](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-cons.md) | 376 | `result-track:c572b1145d8ab12970344a8376a6805894bf3eeeed9b03641041bc3639dc7246` |
| 42 | `theorem` | [wordProd_singleton](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-singleton.md) | 378 | `result-track:7d84f35bea9d7282ca18878f62f9956fc48f45a6a6570848d353e97fc56705f9` |
| 43 | `theorem` | [wordProd_concat](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-concat.md) | 380 | `result-track:680e60f5024466cf2c8b658405f68b9de3d9f1593867a58ba408b59d56f01098` |
| 44 | `theorem` | [wordProd_append](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-append.md) | 382 | `result-track:7833a97ee8cfd699feabd050f54c825bc7cba438484a5c2f63f4a553624c0c24` |
| 45 | `theorem` | [wordProd_reverse](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-reverse.md) | 384 | `result-track:e59a5350343cd7f5e65be6ac8131a21646259ad2ad5f45bf51318862e6785a5e` |
| 46 | `theorem` | [wordProd_surjective](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-surjective.md) | 389 | `result-track:0f97aa4006b5aba5f2784d0eff6c64b8f446e7e98d5daa1a9f3924e44ed3e466` |
| 47 | `def` | [alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/alternatingword.md) | 399 | `declaration-track:8cd1eaf756844b20f287520359737c6734fd61b6466644052804d1d185902eb6` |
| 48 | `abbrev` | [braidWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/braidword.md) | 405 | `declaration-track:a235929d3093ca174fb493c7a7ea630652d7dbae82cc0baabd1693fdaac3d2c7` |
| 49 | `theorem` | [alternatingWord_succ](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/alternatingword-succ.md) | 407 | `result-track:8b0ff9619e3bc4589dc7d56a2d34bde95b2c2d2b25546f54bb67149d5154c533` |
| 50 | `theorem` | [alternatingWord_succ'](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/alternatingword-succ-source-edition-2.md) | 410 | `result-track:da80adb28fe9d62b28ef89d0ed159776ba54505b5688d8b1404f674ec91ac1cd` |
| 51 | `theorem` | [length_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/length-alternatingword.md) | 421 | `result-track:bc13d5fc1c7c75ba0cc7a6df9ed9c1af53f7d290843ceddab00414fee839d35b` |
| 52 | `lemma` | [getElem_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/getelem-alternatingword.md) | 427 | `result-track:94262b73facf3064fa8527ef53391d145043d9eb2987c512a5d745e84b33724a` |
| 53 | `lemma` | [getElem_alternatingWord_swapIndices](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/getelem-alternatingword-swapindices.md) | 434 | `result-track:2acaa0fbc16de357e1e9f070f56ab817715eef128f8c3e740d06ecacd2b26323` |
| 54 | `lemma` | [listTake_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/listtake-alternatingword.md) | 446 | `result-track:98711ef0a29f7a0f5a784a609e20cd5e904b067f288e8a7cc00e8896ebdf5104` |
| 55 | `lemma` | [listTake_succ_alternatingWord](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/listtake-succ-alternatingword.md) | 469 | `result-track:d907fec170a77ec344a8d6747c405607045531a09dfa4fb46be31d8751d38357` |
| 56 | `theorem` | [prod_alternatingWord_eq_mul_pow](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/prod-alternatingword-eq-mul-pow.md) | 478 | `result-track:5c983fa198882be71429d0b122efae235b0bf02b5d42537b998c16c7217214a9` |
| 57 | `theorem` | [prod_alternatingWord_eq_prod_alternatingWord_sub](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/prod-alternatingword-eq-prod-alternatingword-sub.md) | 492 | `result-track:78cf5379477b1651282e535461aaf3f15142e03e8f4812eefb6e259e05bf6ea6` |
| 58 | `theorem` | [wordProd_braidWord_eq](../../../../GroupTheoryAndGeneralizations/CoxeterBasicPublic.lean/declarations/wordprod-braidword-eq.md) | 519 | `result-track:491f00d503715765e45dae445b88117286be72bf31ee85bfc24b62ca6db9db6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f375a748b1a9599469e6f2778404c332e2cef2f344c3ddef7769c46903903c06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
