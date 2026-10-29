# Verification target: ZNum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d12c1200df459993fcc3223c1efc2fc2cf71b31",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d12c1200df459993fcc3223c1efc2fc2cf71b31`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-zero-source-edition-2.md) | 27 | `result-track:d6477356a31d004efea678f431d5c13a414df26528e9d1776d2a1cd303dde960` |
| 2 | `theorem` | [cast_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-zero.md) | 31 | `result-track:291cd4938d3e6fedf7f230b98291a98073409ea9021329382ed3d78438b3e872` |
| 3 | `theorem` | [cast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-one.md) | 35 | `result-track:d95489672c69a31b41536586466f1650c8521dd203128712ad0731ad43a95ce3` |
| 4 | `theorem` | [cast_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-pos.md) | 39 | `result-track:4390302f5f54104f207fb032ca5cfc4dc18faec150ab1509387b036302746814` |
| 5 | `theorem` | [cast_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-neg.md) | 43 | `result-track:26188b107d2039840f2a2fd95145f01fca31f15a864c4f2a85e01b364cf6a78a` |
| 6 | `theorem` | [cast_zneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-zneg.md) | 47 | `result-track:dfc7192f7c690f7e1793d6717abb779a4be0790d58bdf0324fff55581128f3ea` |
| 7 | `theorem` | [neg_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/neg-zero.md) | 52 | `result-track:ab4d5502289bbe41c1b0c16e89cc815ccb76665b6c081da3c68e0efc65e56d73` |
| 8 | `theorem` | [zneg_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-pos.md) | 55 | `result-track:10b623fe11e67f8e9ea6df1b9d8d7441859727ac0747ec0a059d49bd13d9ed0f` |
| 9 | `theorem` | [zneg_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-neg.md) | 58 | `result-track:e6a9411f12c2857c958165ab54266d34810e3661ea003d5ba93b212ebeaa15f0` |
| 10 | `theorem` | [zneg_zneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-zneg.md) | 61 | `result-track:e0c59c732429ab90476a6739e8db2f88dd41ce9c7cb1ff6fd59a223b0245e78e` |
| 11 | `theorem` | [zneg_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-bit1.md) | 63 | `result-track:c9ccc91895d93eced0da3b993752967709d9f7e8e52f5cac1758b59bc3fbbbab` |
| 12 | `theorem` | [zneg_bitm1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-bitm1.md) | 65 | `result-track:b2000fb1c756116ea32fd5a29279dd828cabd72ddcff315b7ca80706eec09eff` |
| 13 | `theorem` | [zneg_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-succ.md) | 67 | `result-track:b4f852c4cc422ef5d9d2c6d006b90302afc3495646d2e72803117a98ed32a3bd` |
| 14 | `theorem` | [zneg_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zneg-pred.md) | 70 | `result-track:75611bc55e283e1b61ca1b7eb900052af38c86504a2811363394f3b1184f3cc1` |
| 15 | `theorem` | [abs_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/abs-to-nat.md) | 74 | `result-track:21ebab39d061a27c2ae1cf54ece139fdc8bbbd1dfec3d656ca14cd5743a4be16` |
| 16 | `theorem` | [abs_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/abs-toznum.md) | 80 | `result-track:9affe07cd43c6b416200175c04ff5ac4ea1e80f0635878b7fe8c227605b1c685` |
| 17 | `theorem` | [cast_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-to-int.md) | 85 | `result-track:c9a807419a888b21cba94857ead84ab1be8cdf423901230c9f822d0f6f714bbc` |
| 18 | `theorem` | [bit0_of_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/bit0-of-bit0.md) | 90 | `result-track:a9471048bff9309dd0aef5bbc2747084766b70c65f7d0b58f57cbc4c7f7e644e` |
| 19 | `theorem` | [bit1_of_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/bit1-of-bit1.md) | 95 | `result-track:626709820848d2d772658086e9be34e5492d20845315c8146e1b222d1801991e` |
| 20 | `theorem` | [cast_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-bit0.md) | 101 | `result-track:b60d65439c263ed57941a40f814e026d3c4869f1a55ef3d1beb19ba60a383ddb` |
| 21 | `theorem` | [cast_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-bit1.md) | 108 | `result-track:15497767e40733488e5867f779b8132502168f70a009a750a8fd7be2ecb7c821` |
| 22 | `theorem` | [cast_bitm1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-bitm1.md) | 124 | `result-track:8f10823af486286730ed5a3ef5bf04bc73ab99352d812d295de18056fe730a4c` |
| 23 | `theorem` | [add_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/add-zero.md) | 132 | `result-track:e4165ac098a22c4d5326800c492da9f365a2a67a250e3fa6aac3c4c2f57ec6d4` |
| 24 | `theorem` | [zero_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zero-add.md) | 134 | `result-track:5c15920051c6726ff42b2cfeb55338b96c56669e50062e7c6b2cade59bfe2734` |
| 25 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/add-one.md) | 136 | `result-track:db4c4ff6b950c1a8d12f56a8c2a0c21337dd39357b490b77a78bc3231b62bbe6` |
| 26 | `theorem` | [cast_to_znum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-to-znum.md) | 147 | `result-track:caf7cd593cd0f9bf2a1d0cfbc9eb67d6b542202ca6089400e5b6238cfe53e609` |
| 27 | `theorem` | [cast_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-sub-source-edition-2.md) | 156 | `result-track:9d59ed1ba8f655269eb79ed5b24aa76a0bbba50b5ad7b5d5ca7df21dde2ecea3` |
| 28 | `theorem` | [to_nat_eq_succ_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/to-nat-eq-succ-pred.md) | 183 | `result-track:01781c5a1b5dc908bc56bb6e1f14034df79755141ad6329e3b3e9840a48b3f80` |
| 29 | `theorem` | [to_int_eq_succ_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/to-int-eq-succ-pred.md) | 186 | `result-track:52fcabc043db37724283e237f5ff247821351d02126b8aeada94f0c5c32d1ad5` |
| 30 | `theorem` | [cast_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-sub-source-edition-3.md) | 196 | `result-track:eaed8d0c43ab348de70427e6b73d71b316e079ababa65c1f8ecd83ffead873e9` |
| 31 | `theorem` | [toZNum_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/toznum-succ.md) | 202 | `result-track:6a69bfb969cf6be58f65ef6b42023c18e756c3601b5afbb854531d0c65124749` |
| 32 | `theorem` | [toZNumNeg_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/toznumneg-succ.md) | 206 | `result-track:43fb8b0b6b5d126385b69c4cbde1e30ccf37754c1431310558241b660a47ecd2` |
| 33 | `theorem` | [pred_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/pred-succ.md) | 211 | `result-track:2fe274e50bb58059bb16a02391f6f517fe408496094622ef6a8aeb9ae79a09d0` |
| 34 | `theorem` | [succ_ofInt'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/succ-ofint.md) | 216 | `result-track:212447566fdae7ddd65b75f1c4a74ef24971310eebcc27dc0b08220ca2c57075` |
| 35 | `theorem` | [ofInt'_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/ofint-toznum.md) | 231 | `result-track:53a5488546154200d691feacca283d830b4afbedce2ed9eeeb4a2956324c1852` |
| 36 | `theorem` | [mem_ofZNum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mem-ofznum.md) | 237 | `result-track:07175e0e1c343c84e42e428e3ba45d32b32657d3c2160c4ffa471bf340aac550` |
| 37 | `theorem` | [ofZNum'_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/ofznum-tonat.md) | 244 | `result-track:24a631bbe6b7601642cc7991abc656ae20eb3deeb18da142408fc22f737d92f6` |
| 38 | `theorem` | [ofZNum_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/ofznum-tonat-source-edition-2.md) | 251 | `result-track:5658a5e5f309838e839a004936fb8680b535c1d62da6d71c1424aba77701b3ab` |
| 39 | `theorem` | [cast_ofZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-ofznum.md) | 259 | `result-track:131507489d659463aefe12e4f7a7a0cc99466e02ebfa5cfa089d3d664e0c86f0` |
| 40 | `theorem` | [sub_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/sub-to-nat.md) | 263 | `result-track:2057459588abdc8db60e95238fbdb1088519135186bf2ae47042f16d98b41f0e` |
| 41 | `theorem` | [cast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-add.md) | 274 | `result-track:6c6995254ed282d63f54fae8d254be765ca0151e178013cefdb9dc7a688577c5` |
| 42 | `theorem` | [cast_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-succ.md) | 290 | `result-track:96b5177ccde056717010721464d1760473b662dab0c45f8e80282e1d71811775` |
| 43 | `theorem` | [mul_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mul-to-int.md) | 294 | `result-track:e9c1197131f7e0825f749c515eec581e4c815d0d51428d7de3e08c91c1ba59b0` |
| 44 | `theorem` | [cast_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-mul.md) | 302 | `result-track:451ddd3a97bb68d54a239b1c9de5cb92e3bd6541399baa02de1fc95da118fc69` |
| 45 | `theorem` | [ofInt'_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/ofint-neg.md) | 305 | `result-track:41f29a2936596a37939670f351fd9defc7efba52361fb31021c9f115bb7063de` |
| 46 | `theorem` | [of_to_int'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-to-int.md) | 310 | `result-track:09fd3bc3a52e373d9a09f42f436b0cd0773d15f79397a0974f2802ff9bd73ac7` |
| 47 | `theorem` | [to_int_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/to-int-inj.md) | 316 | `result-track:c982faf07f2e301b30369fb0fccab52f7feb77e3fb7521c765910d1a2398cd09` |
| 48 | `theorem` | [cmp_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cmp-to-int.md) | 319 | `result-track:eefa59a90df7b8d3a9db4c4569c0ceeb2ec59a2d37d20b846e906092d3ab0e19` |
| 49 | `theorem` | [lt_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/lt-to-int.md) | 335 | `result-track:967812feced41c98bde40a98062df9f72cc6363f905acdce8704c05cb11b0bf2` |
| 50 | `theorem` | [le_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/le-to-int.md) | 342 | `result-track:69506cc9a9a70d43799f49b8ac80f8d9d1f4af774769b50bcccc9bc74ec45193` |
| 51 | `theorem` | [cast_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-lt.md) | 346 | `result-track:f14ccd512de9505a2eb358efadff8d88361e654d917128a4a513bd2556276ae7` |
| 52 | `theorem` | [cast_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-le.md) | 351 | `result-track:8f79165f501b178640c2451e0c36f4591bbe5d14cf3384d2c5b41e6ee3cf0336` |
| 53 | `theorem` | [cast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-inj.md) | 356 | `result-track:ddccf770ff6cb12d806e9dd5054975e512525684ed978a20a3ec02dcf9abb549` |
| 54 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/macro-source-edition-2.md) | 367 | `declaration-track:d63ae66382a390970f96e027ec826ebcd7614a31b6fcd125b3fe021563f4003e` |
| 55 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/macro.md) | 380 | `declaration-track:35981d177f5c1c889e0e75f7a8374885bca2fdbbfed433f4fe08be7f31374d9c` |
| 56 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/linearorder.md) | 383 | `declaration-track:339c4a92bef0d7329940878f681a7547f392dddf19b588fa55e6b2c8538e28ab` |
| 57 | `instance` | [addMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/addmonoid.md) | 409 | `declaration-track:29e1a85bea05805c202e5255ffd15f62f87a03021ef3a3ce3fdc8a5e8ce24f2d` |
| 58 | `instance` | [addCommGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/addcommgroup.md) | 417 | `declaration-track:6ea0af14041fe1a704505b730a7b5e8de5e37643e7dbcc491fe643eb34545538` |
| 59 | `instance` | [addMonoidWithOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/addmonoidwithone.md) | 424 | `declaration-track:69ff34529decb341fb1e4c0316195bd98ef3f31ce62977567265a59ad2b90540` |
| 60 | `theorem` | [mul_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mul-comm.md) | 435 | `result-track:0b9a33eec3fa567983c29e5b2b646f8729f8c2dca9ef810b63d461cacda2efa5` |
| 61 | `theorem` | [add_le_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/add-le-add-left.md) | 437 | `result-track:cea6bbd704a44df3719f3847cf53e6f8e14ed615ba36db1ed18e33a9375c1e23` |
| 62 | `instance` | [commRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/commring.md) | 443 | `declaration-track:2579eee87bbf818fcd3eb78751addecde15322b36c0f460839e1f395f478db1f` |
| 63 | `instance` | [nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/nontrivial.md) | 459 | `declaration-track:0236ad3d76d026d97f7205616573d8e9fbbaf982d10bc200c204d8d0c3aee459` |
| 64 | `instance` | [zeroLEOneClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/zeroleoneclass.md) | 462 | `declaration-track:2915508b04db87a0d38f45fafbd1ced5d29ccb13ec3c6ac60043c8cff0541d03` |
| 65 | `instance` | [isOrderedAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/isorderedaddmonoid.md) | 465 | `declaration-track:2d691d6d21f2e9119ce41c410acd4c16767b623ccff78a91dde0493b547e2778` |
| 66 | `instance` | [isStrictOrderedRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/isstrictorderedring.md) | 468 | `declaration-track:1c35f1f2f72c5bfdb4f872ed5cdb4a42868290e0fc9691f97666b0affc0d3400` |
| 67 | `theorem` | [cast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/cast-sub.md) | 474 | `result-track:84922dd0370043f4dc17dcd09ada4af2fdff95d63733d5cca8f5260c5b49c3b2` |
| 68 | `theorem` | [neg_of_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/neg-of-int.md) | 478 | `result-track:e36eb2ff461c05c47e6eb5d46f528a17644b53333c4e47bab5724a66c6d2b25d` |
| 69 | `theorem` | [ofInt'_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/ofint-eq.md) | 484 | `result-track:df51bd99c9e176f832f80a302be2c1278500431a906955c9760e37497fbaab51` |
| 70 | `theorem` | [of_nat_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-nat-toznum.md) | 493 | `result-track:e26677148e802f730dc61fc16286461225542504fc1f7fb5c5f23941090717f6` |
| 71 | `theorem` | [of_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-to-int-source-edition-2.md) | 498 | `result-track:3d96a3164b508a7b7497278c64e39cbe5d6235db9bdadb95560494adcc1212f8` |
| 72 | `theorem` | [to_of_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/to-of-int.md) | 500 | `result-track:f8ddc89011e38b1178435606b67708e7ec08e5f4eb1eacae184a8fcfdc22423a` |
| 73 | `theorem` | [of_nat_toZNumNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-nat-toznumneg.md) | 504 | `result-track:ab08439048eeb27456efd6d859505f9b750aad73bc2892ebcb4abbb2711c522c` |
| 74 | `theorem` | [of_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-intcast.md) | 507 | `result-track:2dc5386a85c32cc36845d20219468f56b0c163b1fdbc292c54c480dc071af074` |
| 75 | `theorem` | [of_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/of-natcast.md) | 511 | `result-track:fd875a823c50b9a1cc571086e83dcc8910dc6fbb739192c2c97722a87807d5f3` |
| 76 | `theorem` | [dvd_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/dvd-to-int.md) | 515 | `result-track:24911fecb193c5e84c48232d1e14b99ff26e137cdea8c9ae828b4732ff1d0a5e` |
| 77 | `theorem` | [divMod_to_nat_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/divmod-to-nat-aux.md) | 522 | `result-track:853d9e4568140365be4585f7ddf4dadad000e8ea3eabe8fe9be61fd8a9a43c3a` |
| 78 | `theorem` | [divMod_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/divmod-to-nat.md) | 543 | `result-track:7a588c6bce45ab17b918a250a15a7b8b0d185e4f578287283ecbbd57c80cac4d` |
| 79 | `theorem` | [div'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/div-to-nat-source-edition-2.md) | 566 | `result-track:c2081c4d9a21be9dcb95bdf602b6ded93de4b105fa4f0038287102e5aeebfeaf` |
| 80 | `theorem` | [mod'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mod-to-nat.md) | 570 | `result-track:05599788276e33f1f52adee3a611ddb0f3b7a9f5bd45a8436fc06e37a82b0f09` |
| 81 | `theorem` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/div-zero-source-edition-2.md) | 578 | `result-track:959a790dcbb1d918d85710d06a021119cf4560e5a8ab444e9bb45d3044f84dbe` |
| 82 | `theorem` | [div_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/div-to-nat.md) | 585 | `result-track:bdbfc3c9a065891961b7eb47ac4d9ca4597b6e556b820970526ef86616eab026` |
| 83 | `theorem` | [mod_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mod-zero.md) | 592 | `result-track:631355859ae48d8281bfca4f3f0dbc0af570cbf1f0e45801da972338e8197ab3` |
| 84 | `theorem` | [mod_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mod-to-nat-source-edition-2.md) | 599 | `result-track:aff6ef3dd70e8240c1c3323e614ec1fccebeaacf55627cbda5d685b6954903c3` |
| 85 | `theorem` | [gcd_to_nat_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/gcd-to-nat-aux.md) | 605 | `result-track:7f55e3b024ad89d59c57f4432112f6b9d2df12c01befa026d4effa62871cea09` |
| 86 | `theorem` | [gcd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/gcd-to-nat-source-edition-2.md) | 630 | `result-track:c528024269dedd4a2d4fcbfed7ab35ab07cde5c9f7d149ebb9a68cf431b55fb2` |
| 87 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/dvd-iff-mod-eq-zero-source-edition-2.md) | 643 | `result-track:dff2948b2094c2e231fdfc48ce901d29698c7573933b6bec66fec10507f19575` |
| 88 | `instance` | [decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/decidabledvd.md) | 646 | `declaration-track:20fa2c31627ff490f2394081ec8fbbfce7fe80afe375b131bdd965b1463b6cbf` |
| 89 | `instance` | [PosNum.decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/posnum-decidabledvd.md) | 651 | `declaration-track:5bb2a398a8a4f8260996e15a15ec2fe1559ceaeae7ae006c5b90b1761c6857ac` |
| 90 | `theorem` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/div-zero.md) | 657 | `result-track:25186e85792f00546eb41049211562f43a5115b0a4bf7377939176645ebc0f7d` |
| 91 | `theorem` | [div_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/div-to-int.md) | 661 | `result-track:b46fb17bb5015dddcdfe2b37759f92bd66b12ee3ad58fdbf9726bed0175a282f` |
| 92 | `theorem` | [mod_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/mod-to-int.md) | 683 | `result-track:9ea55b98d35e60bd8f7120334e8ecc39bda043d7f8daeca74ce70822af4398e7` |
| 93 | `theorem` | [gcd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/gcd-to-nat.md) | 696 | `result-track:2922bb42cdad66e33ada56b304f2b9e858724803857b6eed750c94cca87194d6` |
| 94 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/dvd-iff-mod-eq-zero.md) | 699 | `result-track:ba9c92dda7b7b5ac11864d5ac590f089b63443009a8f61ec1abd5de2999c6da7` |
| 95 | `instance` | [decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNum.lean/declarations/decidabledvd-source-edition-2.md) | 702 | `declaration-track:20fcd3476bd8d29b31212d73ded94e6cb3fbb325cf20775f3692dbac6e654ea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71fecb3d4853ac9ae7332afa007eb68ec3b71ed02ae383438f7374690e3ef61a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
