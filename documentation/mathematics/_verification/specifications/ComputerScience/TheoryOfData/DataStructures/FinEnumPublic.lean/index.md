# Verification target: Fin Enum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dab44940c2e70ce1cf9577d58c627003798d598",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dab44940c2e70ce1cf9577d58c627003798d598`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean.json)

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
| 1 | `class` | [FinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/finenum.md) | 30 | `declaration-track:57c2ecfdf818efafbfd9deb3de228a514fdef440b3ac141b22ec0dd4be691974` |
| 2 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofequiv.md) | 46 | `declaration-track:cd2050024be0b999ac3a7675458de5f64f907c44b4551625691e00d8d263d86b` |
| 3 | `def` | [ofNodupList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofnoduplist.md) | 53 | `declaration-track:7c64e94730889733188ff4647ce08f78934c4d4cf0865931e6fd58c8773ff3e2` |
| 4 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/oflist.md) | 62 | `declaration-track:0213cbdb2870583727e7fe39304fd9361a9825d3e8819635f843d9351db231ef` |
| 5 | `lemma` | [card_ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-oflist.md) | 65 | `result-track:f80f90ebed5b741cc87eb66fbafd5c987a0024e564de6000d63d2b2033a09d19` |
| 6 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/tolist.md) | 69 | `declaration-track:308d9f92eb32e00c7eea305f5a3d2b45f4dcddcfcbf17eabb93e7255ca8a7e6c` |
| 7 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/mem-tolist.md) | 75 | `result-track:3b87d601adf9f2e20597c75a959be7eb029f2ca1c66ef4b9b7c5b812acac079c` |
| 8 | `theorem` | [nodup_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/nodup-tolist.md) | 79 | `result-track:d49e04ff74ce8fa88c09f58523bbe54fae03827155ceae0fb76e59cf66dd2288` |
| 9 | `def` | [ofSurjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofsurjective.md) | 84 | `declaration-track:2388006f13e636a8d61c499335c12a9aa8bf054e04425a3b05e9d88d8ff9e877` |
| 10 | `def` | [ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofinjective.md) | 89 | `declaration-track:c1e864e8a91b003a7d542940df2e6b127a771c5311af08dee79ba17e6e70ddb4` |
| 11 | `instance` | [_root_.ULift.instFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/root-ulift-instfinenum.md) | 98 | `declaration-track:d33f6b766c343f8e4a573db2bfe000c86dfe1cf52b356723e46b149a3fa343f8` |
| 12 | `theorem` | [card_ulift](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-ulift.md) | 102 | `result-track:244ac6fae2c4d56a81ab50bee88c6e10bdddaabd4d52a7bb0e0b0295dfe5a738` |
| 13 | `lemma` | [equiv_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/equiv-up.md) | 108 | `result-track:d9ada328397fd591939dc600a2e831ba289f18b1c1104e01223a29190b422b17` |
| 14 | `lemma` | [equiv_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/equiv-down.md) | 109 | `result-track:b58c3e117d1bf33ac71b41e625cc0f7a4ddd67eb31ebebe5fa724f7aeec4ce77` |
| 15 | `lemma` | [up_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/up-equiv-symm.md) | 110 | `result-track:2518f83fce3c78af347541388631cc4b1e5b95d50a24ecb05a837bfb1277f9a9` |
| 16 | `lemma` | [down_equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/down-equiv-symm.md) | 111 | `result-track:5bf7f1e9e8cb1bcd026cb214bf35e04f9ea3321f2cf068c04a09094d0b9f52c0` |
| 17 | `instance` | [pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/pempty.md) | 115 | `declaration-track:ee927256052700e952aad85058f7a7b0ebd206f43def64cf76ec982487571b7e` |
| 18 | `lemma` | [card_pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-pempty.md) | 118 | `result-track:97fd259ccaf06b702452db77ddf7417ee3dc0aa320e49e3fe26968ce3e943eea` |
| 19 | `instance` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/empty.md) | 120 | `declaration-track:5c07a798a8ec55ce9d65620513902a56f5302c30d3d6715427feb911d1bdec61` |
| 20 | `lemma` | [card_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-empty.md) | 123 | `result-track:528e2386a4227779a637984c1560a72b1b4d33ff3caa7de677bdbf072924645f` |
| 21 | `instance` | [punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/punit.md) | 125 | `declaration-track:b574d83fab2715bb1d457782751cb40cdc5dd4b6fffec717a3173b4b810de060` |
| 22 | `lemma` | [card_punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-punit.md) | 128 | `result-track:54065df397ef3cd193eeb2fef26677381805148cbba891570b6add6e82898eb8` |
| 23 | `instance` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/prod.md) | 130 | `declaration-track:7ed15f87a879c08186a7e8aa2d605265f0148f84e993decf24ebe7dc27b26f9b` |
| 24 | `instance` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/sum.md) | 133 | `declaration-track:21a7b8c48f414c04a305a02c3c4bbe4bbdfbb42e0b31a4252cbbfe40fa08a911` |
| 25 | `instance` | [fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/fin.md) | 136 | `declaration-track:a9df7cfb7e6bfe052139bb064422437e28b6ada8174340cd4d77ec2b833ad766` |
| 26 | `theorem` | [card_fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-fin.md) | 140 | `result-track:2d5e3423ea1734aeaabb23dcc025edc2cdd0f752a658db1bad43a196bf7a77f2` |
| 27 | `instance` | [Quotient.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/quotient-enum.md) | 142 | `declaration-track:2f927a0610bda00848a05b0a822768c353844ce7eb47cfa2373c123fb2ddd2dd` |
| 28 | `def` | [Finset.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/finset-enum.md) | 147 | `declaration-track:254a8f4965d4a6f0deefdf3c947219cc7d8a492daf77e9eb113982f53656fcd2` |
| 29 | `theorem` | [Finset.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/finset-mem-enum.md) | 154 | `result-track:63fbb0e45f80b1ca24fa1cbbec29856a364b48901d42cc426ec94268f3a77427` |
| 30 | `instance` | [Finset.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/finset-finenum.md) | 165 | `declaration-track:e67d7ec34677afdce4f76995187f92dc08c1709ef6b61d72537541ca35c69be4` |
| 31 | `instance` | [Subtype.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/subtype-finenum.md) | 168 | `declaration-track:1a9bfc070090624ac45e1f44fbe21d1f389c0538199c5565dec64d7ae42c02d3` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-9.md) | 172 | `declaration-track:c359ddc89cfdf523d300023934db9ef3b0c3e427722872fb82ea8218f2e482f5` |
| 33 | `instance` | [PSigma.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/psigma-finenum.md) | 176 | `declaration-track:fd601708b828a215119bb479eb0acd5b21e4fb26789172a941ec83395e840783` |
| 34 | `instance` | [PSigma.finEnumPropLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/psigma-finenumpropleft.md) | 179 | `declaration-track:bc778757c2d20b1379e99fdcbcd3287a02b905e6a54293f9722eb1c57521d57d` |
| 35 | `instance` | [PSigma.finEnumPropRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/psigma-finenumpropright.md) | 184 | `declaration-track:dc815de866c176d82c7ca93c6a2fdf7d9b19cc16d6f2e457db377e1192682f7e` |
| 36 | `instance` | [PSigma.finEnumPropProp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/psigma-finenumpropprop.md) | 189 | `declaration-track:fd4e112e12fd667f59745852ac2ce040b89f16f6f4695c14c21f99c7a1cff049` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-7.md) | 194 | `declaration-track:a73edbc29f640156c5cadd3c7f2e46ce31380aaffe2f8d1ec32f8d4495ad1d11` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance.md) | 196 | `declaration-track:09a8b1d57094607b3d728aaece42687d5c1f13351eda718b207f6f77e95441b4` |
| 39 | `theorem` | [card_eq_fintypeCard](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-eq-fintypecard.md) | 201 | `result-track:6bb842b70e99a602a9fb9194a5029b04e00242bb6cb4abcc527bb087763d992f` |
| 40 | `theorem` | [card_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-unique.md) | 205 | `result-track:0af46e10f1d25b4802bf4a7c6d55aa29a9f9ad3d6a777e758c01689c5bb72b16` |
| 41 | `theorem` | [card_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-eq-zero-iff.md) | 212 | `result-track:8065f89c905d9457642c7efb83ee8de624e2ac2fe74d52e63ec35e25fc8ac9c1` |
| 42 | `theorem` | [card_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-eq-zero.md) | 216 | `result-track:92e1ed24e214f666063c7666750687e14f08c617dd6189f1cee953cdf01390f1` |
| 43 | `theorem` | [card_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-pos-iff.md) | 220 | `result-track:e841552904782095c806a37c1516d58298d22a32e3bd5185af915a87c4b77824` |
| 44 | `lemma` | [card_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-pos.md) | 224 | `result-track:b38c30bb32f6359e47d7be8367d0d3dd5fc6f5621d1184ef913e3ddec39cda24` |
| 45 | `lemma` | [card_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-ne-zero.md) | 228 | `result-track:be5ace55bb483ce612846455af035d59d1b2b3f786d02155b850e01f30662314` |
| 46 | `theorem` | [card_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-eq-one.md) | 231 | `result-track:9d7c5683bbea2b7f050dea603dadf1702ebaae555575b479688841e3e79a2ea5` |
| 47 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-5.md) | 234 | `declaration-track:8aba11e629e90156047367499c9ddd38b637287af18db69aad79cc1f81bd67eb` |
| 48 | `def` | [ofIsEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofisempty.md) | 248 | `declaration-track:aa8f1d069657bbb7701797fedefe85912317d068661e467557edc007c805b429` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-2.md) | 250 | `declaration-track:2c40bec98a1628bc4eb894bb9e1058bf7bef3951fe09fa10981c96d389b4b3a6` |
| 50 | `def` | [ofUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/ofunique.md) | 263 | `declaration-track:ae36f7eca6127a38fd6b2b5a9b2019dbf262e253713bb08c4cd0d105a239a42e` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-13.md) | 265 | `declaration-track:f59627b854d359d3bbb13b019e621af7bc672506b24ca9429ad5b8ec1abf5fb8` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-11.md) | 269 | `declaration-track:e4943919af5a15a4f449e30a2aa32951a640d83546092eae53a5fad1036d7f07` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-6.md) | 273 | `declaration-track:8c820ecdf05eb0e31560951b81edef6d73bf68845c545c38922c0fb7ba1e3eb3` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-3.md) | 277 | `declaration-track:729b42c5a072b824eba60c53c486d248ce387a04d85e77b1d42b81625d5911af` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-10.md) | 281 | `declaration-track:c8ceaf54c0afe584db6577cb89e33f89fb8d4c01f35d1fe9ec97b6b414a3bf10` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-12.md) | 286 | `declaration-track:e8fffbbb21c814efbf26583f6b244c406f61a793db16160d28fe23f0e67384ca` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-4.md) | 291 | `declaration-track:8aa179e63bf0fac5b64ad042e8c16dee001778d90dc7c14684eee7f66c5aa3de` |
| 58 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-14.md) | 296 | `declaration-track:fb7583a22a4800e78e9bfd68ffbd752662880203f0113bfdbb769fd0c528676c` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/instance-source-edition-8.md) | 301 | `declaration-track:abdb81e0912a151a59b50b01fc458a55393473c4ee0844b4543945d025077cdd` |
| 60 | `lemma` | [card_UInt8](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-uint8.md) | 305 | `result-track:6ce53ff068ec0ca5b43be8cd5ef04d3a60f528e86493cfc8604dde873ec49af4` |
| 61 | `lemma` | [card_UInt16](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-uint16.md) | 306 | `result-track:586da3bd9070c95969903f48ccf5033bf0b6c7960acd12b6d2c5e6c0f6a6e979` |
| 62 | `lemma` | [card_UInt32](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-uint32.md) | 307 | `result-track:a11e1e7da5a2e834a2182f2d9429e9f0ee64e86fbe889080e18d55de18a641e6` |
| 63 | `lemma` | [card_UInt64](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-uint64.md) | 308 | `result-track:e19f1988374845f36bdc53bc8f90858dc8ef4603f3e62cede4fa6434b3042ced` |
| 64 | `lemma` | [card_Int8](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-int8.md) | 309 | `result-track:9df958e247e7a7c41a85a7afd260bdaf05c608992e15a6a9bea2523bba64bff4` |
| 65 | `lemma` | [card_Int16](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-int16.md) | 310 | `result-track:60a8afd7ee0774370db6a18bde700485c8058992520520e8bbb2375d04b8dd12` |
| 66 | `lemma` | [card_Int32](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-int32.md) | 311 | `result-track:c7b324588b3165f687038d64e52f1db01d3a5dd8fe451dcd03c8b630e9a61609` |
| 67 | `lemma` | [card_Int64](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-int64.md) | 312 | `result-track:7ba8e037281550f221ed880f57cb546ef8939301492ffd8072cd6be5e6bd5e1e` |
| 68 | `lemma` | [card_bitVec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/card-bitvec.md) | 313 | `result-track:53c78b339a05b7c9b23fb58bad423b006a30ed81d33a64ea90802dd99135a2d9` |
| 69 | `theorem` | [mem_pi_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/mem-pi-tolist.md) | 321 | `result-track:7f12b41e9456f54bae1cde4565538992d00876e2dcb9d9e7472150f4cacdf48f` |
| 70 | `def` | [Pi.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/pi-enum.md) | 326 | `declaration-track:b24cd340a6d8d038598e9b0dcf75838e2a60d7592e1cd0701a4be33d4a9842b2` |
| 71 | `theorem` | [Pi.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/pi-mem-enum.md) | 329 | `result-track:521afe882de99ff4b324300f604cc663ad28cfe49e702f74d29758808241e31f` |
| 72 | `instance` | [Pi.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/pi-finenum.md) | 332 | `declaration-track:b62816713cf5a96ac70a4e6d10d2134e4f39fa7a8f60ed4f662d5f3e5e43ddc1` |
| 73 | `instance` | [pfunFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/declarations/pfunfinenum.md) | 335 | `declaration-track:96ffa0ef0f0efb08cc66540bcaf308ec02bbcc9e03b98e6466776691e5012fc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80b494011ed6b4286657114ded31c36a179116863b3ef90f32bac2df0492135b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
