# Verification target: ZFCOrdinal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46a31e604c745f5322f6523366b6eb706c809c75",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46a31e604c745f5322f6523366b6eb706c809c75`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean.json)

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
| 1 | `def` | [IsTransitive](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive.md) | 50 | `declaration-track:f8c693df93107b5eb9c175e9396f52dc3fb4517f463f6d690ab87c4939444a6a` |
| 2 | `theorem` | [isTransitive_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-empty.md) | 54 | `result-track:5ceb5e10d97a878a73cfae3554f60ae82bd3b10feb2181e96e900b40d0e68736` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-subset-of-mem.md) | 56 | `result-track:abad948c26341652832b25b3c7eca0000d5d48613b58c98585972bec8b962e69` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-iff-mem-trans.md) | 58 | `result-track:87051457d8780f1f9533ee1d07eed5eed868f15775e28158d685b5f187af7a93` |
| 5 | `theorem` | [IsTransitive.inter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-inter.md) | 63 | `result-track:cab76437ad181e282995a0e1feaff410eff0ae7a1099aa6362cda00cfe8c9168` |
| 6 | `theorem` | [IsTransitive.sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-sunion.md) | 69 | `result-track:8b75e08b1233fb06f8ba7b1c4d55b8bd73e6b0957b2af4eaba4bc6c4a4e7372c` |
| 7 | `theorem` | [IsTransitive.sUnion'](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-sunion-source-edition-2.md) | 75 | `result-track:ab20367ce2fbd8fb73b99c048e0ebba3928e78b694b723b8c5cdb7eac3c8d9da` |
| 8 | `theorem` | [IsTransitive.iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-iunion.md) | 80 | `result-track:ab4b301b758e91fb004681993e67b10d6440a9d348ea133963bbfa9a5c530f2d` |
| 9 | `theorem` | [IsTransitive.union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-union.md) | 84 | `result-track:152470890cb83e0a8833cebf148b6b5d85970d48d98f7fb768aa18b302dad160` |
| 10 | `theorem` | [IsTransitive.powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-powerset.md) | 93 | `result-track:67bdaf2166cc1901a92aff74363000bd60ffa89ebe698caa8ba4c03c1d9781a8` |
| 11 | `theorem` | [isTransitive_iff_sUnion_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-iff-sunion-subset.md) | 98 | `result-track:c1fbbc654c85ca3fd8df8b1cca87908366b5a9ef7d84bb4176d698952a320c2d` |
| 12 | `theorem` | [isTransitive_iff_subset_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istransitive-iff-subset-powerset.md) | 107 | `result-track:34f13b70e4b95644715c8bd89f9b1d5e71f32014d5919700280ef10124848ee3` |
| 13 | `structure` | [IsOrdinal](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal.md) | 119 | `declaration-track:8af1abb7c52370aa4939125e0bbf0cb0bad3d25b6947c27d33ba4b36abf1b0bf` |
| 14 | `theorem` | [subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/subset-of-mem.md) | 127 | `result-track:4864e834150ffab6e8e8ec5a11e0b3e8ed2cdc40859cc2869fdf9e6bebbcdaae` |
| 15 | `theorem` | [mem_trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-trans.md) | 130 | `result-track:0d741d70cfd6e5aefce2af18a25b2be2fff6454f27661f24dccd20140e870d12` |
| 16 | `theorem` | [isTrans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/istrans.md) | 133 | `result-track:c9b1e7791fcfdbce8f1b3c1159d5f7f88e60487fd5e8d860c55e63c335af054c` |
| 17 | `theorem` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-istrans.md) | 138 | `result-track:f330c62fadf6c665bde2d9e8e1d6b5422f0b261e8253eb17e8bb29e1c6525d19` |
| 18 | `theorem` | [mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem.md) | 147 | `result-track:d587e45ba040a9b886c91b8e523106ad86dff2f1d80e7ce743d4e98ee693d000` |
| 19 | `theorem` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-forall-mem-istransitive.md) | 153 | `result-track:0112b0871f46974d4e835a449efeeafcb4dab28be353c7246d4229c5b4e4a00e` |
| 20 | `theorem` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-forall-mem-isordinal.md) | 159 | `result-track:34e375302df65160a6d4683247354321cadac4c516cc629eb8cc7afb7c28d415` |
| 21 | `theorem` | [subset_iff_eq_or_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/subset-iff-eq-or-mem.md) | 165 | `result-track:8f5b17928f18ea37d1b43a17bda9c74e85149a666dec8082744eb1ad587318dc` |
| 22 | `theorem` | [mem_of_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-of-subset-of-mem.md) | 187 | `result-track:570c601fa107c9f1ef7317f94c63f6c19cb930bceed378165e6163073b1e848b` |
| 23 | `theorem` | [notMem_iff_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/notmem-iff-subset.md) | 193 | `result-track:576d4028bd70abddd58b69d23c24f13090bf6a82b20223ed84f2e0c85e98d61f` |
| 24 | `theorem` | [not_subset_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/not-subset-iff-mem.md) | 200 | `result-track:0e3b90ad760e460d4dcb9bd1eaf8c1ee9aac043950246d191698be0af674859e` |
| 25 | `theorem` | [mem_or_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-or-subset.md) | 203 | `result-track:8ed4689c826cb1ef39d701640d8dd0144d38956fbf84af9b0f96c3ed9b74f088` |
| 26 | `theorem` | [subset_total](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/subset-total.md) | 207 | `result-track:1d4ceae1034019935f2c65cc045eff1186788591520f89b2069798a4ae458a8d` |
| 27 | `theorem` | [mem_trichotomous](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-trichotomous.md) | 212 | `result-track:c4660c58c8efcfb275d976d53daf2571c12f783696b00b4bf4f690bef8a8db5a` |
| 28 | `theorem` | [trichotomous](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/trichotomous.md) | 216 | `result-track:e0b8096a297df43985524737996eafe892e055ebdf683589ab01455cab1abc21` |
| 29 | `theorem` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-trichotomous.md) | 222 | `result-track:8045826b54483b328f6bc62c8760721acc3aa242892503a547e528d26b8f5886` |
| 30 | `theorem` | [isWellOrder](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/iswellorder.md) | 234 | `result-track:aed6c0fae2b5fc9d6b1251a40575b629a34a8a507d8d896d6812f8f883253913` |
| 31 | `theorem` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-iswellorder.md) | 239 | `result-track:e369b74a61898672d7b5069ae3d96482f9dfc5f1bbe443e8bc88214d1914e60c` |
| 32 | `theorem` | [rank_lt_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/rank-lt-iff-mem.md) | 246 | `result-track:6faeb3594a55da8c7bbff9977e7341cea73690256fa9bc4d31120d6ce8e70a0f` |
| 33 | `theorem` | [rank_le_iff_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/rank-le-iff-subset.md) | 252 | `result-track:b7c2c3549cdeafab8aeeca89604f7f64873af18981ac99777a95d356af88b566` |
| 34 | `theorem` | [rank_inj](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/rank-inj.md) | 256 | `result-track:38583e8280ac48877e0bc379a94ea35aee40c19cf511c0d77fcf84242109740c` |
| 35 | `theorem` | [isOrdinal_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-empty.md) | 263 | `result-track:f95e301fbe980a8a37d0101576c9a0ff1cfbc5da44ea2f2ef5140eb20c3d1e73` |
| 36 | `theorem` | [isOrdinal_succ](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-succ.md) | 266 | `result-track:bc5ae8c607e460b04d6a7ec2b5051b072fafdf7276c19d423aad67ad42a96723` |
| 37 | `def` | [toPSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/topset.md) | 284 | `declaration-track:758b83272dcba32a981fb219f6b85a0e31d6b15eb20fc6f44568bbc6b7503776` |
| 38 | `theorem` | [type_toPSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/type-topset.md) | 290 | `result-track:476791d746ac0a434da013c873ad61d76eee82a21c0261e1c31341d3e5a0119c` |
| 39 | `theorem` | [mem_toPSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-topset-iff.md) | 294 | `result-track:6d73057120ccabaa111687a103a44ac0c9e36dcaf2ce92072b724e30fb9a9e74` |
| 40 | `theorem` | [rank_toPSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/rank-topset.md) | 299 | `result-track:35b0a364876d72c4d98dc6fa3b5acad4fe4f4185523ca76486491c47ea1109e3` |
| 41 | `def` | [toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset.md) | 310 | `declaration-track:a33a8afbd52625f78c2d5e5d9d3a86317a2852a82c7968585f67288a92292fd6` |
| 42 | `theorem` | [mk_toPSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mk-topset.md) | 314 | `result-track:163093bd6e775393cfe9451ebadbdbf7e2d99651b220b43cfe8ddae894ed82eb` |
| 43 | `theorem` | [mem_toZFSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/mem-tozfset-iff.md) | 317 | `result-track:ec18ef655823fabf19ae19b227d8113886e1dbba4601534082e17793dec77691` |
| 44 | `theorem` | [rank_toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/rank-tozfset.md) | 324 | `result-track:c1e681760ab370eec6e506f51b3622e6812adc28f0146238a6d4272283305ee4` |
| 45 | `theorem` | [coe_toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/coe-tozfset.md) | 328 | `result-track:0874918cdcb4dfe63e4eb439f2c3206b9e4ff3b5f8309b37597639c7586b0c1f` |
| 46 | `theorem` | [toZFSet_mem_toZFSet_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-mem-tozfset-of-lt.md) | 332 | `result-track:cab4df5ce5153f8bd7be3622029698bcb52c7b885343fe0d36d289835264447c` |
| 47 | `theorem` | [toZFSet_monotone](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-monotone.md) | 337 | `result-track:6b713342b128fe922b5c75c41c4f75be41e5639d97bf4b0a00b1c47cbe107966` |
| 48 | `theorem` | [toZFSet_mem_toZFSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-mem-tozfset-iff.md) | 343 | `result-track:41b6cb3c1ef5fad4c242b59e4e0a4beed535635b3170907092b127eeedac5969` |
| 49 | `theorem` | [toZFSet_subset_toZFSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-subset-tozfset-iff.md) | 349 | `result-track:2f236eaf8ccc8415c73a2e4533a60d8c015e45d58ee2c820a67b072864c9ec4a` |
| 50 | `theorem` | [toZFSet_strictMono](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-strictmono.md) | 354 | `result-track:8fdf7be60b0e604dc429af67c574cdae0d3d532ab60040658663c02f994a6f4b` |
| 51 | `theorem` | [toZFSet_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-injective.md) | 357 | `result-track:af15ff8cc96c52dcb714d758de581e5b0ebead0438d4fbb4d3171ff155d485cd` |
| 52 | `theorem` | [toZFSet_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-zero.md) | 361 | `result-track:19b79eed7785be87f9db24b985a8cbbfa02d20d2da7bab2bcd23850066f00f84` |
| 53 | `theorem` | [toZFSet_add_one](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfset-add-one.md) | 365 | `result-track:cc5a8ac6c662ec258414fd972db16f578eaa7390048339d402affe7e2e494c32` |
| 54 | `theorem` | [card_toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/card-tozfset.md) | 369 | `result-track:0500c0d7d58412db550478cef9467bd9f8856c8f4ee60379d6f0d6526376302d` |
| 55 | `theorem` | [isOrdinal_toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-tozfset.md) | 378 | `result-track:71c18165736f98efdab74229d1378a9bbb9f2688a347eb2333df8f762452855f` |
| 56 | `theorem` | [IsOrdinal.toZFSet_rank_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-tozfset-rank-eq.md) | 387 | `result-track:05efb1007d30218ee5ac0112ecb7f533eb25fa5326f50daa1bea5949989ba3fc` |
| 57 | `theorem` | [isOrdinal_iff_mem_range_toZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/isordinal-iff-mem-range-tozfset.md) | 390 | `result-track:b0bea5109b6e299c17f5b96f87d2d124e4bcd16c7c36012ceb0ebce61afa31d8` |
| 58 | `def` | [ZFCOrdinal Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespacedPublic.lean/declarations/tozfsetiso.md) | 400 | `declaration-track:6d5a773859c49e0dedce6055805dbfddad162ce0a87e266000525d61674205be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc6d64e47d9e0a5001455fea4feada72d3a66a25e529029171a4536e828cbc19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
