# Verification target: Submonoid Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf2bad38cfe31fb408bd2792afee9e4f9dcf402",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf2bad38cfe31fb408bd2792afee9e4f9dcf402`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OneMemClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/onememclass.md) | 58 | `declaration-track:da3768734232da422637a7dc06bda99595c094e524a1d1e792c28b73dd37ac5f` |
| 2 | `class` | [ZeroMemClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/zeromemclass.md) | 65 | `declaration-track:961ab378ec6ad6325bd08c6ebc40710ce2af602660ad3cc13dbb8948f0257e08` |
| 3 | `structure` | [Submonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/submonoid.md) | 78 | `declaration-track:9515cfc16687ef5899001f039c1ef0f19561c655059b0f0be406380c5b605060` |
| 4 | `class` | [SubmonoidClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/submonoidclass.md) | 89 | `declaration-track:4a8facbd1921ca598b78555e7803209860bf4078431ecff77cb8aeb5c0da4eb3` |
| 5 | `structure` | [AddSubmonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/addsubmonoid.md) | 96 | `declaration-track:edd3ac8fac763b86c264f0764011f43fcdc6525976b9dacc86852a6f85362f73` |
| 6 | `class` | [AddSubmonoidClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/addsubmonoidclass.md) | 108 | `declaration-track:40a1aa09623d5af9bd38f4ede6df9f651debfb8ace0dffdeee436eac24ecfdab` |
| 7 | `theorem` | [pow_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/pow-mem-source-edition-2.md) | 114 | `result-track:fafd40d7ff99e1efaa9d2e1e885e6b83dec099ea1e0b905436e947c9104db16c` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-10.md) | 126 | `declaration-track:ea9e12286c8fb551b5f29cbb13ac77f0b27a9faec04de851c8f45d673f090613` |
| 9 | `def` | [ofClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/ofclass.md) | 136 | `declaration-track:db67a98d6fe5bb3cea95ac58fd40fbd5119b243fb8f07dbc8b6ba0a96ef5b027` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:29e992bdd293ad1f969f010867bd03e60175e321c157d1fe5878bd24d943be5a` |
| 11 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-12.md) | 145 | `declaration-track:ffbd8d72260ba472af11163c5dbf31b4fd5a5d667533c0d98ab312d49efe485a` |
| 12 | `theorem` | [mem_toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-tosubsemigroup.md) | 150 | `result-track:b4239f2bbf37a31e7c3146b60529c4ec600b45eddb956a0b2576f323ffd07f27` |
| 13 | `theorem` | [mem_carrier](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-carrier.md) | 154 | `result-track:d31ec2c1d04337dbf70fe93505d76265b3ab578ed6e425b58e09a474e232ad42` |
| 14 | `theorem` | [mem_mk](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-mk.md) | 158 | `result-track:222e73a81d3e72c6d5af8677abad17044826b03818ef2754a8b91882bb33ae64` |
| 15 | `theorem` | [coe_set_mk](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-set-mk.md) | 162 | `result-track:faa9164580b7fce3347172dc34aa5272444536f73ec85a7ff5adbd66224983ec` |
| 16 | `theorem` | [mk_le_mk](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mk-le-mk.md) | 166 | `result-track:7cd719387ce49f822a0da9002b28dc2241098a045cb15f584709d279bfd1adec` |
| 17 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/ext.md) | 171 | `result-track:0616db5997308e1041c7a0472de52d9aade8dd8474bfcc596cdc3cc5961c0b33` |
| 18 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/copy.md) | 176 | `declaration-track:01cad85a2928360415bc556f22efa645b904858a55f6f162b77dc69e884f9720` |
| 19 | `theorem` | [coe_copy](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-copy.md) | 184 | `result-track:2f9341c2891fe38e9e6405278141e88d802af8c1831737f1f6d1a8fd2ad4cbaa` |
| 20 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/copy-eq.md) | 188 | `result-track:5f3b9af28af4e643d52c9ebcbc3398d53dbb06ff5ac0317daf99ad3236532d4f` |
| 21 | `theorem` | [one_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/one-mem.md) | 195 | `result-track:414e40e63dc7fb21be7da14e522591c181ed36fa8e8073ae2f13588ab5242d49` |
| 22 | `theorem` | [mul_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mul-mem.md) | 200 | `result-track:1eff337c6ad5b247b0db01bba4edbf79126b9edc2e5322732cfa1067e0777c24` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance.md) | 205 | `declaration-track:0b14d62e332060d0eeca1e96662e3e977210193f3d9e193288311b17b7dc433c` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:3744cb4097228d8bc2d8980056bc2fe2e25d3411b5c22c5282e1b47eb4b809f4` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-7.md) | 220 | `declaration-track:b544bf2c6ed1ce613f3aa61e446168c0dab8ffdf12c3fab4e4cd2447aa9f9678` |
| 26 | `theorem` | [mem_bot](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-bot.md) | 224 | `result-track:fad5688bd9e3e9e0dda5e4f6247755ae2ab0f34874ba0e143c5451a5a5d24d8a` |
| 27 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-top.md) | 228 | `result-track:bd4e23a288a95fdb7a85f89a2079a039b971486215b7db1ab277d4650acf7a06` |
| 28 | `theorem` | [coe_top](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-top.md) | 232 | `result-track:36c4bdf1aced7b61f9b1016e54176eff8c4ea92495c084cd99c18aa6cbe850b3` |
| 29 | `theorem` | [coe_bot](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-bot.md) | 236 | `result-track:06e3b1eef690958ff5dc9c01b6a63b8aa052d0447b9fcc6715f78aea9eb2e8ca` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-9.md) | 241 | `declaration-track:c82bd3da3eafcd9e16be22397e4099f69452d6678adf49c4f51d3c36c168396e` |
| 31 | `theorem` | [coe_inf](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-inf.md) | 248 | `result-track:697714765574f8e804e37cae541e286a43f5ff2ef25e52ab80a4c80d7830c592` |
| 32 | `theorem` | [mem_inf](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mem-inf.md) | 252 | `result-track:e0d665e31a81fdf7bbc0d9256f9e30a05e725c0afd1a880fcf91d78faac0f6e4` |
| 33 | `theorem` | [subsingleton_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subsingleton-iff.md) | 256 | `result-track:c38d08ad5cf924f9e2273449499dec5f9780d7b607e7a9cde030c0b098ebd11a` |
| 34 | `theorem` | [nontrivial_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/nontrivial-iff.md) | 266 | `result-track:267a8cade7e8dbd13d7036325065d176360502e8a39a4c076b75ce7f803901b7` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-11.md) | 272 | `declaration-track:fcd4af37ca80c65d0607ed6598502f69ebf4bfd5ee4d51f229ac56bcc1485537` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-5.md) | 276 | `declaration-track:5d7d416703d1dbd363f493cfe5edd695d49e45edcc46ce0f69413a2c60cbfa3d` |
| 37 | `def` | [eqLocusM](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/eqlocusm.md) | 289 | `declaration-track:12e018ecb828809e70805ea2e73bff2352b3366051e713f791faee22766c445f` |
| 38 | `theorem` | [eqLocusM_same](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/eqlocusm-same.md) | 295 | `result-track:009951d5770537e432625c43a29182a5d9e56b8b2778ead9fe680aacae3430c5` |
| 39 | `theorem` | [eq_of_eqOn_topM](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/eq-of-eqon-topm.md) | 299 | `result-track:10bc469d1495cc87ee6b0e6941993cac207a807169d5c80c4a8fd2a0836112c3` |
| 40 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/one-source-edition-2.md) | 312 | `declaration-track:f86862521b9c0018c02bde92bf5420f2fd8c23f2bfd08d3ca59243229a431ef4` |
| 41 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-one-source-edition-2.md) | 316 | `result-track:e325667bd41a4a5521ac11a43da65bc22b9a52b4cdd22d50c93cf2ef4c1e5ab4` |
| 42 | `theorem` | [coe_eq_one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-eq-one.md) | 322 | `result-track:c90677137ec3cd61e866e787017c138f0526dbd170fd6ddff37292a3bf9c3aa9` |
| 43 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/one-def-source-edition-2.md) | 328 | `result-track:7260336f697d5f3861314361c19299b7e1f8b9d42fc1f2cbce6b31c86ffd2581` |
| 44 | `instance` | [AddSubmonoidClass.nSMul](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/addsubmonoidclass-nsmul.md) | 336 | `declaration-track:5c6f22164b614001dfb7ce20f4fe7bb5415486f7aa31626d9f16cd9c1298e5cf` |
| 45 | `instance` | [nPow](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/npow.md) | 343 | `declaration-track:500e6a5d50a72a20ae375baba44d499a04c9311e017fc2fe844e60e3356243f2` |
| 46 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-pow.md) | 349 | `result-track:96f4029277c07538d0a03c07a45fb72d417f8c5112d0a6b180fe69a7fa261166` |
| 47 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mk-pow.md) | 354 | `result-track:7792f976f9793b9b98ff37488120eaa67267cf699dcd60d2a556d9d07e0c3e19` |
| 48 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-4.md) | 362 | `declaration-track:4f0013f25220f2cdc5d622aec6e8dc7a56d12df43d7fed7d960f6c46a848b315` |
| 49 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-8.md) | 369 | `declaration-track:b7ed6ae539941c1f5610f089b017c60384b94316492d4a327b4c76da0da662b2` |
| 50 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/instance-source-edition-6.md) | 376 | `declaration-track:9ce7bade0d06391db06c43df3b8e50f856a1e89a6540ce3da455b40821b96857` |
| 51 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype-source-edition-2.md) | 382 | `declaration-track:a51eec73c179fcb24e08ebda34a2816b5af9e2c107aba07220180adc57dcf156` |
| 52 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype-apply-source-edition-2.md) | 387 | `result-track:76897896d1a647f49e399300d861adfdc50b1a638f46982232ba0c0b35fca939` |
| 53 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype-injective.md) | 391 | `result-track:123a1be1bbc90f6b14edd071bc5349009f8ae1097d17d40f4e2d54814f5cb984` |
| 54 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-subtype.md) | 396 | `result-track:2faa951f21627bfef7c0ae0f07907f6b097d316afebe943f55e5737383794e02` |
| 55 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mul.md) | 407 | `declaration-track:399350a1d126d1270c4d9e74cd37a3e66ad9c249a8fcbfa6f3a5f491edf9db52` |
| 56 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/one.md) | 412 | `declaration-track:aa1bb8637bbf1a09f6bf6fad226db144abe30861f8e2538af9f283495c82dc27` |
| 57 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-mul.md) | 416 | `result-track:2e38ef064bae2601c3adb152cdf1303b6c3a0539e75eb2751ddf4df44703090a` |
| 58 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-one.md) | 420 | `result-track:a9337b31907954483b884684571a3de365823b12cd0404f055430e008d8f9b61` |
| 59 | `lemma` | [mk_eq_one](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mk-eq-one.md) | 424 | `result-track:431229f8eaffc9547ec34b56cab23e8d36064c397c7f28db8a652a82ad614ff2` |
| 60 | `theorem` | [mk_mul_mk](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mk-mul-mk.md) | 427 | `result-track:9ac523e26db7c39da9ce3d68c9c1bc8a7850804b7436fabb7a8baca3fba7500d` |
| 61 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/mul-def.md) | 432 | `result-track:b4f789b8654fbe242ba5d4e9dbc577ecc1df104fe785c079f5c57afde8379bbc` |
| 62 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/one-def.md) | 436 | `result-track:44cf3893a429c8dcf4443142063f5b13180cf933c81e797d2c8ab99bcba3dd49` |
| 63 | `instance` | [toMulOneClass](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/tomuloneclass.md) | 442 | `declaration-track:3193151df91242519e04bb8ebc58bc761229330a29c562a43d243d67a1f26101` |
| 64 | `theorem` | [pow_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/pow-mem.md) | 447 | `result-track:10a5c128a518f02c4f7336b7601302db0f3476246d54facc538f7f8e56cc4445` |
| 65 | `instance` | [toMonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/tomonoid.md) | 453 | `declaration-track:61734c5f016570d77c6c36aefdfaf7aaf1b2b309274b414f6926ba1ee7ba6e05` |
| 66 | `instance` | [toCommMonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/tocommmonoid.md) | 458 | `declaration-track:94d93c8a972a7261db8dcdee706fe4d14456644c83a50c927297494b3d628f6f` |
| 67 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype.md) | 463 | `declaration-track:5a76ca86c68b52c6da2559f8f7dedd837d0ea60712f4d07e9de067e07013416f` |
| 68 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype-apply.md) | 467 | `result-track:712ee9e65689246f03a231538a796c42d48dad21f52d0ffb980f9ee1f1fe10db` |
| 69 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/subtype-injective-source-edition-2.md) | 471 | `result-track:72d3c8ec395464a08fca991693199865a28f88ae129a4b9360fd933e56685885` |
| 70 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubmonoidDefs.lean/declarations/coe-subtype-source-edition-2.md) | 476 | `result-track:e737abcab5b0a5d6041cfafd2470c547b6f1c070c1c4622e32a9b6945e57d7db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c66641fec4eacc307c64c751ad3c0a8b31953e9def22e64e8ade2dbcce77d76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
