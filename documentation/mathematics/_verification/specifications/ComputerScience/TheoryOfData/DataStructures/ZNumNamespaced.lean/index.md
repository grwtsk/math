# Verification target: ZNum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0d1f2d31e8fdc9d954932682693054b726890e",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0d1f2d31e8fdc9d954932682693054b726890e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-zero.md) | 35 | `result-track:116faca41ea5f988b4d09589367279b13b9bcaacc5e810b900ce92bb968d4865` |
| 2 | `theorem` | [cast_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-zero-source-edition-2.md) | 39 | `result-track:d1492abf12e5ed09eefa9f7822d6607840b538d5c1b77845d58405ee29467816` |
| 3 | `theorem` | [cast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-one.md) | 43 | `result-track:20c82dbfd9a985b8ee3a21436c3b4f0b51e900c0a9fd802a8346210e4ba4edf3` |
| 4 | `theorem` | [cast_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-pos.md) | 47 | `result-track:fc917764db4748c7000237330ef61746bb326d7aa648554a5d5b999a079352b1` |
| 5 | `theorem` | [cast_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-neg.md) | 51 | `result-track:5da554f3c3941565d93216665a9b95db0635e241166c0c004162f18ade7bd90a` |
| 6 | `theorem` | [cast_zneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-zneg.md) | 55 | `result-track:7fa4fcf1d034bd81e66e6c8e7b7cfea7990e3174f41dd7eae08e0df3e1902db7` |
| 7 | `theorem` | [neg_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/neg-zero.md) | 60 | `result-track:553278197116bfefddfbb433fa229eea58c267c9273b7ff0a4e425a88f1f4c8a` |
| 8 | `theorem` | [zneg_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-pos.md) | 63 | `result-track:c27bba0ad947ad5367227ca063a844b11aeb2d39a7344c7b3f8bd0d62cadc76f` |
| 9 | `theorem` | [zneg_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-neg.md) | 66 | `result-track:c2c70abeebb2dc2afb049760d658f62d7d609b485193a60dc94924823cb5f660` |
| 10 | `theorem` | [zneg_zneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-zneg.md) | 69 | `result-track:de18849d175afbb76389f4075b5c28d94a19fe91a6abb179d59234523a8c8a99` |
| 11 | `theorem` | [zneg_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-bit1.md) | 71 | `result-track:a35bde004e876aae03a783ff04521ebc0cab757669de8ce260691e54617e82e4` |
| 12 | `theorem` | [zneg_bitm1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-bitm1.md) | 73 | `result-track:3e89b22adfdb96fcdfe9fa073c171e0846c30c62efb54d4e338d1e0cb5fd9e0e` |
| 13 | `theorem` | [zneg_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-succ.md) | 75 | `result-track:3aa71d98e947da391921fb5d3a04c12241b1f84c48b317577c0c6d33363cf3ed` |
| 14 | `theorem` | [zneg_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zneg-pred.md) | 78 | `result-track:e8891c07ff79737d37b9e4417df0b6b805cbbd95d15258de8d9d9520d4b757e0` |
| 15 | `theorem` | [abs_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/abs-to-nat.md) | 82 | `result-track:b296e4166339a8d85c4d199394077378322a822d55d7a7a4021cbda8f448f5fe` |
| 16 | `theorem` | [abs_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/abs-toznum.md) | 88 | `result-track:c0c46709dc7ac26ac737b287ba58ae0015f377ca29e3900109b1662c61e8b06d` |
| 17 | `theorem` | [cast_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-to-int.md) | 93 | `result-track:98a2c0f627d13d94042473234ba670e0ff5806a58659f9cb9616deeb444dc2ca` |
| 18 | `theorem` | [bit0_of_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/bit0-of-bit0.md) | 98 | `result-track:af4509f62e791af8218860870328b8e784c3a75abdfe0a2e384ed4e32a257d54` |
| 19 | `theorem` | [bit1_of_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/bit1-of-bit1.md) | 103 | `result-track:439f126bd39a1d27e1ad52a5d9916e0c8bb1a6a65350fef5b3ecc4bd0eba03a1` |
| 20 | `theorem` | [cast_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-bit0.md) | 109 | `result-track:cbf3d03b69dee449a24647d9d8b6486b9d01c2f17ca3d83bbf46b304a4667747` |
| 21 | `theorem` | [cast_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-bit1.md) | 116 | `result-track:7da0d55ef6c199edba3ace37442673044d3a7786d584c33804816465cc4be57f` |
| 22 | `theorem` | [cast_bitm1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-bitm1.md) | 132 | `result-track:b421f3ce00910dfc647f824a6e362acdfed93ebcef5679822905173cf675e1e7` |
| 23 | `theorem` | [add_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/add-zero.md) | 140 | `result-track:c2028e40de919b68d7649db9a601ffd1756e1ae3478174c6c7b623fd86c3cf9e` |
| 24 | `theorem` | [zero_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zero-add.md) | 142 | `result-track:27b000beeab52b067eed2fdda97a6cbc8d8427504e8a17cc50238a7aee3f0c89` |
| 25 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/add-one.md) | 144 | `result-track:75fe4eac25bf7488010bdb4e0087fbd5aadd180ad37f8027d7ea4f25d2e4e515` |
| 26 | `theorem` | [cast_to_znum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-to-znum.md) | 155 | `result-track:18c0238cd63a15814381c258660ca941cabe2d45ad86d0fccbd6dd2063b3c75e` |
| 27 | `theorem` | [cast_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-sub-source-edition-3.md) | 164 | `result-track:47240626ef4b4c7b0a0fd4a8e760dd0e1f71633f12a1c4b890f20d42c80e51ae` |
| 28 | `theorem` | [to_nat_eq_succ_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/to-nat-eq-succ-pred.md) | 191 | `result-track:8a069d41295433514f079d3113738beafd87e77a9fe7fbe19e8596df4870705d` |
| 29 | `theorem` | [to_int_eq_succ_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/to-int-eq-succ-pred.md) | 194 | `result-track:31d780dc438f306f42b8bcaea10792efac3c163e0562eac7f78827a796e4ccf4` |
| 30 | `theorem` | [cast_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-sub-source-edition-2.md) | 204 | `result-track:2933d56089cfc60ac26eeb51ac71e2b3ab0d52679fe6645e8dac4af234005819` |
| 31 | `theorem` | [toZNum_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/toznum-succ.md) | 210 | `result-track:bccf8cd894db586112bdecb23f9294a27a33260aa0bc62babff820dce942965c` |
| 32 | `theorem` | [toZNumNeg_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/toznumneg-succ.md) | 214 | `result-track:61ee25410b1562d1bd7192594bf9fc7410f728999b350c4eb9f27ee53c080a51` |
| 33 | `theorem` | [pred_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/pred-succ.md) | 219 | `result-track:f556f101606ee97172d434c4f44564ee4cfd20efbd84e1cbcc3c07220407e94b` |
| 34 | `theorem` | [succ_ofInt'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/succ-ofint.md) | 224 | `result-track:07525c24e5938abb99986b7ba4ba2e66e07e1a4af142f82feaf259ed9b827e3c` |
| 35 | `theorem` | [ofInt'_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/ofint-toznum.md) | 239 | `result-track:c7b9dc0ac585e9793cba58f00d9f4469d642a95890583d2796a976021dac351b` |
| 36 | `theorem` | [mem_ofZNum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mem-ofznum.md) | 245 | `result-track:99cd6345c6a2143e8698c298c486dfecfe80ee3b229aef2ec4c6d9c9c846b248` |
| 37 | `theorem` | [ofZNum'_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/ofznum-tonat.md) | 252 | `result-track:a56723304a675c9fac26ddecdee1d81742cb80d2e55a96a1c89ac51c3c4ae1eb` |
| 38 | `theorem` | [ofZNum_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/ofznum-tonat-source-edition-2.md) | 259 | `result-track:f7ed9e9b027eab47ac1c4af055b04a6c1a58040e373bfd36160f83a6b5a50c83` |
| 39 | `theorem` | [cast_ofZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-ofznum.md) | 267 | `result-track:2964d853b617d21531d126d9826476924480db5a87a19505e8c75c364c4a682d` |
| 40 | `theorem` | [sub_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/sub-to-nat.md) | 271 | `result-track:2deeca9fba223b7643af4dfba6b92ec5563a42b2ec384676381b79407c571b69` |
| 41 | `theorem` | [cast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-add.md) | 282 | `result-track:60bf89c1bc288c38b882148be38173169da7fdd10113d56ac32ecb4f861da24a` |
| 42 | `theorem` | [cast_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-succ.md) | 298 | `result-track:bba42b622e497876694154b43473912bbdce1027429e89fc6ea910be90666df2` |
| 43 | `theorem` | [mul_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mul-to-int.md) | 302 | `result-track:e13cd7739dbdc36b0ca74504034cdaaeee3418b0c8516c17ad6cc7f61dc8e00e` |
| 44 | `theorem` | [cast_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-mul.md) | 310 | `result-track:496eca3a347bcbc6511f35dbe0f1d020b5eddd38226dee5b5c15b92fb7dee110` |
| 45 | `theorem` | [ofInt'_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/ofint-neg.md) | 313 | `result-track:dc09710f67324fbdae3bf6c05c84b45552e4b37f979d0e4543126d2f08e40df1` |
| 46 | `theorem` | [of_to_int'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-to-int.md) | 318 | `result-track:82f513e762e76a298ae04a684b96ef6d243763b873cb51d536bdf96ef261b36d` |
| 47 | `theorem` | [to_int_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/to-int-inj.md) | 324 | `result-track:c85d8a7f2652abd7e3977cf3b21b39e8ee4a893f9bc6f27d1db35a4853e5e751` |
| 48 | `theorem` | [cmp_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cmp-to-int.md) | 327 | `result-track:75463bc0a4a467309ee14709f31bf4cd4badb1061f95ab3d29a88f4cd79e48a4` |
| 49 | `theorem` | [lt_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/lt-to-int.md) | 343 | `result-track:0545980e1d5db5fbf5a8dd33e0a7c22b07ac96ce80579139c0657a19ff17dc5f` |
| 50 | `theorem` | [le_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/le-to-int.md) | 350 | `result-track:0c05797c946a0e1fcc3b22bebdcea3805b315ff23db9a2352c907c1b59f0e727` |
| 51 | `theorem` | [cast_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-lt.md) | 354 | `result-track:f22c0b95f1e8b2a88d1a8e1d23a6b993daeaca079f2b853962f94f74dc035351` |
| 52 | `theorem` | [cast_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-le.md) | 359 | `result-track:cf9a82e30b506488df71c1853799cb1274860f2130b898ad222e3f3e17a8c352` |
| 53 | `theorem` | [cast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-inj.md) | 364 | `result-track:efaa266bdf94a315d2bf5d204fae68fcc57d007164c1f5000409f54a82885db6` |
| 54 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/macro-source-edition-2.md) | 375 | `declaration-track:96d31bd61d69ee5ffc16ebc37fcfd2578fb75693e32c813b3b186d93fc1633e8` |
| 55 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/macro.md) | 388 | `declaration-track:9207f240e3d4795c4f5762e8d164828c86395c9479d1dee1af1661433962ab74` |
| 56 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/linearorder.md) | 391 | `declaration-track:ad53c3fc71acc418911ff66568faa4d92e3d6ef77e53478ebd520eee65d9bc28` |
| 57 | `instance` | [addMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/addmonoid.md) | 417 | `declaration-track:e22999e388d31d5dd33ed4ad4333800c9cb7809011ede6dfc6e42514084f4550` |
| 58 | `instance` | [addCommGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/addcommgroup.md) | 425 | `declaration-track:f7ad1899911679cc188e67c513f130dce920052ae5671b045576addf77614fa2` |
| 59 | `instance` | [addMonoidWithOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/addmonoidwithone.md) | 432 | `declaration-track:2f0960d9c033cf18fdd6b7f1667407e07935a49798056d135a3a32ab1b650c59` |
| 60 | `theorem` | [mul_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mul-comm.md) | 443 | `result-track:4c40a80ee81172157358daac757576eb1e86da3e328bfd51f594f1eb475514b1` |
| 61 | `theorem` | [add_le_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/add-le-add-left.md) | 445 | `result-track:9b7a0a85c46a8aa9582730fb30627a5766f3f631c2991832bc4e3387f677f3b2` |
| 62 | `instance` | [commRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/commring.md) | 451 | `declaration-track:d444083a0d8640fa52bd2e46a083bd318c1e8096910db8d80b79aea00897da09` |
| 63 | `instance` | [nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/nontrivial.md) | 467 | `declaration-track:6f79994efb6c518e813fd78def59e45d21cb892c94af6a7547783da96d6368b7` |
| 64 | `instance` | [zeroLEOneClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/zeroleoneclass.md) | 470 | `declaration-track:e9ff1f0d240b312cc54ffa70ddcf988de7aa34cc3db9b829f10aa8447b12d42f` |
| 65 | `instance` | [isOrderedAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/isorderedaddmonoid.md) | 473 | `declaration-track:9ff5e611199272f0dc5f89896754560aaf8e5189a787f760bac81eee5862fb94` |
| 66 | `instance` | [isStrictOrderedRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/isstrictorderedring.md) | 476 | `declaration-track:4cc84ffd3ec6a0a1a87c01c05b7126db40eccd4e349a938ab52864d868ccb6b9` |
| 67 | `theorem` | [cast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/cast-sub.md) | 482 | `result-track:16c28802f21fd702f779b05d4af1c7b162db27e647d99ea2c54ab3b778faf5e6` |
| 68 | `theorem` | [neg_of_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/neg-of-int.md) | 486 | `result-track:9678eb892acbe86f03ee2809c9cd876ac8c25611dc726dad5095ffedfe33c770` |
| 69 | `theorem` | [ofInt'_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/ofint-eq.md) | 492 | `result-track:dbe0b37a35b093937b06ae5521424b1a415c62c64db27b5d54c082bfc1694605` |
| 70 | `theorem` | [of_nat_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-nat-toznum.md) | 501 | `result-track:1a074b54a9850e952d8947d1bdb06dc5c87ac3242d8bf988246e42ff6db67f8e` |
| 71 | `theorem` | [of_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-to-int-source-edition-2.md) | 506 | `result-track:9bfa85c1d3a41485882bbb47365c8626625232a8592e6681d848711f7dc12dfb` |
| 72 | `theorem` | [to_of_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/to-of-int.md) | 508 | `result-track:f2d747fab7985d1a61728a3fecb30013275702f36c088db97a0b688b16a72135` |
| 73 | `theorem` | [of_nat_toZNumNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-nat-toznumneg.md) | 512 | `result-track:e63a0e98c89e1d0ee55e9aa873e1e4c2364415f4b0368718a02cac150508bb45` |
| 74 | `theorem` | [of_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-intcast.md) | 515 | `result-track:a5e545370113ce5f36560e4146ca4409559f781315285f38db34d3e81fcf2606` |
| 75 | `theorem` | [of_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/of-natcast.md) | 519 | `result-track:a5834c5b0616d47ee78f17475596e0fe9c878357856cd61f0d5f659d40e85411` |
| 76 | `theorem` | [dvd_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/dvd-to-int.md) | 523 | `result-track:db7de1ff67e29d999b77543a0246f5e3c34929e9575956462b311b0ef4403314` |
| 77 | `theorem` | [divMod_to_nat_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/divmod-to-nat-aux.md) | 530 | `result-track:fdedc74bda2721ef219bb986a7424b344580b6a439a2542170ef51b9408be6ed` |
| 78 | `theorem` | [divMod_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/divmod-to-nat.md) | 551 | `result-track:71d2d41446e3982a43afd001f4461b204baaff123f1ac9d65004cc1ac06e271f` |
| 79 | `theorem` | [div'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/div-to-nat.md) | 574 | `result-track:3b437df9be77765a0e5ceab59adc34a567299bf8139e2a49e526d3290e93ea84` |
| 80 | `theorem` | [mod'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mod-to-nat-source-edition-2.md) | 578 | `result-track:d904b879db6f91c532a2aa2d9072120d0c23a2ecedc33f56cd593147bd4fea60` |
| 81 | `theorem` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/div-zero-source-edition-2.md) | 586 | `result-track:a0d54bbdb864e93edfe88c32d1290388d6159e29f63b0677a23c79416606e5c7` |
| 82 | `theorem` | [div_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/div-to-nat-source-edition-2.md) | 593 | `result-track:86b42a9661518393733c5852e57ca03583a1e21bcad43abefaed923dce8efc18` |
| 83 | `theorem` | [mod_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mod-zero.md) | 600 | `result-track:2511859646233d4f392e1d99b2cf42394cab86d8d8d8970d838dd104588842e0` |
| 84 | `theorem` | [mod_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mod-to-nat.md) | 607 | `result-track:7c529ba2d08d5fccabf4a48ddf7ae1efe0f7f8d9dad885d667948e9c1425f285` |
| 85 | `theorem` | [gcd_to_nat_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/gcd-to-nat-aux.md) | 613 | `result-track:4d7e049cd14296d120502bdb56355a138495ebd977febe05930b1d7732b36965` |
| 86 | `theorem` | [gcd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/gcd-to-nat-source-edition-2.md) | 638 | `result-track:824366468931698f50fc99ab3c1d9707085fc13bb521d6142a276efadf58f19b` |
| 87 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/dvd-iff-mod-eq-zero-source-edition-2.md) | 651 | `result-track:f1a85dcd022b1f22753f9a2f60ddaeec3314fe564e66a10c64814fc880dc158d` |
| 88 | `instance` | [decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/decidabledvd.md) | 654 | `declaration-track:28ccb3fd2bb263f29a3263b609537b2ba812188aa9d65daf5d2e8de948876609` |
| 89 | `instance` | [PosNum.decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/posnum-decidabledvd.md) | 659 | `declaration-track:6af984bded53bb2b8bf8cb0930af6c80afb90a0bf6d577514a90a391178ca69a` |
| 90 | `theorem` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/div-zero.md) | 665 | `result-track:4e8060f2ef88a882c1797e89f1756a505d6f9a90d6d31a910fbd59a3ae1584f3` |
| 91 | `theorem` | [div_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/div-to-int.md) | 669 | `result-track:9cca7f04c4bb53feca4d639b15e2241d5082f0232d9430c1aad4e8399542bd0a` |
| 92 | `theorem` | [mod_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/mod-to-int.md) | 691 | `result-track:1e4d53291c8072ce0c20f050994f23700bfbe68dbc7e5111479c7f25feef7712` |
| 93 | `theorem` | [gcd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/gcd-to-nat.md) | 704 | `result-track:25642dc4a0f1eb696bbcefa08d616957cebed2faa278382fa9643c71002dbe2c` |
| 94 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/dvd-iff-mod-eq-zero.md) | 707 | `result-track:8365f06ec029af162d934527a3217db59d97424b4f7e4c60f7f8d436c859a052` |
| 95 | `instance` | [decidableDvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZNumNamespaced.lean/declarations/decidabledvd-source-edition-2.md) | 710 | `declaration-track:f0af0a35cc00c0c55a7279cfc8d25e78d246dc5aa292cf6bcff840ec518f849b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c3dad4f106884ab83ebecb9f5e561cd783cc1918d8592a205c66d0ee4d4c6c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
