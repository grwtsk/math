# Verification target: Part Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a1c499b3aed5a4b0c9368068b16a3d6679ae8f",
  "lexical_observation_count": 171,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a1c499b3aed5a4b0c9368068b16a3d6679ae8f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Part.](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/part.md) | 58 | `declaration-track:069dc0adc49d9361c96609030ded655c59a4ac8f1e47fc73e023dd37bc38117a` |
| 2 | `def` | [toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/tooption.md) | 69 | `declaration-track:f2c3c310c7e98ec0cfba91c5d4686ddb5c8ac5590ec339474d00967297f02a5d` |
| 3 | `lemma` | [toOption_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/tooption-issome.md) | 72 | `result-track:411f388cf5b36d45e18c091f39da87855cebeb7b000381c9491b2d7b4f0644b2` |
| 4 | `lemma` | [toOption_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/tooption-eq-none.md) | 75 | `result-track:22836e6daf75ef7e8f6b434abbfafce45df43b5908fc747c8fe0f880d99b8317` |
| 5 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ext-source-edition-2.md) | 79 | `result-track:5087e8873c4695f1e9796f46fc632357ed58f54da96521620b6e628b98c9a6e6` |
| 6 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eta.md) | 86 | `result-track:e0e41d46b39698d2b90913394f28adb7889104b2702ecf3fca0b8da16b3cadd7` |
| 7 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem.md) | 90 | `declaration-track:eda4d827c120fc2c79de90564c75b8d38d7c3886bb49dedabcdc31d39e52425c` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-7.md) | 93 | `declaration-track:81fb7ae5f04b0184489dfc48d585dbe7d8a9650945d2b660f8074ef3d49fdca8` |
| 9 | `theorem` | [mem_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-eq.md) | 96 | `result-track:0b7452dbc90037f42057352829e0b07175bad109f0997fc6f93d8b0ce5fd7561` |
| 10 | `theorem` | [dom_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/dom-iff-mem.md) | 99 | `result-track:359c1a0773f3839ffd90725e9c696b24f4ea7334ebc3e9401ec04f546bacfa97` |
| 11 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-mem.md) | 102 | `result-track:a9d479c124a907393083bb8b70ffa01253c6ef9fe9be74c43006eb9e5a21af22` |
| 12 | `theorem` | [mem_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-mk-iff.md) | 106 | `result-track:ec2e64a573bf20e4ebe7c89a2946a568caaea2cf84bb6476bcab389aab742096` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ext.md) | 111 | `result-track:00ecec70cf5783e4ce2c7b6145817830b3a49f4c6107d002f0cb80ca51a43376` |
| 14 | `def` | [none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/none.md) | 116 | `declaration-track:f983bb257fb90f9357834bf18d82230ea0e46604d7d7a49ea97baffe1e07a904` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:95592b28abd93d47fd904bde4ab660c69c28d7b651ad04b6452955e53e18555e` |
| 16 | `theorem` | [notMem_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/notmem-none.md) | 123 | `result-track:52206689844912ed86b495abc9d1da2fb199ea290284c1901342655c42b31085` |
| 17 | `def` | [some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some.md) | 127 | `declaration-track:18851adc8fad4fbd8f2d001d63c49fb56dc81ea867e990f9378f308687693907` |
| 18 | `theorem` | [some_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-dom.md) | 131 | `result-track:c7e8bb42c15c2add81f12d55783aad6a1f48ed0feae416f66ab9a17b67b3c5e5` |
| 19 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-unique.md) | 134 | `result-track:5df5b8db925a983d882ad58a5953b1d3cbf15a90941c3edcb397d8e078796d76` |
| 20 | `theorem` | [mem_right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-right-unique.md) | 137 | `result-track:8f0d583463b69e9bb6aeab41c5ceb3474cfca21453ee573405d8e087d82951a4` |
| 21 | `theorem` | [Mem.left_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-left-unique.md) | 140 | `result-track:56f24e9f28a6575cccf0cbd6b5415aab7d79f5ef85f171847b9c887129c1be08` |
| 22 | `theorem` | [Mem.right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-right-unique-source-edition-2.md) | 143 | `result-track:c25869d15c7a34a40a980fcd35b8314712e6f9e009a00175e76568134b813a19` |
| 23 | `theorem` | [get_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-eq-of-mem.md) | 146 | `result-track:922385506ec347e66a66cf40c898b642550f07401db8e5f25ef7e5119cf4cf7b` |
| 24 | `theorem` | [subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/subsingleton.md) | 149 | `result-track:4e6ba4e7744ee6955804c109bf565f7dae8eaada8ff8cab2d18ff2d98b20f58b` |
| 25 | `theorem` | [get_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-some.md) | 153 | `result-track:2ea23e6c2ad632886f876a14e5bb14c13f12ba09254e5092a8592a8cf3f6367a` |
| 26 | `theorem` | [mem_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-some.md) | 156 | `result-track:131ee6d25c3871eac8aab8d28a1017f2d93644719ea4b0a5da2ac8504df5f4b9` |
| 27 | `theorem` | [mem_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-some-iff.md) | 160 | `result-track:476a4988dd5484d739c6bee2ad6c9ef2f16700b8dea72b058a5a36660e953792` |
| 28 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-some-iff.md) | 163 | `result-track:0ad288d2b5cd57b64a9bf86a6e939d7fe73ceca1ab6b3134ca1b805ec40d5866` |
| 29 | `theorem` | [eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-none-iff-source-edition-2.md) | 166 | `result-track:94304a1264de66df9912309b224f1cced8358991d615153e89ff3969269a53a4` |
| 30 | `theorem` | [eq_none_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-none-iff.md) | 169 | `result-track:0aa47607dd325c430a1071ab1ddaff1d4faa4c84120cdf4bb4ec8c4bfd0f2da0` |
| 31 | `theorem` | [not_none_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/not-none-dom.md) | 173 | `result-track:1e8d972cc6dee9f4c257a7fef8f262806602f4cb108f80212b5c416c0569e32c` |
| 32 | `theorem` | [some_ne_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-ne-none.md) | 177 | `result-track:e65356eb4ad190213bc013c0b8bed8d5c7494224af9cb5331bab100852a13e49` |
| 33 | `theorem` | [none_ne_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/none-ne-some.md) | 182 | `result-track:f376ba6084f2a18acdbb9e7b7ca7c83756f7a44099863ed6542d3dc2274fbdae` |
| 34 | `theorem` | [ne_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ne-none-iff.md) | 185 | `result-track:c9358726a507419284c47cea4657261b8cbebd0327d8d0ac66a6b09636fb04ce` |
| 35 | `theorem` | [eq_none_or_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-none-or-eq-some.md) | 192 | `result-track:367d984813afe2722b44f07a5d72f16c32ed7b07a90923e33b26ab2f00a92157` |
| 36 | `theorem` | [some_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-injective.md) | 195 | `result-track:672d5aa9aa6239d978c437d7000ff8da65e36df39b6c571745332135224c9dd6` |
| 37 | `theorem` | [some_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-inj.md) | 199 | `result-track:e07af238a6ca80aa10b2a1f31b4e0fef6455e136ee77eddf34193425df8e9749` |
| 38 | `theorem` | [some_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-get.md) | 203 | `result-track:b9f252a32135a31d0105b3a1aeca45fec068d5f3fa0c7a38d436dcef7c0cda8f` |
| 39 | `theorem` | [get_eq_iff_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-eq-iff-eq-some.md) | 206 | `result-track:90d8836baf79c6337a7ecebf9bce7eb747ce905767ace68e72040b5542ad02f9` |
| 40 | `theorem` | [get_eq_get_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-eq-get-of-eq.md) | 209 | `result-track:faf79aeca45021722ab578a52d199184a6148528e6e3df082f8d7a334a852a73` |
| 41 | `theorem` | [get_eq_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/get-eq-iff-mem.md) | 213 | `result-track:883fab7e7760156657a52b8f0966f0e2f75765c21e57d63c8a4df3cae26fd966` |
| 42 | `theorem` | [eq_get_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-get-iff-mem.md) | 216 | `result-track:89fe6df0d16ac58671753de2ada3bdc085c4e74e765bf01992161fb94613457d` |
| 43 | `theorem` | [eq_of_get_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-of-get-eq-get.md) | 219 | `result-track:d8e4297b5dcfed27f548322762bd398660efc3973b3b8860e6b534f8685375eb` |
| 44 | `theorem` | [eq_iff_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-iff-of-dom.md) | 223 | `result-track:cd9f0e582c7b733f15f53c6e5457968c026ee1b9576123f0fd240b7b3c96cd4e` |
| 45 | `theorem` | [eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/eq-of-mem.md) | 226 | `result-track:259ac94029b44edaf0d1a2039bc16f79070aba2845168266539a50a2b75f0988` |
| 46 | `theorem` | [none_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/none-tooption.md) | 231 | `result-track:77a4388029942fc6f522c363df6fdd6e0eb868e5c978728ade45b32209143d70` |
| 47 | `theorem` | [some_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-tooption.md) | 235 | `result-track:9110eb8fc44b26dd8b9ca654bb2465753c8d71d7c8687becbd626030c7ee4679` |
| 48 | `instance` | [noneDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/nonedecidable.md) | 238 | `declaration-track:8b15609942ba11c1348c34cd9134fb9732901e2a82f027854d05919e29110446` |
| 49 | `instance` | [someDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/somedecidable.md) | 241 | `declaration-track:efb506aefdd6639d84c4a69a314541073d263292073f258b4762465a381282c6` |
| 50 | `def` | [getOrElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/getorelse.md) | 246 | `declaration-track:59d7e1104c312b1363bd11dc89085d52384716f977db61fcf949f2d934609b39` |
| 51 | `theorem` | [getOrElse_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/getorelse-of-dom.md) | 249 | `result-track:9bbaaec533ac09b5fcd6f743ce56809be14be27d014f4526ecd2f2d672ab479d` |
| 52 | `theorem` | [getOrElse_of_not_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/getorelse-of-not-dom.md) | 253 | `result-track:852788e926f6a78db2f49363c93e4d9cb29543c12dd72070cc471599f4021e10` |
| 53 | `theorem` | [getOrElse_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/getorelse-none.md) | 258 | `result-track:9aef097e74fdc20e1afbd25a968861641f2532e095f77ace9bcb7e0a0e3c2fc0` |
| 54 | `theorem` | [getOrElse_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/getorelse-some.md) | 262 | `result-track:318e2b3f90bcac7d52d4e1938737c3e6ccf1a4322f6809a556ebd5b910a67183` |
| 55 | `theorem` | [mem_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-tooption.md) | 266 | `result-track:885338e8a840bd6d6a609d5f403d77533c309a469144db6df4d35d062bbdb4a2` |
| 56 | `theorem` | [toOption_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/tooption-eq-some-iff.md) | 274 | `result-track:6a1a7eedd3c0f4113236bb0bd33ce8d2eeb18524c81db66f7488a4850361a0a6` |
| 57 | `theorem` | [Dom.toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/dom-tooption.md) | 278 | `result-track:afdbe24a5ef3486aaa76263e5987110d2456051acde5876cbc7685465ae92a6d` |
| 58 | `theorem` | [toOption_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/tooption-eq-none-iff.md) | 281 | `result-track:4220939e89ad99d579f44bcede1c9eafc976c32e2eca04dc757594203c2bf65f` |
| 59 | `theorem` | [elim_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/elim-tooption.md) | 285 | `result-track:55bedac9b38b0769180d098ecbf25e409b7269163e320cf5c7204677f223e676` |
| 60 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ofoption.md) | 295 | `declaration-track:9dade7095f5a99df3b07f8fb42615a1b3158ab4b0e3d644b9d539d8fe9dd002e` |
| 61 | `theorem` | [mem_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-ofoption.md) | 300 | `result-track:ceb20a6114ce548a42af82bd13285c8965878e87bf0c4668d63bd52a80d299ff` |
| 62 | `theorem` | [ofOption_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ofoption-dom.md) | 305 | `result-track:8971a91521d73b74194e730122a1467a624f47beb78445fdd3216a6d9ae383f4` |
| 63 | `theorem` | [ofOption_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ofoption-eq-get.md) | 309 | `result-track:98c0aabaf548293000e430f5556f5888130f56637dca98658afbecb4dae4c4b2` |
| 64 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-13.md) | 315 | `declaration-track:e748cd805325ea1e8371b7456696bee423159802dbd4d38414c817b2bdb14a26` |
| 65 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-coe.md) | 318 | `result-track:6e5920ddb39a98a64d72c5f96a22bffc9f0ab0d2d323e4071e36d1bffb773bf7` |
| 66 | `theorem` | [coe_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/coe-none.md) | 322 | `result-track:dcd7a6afcb3d68590d6941107943294e9924a0abbca5bd1767db26742bf29cf6` |
| 67 | `theorem` | [coe_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/coe-some.md) | 326 | `result-track:3d0359a17142445404f764b4d508a539472157157113e5df4898e30b80e0bf3d` |
| 68 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/induction-on.md) | 330 | `result-track:9c9050f6d3787fdad00a6ee18d4210cdbbb658f109d39226f44308bea4605039` |
| 69 | `instance` | [ofOptionDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ofoptiondecidable.md) | 335 | `declaration-track:cc0118512d2d268d6d7068f73cc72b4c909f37552c76cef77f44cce2955c8643` |
| 70 | `theorem` | [to_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/to-ofoption.md) | 340 | `result-track:2c0f2054c3c9471c5349d0ff3dec6950416cc7e8a4db6288b8bd8afe3d9b9fde` |
| 71 | `theorem` | [of_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/of-tooption.md) | 343 | `result-track:5bdacfb0df2c365c51a89421809695a008c362ebb22b14f4f3e41977a107b346` |
| 72 | `def` | [equivOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/equivoption.md) | 347 | `declaration-track:41c5ed1e17fd08f16afa3cf3a9ca417ed2a6fc4cbe74ce2414de5866945ad9c8` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-2.md) | 353 | `declaration-track:26ab112f368c0bcef88c60f808eee41de8e0967ca87cdf7c14673efce8c03748` |
| 74 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-14.md) | 360 | `declaration-track:e8bc8ebd2d61155d7b00b1bc45fb1d47da6d50e1ef0a9b2610bfcf4d7fb4045b` |
| 75 | `theorem` | [le_total_of_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/le-total-of-le-of-le.md) | 364 | `result-track:8d8f2577cea7e292e78e80fd79abec7ef632f1f953426d71704afcf25bf68ee2` |
| 76 | `def` | [assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/assert.md) | 378 | `declaration-track:183ba7c7908dea49ae9447a2e63893fddd839dee087c712b0d62391d3bce95b2` |
| 77 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind.md) | 383 | `declaration-track:4ea4d9338ef89d25c6ce8cdf6bab0c679b02440a8a3135fb46772d3780761f57` |
| 78 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map.md) | 388 | `declaration-track:807c994e85d8cd402a46207c1de68dc555e34c39cb8ef3b9512b77c2e4c19a24` |
| 79 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-map.md) | 391 | `result-track:694d39c19a52fe7299aea785e18ee29f5ea213c683fbb16e6c987bbaf652e497` |
| 80 | `theorem` | [mem_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-map-iff.md) | 395 | `result-track:32e032c6f00ad493eabedaa6c4ae2b36905a79c3aa9ee19a0ab3b709fcc41713` |
| 81 | `theorem` | [map_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-none.md) | 401 | `result-track:7fcfa4384b8fb8c625bed8387e30175c84f7703b8b86fd68cb8eed6c2155cebd` |
| 82 | `theorem` | [map_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-some.md) | 405 | `result-track:3c97cb72b96699f6fa660a325278fd35a3c5edff0bc048a6337a031afd6d56b0` |
| 83 | `theorem` | [mem_assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-assert.md) | 408 | `result-track:302354d231547b9b22a5567cccab6909c1dd3cd813b66a645342c0a286e522bd` |
| 84 | `theorem` | [mem_assert_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-assert-iff.md) | 412 | `result-track:52a343d432ec1762506d9cdb92b61358873340644916fccce0df267bc1e7ba05` |
| 85 | `theorem` | [assert_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/assert-pos.md) | 417 | `result-track:af4daffe4f1515a6ce620e4d6694b1071636793d3c1c2ccfcd4ffc246052a50d` |
| 86 | `theorem` | [assert_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/assert-neg.md) | 421 | `result-track:f33fd423efb86f5c197b1b4884b7f20538d8b8f060e8661e537990384f624e03` |
| 87 | `theorem` | [mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-bind.md) | 425 | `result-track:c4942f030cc90312bfcd578a5178d3cd4827d2b2fe7460dda22343c19c36c123` |
| 88 | `theorem` | [mem_bind_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-bind-iff.md) | 429 | `result-track:63251da683ce182c46434e1cd5bbf06ece086df8cac231670d2f07315cb7bdb8` |
| 89 | `theorem` | [bind_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-eq-some-iff.md) | 436 | `result-track:3af4772a40c560dea383b1b5683f9d8cd7f4df40d2c4c72439697c698b04b48a` |
| 90 | `theorem` | [Dom.bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/dom-bind.md) | 440 | `result-track:af11c3a026d37918c21e23c4bb55945f4bf59481086f6b56ba226e05d4e7c4e5` |
| 91 | `theorem` | [Dom.of_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/dom-of-bind.md) | 447 | `result-track:1719f8d6ac809bfab58b3a1ddaea766557989fa16794f924af539c8010b1d2c2` |
| 92 | `theorem` | [bind_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-none.md) | 451 | `result-track:8b5c64ba6611a745158e532d42feb9115dbed916852bd117cfbedf88caf360ff` |
| 93 | `theorem` | [bind_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-some.md) | 455 | `result-track:b655dee057217a4ac27b7d8d803da23aecb300af56dc08b0a2733c788f08f5c1` |
| 94 | `theorem` | [bind_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-of-mem.md) | 458 | `result-track:a58cb51c6b4b8fc69866fa19cadb75d4ce67c9599238fb61bd12ed35d28c0c51` |
| 95 | `theorem` | [bind_some_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-some-eq-map.md) | 461 | `result-track:c1ac3a23a3152fd062dec1212f47f034eacd0d2cdcda66de861251d6085e88fe` |
| 96 | `theorem` | [bind_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-tooption.md) | 464 | `result-track:f107c9bc1130a6e2a6750a555f7aee634146ab75d3d61bea9f37a804e29afdec` |
| 97 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-assoc.md) | 473 | `result-track:b7d24577ffa2ddd5145349b1761c75e4f2198caa92f86882e797cf2353403163` |
| 98 | `theorem` | [bind_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-map.md) | 481 | `result-track:b641959207ab8e114aefe9af65e7660f9b3efefb8c2dfa9998557bb9623a4ea6` |
| 99 | `theorem` | [map_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-bind.md) | 485 | `result-track:fcfcc0deb8e951e7ad3a43e8b26ca3a5545843de4f01dec8c6974c51b480634c` |
| 100 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-map.md) | 489 | `result-track:0dbe68c2f7bb5e85b83ac4e1c61c79966b619ac74abd5ab27ca09d223252b5df` |
| 101 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-15.md) | 492 | `declaration-track:e92f6441f456ef2b4975815d04f9d5cc3c80c083f38ff3c2453d99be5dffc532` |
| 102 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-4.md) | 497 | `declaration-track:45cc34e2ed5f15f038e05c8995eebad92b17705147f70c98910f2c01a40ddb01` |
| 103 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-id.md) | 518 | `result-track:4ec7d8027da7304352c47b4c8b5cca34e66b7fa82896a0849b341b5267fae62c` |
| 104 | `theorem` | [bind_some_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-some-right.md) | 522 | `result-track:788fd34470c8a7c466919bba5919b502bfce771f2c61ebccc7b58b7c671b3910` |
| 105 | `theorem` | [pure_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/pure-eq-some.md) | 527 | `result-track:4fc2b6fcf7fd545b8ffdb382aeab359cbab8a6f656d65d3c3311789809916261` |
| 106 | `theorem` | [ret_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/ret-eq-some.md) | 531 | `result-track:d0e351ddc43859d56fa759b192b4440b8c7398affadb4578dee8ecb6e80fb0fc` |
| 107 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/map-eq-map.md) | 535 | `result-track:9c5cd0dd095667cba0b5d76910871bfd1ba62d9886c445d7603e959f88a02a9d` |
| 108 | `theorem` | [bind_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-eq-bind.md) | 539 | `result-track:c7e40a18c02d24f44a379365931c900ca7c5db90f053ba550b53ef15e46f813d` |
| 109 | `theorem` | [bind_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-le.md) | 542 | `result-track:7a97d2de9e606ac67724e01957bec6f31704903e654fa71f886bcbd4679e5a91` |
| 110 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/restrict.md) | 560 | `declaration-track:cf6f3344aa1d990704929ceae0465352fcf4fa025639dc43795be33ea73cc67c` |
| 111 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mem-restrict.md) | 564 | `result-track:3ed40df7b88696983f9c5006be4b085989856d58f400e2ed182bd5778d6b60dc` |
| 112 | `def` | [unwrap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/unwrap.md) | 572 | `declaration-track:7d3b801a5ebc4ce6da6cec29fed18c6f43578e90a138e6c230f34a83eced5383` |
| 113 | `theorem` | [assert_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/assert-defined.md) | 575 | `result-track:fbdc77fb7a197dcfbc634b45df99f8d8a643f49893a1c2abad6608255db951df` |
| 114 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-defined.md) | 578 | `result-track:6648f714fce4ffe1b5798ac5bbc8d1226f1e4176bffb8a2c527ce5b4538cf253` |
| 115 | `theorem` | [bind_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/bind-dom.md) | 583 | `result-track:b3deecaf09327749693cc6247aa5f121e230a971aea3c5e9b923ef49e8e78ac7` |
| 116 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-9.md) | 596 | `declaration-track:a892b2e0cb31f07e0e2a41ce0425b045328fea76c415ffd4d366fdd0500783dd` |
| 117 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-10.md) | 599 | `declaration-track:bde217c13d0f49c634d0b03cf58c38f0a55aea02498f6192b41e2e7f2e7967e3` |
| 118 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-5.md) | 602 | `declaration-track:622291921f12d6bbb1e3c2e19f3e83962e37550caf162d60b7893a308c0db454` |
| 119 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-3.md) | 605 | `declaration-track:39a855b40a3959e42c432134f20bd835053fc04cc6e02798a338450fa7bf3ff6` |
| 120 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-6.md) | 607 | `declaration-track:7da3000b879ae7a0b63e7b5a788fe62e485e0d399c3a3293052657eda201a348` |
| 121 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance.md) | 609 | `declaration-track:23f6a22b73ef166d46208581e50fce086d59672717c620c3ec53d56f14d219c0` |
| 122 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-11.md) | 611 | `declaration-track:c2f48387eef926d7ffae3f8d2fe1ce1530259700ee9e2255c2e8604f062496c6` |
| 123 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-12.md) | 613 | `declaration-track:d30c9d2f240415f575c8a5463457851b134edb4e15fb1cd43d95910f8ee6bcab` |
| 124 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/instance-source-edition-16.md) | 615 | `declaration-track:f87820f4324ab254c5612461623081f1732f3c88d0390d5e8d973998481b5700` |
| 125 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mul-def.md) | 620 | `result-track:4d3caa154e0254a279a38dbaa6043320bbbc7ebd0a2c0566fb56be3d70fca2bd` |
| 126 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/one-def.md) | 623 | `result-track:dc4e2443a08e0bcc8b52802c0469341d4a3557b3b064ce3ca48f624ee6d76169` |
| 127 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inv-def.md) | 626 | `result-track:64f6fa946e5d3f542e6c8074409661eb4a6cd2f52a946a016d9771b36da240e5` |
| 128 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/div-def.md) | 629 | `result-track:60ce9d8009b4d10e3f6a958283b12125284bca5095233ca9727fe4a5ab3f1a74` |
| 129 | `theorem` | [mod_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mod-def.md) | 631 | `result-track:d95f8d055e4482f192f220b8821e2a78d736271ec29a7a4dad5937f28c61bffa` |
| 130 | `theorem` | [append_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/append-def.md) | 632 | `result-track:dbbde7bcc2ca00fbd2e85971a2cfa3a302cee11a2abb32514add4a55b2c4cd73` |
| 131 | `theorem` | [inter_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inter-def.md) | 633 | `result-track:4ab8acebe933ad2a4963493e62b7fdee046744b3466ecc6f2fa6c6069dc95646` |
| 132 | `theorem` | [union_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/union-def.md) | 634 | `result-track:60cd2638aa487f903fdc064d08155ab69c8f325b74ed897294f85695c7285533` |
| 133 | `theorem` | [sdiff_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/sdiff-def.md) | 635 | `result-track:677afefc4cba70fa9b08af6328f3643d0e14afc4a6c9512e4248981224013ae5` |
| 134 | `theorem` | [one_mem_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/one-mem-one.md) | 640 | `result-track:0282197c94e53e4143d53e4b2f780ee8b895dcd20f19da68822678179a8e5913` |
| 135 | `theorem` | [mul_mem_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mul-mem-mul.md) | 644 | `result-track:6fb55c8d3db97210a6778692e43b9003658255676cca85390d46d65a067fdbee` |
| 136 | `theorem` | [left_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-mul-dom.md) | 648 | `result-track:2494bc8ffc72ac5681a63024a832c12ce3f0fd7916359aa4a16d5330efb795ba` |
| 137 | `theorem` | [right_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-mul-dom.md) | 651 | `result-track:5a874d406c0f087cfcac5be857780fc59bf512c9b1e237d72a29f5273d5f6e27` |
| 138 | `theorem` | [mul_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mul-get-eq.md) | 654 | `result-track:6548478a5ab20e66ccebf76785eaa5f640192e2b454f8f5286588180f98fb81a` |
| 139 | `theorem` | [some_mul_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-mul-some.md) | 658 | `result-track:cac3a3a850357ce8f68b0f7a4600ce57806302d1efe2a67cb5dfe588dd7f8108` |
| 140 | `theorem` | [inv_mem_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inv-mem-inv.md) | 661 | `result-track:3a0ef699d8eae00d05d58942d65685d2f0b3fbc3847ae4e01c77638bbcf540eb` |
| 141 | `theorem` | [inv_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inv-some.md) | 665 | `result-track:e56cb129f44d5fae6e1ed42976da9e6151e7b8097559d9374503d012b05862a1` |
| 142 | `theorem` | [div_mem_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/div-mem-div.md) | 669 | `result-track:ae28e5cd089325821dbdf5fe7923c61014e12af454b4e22fc236639b9b3a3c6d` |
| 143 | `theorem` | [left_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-div-dom.md) | 673 | `result-track:3921dfaf0e0d8e20f0e5b25614aaffd62b332afa80094a2bbc215b83467eab57` |
| 144 | `theorem` | [right_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-div-dom.md) | 676 | `result-track:04ead0af917c3ba268d631b0241d3e65c2b11fa87a90f491d8001001fc2ac6d6` |
| 145 | `theorem` | [div_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/div-get-eq.md) | 679 | `result-track:132710bbe292dd71f3ee6024e84b66ab1a173d66ddeff7de136fc50892fede54` |
| 146 | `theorem` | [some_div_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-div-some.md) | 684 | `result-track:cbdd5e19b056be7f9ed4665825fb83ebc8909fd72289927cbfe7064e1338c161` |
| 147 | `theorem` | [mod_mem_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mod-mem-mod.md) | 686 | `result-track:b3728b15e51156e1720a988cacaa0b0f300a85aaa0c869c8ffafffde5b2763fd` |
| 148 | `theorem` | [left_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-mod-dom.md) | 689 | `result-track:28ee383cd1d0fa9f5f2d575f96676772caca68bd904c490e8a21cebd4a69659c` |
| 149 | `theorem` | [right_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-mod-dom.md) | 691 | `result-track:bcbab5ff789e3fe92ab46ab429396d6dbf08bc0313195c39d4215e8ebcb5d381` |
| 150 | `theorem` | [mod_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/mod-get-eq.md) | 694 | `result-track:5cf9f4921661c9e043da8395557edaa6bdde87005bf0b190876f5ff0af94465e` |
| 151 | `theorem` | [some_mod_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-mod-some.md) | 698 | `result-track:f6f5c53d6be051d7c11aa72ec9dd63276cf0358e17991d42516ea7f04063b28a` |
| 152 | `theorem` | [append_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/append-mem-append.md) | 700 | `result-track:2d7c889352e089912b30aba88cbfaf7c560ccb63fd424c0519ed520ebffd5a57` |
| 153 | `theorem` | [left_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-append-dom.md) | 703 | `result-track:9635695ac8a18b77cf656f71ca88e6e7337b98ed712a87de74c7e3060f11d500` |
| 154 | `theorem` | [right_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-append-dom.md) | 705 | `result-track:f8d4f04fcbcd50a762e40985a2bd430fd4c22252859020e164158f046ea8ea2e` |
| 155 | `theorem` | [append_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/append-get-eq.md) | 708 | `result-track:b86a2fe703d61f7650d6ce2441052ca0e8301d01a7b89d776066132ee6562e1a` |
| 156 | `theorem` | [some_append_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-append-some.md) | 712 | `result-track:063d12c61557c95faabe64ee5f6300c6c4abbfbb4e7a8337cec60f4b4edfc45f` |
| 157 | `theorem` | [inter_mem_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inter-mem-inter.md) | 715 | `result-track:1937b0555e0041b73e27167ce3630067bac7cbd6f26ddf68c41618d20c7dd8d0` |
| 158 | `theorem` | [left_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-inter-dom.md) | 718 | `result-track:939db29ede6591bac364dee736f2aad3630006a2f466bd4aa3e878dec002d04b` |
| 159 | `theorem` | [right_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-inter-dom.md) | 720 | `result-track:e9e7e74d34aec09999e76b5d6084c6e4f4d6f840b0c96fd877337f69b64149f6` |
| 160 | `theorem` | [inter_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/inter-get-eq.md) | 723 | `result-track:c844c881de3f81d08d5cdd61d7d92b45feaf29c1baac87f0b0cd2aebb72bd3e0` |
| 161 | `theorem` | [some_inter_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-inter-some.md) | 727 | `result-track:473195cd65bcfce234e67b7f326da04f26609f3d7c875a0cde2fd042ea72080b` |
| 162 | `theorem` | [union_mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/union-mem-union.md) | 730 | `result-track:fc3ac8cbcf31062ebbe399a515fb7dd5c4a784786504a5f76db9dd9869190633` |
| 163 | `theorem` | [left_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-union-dom.md) | 733 | `result-track:736732ec214d954360de35e53eef92838be0af5cba03e71cdf5e904da4dec84c` |
| 164 | `theorem` | [right_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-union-dom.md) | 735 | `result-track:d08c56b8025e2772b8ddcdd7c97ed2ee5186c97dfd08fd610598f2f348fb5148` |
| 165 | `theorem` | [union_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/union-get-eq.md) | 738 | `result-track:d7640aa8b87544ed9f7140eb9a5cb86e87827856d761fba237139d6700cc7887` |
| 166 | `theorem` | [some_union_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-union-some.md) | 742 | `result-track:7ff3983c4ab4a1945738902e3975accba83e3abd944cf80bf76310daefac2011` |
| 167 | `theorem` | [sdiff_mem_sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/sdiff-mem-sdiff.md) | 744 | `result-track:ea7b801bc1e59577be84ad8443c5660cae483c90c9d38176894cd57abe4d24e6` |
| 168 | `theorem` | [left_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/left-dom-of-sdiff-dom.md) | 747 | `result-track:3727416fd180de55fc673a32eda2d682305427062dabfbbbf4c3ac959691f6d7` |
| 169 | `theorem` | [right_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/right-dom-of-sdiff-dom.md) | 749 | `result-track:3905957b78ae8aa8c3a128170ebfb9c6c8b38802de5eba5eb15db9a0a4a9a400` |
| 170 | `theorem` | [sdiff_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/sdiff-get-eq.md) | 752 | `result-track:02f866f45e514aff80fe72eefb3faf13951ca8e6af3a6c449b96fb3316939d75` |
| 171 | `theorem` | [some_sdiff_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartPublic.lean/declarations/some-sdiff-some.md) | 756 | `result-track:612e7d6dd2351179d0975e4b190cefc49fc7f10a229f95bc16fa799c4a541a4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1534c1da95e81773096d7b88f5afa9e5e7ab3bde807121320e723e100c1b81c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
