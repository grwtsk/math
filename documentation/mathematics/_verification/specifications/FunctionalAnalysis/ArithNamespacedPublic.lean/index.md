# Verification target: Arith Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3fbeb6991be59732f8c65689acded42eb38e8f",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3fbeb6991be59732f8c65689acded42eb38e8f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean.json)

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
| 1 | `theorem` | [isBigOWith_abs_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-abs-right.md) | 53 | `result-track:e80c4739396a0af669a03266d669bbff1c374c63e6f977de82fb1da1fa2fd010` |
| 2 | `theorem` | [isBigO_abs_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-abs-right.md) | 60 | `result-track:37d643d846d0894455b00ae4ea96fa78dfb70b3ac770526da4b3f641f4a7f3aa` |
| 3 | `theorem` | [isLittleO_abs_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-abs-right.md) | 66 | `result-track:2f87cb2a31cc924edbf695a144c7b6b2e1170c42be62a0357282897c1c3188a1` |
| 4 | `theorem` | [isBigOWith_abs_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-abs-left.md) | 72 | `result-track:57e19658060fe7d1be62936779f0dc8076a44656afa482082f66042993ede03e` |
| 5 | `theorem` | [isBigO_abs_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-abs-left.md) | 79 | `result-track:2111c29366798803df4fd4104b3332a92ca05c83731e8956aa6dee0c587a0aa1` |
| 6 | `theorem` | [isLittleO_abs_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-abs-left.md) | 85 | `result-track:53b0be92f338589407902822d2c274a74f89a529042b6499a10784d740199097` |
| 7 | `theorem` | [isBigOWith_abs_abs](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-abs-abs.md) | 90 | `result-track:76bc8b183bc6790968d6383eb4e057458c36608808207599b3c7ea41c0233e04` |
| 8 | `theorem` | [isBigO_abs_abs](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-abs-abs.md) | 96 | `result-track:069b9232d3061b741d032f06dcbe6168d882a8fbd594331992123224cd289a13` |
| 9 | `theorem` | [isLittleO_abs_abs](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-abs-abs.md) | 101 | `result-track:fe322972d1fb3261847c94296590d48c9306dfed5eb1a04a90edfece95bad06a` |
| 10 | `theorem` | [isBigOWith_neg_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-neg-right.md) | 111 | `result-track:6c0294d47c725c9f0bfe67665ddca654d5cc2cca6abc3935f9e3d4b9f992c2a1` |
| 11 | `theorem` | [isBigO_neg_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-neg-right.md) | 117 | `result-track:c8ed4927c4cf256a0cfe3ea5e2a719474f5849d39cd01b48bbc8175df04dfcab` |
| 12 | `theorem` | [isLittleO_neg_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-neg-right.md) | 124 | `result-track:8a99b2f7b2a9b7e88452f2f4597b26007ba8c23ce689af78dd8368737f779dcb` |
| 13 | `theorem` | [isBigOWith_neg_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-neg-left.md) | 131 | `result-track:928cda4cff7a864e6c5d067fbaa0d6db1a36618f1be0ad9e1494725b89421b7a` |
| 14 | `theorem` | [isBigO_neg_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-neg-left.md) | 137 | `result-track:f7ff7448cf65a00c2db78650aa85fd6491a8c6b0a9c27b0c4d149e1c7199345d` |
| 15 | `theorem` | [isLittleO_neg_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-neg-left.md) | 144 | `result-track:7f02ec41d37ffa4292d8c30906cf489bd1b225d46e9b13782aa6b957966868ca` |
| 16 | `theorem` | [IsBigOWith.eq_zero_imp](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-eq-zero-imp.md) | 150 | `result-track:74d720012b475d8f1fca5ed130225330b0325640ee26c245e65877fa3d925f09` |
| 17 | `theorem` | [IsBigO.eq_zero_imp](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-eq-zero-imp.md) | 153 | `result-track:1ebd0f075bfd5a56d34e176653d8c3adbcab218d067fdc5e7a46214850e127de` |
| 18 | `theorem` | [IsBigOWith.add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-add.md) | 163 | `result-track:2c50a08fbfab9588a98364f1be52fc7500d6d5c3ba20a179d52da4ddc34c71f6` |
| 19 | `theorem` | [IsBigO.add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-add.md) | 171 | `result-track:1fb9dfe8b7ef41a9506c1548f1aec7f3cff512f609b80b27b87128ec8e7cdc46` |
| 20 | `theorem` | [IsLittleO.add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add.md) | 176 | `result-track:f902f4c66ff7cfaea6dc8496cd7e4f8a2c3ed4188336e7a27a2428f1ef6adb14` |
| 21 | `theorem` | [IsBigOWith.add_add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-add-add.md) | 181 | `result-track:d687420be75c424139dc138ade2a06a3c9a575ea6a9a13865c6f97c7db1bf994` |
| 22 | `theorem` | [IsBigO.add_add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-add-add.md) | 193 | `result-track:d1fc7875bf6a6786054e0c9a5554d05fe6b914250faa4f2592a08b8bd529b17f` |
| 23 | `theorem` | [IsLittleO.add_add](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add-add.md) | 199 | `result-track:47da3b9ff9ba86c31fa014f9495c1e12a55eecd0b3a2af0a281cd1abd74413b1` |
| 24 | `theorem` | [IsBigO.add_isLittleO](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-add-islittleo.md) | 203 | `result-track:47f61f5a3d16e65c916d93cf976b1f99bdf8dd400d7678a95f94a48dcaeb9a70` |
| 25 | `theorem` | [IsLittleO.add_isBigO](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add-isbigo.md) | 206 | `result-track:e4f5b165042b340b1a09a1bc855738944427472936ad2e939deaeecba042b27b` |
| 26 | `theorem` | [IsBigOWith.add_isLittleO](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-add-islittleo.md) | 209 | `result-track:1b106bb10b3b5e995405baa88d596c66b78e768f639e41f09299f54dc968e91c` |
| 27 | `theorem` | [IsLittleO.add_isBigOWith](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add-isbigowith.md) | 213 | `result-track:1512efb61e9b8761cfe8c29074500f6d18a0be1f04d4de8182704d292d5cd772` |
| 28 | `theorem` | [IsBigOWith.sub](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-sub.md) | 217 | `result-track:5a6dad2c2b12464af02758cbf7e357398689d955090e93419a998abda181b7aa` |
| 29 | `theorem` | [IsBigOWith.sub_isLittleO](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-sub-islittleo.md) | 221 | `result-track:083ab0b197b821db7b2da5ac2438290ab486a4af387cb6825943774ae81ea83b` |
| 30 | `theorem` | [IsBigO.sub](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sub.md) | 225 | `result-track:0a45c84132d95dc7e5344bd255e37ce394f7d2e5d4423d21e6ebf64bbc125ec2` |
| 31 | `theorem` | [IsLittleO.sub](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sub.md) | 228 | `result-track:ed1d56b42ae8d737c1a5c8ccfbd0fef2db3cdf883a9a023d685176512fd68387` |
| 32 | `theorem` | [IsBigO.add_iff_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-add-iff-left.md) | 231 | `result-track:9e03877887c7d0ccd8fdd61c756c4a5254dfa8d4febbe6e90928fdb5500cb10b` |
| 33 | `theorem` | [IsBigO.add_iff_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-add-iff-right.md) | 234 | `result-track:72cde6fea6c2d9e13f40b16e05cec68e4a74cea2e5c3ed5c7f8026ddd34a8420` |
| 34 | `theorem` | [IsLittleO.add_iff_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add-iff-left.md) | 237 | `result-track:7373e600e08449c5afd1d6967e395f583c532d93139bac72ce648ae66a861bb5` |
| 35 | `theorem` | [IsLittleO.add_iff_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-add-iff-right.md) | 240 | `result-track:4815dc11aa96413fdcf9ae9180c38c5f5ffa3347307937f7f5f136d30815a275` |
| 36 | `theorem` | [IsBigO.sub_iff_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sub-iff-left.md) | 243 | `result-track:6f63cbee708fbb4c6724206d643cdf67a93a038307d190b2d60997e8e3716dc6` |
| 37 | `theorem` | [IsBigO.sub_iff_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sub-iff-right.md) | 246 | `result-track:513d4f97a1a490b8024c8d159392a975623b185db1c6ef208f453d1b82c938c5` |
| 38 | `theorem` | [IsLittleO.sub_iff_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sub-iff-left.md) | 249 | `result-track:51f2ba51b704fe677d12af50f6c1c5bad5c01bb596e7fa70d19f7e052cb69da1` |
| 39 | `theorem` | [IsLittleO.sub_iff_right](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sub-iff-right.md) | 252 | `result-track:4006cba89396961b5f2c2f63210bdfdd2723dc9e1d1774f6aa06a5805c821857` |
| 40 | `theorem` | [IsBigOWith.symm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-symm.md) | 265 | `result-track:a457908734ba59ba90bfac09c95c27eb558efc9ddd88ba29575514581c9c66f5` |
| 41 | `theorem` | [isBigOWith_comm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-comm.md) | 269 | `result-track:75208a01744cfa931fbac3d598e69e40b13a2000ed1c002e5060df82d95a2b5b` |
| 42 | `theorem` | [IsBigO.symm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-symm.md) | 273 | `result-track:ac7e72c479762d715e84b858c26ef619ad036b87c164a8c89ed35afdb829d375` |
| 43 | `theorem` | [isBigO_comm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-comm.md) | 276 | `result-track:a5413b54edcfebe4fda52cd6598ab47eecddcc50d31e9b5771a4b1fe47e723f4` |
| 44 | `theorem` | [IsLittleO.symm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-symm.md) | 279 | `result-track:e37f2ebb9a329dae99b5d6aea6a8e3d2fbc2c98328c9f368f21cfcc3976595e3` |
| 45 | `theorem` | [isLittleO_comm](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-comm.md) | 282 | `result-track:3129ee5bcc80e9612a5a6d8a4af079fbd6acf9c64a94ad4c79ad68320e7a6a26` |
| 46 | `theorem` | [IsBigOWith.triangle](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-triangle.md) | 285 | `result-track:fa963397a7f292c989c9448a2551ea982f0bbf422ae757bea2e790d4a2131678` |
| 47 | `theorem` | [IsBigO.triangle](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-triangle.md) | 290 | `result-track:b14500c8b44011ecb02251523c1cae10185cae7dba377546a78aee625e46c469` |
| 48 | `theorem` | [IsLittleO.triangle](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-triangle.md) | 294 | `result-track:343e14ef78ba4333e6a55f724a5c040014ced824bdb98a2943972d4450752942` |
| 49 | `theorem` | [IsBigO.congr_of_sub](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-congr-of-sub.md) | 298 | `result-track:349530650d89079fa1bcffc195fb808c9cadd693ebe64813a125be6dfdcc7d7e` |
| 50 | `theorem` | [IsLittleO.congr_of_sub](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-congr-of-sub.md) | 302 | `result-track:9dd823e5e26acd11acaa6e5589651e516ffc5d3d5c788eb59989057694085333` |
| 51 | `theorem` | [isLittleO_zero](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-zero.md) | 314 | `result-track:3dbcd32758e262974bcebadffde63015a9b2caa4f246b4944a7c981630c19a93` |
| 52 | `theorem` | [isBigOWith_zero](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-zero.md) | 318 | `result-track:16f6ec5d59f48350546ae6293fd54baa9d13cc1a84d7a326a19d5da0b172674b` |
| 53 | `theorem` | [isBigOWith_zero'](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-zero-source-edition-2.md) | 321 | `result-track:6f1354b6a4f39c696e54b1389722543dcbd9e527d23f96d166dd93867b1be28d` |
| 54 | `theorem` | [isBigO_zero](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-zero.md) | 324 | `result-track:cad443baff9d6eddcf47a698d185520eaeeb71f6d4a58efa50c088f2141a95b5` |
| 55 | `theorem` | [isBigO_refl_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-refl-left.md) | 327 | `result-track:3ca761c0e6e456ab7782b04d8666fd5eb64f85011607e6a7485d525c49a20de9` |
| 56 | `theorem` | [isLittleO_refl_left](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-refl-left.md) | 330 | `result-track:7c39b8db94218b63c1aa88aa36647c65d4c3d20e0dbbd956abf7c0f74eeb8b81` |
| 57 | `theorem` | [isBigOWith_zero_right_iff](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-zero-right-iff.md) | 336 | `result-track:3c4d4377133236583ac600467cb44b073fc878763e61a716c5ad30ddfded8502` |
| 58 | `theorem` | [isBigO_zero_right_iff](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-zero-right-iff.md) | 340 | `result-track:a63f9c820d3fa0be5fc33b56bc151f8e489c3019933dcdbc8e584d0e953c9ff4` |
| 59 | `theorem` | [isLittleO_zero_right_iff](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-zero-right-iff.md) | 347 | `result-track:6c53042fc2d785d29f00572112dccac0cfe0b95f9da3cd5be086dd390690cbd1` |
| 60 | `theorem` | [isBigOWith_const_const](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-const-const.md) | 351 | `result-track:3c15e1fdc1b8462110616c0475a5edb71e1d405dbb58529aac64313cd2baafb1` |
| 61 | `theorem` | [isBigO_const_const](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-const-const.md) | 358 | `result-track:0d7a33ab681072d6ab764843704425d163720949d2b61015a8b114633cdfa420` |
| 62 | `theorem` | [isBigO_const_const_iff](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-const-const-iff.md) | 363 | `result-track:97a68eaef886af4890ae130db25ab1a5f83dabd7183beefe7b93e121979f5409` |
| 63 | `theorem` | [isBigO_pure](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-pure.md) | 370 | `result-track:8e4565eb55b9d85a5b69f8093bcf3e5a76d37cea88cd094fcb0fe050c7f60277` |
| 64 | `theorem` | [IsBigOWith.sum](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-sum.md) | 383 | `result-track:9007b299ad2175688d27893a97a7b04380dffc96d1fc6f6c89f6d82ba1691815` |
| 65 | `theorem` | [IsBigO.sum](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sum.md) | 393 | `result-track:67532814db011b814a2371ea4b6219ff88138ca6622c59328117343d773945ec` |
| 66 | `theorem` | [IsLittleO.sum](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sum.md) | 398 | `result-track:899798982b919d25f4c736cb5fc5d02b19bf82a42dddd232e3a73aa2c194c96d` |
| 67 | `theorem` | [IsBigOWith.sum_congr](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-sum-congr.md) | 405 | `result-track:3335111b1faf459ab49d37b2b1ce5539d5fd22a767f7918ded550b05fb7d4d17` |
| 68 | `theorem` | [IsBigO.sum_congr](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sum-congr-source-edition-2.md) | 424 | `result-track:f11beb1b6f260cbce3f362c40a9fe8ad5710c126c85bac5b6fd1c19cab0fffe3` |
| 69 | `theorem` | [IsLittleO.sum_congr](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sum-congr.md) | 430 | `result-track:0a0755abb6041f75796e560a2010e0053cdd49436f57550108e9b18ec678d4c1` |
| 70 | `theorem` | [IsBigOWith.sum_congr'](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigowith-sum-congr-source-edition-2.md) | 446 | `result-track:b7e4ec47426a425a486c9315619ce9a27a102d5d87741d18426ab7445799b7ec` |
| 71 | `theorem` | [IsBigO.sum_congr'](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/isbigo-sum-congr.md) | 460 | `result-track:12db48128fea278a0810e55cb20bfffef86558884f3ee693da030da1c198c73a` |
| 72 | `theorem` | [IsLittleO.sum_congr'](../../../../FunctionalAnalysis/ArithNamespacedPublic.lean/declarations/islittleo-sum-congr-source-edition-2.md) | 466 | `result-track:7c628ea1df138f9341afcb171d4df5aad20958d4605662728658600f31c63598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a702ae12e7ce731c0a5d2f0bd06350f68c7a4bf157f83623122e41fa61f1c23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
