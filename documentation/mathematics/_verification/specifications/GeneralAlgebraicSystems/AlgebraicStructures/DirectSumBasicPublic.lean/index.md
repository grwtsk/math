# Verification target: Direct Sum Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18ecdefa295921a37c16196311cbde67b520e5c0",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18ecdefa295921a37c16196311cbde67b520e5c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean.json)

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
| 1 | `def` | [DirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/directsum.md) | 39 | `declaration-track:eb0906c1a734c55bf5e45c89b7fd251385da6b3f85069f2dc58113758c83bbd8` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:7b45671fd8682a2f8a985deef0aeb5d37af83cec1432b7bda40c7fae23d46dab` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/instance.md) | 70 | `declaration-track:5b3519e52d6369499590cc1b2959b60d302df8a4e1d14b7c491505a98d314002` |
| 4 | `def` | [coeFnAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coefnaddmonoidhom.md) | 76 | `declaration-track:0b3a94c0fcc8851aec4b3f06f54795d159ac61f8aecaca4c702485b4f5520f24` |
| 5 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 81 | `result-track:c877c0bcc786f8fa0c9970e008875ad83c8132c2f65a155e60e9aa8998f0a5fb` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:b4d19871d6ef7b587500af0089c7f3cc7e7405c32575419f6133cea5901b8b35` |
| 7 | `theorem` | [sub_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sub-apply.md) | 93 | `result-track:ead6b1b07636d8d65bca2bc969d3e9956dca0b173b499502b511ad721cd1e861` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/ext.md) | 100 | `result-track:3462762117bb367acb1b83c676eda742958ad8b411fa302bb577b3cb11fc164a` |
| 9 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/zero-apply.md) | 104 | `result-track:bcd60fcd7b43db8adade72c3250a9174c6b1111ec37dc36672171a5aa59635c1` |
| 10 | `theorem` | [add_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/add-apply.md) | 108 | `result-track:15b786382c6acecdf4d56cf44bbff3170c920f7e524eaf840aaad998ea1af183` |
| 11 | `theorem` | [sum_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sum-apply.md) | 112 | `result-track:32902a521366cc5fcf3acf217b97732e2250f71933682f09e5c5b3c733759444` |
| 12 | `def` | [mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/mk.md) | 124 | `declaration-track:78c4f7b5c1bfcffb6aa8d7a53f2c37069def82f96d73f24175916739e9d26f4c` |
| 13 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/of.md) | 130 | `declaration-track:caad020f65ad91464c46ed72af7db6e3b73f60b3849f5b1d617b95708182aec3` |
| 14 | `theorem` | [of_eq_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/of-eq-same.md) | 136 | `result-track:7f7cd965ce0d640bd1412b078f7bb07f4f5abfe4d4d1b3dcb53f7b84dc244472` |
| 15 | `theorem` | [of_eq_of_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/of-eq-of-ne.md) | 139 | `result-track:c85652de3f08508da43143fc4543ddcddd4bd827b02d323ac25c93a1687eaeac` |
| 16 | `lemma` | [of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/of-apply.md) | 142 | `result-track:2dad8b6123fe8ce35033c75883c9e9ff1db5d4f20fa75ca104f6429d8d5b0b5c` |
| 17 | `theorem` | [mk_apply_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/mk-apply-of-mem.md) | 145 | `result-track:b151554c2ab423f599c7c4143a8bcad8dd8f122d9337ff260f6607c7a6030843` |
| 18 | `theorem` | [mk_apply_of_notMem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/mk-apply-of-notmem.md) | 149 | `result-track:91945178c8712f4dfeea0e4ed56feaadb07df9b12b29c5757fa16fd7c51fe75c` |
| 19 | `theorem` | [support_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/support-zero.md) | 154 | `result-track:3c23c1eec0cdfab919fa2409950d0999e6d8bf272a66fbea7bf5fdc3ee9c4d35` |
| 20 | `theorem` | [support_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/support-of.md) | 158 | `result-track:7512a9ce642d3caa1b1f62a54fa63300d4ca2c79cfb030f8834001952630aded` |
| 21 | `theorem` | [support_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/support-of-subset.md) | 162 | `result-track:dcf972e4345d8f7cdac58a92fc58c657f2bc28b93a6d842f313753ae2bb333e4` |
| 22 | `theorem` | [sum_support_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sum-support-of.md) | 166 | `result-track:1af37cc0a4f71fca9b49113b3a4745e5b8332510208cd98bd758d1531bf5043b` |
| 23 | `theorem` | [sum_univ_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sum-univ-of.md) | 170 | `result-track:c8ad67a0b59937d7ad485f2469a89802886a9bdb80d461cd34183ce78944bc8c` |
| 24 | `theorem` | [mk_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/mk-injective.md) | 175 | `result-track:76017569f198a8082b37e4308307280b12a8ff26c66e7a7cd5acb26a4229df4f` |
| 25 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/of-injective.md) | 178 | `result-track:c63a75ab5618fce441bf2014ff0c30ab5446d45deb864ff13fe7f2e237ba52e6` |
| 26 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/induction-on.md) | 182 | `result-track:aa06a88d821e3f13bc75751db192e1c14cd1e3e5a431bfbc2d55f04852229eb5` |
| 27 | `theorem` | [induction_on'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/induction-on-source-edition-2.md) | 191 | `result-track:b946d2c6e2c773c8f1768e902934644c433d52367043a285d684b96c7321a9f9` |
| 28 | `theorem` | [addHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/addhom-ext.md) | 198 | `result-track:432d35cf992c2b6b2046fb135d92fd575ea5bb7667e189feee9bcaa0e93ca9cd` |
| 29 | `theorem` | [addHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/addhom-ext-source-edition-2.md) | 207 | `result-track:b4d3141bd8d2cf29c44aed85dafecc391a2dc6df7c4bf87af387be2249827370` |
| 30 | `def` | [toAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/toaddmonoid.md) | 222 | `declaration-track:6e0abda709e9b2a8f58a3b55ab2b123a8b91ed8a61f6c81b03e369f56c26fe2b` |
| 31 | `theorem` | [toAddMonoid_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/toaddmonoid-of.md) | 226 | `result-track:4bed2d2c4b77cd10744a7306773759dbbe9e9850ea0a2015ae72cd97cf834fa9` |
| 32 | `theorem` | [toAddMonoid.unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/toaddmonoid-unique.md) | 229 | `result-track:945004b1f437931499eb70f7f641cacfb02f9437c7e9667679cc3a78e9f437fe` |
| 33 | `lemma` | [toAddMonoid_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/toaddmonoid-injective.md) | 237 | `result-track:98f0b44c60001deecbb41152e7963e6d827963693e789bb8dfd0979f4dee1596` |
| 34 | `lemma` | [toAddMonoid_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/toaddmonoid-inj.md) | 240 | `result-track:e501807e3ec6aa9522e7636005e07b16880704ab64e6366a8fa4634b1488235a` |
| 35 | `def` | [fromAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/fromaddmonoid.md) | 251 | `declaration-track:5fc65789ff3a103e58056e3aa29d780891c962cb015247ad74a4c50ba94d6cf7` |
| 36 | `theorem` | [fromAddMonoid_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/fromaddmonoid-of.md) | 255 | `result-track:9e60e7a6c2fdc3ec673a698d8657600b4dbc79df08b6116a32801e58d3e0ea91` |
| 37 | `theorem` | [fromAddMonoid_of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/fromaddmonoid-of-apply.md) | 259 | `result-track:1bd53f41cee325ee544be548b8453d794d10ebe583c0a6969cc91e6e80b68eb6` |
| 38 | `def` | [setToSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/settoset.md) | 270 | `declaration-track:f61e8f35e8bd4ced06e72797d3ceac0439b6f5a4c010ac8b6ef154a11c2c440e` |
| 39 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/unique.md) | 275 | `declaration-track:a5b7be625c0206e997fc9e14d50cb3b981e0233202069b4edb6292990680572c` |
| 40 | `instance` | [uniqueOfIsEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/uniqueofisempty.md) | 279 | `declaration-track:364985a6987e48ee5d49b10db2745688569d8268773aaa65631d0f0adf037620` |
| 41 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/id.md) | 283 | `declaration-track:07c8d8533010ce86fff189622823941696ba028c444750313733633d5eee5403` |
| 42 | `lemma` | [id_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/id-symm-apply.md) | 295 | `result-track:7b3aff88be15dd46594cd5191304036081aa7be3c3ddce21df0a97e092d1addf` |
| 43 | `lemma` | [id_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/id-apply.md) | 299 | `result-track:4ee9c8a298d8d8d417c57f530baed6059b78ca9e97e4e0ae01ea28a9a5926327` |
| 44 | `def` | [equivCongrLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/equivcongrleft.md) | 310 | `declaration-track:951800d60ffc1b2aa0aad8e2db7f16f944eaa699265f9a2abebe8516644ff3c7` |
| 45 | `theorem` | [equivCongrLeft_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/equivcongrleft-apply.md) | 314 | `result-track:ec85f84b07396cef66254db2212201bff16b583072147c53e11f6b37b2e352cf` |
| 46 | `theorem` | [equivCongrLeft_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/equivcongrleft-of.md) | 319 | `result-track:6318f7b40480e1b6efca90dcc07ffce4c9670a960da9052e9bc97b8c3771757f` |
| 47 | `def` | [addEquivProdDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/addequivproddirectsum.md) | 331 | `declaration-track:9ab01ac4481d61d0bec23bf0d45459f68d953424199c400055bd2d7817dc3a29` |
| 48 | `def` | [sigmaCurry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmacurry.md) | 341 | `declaration-track:876d75a6beec9b2bf690e93299a85e8bf0603aa016e6e73cc4ab0bded827062c` |
| 49 | `theorem` | [sigmaCurry_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmacurry-apply.md) | 347 | `result-track:90cb570f2bf807622af48395fcfcd670236c056aa2c053b83f42ed84796a92b8` |
| 50 | `theorem` | [sigmaCurry_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmacurry-of.md) | 352 | `result-track:9be0c0c31fd3e9cccf4630b4b0c9f1b50668ee64aff7b2aeaa48cb50a9210d76` |
| 51 | `def` | [sigmaUncurry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmauncurry.md) | 359 | `declaration-track:bd4163905439edf6765704b174d4823eddf6f7b8232c8ee1fdbfac6a0450e433` |
| 52 | `theorem` | [sigmaUncurry_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmauncurry-apply.md) | 365 | `result-track:8550bfc23c18b6e078ac074a3bb143058e1a553e06da69d2bcb6c6b73b839968` |
| 53 | `def` | [sigmaCurryEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmacurryequiv.md) | 370 | `declaration-track:4a5fd4db1a34a672592e96b1494091a71f4dc537f7f00eaefbfbae80ee313e7f` |
| 54 | `def` | [sigmaFiberAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmafiberaddequiv.md) | 382 | `declaration-track:b43496bbaa99b2cdea286c9c4ffecb7737ee642b877537a7d69a39a34283529f` |
| 55 | `theorem` | [sigmaFiberAddEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmafiberaddequiv-apply.md) | 386 | `result-track:2a4ba348fde3abecd6ee24fdc0dbd0bd8f1dd7840347fd9e9b29968d27f656f4` |
| 56 | `theorem` | [sigmaFiberAddEquiv_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmafiberaddequiv-apply-apply.md) | 390 | `result-track:d9616cacca8a5994396641c5412ac951676a947b91d54699e679fd8b8bdeb01e` |
| 57 | `theorem` | [sigmaFiberAddEquiv_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/sigmafiberaddequiv-of.md) | 394 | `result-track:a8b7780e2d15097b5224711c633b7ddfd96f2adc5cb80066731d06a64b3c47b8` |
| 58 | `def` | [coeAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coeaddmonoidhom.md) | 410 | `declaration-track:813ba8756d5e8787da302f1f17cc344e5dffdf354b0f652ca02cd844b2a9f7a7` |
| 59 | `theorem` | [coeAddMonoidHom_eq_dfinsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coeaddmonoidhom-eq-dfinsuppsum.md) | 414 | `result-track:ff8b4d5859753e3d8287adfc7ae0a9dc1427946cdefc434ac4116932eed3344d` |
| 60 | `theorem` | [coeAddMonoidHom_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coeaddmonoidhom-of.md) | 422 | `result-track:55a568c8dcd2e62b4ada2c4ccb2ff26e8eca49ea35037620b81a51ffce8ac2f8` |
| 61 | `theorem` | [coe_of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/coe-of-apply.md) | 427 | `result-track:fb40b80f865545a8d2da13143d6df6e38c7353bfbce64580953c3714c406692a` |
| 62 | `def` | [IsInternal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/isinternal.md) | 441 | `declaration-track:5f7dbd56b99bf3571fb753e9b9ecaf2bd26f1f8023ba783e5021414c37d87612` |
| 63 | `theorem` | [IsInternal.addSubmonoid_iSup_eq_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/isinternal-addsubmonoid-isup-eq-top.md) | 445 | `result-track:b43d5c2b7d7f17f45c36781fd71df385baa38c783ac6db0afea077d42a0f5f45` |
| 64 | `theorem` | [support_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/support-subset.md) | 452 | `result-track:cf9c729b61dc0fdfdd10e7650892da47352ec15f46a48a6b28caa69efbfbd387` |
| 65 | `theorem` | [hasFiniteSupport](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/hasfinitesupport.md) | 458 | `result-track:906b00e05c46b50ed43e8a420d1e7ff81b43ace808e7de9e6034a88a36e618aa` |
| 66 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map.md) | 471 | `declaration-track:470835d21ff73481d1124c67015f5c241ea8ddcae5429dce690cf5f048971e9e` |
| 67 | `lemma` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-of.md) | 473 | `result-track:26822b1988788d1ce258c23536f6737e042b20fe6c2a0fc177e20c15033e0b56` |
| 68 | `lemma` | [map_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-apply.md) | 476 | `result-track:8937f3b6e22a95500f2ec8a3d3cd285215b19aaf35638693e4597e7fe21d4e66` |
| 69 | `lemma` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-id.md) | 479 | `result-track:c453b8beb404ad93ee76754c3b5234a57f07505cbe4457b17d7eea3e4d1e6082` |
| 70 | `lemma` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-comp.md) | 483 | `result-track:eb63687676734b6f94b6cdd30e53b8e3d7fbee6b6c8a1d5474672c4c1d318a6c` |
| 71 | `lemma` | [map_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-injective.md) | 488 | `result-track:1bb6d2a680332242455206348722a8f8d82ff98931fea92913e8f50e30a55679` |
| 72 | `lemma` | [map_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-surjective.md) | 491 | `result-track:772e5662c3786fc2f4db484a494b2f722d2e788f144f4b4780623c2a8198f9c3` |
| 73 | `lemma` | [map_eq_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/map-eq-iff.md) | 494 | `result-track:2e589e6548a7103e38ff8b1f8711e15ee537b9b0abd9253a894e9fc788b3b1d9` |
| 74 | `def` | [DirectSum.addEquivProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicPublic.lean/declarations/directsum-addequivprod.md) | 504 | `declaration-track:a560a4be126611073c06c7ecf5e2d64c19fa394602e111072ec0a4fa05045b0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=968005c53df1ff842a70422018045f4e57478d8f0b4cc44e8d3815988f1ce486 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
