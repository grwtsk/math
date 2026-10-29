# Verification target: Specific Groups Cyclic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cca7580ea1cb569efd4b423d4326cb4e02e905bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean.json)

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
| 1 | `theorem` | [card_pow_eq_one_eq_orderOf_aux](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/card-pow-eq-one-eq-orderof-aux.md) | 64 | `result-track:a321347036a3a7deef468ebaaead8fb6b5519e32c79dacdf624e8119e07ec6d0` |
| 2 | `theorem` | [card_orderOf_eq_totient_aux₁](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/card-orderof-eq-totient-aux.md) | 86 | `result-track:13732cb2792e2c22d887fff0ea3ea13f576caccfb34bf479e9e728310f4b051b` |
| 3 | `theorem` | [card_orderOf_eq_totient_aux₂](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/card-orderof-eq-totient-aux-source-edition-2.md) | 109 | `result-track:3530655f8e356b2fc11c427955abe39a269363af289cbe628b3df0fd667871bb` |
| 4 | `theorem` | [isCyclic_of_card_pow_eq_one_le](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-of-card-pow-eq-one-le.md) | 144 | `result-track:06e398b16ecd1380a69471f6ca10e183b1364620890daff7af6f2d82d2e7b730` |
| 5 | `lemma` | [IsCyclic.card_orderOf_eq_totient](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-card-orderof-eq-totient.md) | 155 | `result-track:f8f3bf0102fe69afdd95e47bb9846aa262d9730de05267d8758970aeb76de290` |
| 6 | `theorem` | [isSimpleGroup_of_prime_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/issimplegroup-of-prime-card.md) | 161 | `result-track:1ae050b8077025bea0056e91ea6e4a44848f70bb70be46b469293a3cb98f6ee4` |
| 7 | `theorem` | [MonoidHom.isMulCommutative_of_isCyclic_of_ker_le_center](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/monoidhom-ismulcommutative-of-iscyclic-of-ker-le-center.md) | 181 | `result-track:9272e68e3f4985fbe7469f798c691915151c44121e6d6f1b25297615ce526b24` |
| 8 | `theorem` | [commutative_of_cyclic_center_quotient](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/commutative-of-cyclic-center-quotient.md) | 203 | `result-track:48b54dfb7450f08c95bbfd116bed3abf98759292faf552e016d0319659c6d46d` |
| 9 | `def` | [commGroupOfCyclicCenterQuotient](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/commgroupofcycliccenterquotient.md) | 210 | `declaration-track:2db17dbec571c8c685e3935dcd8186fe86222ca90557ad9cdd99be8492061146` |
| 10 | `theorem` | [isMulCommutative_of_isCyclic_quotient_center_self](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/ismulcommutative-of-iscyclic-quotient-center-self.md) | 218 | `result-track:ff50e15635775461c6794caa928b5471ced637b05a76cc99d3f1e198b7c5f3ff` |
| 11 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/instance-source-edition-3.md) | 231 | `declaration-track:3ec41aebb16479c45ab8f8b8a276f251769575c675577a1dd88dd28b27b89c02` |
| 12 | `theorem` | [prime_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/prime-card.md) | 239 | `result-track:daa4f0bf538ffec680de32fdaf491e350eb61a2594f46d2752489f16ded3d7a3` |
| 13 | `theorem` | [finite](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/finite.md) | 260 | `result-track:1fa4cd0f4a38cf836e97c07c20af409eb655375eb149e9abdb236cb51289248a` |
| 14 | `theorem` | [Group.is_simple_iff_prime_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/group-is-simple-iff-prime-card.md) | 268 | `result-track:1db2578ab39564f02b22d75080d2365228fdfc4952ff785b623932884cafb68f` |
| 15 | `theorem` | [CommGroup.is_simple_iff_prime_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/commgroup-is-simple-iff-prime-card.md) | 273 | `result-track:d99051e53e5db6db3e01975871fc135ccc9196558d1d5190c000556a29ff3839` |
| 16 | `theorem` | [isCyclic_of_isCoatom_subsingleton](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-of-iscoatom-subsingleton.md) | 279 | `result-track:b6d1a092ad9576625c5505959f12503783c8f4e96c2c4f1166baad53601714f5` |
| 17 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/instance-source-edition-4.md) | 292 | `declaration-track:eb1924f60acf42ff024b21e8222ead9b13b978d085ef052ab4e6a63b00de39f1` |
| 18 | `instance` | [ZMod.instIsAddCyclic](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmod-instisaddcyclic.md) | 294 | `declaration-track:34330f10d83f64c275cedbaa18110b6ed793f08b13aff42bfedd2e6656e4d757` |
| 19 | `instance` | [ZMod.instIsSimpleAddGroup](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmod-instissimpleaddgroup.md) | 297 | `declaration-track:327038c4a26bfaa789232bee53fd20448920d4460828fa7794bfe37524761d59` |
| 20 | `lemma` | [LinearOrderedAddCommGroup.isAddCyclic_iff_nonempty_equiv_int](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/linearorderedaddcommgroup-isaddcyclic-iff-nonempty-equiv-int.md) | 306 | `result-track:e8c7ca5fc235ad502c829280b3440fb2edd9497aa72ad23b8b09b3cea41ff263` |
| 21 | `lemma` | [LinearOrderedCommGroup.isCyclic_iff_nonempty_equiv_int](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/linearorderedcommgroup-iscyclic-iff-nonempty-equiv-int.md) | 325 | `result-track:3ea6297a79c9f0252ac33200123d79f3e99543663e364e9584e4bcdbe1d66f1c` |
| 22 | `theorem` | [IsCyclic.exponent_eq_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-exponent-eq-card.md) | 338 | `result-track:754a3bb0d9d7050eff3cae69cc177e124b68b5b297e2fdb1e0a3917391eb34c6` |
| 23 | `theorem` | [IsCyclic.of_exponent_eq_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-of-exponent-eq-card.md) | 346 | `result-track:98e8d0ae6121d0bb1c3ceaab0cfa563c34859228d31c9492320333b46d00cbce` |
| 24 | `theorem` | [IsCyclic.iff_exponent_eq_card](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-iff-exponent-eq-card.md) | 353 | `result-track:1c35e347378a128148ce6cdf9bc5cbcb201852d98f5e096c6ed70cf67a9025c7` |
| 25 | `theorem` | [IsCyclic.exponent_eq_zero_of_infinite](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-exponent-eq-zero-of-infinite.md) | 358 | `result-track:93eec75729b8a86d7ccc153d485a8cad1d2ad974a9cb63542d0e562c7a018568` |
| 26 | `theorem` | [ZMod.exponent](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmod-exponent.md) | 364 | `result-track:e9b8ecb90b83b8a51775796cc4ce4607ded73ffd7b30eda964943d621812ed3e` |
| 27 | `lemma` | [not_isCyclic_iff_exponent_eq_prime](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/not-iscyclic-iff-exponent-eq-prime.md) | 370 | `result-track:6feb7f05fc57b9383b1266d3d5246eb00a079e55987a219cd4a02bbf7f32aaf1` |
| 28 | `theorem` | [zmultiplesHom_ker_eq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmultipleshom-ker-eq.md) | 402 | `result-track:ce5458e0b2ca1900b5d05857d1944443f220756ff8b6507b228c36be5116be8a` |
| 29 | `theorem` | [zpowersHom_ker_eq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zpowershom-ker-eq.md) | 409 | `result-track:273edbea618e8fa51733062287e8b75d4cf72b91b13949a74e7ca23f4a55486d` |
| 30 | `theorem` | [AddSubgroup.relIndex_zmultiples_zsmul_zsmul](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/addsubgroup-relindex-zmultiples-zsmul-zsmul.md) | 415 | `result-track:e6fba867672bf1c0c4630974d28ed29d8a82f2c2eeb9dd0df451b2444880b34b` |
| 31 | `theorem` | [Subgroup.relIndex_zpowers_zpow_zpow](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-relindex-zpowers-zpow-zpow.md) | 427 | `result-track:61b5f5805f9bab9d804ef75fdc3e0ee8ddc1db968ccb047ba3e100d30f4735e3` |
| 32 | `theorem` | [Subgroup.zpowers_le_zpowers_iff](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-zpowers-le-zpowers-iff.md) | 436 | `result-track:0981a48e82dc3cb85f2ab514694fba06122a44250f6561ba3b0c1e79ce2ae2ee` |
| 33 | `theorem` | [Subgroup.relIndex_zpowers_zpow](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-relindex-zpowers-zpow.md) | 446 | `result-track:0041a336733bd3bee37f5c05e1f4118f8ef9b9ddbc78cef1a04a9d9d27053bce` |
| 34 | `theorem` | [Subgroup.index_zpowers_zpow](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-index-zpowers-zpow.md) | 454 | `result-track:4aa53800f5200782802ed86bceac812517762e93e18af11866dd916a541f41df` |
| 35 | `theorem` | [Subgroup.zpowers_eq_zpowers_iff'](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-zpowers-eq-zpowers-iff.md) | 464 | `result-track:5fef9c5c629ee38d5e6e9e21975c6aeb362cbe3221d49cd8dde079c3d4858b8d` |
| 36 | `theorem` | [Subgroup.zpowers_le_zpowers_of_dvd](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-zpowers-le-zpowers-of-dvd.md) | 470 | `result-track:56b0ff0378b0c5e600e12a40fdbd80fe3024503e107e96e499fd7a1da0e199e0` |
| 37 | `theorem` | [Subgroup.zpowers_zpow_sup](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-zpowers-zpow-sup.md) | 476 | `result-track:d283136f8f2733ca2721d82cd0fa8c9e3d841ff6786bfd25d0b887b04225d018` |
| 38 | `theorem` | [Subgroup.exists_zpowers_eq_of_zpowers_eq_top](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/subgroup-exists-zpowers-eq-of-zpowers-eq-top.md) | 489 | `result-track:b0160735f4acaf2f2727b827370eb183feac56b3975e25854b5fa40b9bca39da` |
| 39 | `def` | [zmodAddEquivOfGenerator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddequivofgenerator.md) | 503 | `declaration-track:f2d2c2ce208b7342286876f16bb2b2bbd7e2868801732ac674951a1d9c9cc428` |
| 40 | `theorem` | [zmodAddEquivOfGenerator_apply_intCast](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddequivofgenerator-apply-intcast.md) | 511 | `result-track:6a41a2edde648505b7d8308fe17a197e85e2c009d00493ab2ce1f43959981c7e` |
| 41 | `theorem` | [zmodAddEquivOfGenerator_symm_apply_zsmul](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddequivofgenerator-symm-apply-zsmul.md) | 518 | `result-track:252cdafbac22fc6d48ed25f6063dfcdd3f38b38c83fa054977d5d3b92a06b812` |
| 42 | `theorem` | [zmodAddEquivOfGenerator_apply_one](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddequivofgenerator-apply-one.md) | 523 | `result-track:b184417f3f365ddf57c2dbc035ed4fc1322455f7d3b72194e37bcb6059e87342` |
| 43 | `theorem` | [zmodAddEquivOfGenerator_symm_apply_generator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddequivofgenerator-symm-apply-generator.md) | 527 | `result-track:cdd3d0b9f2f7f39d682cfbfe02c9a8672530ec42d5abca59b446e6281de742da` |
| 44 | `def` | [zmodAddCyclicAddEquiv](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodaddcyclicaddequiv.md) | 536 | `declaration-track:4bb57a84116e9a07d006ed01a40ed97a97d822fd4dd6ca2ea8a9b3a29dbd90d0` |
| 45 | `theorem` | [exists_prime_addEquiv_ZMod](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/exists-prime-addequiv-zmod.md) | 541 | `result-track:00b09bd1e5417d7f3099d1ddbfe3179f6264f066ccdbdfbef2d297670d21dcaa` |
| 46 | `def` | [zmodMulEquivOfGenerator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodmulequivofgenerator.md) | 557 | `declaration-track:5e47e85b9fc4501d2e9421d9da1d9e4f45ed0881a8be03230008ebc8266c4bb9` |
| 47 | `theorem` | [zmodMulEquivOfGenerator_apply_ofAdd_intCast](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodmulequivofgenerator-apply-ofadd-intcast.md) | 561 | `result-track:c564e9d051670c800d6013be8804d4d12d484527d20949a657b35523f02f68e1` |
| 48 | `theorem` | [zmodMulEquivOfGenerator_symm_apply_zpow](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodmulequivofgenerator-symm-apply-zpow.md) | 566 | `result-track:eee5ede19297d7cd00089715e5b9fc699983b68d530fc14c9ea3841c9948f8b0` |
| 49 | `theorem` | [zmodMulEquivOfGenerator_apply_ofAdd_one](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodmulequivofgenerator-apply-ofadd-one.md) | 571 | `result-track:ca201d010f64a3e10479ef52fbe9c387dc148f34dafe135438403f55802a5a07` |
| 50 | `theorem` | [zmodMulEquivOfGenerator_symm_apply_generator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodmulequivofgenerator-symm-apply-generator.md) | 576 | `result-track:d59d05d789ac2c6f1f8a022924440d90f3bab7dd84cda9966ff6c0b4a1b74447` |
| 51 | `def` | [zmodCyclicMulEquiv](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmodcyclicmulequiv.md) | 585 | `declaration-track:4e8694af5fe558d3ffedc37060ceb12bce0c1bacec2d355fcae68dbae192c3c4` |
| 52 | `def` | [addEquivOfAddCyclicCardEq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/addequivofaddcycliccardeq.md) | 590 | `declaration-track:092ec92823a7c02c6689480156bab870853eb89410e4cbc5277c056a0b44df9e` |
| 53 | `def` | [mulEquivOfCyclicCardEq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivofcycliccardeq.md) | 596 | `declaration-track:bd039871cde89735d70cb315e254383da57a3a164f1e0f21d39c8811c49d0d14` |
| 54 | `def` | [mulEquivOfPrimeCardEq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivofprimecardeq.md) | 602 | `declaration-track:f1fee28a3332c8417e923dfa00d996e72bd5b9b8e909f4ee3a6ee2f184ea9ae5` |
| 55 | `theorem` | [IsCyclic.infinite_of_ne_bot](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-infinite-of-ne-bot.md) | 615 | `result-track:1fc1fbb1e28758e68237a65c360ec7546d4fc9a3d988f4f0c04324e1169bc51f` |
| 56 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/instance-source-edition-2.md) | 625 | `declaration-track:3273a110986edfb65a259af65064c558a2aec38378270c173b4cea095cbd0e67` |
| 57 | `lemma` | [zpowersHom_bijective](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zpowershom-bijective.md) | 628 | `result-track:b5a522a7510daddd2e98e4e182d1852c814ad7ee8155da7418490f7b80213f36` |
| 58 | `def` | [intEquivOfZPowersEqTop](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intequivofzpowerseqtop.md) | 637 | `declaration-track:e606f146770df67ee358971f4804ea394cb2f61d6097f57298ec0e89f0448cf8` |
| 59 | `lemma` | [intEquivOfZPowersEqTop_symm_self](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intequivofzpowerseqtop-symm-self.md) | 642 | `result-track:c507128b0f9d190064848c68f7d64769b2290d7d433b1853369aaddd505c3753` |
| 60 | `lemma` | [mulintEquivOfZPowersEqTop_symm_apply_zpow](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulintequivofzpowerseqtop-symm-apply-zpow.md) | 646 | `result-track:f83f6c67676b4c449677ce6ac1d9e9cfd846771e54bd05453d71f923b9cd3662` |
| 61 | `lemma` | [mulintEquivOfZPowersEqTop_strictMono](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulintequivofzpowerseqtop-strictmono.md) | 650 | `result-track:954d9ca11f3f0fed88c9c76388581511de74a744a73105b2a0c16c25cd5dbaf9` |
| 62 | `lemma` | [mulintEquivOfZPowersEqTop_strictAnti](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulintequivofzpowerseqtop-strictanti.md) | 657 | `result-track:9492fd6df24633745ecc92aebd6bf659f8d41aa2d40cbcb856192113374aebe2` |
| 63 | `abbrev` | [intCyclicMulEquiv](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intcyclicmulequiv.md) | 666 | `declaration-track:51a8a521903ccf00053b8ee98e2a7266cc70a484ff0af36478880a2399a47102` |
| 64 | `lemma` | [zmultiplesHom_bijective](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/zmultipleshom-bijective.md) | 669 | `result-track:c44e1fa63361a1fc266d325f137a2a52d1c0f17f85145a9b60f7d0d6e2c3782d` |
| 65 | `def` | [intEquivOfZMultiplesEqTop](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intequivofzmultipleseqtop.md) | 678 | `declaration-track:1732cd55359aecee431a6cfdd88207ca3c4d6d56c1186b88e08427c2cc3a94c1` |
| 66 | `lemma` | [intEquivOfZMultiplesEqTop_symm_self](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intequivofzmultipleseqtop-symm-self.md) | 682 | `result-track:d905da382c918d76b5373b0490ed5ccf030d7b58a97c475a00fde38f5df8e03e` |
| 67 | `lemma` | [intEquivOfZMultiplesEqTop_symm_apply_zsmul](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intequivofzmultipleseqtop-symm-apply-zsmul.md) | 686 | `result-track:2c44c4d458d7de5cbee97bc71f80a0aeb951875280db95a9fdd09655470de9e5` |
| 68 | `abbrev` | [intCyclicAddEquiv](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/intcyclicaddequiv.md) | 693 | `declaration-track:7221f408dcd84a44d6b3adf7a647c3a1a799a9367bcd2a889836279c8e826c24` |
| 69 | `def` | [IsCyclic.mulAutMulEquiv](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-mulautmulequiv.md) | 704 | `declaration-track:c86fe81e1dd608468b6b7640841c919d6cf967ff8e8799fa69442bf48444e23c` |
| 70 | `theorem` | [IsCyclic.card_mulAut](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-card-mulaut.md) | 711 | `result-track:b3bcee5d1d0552d65098c3787d195a905fb79cb92c7c90c32b2c30f73bb9ad69` |
| 71 | `theorem` | [IsCyclic.card_powMonoidHom_range](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-card-powmonoidhom-range.md) | 726 | `result-track:3501ad9356a09a0d3852d9d02254a73c2a1241a853ee7f91958646615c114aa3` |
| 72 | `theorem` | [IsCyclic.index_powMonoidHom_ker](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-index-powmonoidhom-ker.md) | 733 | `result-track:99b9e4f9bc8234b81650312f500f6bee32a7286452d1180509f8d769f00bb69e` |
| 73 | `theorem` | [IsCyclic.card_powMonoidHom_ker](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-card-powmonoidhom-ker.md) | 738 | `result-track:5c18120e683d2419642a0b97ab02e4192f5b25778b94ecc12e9e10f8eff2adca` |
| 74 | `theorem` | [IsCyclic.index_powMonoidHom_range](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-index-powmonoidhom-range.md) | 745 | `result-track:fb4684ada7ed7d877baa72efc128bec255ca79066f2550b1f435e4dce7eaf5ec` |
| 75 | `def` | [monoidHomOfForallMemZpowers](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/monoidhomofforallmemzpowers.md) | 777 | `declaration-track:bf772dfab3a844b2c8646b6cd5cf7da5831da4fa8647f4b502f3ebc51733b816` |
| 76 | `lemma` | [monoidHomOfForallMemZpowers_apply_gen](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/monoidhomofforallmemzpowers-apply-gen.md) | 789 | `result-track:44a9fc87c870c802e193de097a218aabdc93f89b9d0e1141226ca2a2245fd24f` |
| 77 | `lemma` | [MonoidHom.eq_iff_eq_on_generator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/monoidhom-eq-iff-eq-on-generator.md) | 805 | `result-track:65b3711871366f1d71e32ce11c3e19af302976af0b46f3b16074cc2228ea8967` |
| 78 | `lemma` | [MulEquiv.eq_iff_eq_on_generator](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequiv-eq-iff-eq-on-generator.md) | 816 | `result-track:e60b9133092f754716dda8ed3a13c636f6145946cc2fc792c1e099ca5b425d29` |
| 79 | `def` | [mulEquivOfOrderOfEq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivoforderofeq.md) | 830 | `declaration-track:44d31143d0561c4a10400c5b90c3246764833f161fb3fbca2145413b5683cb57` |
| 80 | `lemma` | [mulEquivOfOrderOfEq_apply_gen](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivoforderofeq-apply-gen.md) | 835 | `result-track:af3dbc8fe86e6d3f24c1f101ce22fb4eeebd58e1e88c766fc3d40cebbb41e89c` |
| 81 | `lemma` | [mulEquivOfOrderOfEq_symm](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivoforderofeq-symm.md) | 839 | `result-track:ccf053ed87e3e979fb0aa3ce8b0a1561825ccfd52a13f1a013043308ae9e44be` |
| 82 | `lemma` | [mulEquivOfOrderOfEq_symm_apply_gen](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/mulequivoforderofeq-symm-apply-gen.md) | 843 | `result-track:ea1822f26f39fd4a9e22f88720228a744d23e7457f410f8718cf76dd81f83de6` |
| 83 | `theorem` | [Group.isCyclic_of_coprime_card_range_card_ker](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/group-iscyclic-of-coprime-card-range-card-ker.md) | 852 | `result-track:140813b82aa657a2bc78bab6b07ee3a2d64839892edc177c6f2fc1bb89d68361` |
| 84 | `theorem` | [Group.isCyclic_of_coprime_card_ker](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/group-iscyclic-of-coprime-card-ker.md) | 870 | `result-track:bbf2e24db1dcae94e28f5fea663b7c53096a66f1a05c615d894bf875f56aeb7e` |
| 85 | `theorem` | [isCyclic_left_of_prod](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-left-of-prod.md) | 882 | `result-track:70b392595542279beda751b93b1354e8cca481ea08b3510307298994623cdc88` |
| 86 | `theorem` | [isCyclic_right_of_prod](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-right-of-prod.md) | 885 | `result-track:55d6803887eae18b0109664347a1602cd418c3b45ad9cc8ea85f2a7f42d475f1` |
| 87 | `theorem` | [coprime_card_of_isCyclic_prod](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/coprime-card-of-iscyclic-prod.md) | 888 | `result-track:d1c37946d9f8132275be873adff8f35f861f5fbffbc5c96bbbe2328b10d8656f` |
| 88 | `theorem` | [not_isAddCyclic_prod_of_infinite_nontrivial](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/not-isaddcyclic-prod-of-infinite-nontrivial.md) | 898 | `result-track:56c921bffd2d8747c186d91fd9a1a597d96e6e0e82850923e85280555f026ba2` |
| 89 | `theorem` | [not_isCyclic_prod_of_infinite_nontrivial](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/not-iscyclic-prod-of-infinite-nontrivial.md) | 914 | `result-track:ade21602793257d09f94d3ad86b0a49879fabc344797458aded1f57e2eb41c7f` |
| 90 | `theorem` | [Group.isCyclic_prod_iff](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/group-iscyclic-prod-iff.md) | 923 | `result-track:afdbfae24091d75bdf4cdf871734da35b560a8f699c1eea474909d6c71d965d8` |
| 91 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/instance.md) | 947 | `declaration-track:09a0efec166bc9a0bde656820c441c1f6a301b8baaba411ccf4a4c142eb3c573` |
| 92 | `theorem` | [IsCyclic.subgroup_le_iff_index_dvd](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-subgroup-le-iff-index-dvd.md) | 959 | `result-track:a5a0fee87b4cddc59ce06dff576e115adfc462a94c837d15f0e02c1799bffc9a` |
| 93 | `theorem` | [IsCyclic.subgroup_le_iff_card_dvd](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-subgroup-le-iff-card-dvd.md) | 969 | `result-track:dcf15289a696d680f1f37a30c8fee98858c0f3312e8744cee813f7ee39e29c67` |
| 94 | `theorem` | [IsCyclic.subgroup_eq_iff_card_eq](../../../../GroupTheoryAndGeneralizations/SpecificGroupsCyclicPublic.lean/declarations/iscyclic-subgroup-eq-iff-card-eq.md) | 983 | `result-track:3d099155debae2a2a4361191e761ff0e4f765715c52b13d65792a663cef53205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4599ec21369e3c97c4e271a45d48b4b90471e7b5f7b93fe1e73a7c4c1ccdddb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
