# Verification target: Operations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47d12df4bfb825b5388750802f58aa3a4019d8aa",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Operations.lean/index.md) · [Full source](../../../../RealFunctions/Operations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47d12df4bfb825b5388750802f58aa3a4019d8aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFTaylorSeriesUpToOn_pi](../../../../RealFunctions/Operations.lean/declarations/hasftaylorseriesuptoon-pi.md) | 54 | `result-track:ca318de50a6e1c4f17993bc8d57b48b80fa253462441f50b62184cd607dc2311` |
| 2 | `theorem` | [hasFTaylorSeriesUpToOn_pi'](../../../../RealFunctions/Operations.lean/declarations/hasftaylorseriesuptoon-pi-source-edition-2.md) | 72 | `result-track:e99d3161924deb79979464d33a828bae9f82a1c7efef972e8cfd13faa86b1d6a` |
| 3 | `theorem` | [contDiffWithinAt_pi](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-pi.md) | 79 | `result-track:4d8550e273b04b525562ecaf4c369fbe9f162cf4b4edf376545c5a117c1fcecf` |
| 4 | `theorem` | [contDiffOn_pi](../../../../RealFunctions/Operations.lean/declarations/contdiffon-pi-source-edition-2.md) | 99 | `result-track:eb0832967b8283af9e96aeaa6e013cca986267efc431100832411970f29b2f20` |
| 5 | `theorem` | [contDiffAt_pi](../../../../RealFunctions/Operations.lean/declarations/contdiffat-pi-source-edition-2.md) | 103 | `result-track:ba8836f7f37631ad0996ac97e6d2affc3580a241580597bf9264e62b81300a00` |
| 6 | `theorem` | [contDiff_pi](../../../../RealFunctions/Operations.lean/declarations/contdiff-pi-source-edition-2.md) | 106 | `result-track:b9d124ead92e333647ade6b8265c1316005038ec95af6e2902716bf6c0eae1e0` |
| 7 | `theorem` | [contDiff_pi'](../../../../RealFunctions/Operations.lean/declarations/contdiff-pi.md) | 110 | `result-track:b75258265147a1956a8a42ba621500e53e5a4d96dd8f458e4a1f8833a09b1ee3` |
| 8 | `theorem` | [contDiffOn_pi'](../../../../RealFunctions/Operations.lean/declarations/contdiffon-pi.md) | 114 | `result-track:224adc77447fc9939fabe7d96567abc558c10c5f02178feda272983ba80ef815` |
| 9 | `theorem` | [contDiffAt_pi'](../../../../RealFunctions/Operations.lean/declarations/contdiffat-pi.md) | 118 | `result-track:974f685dd747f2f3296d194eded5bbcf55623425d7bcc63294ba53cdb6688aa2` |
| 10 | `theorem` | [contDiff_update](../../../../RealFunctions/Operations.lean/declarations/contdiff-update.md) | 121 | `result-track:17d7943d09e81fe70ada296aa552aca4d344cbd19b7e0a0c420eaea4823abd8f` |
| 11 | `theorem` | [contDiff_single](../../../../RealFunctions/Operations.lean/declarations/contdiff-single.md) | 132 | `result-track:3c158ef664687ad723b8fc2133d54d1359c1df81c9f86425378faf37099979d9` |
| 12 | `theorem` | [contDiff_apply](../../../../RealFunctions/Operations.lean/declarations/contdiff-apply.md) | 139 | `result-track:affb3780aa239e5f48a07fdf735fd479b2277f7cab9504c1f8b95dbdd1935013` |
| 13 | `theorem` | [contDiffAt_apply](../../../../RealFunctions/Operations.lean/declarations/contdiffat-apply.md) | 143 | `result-track:ff1fc36f9a53a1a2e2a4352738fa632b67ac60efabb7fffa316d4d601619144c` |
| 14 | `theorem` | [contDiffOn_apply](../../../../RealFunctions/Operations.lean/declarations/contdiffon-apply.md) | 147 | `result-track:7f091d3ab554e8710df7e7103f06ff3be7b6f265831fd1c71f33ff0e798c9d15` |
| 15 | `theorem` | [contDiff_apply_apply](../../../../RealFunctions/Operations.lean/declarations/contdiff-apply-apply.md) | 150 | `result-track:4f44f4ea573dbbab9c3cda0a607ddf95a1d19631695556026f2a7cd8b521416f` |
| 16 | `theorem` | [HasFTaylorSeriesUpToOn.add](../../../../RealFunctions/Operations.lean/declarations/hasftaylorseriesuptoon-add.md) | 159 | `result-track:c0a1cecf818f75d5c5379471807e7126eec5c786c7244e69fbf3834459d54d44` |
| 17 | `theorem` | [contDiff_add](../../../../RealFunctions/Operations.lean/declarations/contdiff-add-source-edition-2.md) | 166 | `result-track:7d50365dadec7ea014f69ceb91735cdfe97b92fa8596d6c908a80a16ac3eb135` |
| 18 | `theorem` | [ContDiffWithinAt.add](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-add.md) | 172 | `result-track:6ac5a7818c76fb79f106e047251b781f7a87ee17354eb111d2ff1ac742cfcb08` |
| 19 | `theorem` | [ContDiffAt.add](../../../../RealFunctions/Operations.lean/declarations/contdiffat-add.md) | 178 | `result-track:038a6d7d3d4fb87a9a285a11a108231d8e658587a499be041ee5032da1e0c221` |
| 20 | `theorem` | [ContDiff.add](../../../../RealFunctions/Operations.lean/declarations/contdiff-add.md) | 184 | `result-track:55c9c3e35118d1a71efaeb123e2bcacafae643563f6a0ebcf32e743a88040922` |
| 21 | `theorem` | [ContDiffOn.add](../../../../RealFunctions/Operations.lean/declarations/contdiffon-add.md) | 190 | `result-track:a0af76dd5f781efe025055baa180b5c7fc1d816b7987b3ce0686b844e4608f71` |
| 22 | `theorem` | [iteratedFDerivWithin_add_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderivwithin-add-apply.md) | 199 | `result-track:46d81507484a7ceed151307463210f6135316a40e914adfdf6ef9d7bab6a6714` |
| 23 | `theorem` | [iteratedFDerivWithin_add_apply'](../../../../RealFunctions/Operations.lean/declarations/iteratedfderivwithin-add-apply-source-edition-2.md) | 219 | `result-track:5b1753184f439b71f3e4025bac09c1cd5a858697f4d0892255aeb40839fd2295` |
| 24 | `theorem` | [iteratedFDeriv_add_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-add-apply.md) | 225 | `result-track:0da1205a5f8a23e62f6456e4b2f8f522d2da93faec1e11144a4494680c0d2423` |
| 25 | `theorem` | [iteratedFDeriv_add_apply'](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-add-apply-source-edition-2.md) | 231 | `result-track:d754c1a52a114612ebef23ca9ff9e3f16ddc75004e875754cb3d1d426446ee7e` |
| 26 | `theorem` | [contDiff_neg](../../../../RealFunctions/Operations.lean/declarations/contdiff-neg-source-edition-2.md) | 244 | `result-track:f3dec8212b6cc97b679fe0e1bd36320473bfd8b79d2acfd1ba6db6635b60d10f` |
| 27 | `theorem` | [ContDiffWithinAt.neg](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-neg.md) | 250 | `result-track:901fa4393d249b3adb44f568df7b4a0230ae5b1ae84b6b7686ffd4077db14e05` |
| 28 | `theorem` | [ContDiffAt.neg](../../../../RealFunctions/Operations.lean/declarations/contdiffat-neg.md) | 256 | `result-track:25b01e5c0847e7d2a02dd625e1e1dcaf9c0b9e260219131e9dfedbebbc90fb92` |
| 29 | `theorem` | [ContDiff.neg](../../../../RealFunctions/Operations.lean/declarations/contdiff-neg.md) | 261 | `result-track:af57b582276321a7fdacfa482edc11dcaa6f9e0f7e3b003e21ed6222bdf3087d` |
| 30 | `theorem` | [ContDiffOn.neg](../../../../RealFunctions/Operations.lean/declarations/contdiffon-neg.md) | 266 | `result-track:e97cfe3d03b0f324cb0d1e53fda17036326eb09b2f9d081bec9d7e05ae950e9c` |
| 31 | `theorem` | [iteratedFDerivWithin_neg_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderivwithin-neg-apply.md) | 273 | `result-track:227566ebfcad77912d566dcfc365dc0f698b4508e29d5338152c1aae5d91eb17` |
| 32 | `theorem` | [iteratedFDeriv_neg_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-neg-apply.md) | 288 | `result-track:aacf392601f750b3319e6efc1f8d13c8131d8dae267cd2088532e2ef53aa07f4` |
| 33 | `theorem` | [ContDiffWithinAt.sub](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-sub.md) | 300 | `result-track:32b2bd02735ac1f6a7947da51772546258a7f403793e39f6df888cc048a5b629` |
| 34 | `theorem` | [ContDiffAt.sub](../../../../RealFunctions/Operations.lean/declarations/contdiffat-sub.md) | 306 | `result-track:de68e8259d3df4c3db791def43840a24d42b367dc2f93e16d2589d55c583a28f` |
| 35 | `theorem` | [ContDiffOn.sub](../../../../RealFunctions/Operations.lean/declarations/contdiffon-sub.md) | 311 | `result-track:f94090a26791ce02ac506e80299a4cbda6cc124dc59919a9550d26fa9f925f97` |
| 36 | `theorem` | [ContDiff.sub](../../../../RealFunctions/Operations.lean/declarations/contdiff-sub.md) | 317 | `result-track:2fee142b08b55276452ba022c5fb04faf665e44295158830e1693bf372e683ef` |
| 37 | `theorem` | [ContDiffWithinAt.sum](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-sum.md) | 323 | `result-track:680831b57889a1c2c40fabdcef7d50129fc8c8186fdf0f07a8513ab927c17806` |
| 38 | `theorem` | [ContDiffAt.sum](../../../../RealFunctions/Operations.lean/declarations/contdiffat-sum.md) | 334 | `result-track:f78333f591ec981af1e88f7045485c86d1c930c4e6fcaaed25cb2bc3ffd2d3a1` |
| 39 | `theorem` | [ContDiffOn.sum](../../../../RealFunctions/Operations.lean/declarations/contdiffon-sum.md) | 340 | `result-track:d6acd79974d8b65170ddc63967919c0337373f9d9fda9e7eac588d010d093d60` |
| 40 | `theorem` | [ContDiff.sum](../../../../RealFunctions/Operations.lean/declarations/contdiff-sum.md) | 346 | `result-track:8f24402c818a5e4d3ae29372226f8cd248723e0e27239368fc69f83130cd6a6e` |
| 41 | `theorem` | [iteratedFDerivWithin_sum_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderivwithin-sum-apply.md) | 350 | `result-track:4173ea20e5f6dc85db3a18b8ffa8c432de1565755878780128be64f0386f5da9` |
| 42 | `theorem` | [iteratedFDeriv_sum](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-sum.md) | 361 | `result-track:874e562cf9c39df259ed6736723f98e5ff6289e958643a792a50a04a7e71a583` |
| 43 | `theorem` | [contDiff_mul](../../../../RealFunctions/Operations.lean/declarations/contdiff-mul.md) | 376 | `result-track:397288b67803a0d1b4988ab6e5ef08bd25e13588de6bb061a20b044654d41e98` |
| 44 | `theorem` | [ContDiffWithinAt.mul](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-mul.md) | 382 | `result-track:4d7d3b37e0602e4b8c16f12daf0aec7390594e694e81d539eff78e1d074e1458` |
| 45 | `theorem` | [ContDiffAt.mul](../../../../RealFunctions/Operations.lean/declarations/contdiffat-mul.md) | 388 | `result-track:4093e4367d2505dd7d02ca6e7ce7da7fd430a5def221a538edaeee7ab326c07c` |
| 46 | `theorem` | [ContDiffOn.mul](../../../../RealFunctions/Operations.lean/declarations/contdiffon-mul.md) | 394 | `result-track:ef6803f5a53af20c7950266eb0446d7be70b4364d2c767d797ff531652ac54ca` |
| 47 | `theorem` | [ContDiff.mul](../../../../RealFunctions/Operations.lean/declarations/contdiff-mul-source-edition-2.md) | 399 | `result-track:cfe6894113cee36d47495d39901d289629add3314f96f082814b0e4a5a69117c` |
| 48 | `theorem` | [contDiffWithinAt_prod'](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-prod-source-edition-2.md) | 404 | `result-track:efd3d61ba4920c93c7c87f02bfa005a0aed446024f4718be40410eb458efa76c` |
| 49 | `theorem` | [contDiffWithinAt_prod](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-prod.md) | 410 | `result-track:4fca3bb3472716b23292b3a978f9f252b6e957afa29593f412ad436e2a5a4a0d` |
| 50 | `theorem` | [contDiffAt_prod'](../../../../RealFunctions/Operations.lean/declarations/contdiffat-prod.md) | 416 | `result-track:05c773e7845796f89853acd5077f3d07954909a6bd7c68e5be865c806e32d884` |
| 51 | `theorem` | [contDiffAt_prod](../../../../RealFunctions/Operations.lean/declarations/contdiffat-prod-source-edition-2.md) | 421 | `result-track:6c211b5f1a328dbf15640a956fc27b0dc308c2f4bf65e55bcda13c4d04cfdd6c` |
| 52 | `theorem` | [contDiffOn_prod'](../../../../RealFunctions/Operations.lean/declarations/contdiffon-prod.md) | 426 | `result-track:a18796295e03a1cc96e5f3eddd6bf95978affdd99eb3683c6a18da34e29fff8c` |
| 53 | `theorem` | [contDiffOn_prod](../../../../RealFunctions/Operations.lean/declarations/contdiffon-prod-source-edition-2.md) | 430 | `result-track:db7b69e74b6f5c4b1a2781c23d5def4fb34f355bb2a2b40d1a60a9223d7248f4` |
| 54 | `theorem` | [contDiff_prod'](../../../../RealFunctions/Operations.lean/declarations/contdiff-prod.md) | 435 | `result-track:72024088fe37f48718ced6d33eeb469dcda2fb1b74a4a89159be6a7b03f1bfe6` |
| 55 | `theorem` | [contDiff_prod](../../../../RealFunctions/Operations.lean/declarations/contdiff-prod-source-edition-2.md) | 440 | `result-track:dad4c4610e9d14bd58191804c5679c65b5f7eabb4389298e1e932947f3d00c89` |
| 56 | `theorem` | [ContDiff.pow](../../../../RealFunctions/Operations.lean/declarations/contdiff-pow.md) | 445 | `result-track:ab32b4a7445fb10661432b513061113760842286e88d6169914d02bd5a03a869` |
| 57 | `theorem` | [ContDiffWithinAt.pow](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-pow.md) | 450 | `result-track:0e546690ff5d441ac76cb6a67e2e4221aef689b48439eec95ec630318a4751aa` |
| 58 | `theorem` | [ContDiffAt.pow](../../../../RealFunctions/Operations.lean/declarations/contdiffat-pow.md) | 455 | `result-track:6f33458de62a78b0c04f4050ce5b4b950028fc32095dc1eee7881851117a7231` |
| 59 | `theorem` | [ContDiffOn.pow](../../../../RealFunctions/Operations.lean/declarations/contdiffon-pow.md) | 460 | `result-track:85693df6882c62bb5334a10cb3f4e438245464527d905b434507a4a0b57f0476` |
| 60 | `theorem` | [ContDiffWithinAt.div_const](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-div-const.md) | 464 | `result-track:746f87b069b422fb6f0abe247481975c5ab60051a18a7f0c13a2f55ca7caa0b5` |
| 61 | `theorem` | [ContDiffAt.div_const](../../../../RealFunctions/Operations.lean/declarations/contdiffat-div-const.md) | 469 | `result-track:d77c93d558832b64ee5e5f97f0501fdd68176877b24406156ff3ca025a9bf77b` |
| 62 | `theorem` | [ContDiffOn.div_const](../../../../RealFunctions/Operations.lean/declarations/contdiffon-div-const.md) | 474 | `result-track:f2a302a1b7fa0e6ca134e61a071d920c159dfd2940260dadfdceb781c6cdcbfc` |
| 63 | `theorem` | [ContDiff.div_const](../../../../RealFunctions/Operations.lean/declarations/contdiff-div-const.md) | 478 | `result-track:e8d8a9a75a4511295f2144d83cb92d4edf0fb2f29bd9cef3705bfe1d5bc72b41` |
| 64 | `theorem` | [contDiff_smul](../../../../RealFunctions/Operations.lean/declarations/contdiff-smul.md) | 490 | `result-track:4bb2342208661b9d6e6d6e71859dd339f8b508586bf90b53ee538158ca1c9daa` |
| 65 | `theorem` | [ContDiffWithinAt.smul](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-smul.md) | 496 | `result-track:4d1fd64421f921c194266c03262a60796ba2d9177e08bc0fd8a170f8da07fc16` |
| 66 | `theorem` | [ContDiffAt.smul](../../../../RealFunctions/Operations.lean/declarations/contdiffat-smul.md) | 502 | `result-track:5f83746e7e35ea8373eded558b231726ec0bd8d7c00bb5cb3398cb8c0b24a745` |
| 67 | `theorem` | [ContDiff.smul](../../../../RealFunctions/Operations.lean/declarations/contdiff-smul-source-edition-2.md) | 508 | `result-track:71c39aee8c1abdfa657a9c436fa7d9b64b499f6887658734d9e9c65759210062` |
| 68 | `theorem` | [ContDiffOn.smul](../../../../RealFunctions/Operations.lean/declarations/contdiffon-smul.md) | 514 | `result-track:277b584899eb52c264297691d8dbb96305e612c93577e0c92d5b86bf0df1374b` |
| 69 | `theorem` | [contDiff_const_smul](../../../../RealFunctions/Operations.lean/declarations/contdiff-const-smul-source-edition-2.md) | 536 | `result-track:b539a76e71206de2956934470d012f6eda0a3e32edc8be0d94c21d370ac2b074` |
| 70 | `theorem` | [ContDiffWithinAt.const_smul](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-const-smul.md) | 542 | `result-track:25dc54203b333fbc0c2533c1b13cabcfc0beaffd71d45f2b9bcf657e92ff59be` |
| 71 | `theorem` | [ContDiffAt.const_smul](../../../../RealFunctions/Operations.lean/declarations/contdiffat-const-smul.md) | 549 | `result-track:4483b0e5aa2b8b501e3aa230c12ac10fbb2638136310dcf7e03100a74fe3803b` |
| 72 | `theorem` | [ContDiff.const_smul](../../../../RealFunctions/Operations.lean/declarations/contdiff-const-smul.md) | 555 | `result-track:1b3f2e87158593bf4892176454a0e1f569278080dc2cbc9f2cb10ccbd8324602` |
| 73 | `theorem` | [ContDiffOn.const_smul](../../../../RealFunctions/Operations.lean/declarations/contdiffon-const-smul.md) | 561 | `result-track:86e26dc8049f8b43821c150f70083a909728e9bd0b1184fe70b3ef81d95bd0d1` |
| 74 | `theorem` | [iteratedFDerivWithin_const_smul_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderivwithin-const-smul-apply.md) | 566 | `result-track:6c33af0be589760b174e232baf6a5ff10ed002b8146274f7da8e62e31fbf7f9f` |
| 75 | `theorem` | [iteratedFDeriv_const_smul_apply](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-const-smul-apply.md) | 571 | `result-track:3d43a417b3009c29342ba8a15c3bd35fb5b561e8b9aa4387525a3cc761d0ea4a` |
| 76 | `theorem` | [iteratedFDeriv_const_smul_apply'](../../../../RealFunctions/Operations.lean/declarations/iteratedfderiv-const-smul-apply-source-edition-2.md) | 575 | `result-track:80c70557add73de2dcf95049feb4079a9678b5a6803ecdf60bdbd38494b5e956` |
| 77 | `theorem` | [ContDiffWithinAt.prodMap'](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-prodmap.md) | 591 | `result-track:2f06c4e855c5e874783d1a1dfe2d05ee84e7e5231a5e976def8c5751b528d8a3` |
| 78 | `theorem` | [ContDiffWithinAt.prodMap](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-prodmap-source-edition-2.md) | 601 | `result-track:433eafc47962cae73470fff10ba518b2aaacf4c953f8d25553619f74df658733` |
| 79 | `theorem` | [ContDiffOn.prodMap](../../../../RealFunctions/Operations.lean/declarations/contdiffon-prodmap.md) | 611 | `result-track:4a10c0b47205cb24d25bc83e2de6806cee5838e6e6d3874fc7520f5a57e4baed` |
| 80 | `theorem` | [ContDiffAt.prodMap](../../../../RealFunctions/Operations.lean/declarations/contdiffat-prodmap.md) | 623 | `result-track:07f671ccf909799bd66148e0d3ec3a0da3f28cb9aee4b6f62b359859edbbd4d8` |
| 81 | `theorem` | [ContDiffAt.prodMap'](../../../../RealFunctions/Operations.lean/declarations/contdiffat-prodmap-source-edition-2.md) | 634 | `result-track:6017a9443192e6418b7947d7fba082c0d9be98ba802b1330e0fa347466db844b` |
| 82 | `theorem` | [ContDiff.prodMap](../../../../RealFunctions/Operations.lean/declarations/contdiff-prodmap.md) | 643 | `result-track:44d34b2b6cb040ea4f6755ba58613690942db21632ab64dd22fb91465c6b883c` |
| 83 | `theorem` | [contDiff_prodMk_left](../../../../RealFunctions/Operations.lean/declarations/contdiff-prodmk-left.md) | 652 | `result-track:460d85a4545a58d94dd505b3e0d62065141f48942d18f6c7aac0453eea210106` |
| 84 | `theorem` | [contDiff_prodMk_right](../../../../RealFunctions/Operations.lean/declarations/contdiff-prodmk-right.md) | 659 | `result-track:54aa0c0682e4c5760b701dec36a4125e45c52d58beee4eb7c66fd16559f60475` |
| 85 | `theorem` | [contDiffAt_ringInverse](../../../../RealFunctions/Operations.lean/declarations/contdiffat-ringinverse.md) | 681 | `result-track:2e18a97a844867e3be4498be5bf71f748a540442d0cbf14063eca95f69639a4a` |
| 86 | `theorem` | [contDiffAt_inv](../../../../RealFunctions/Operations.lean/declarations/contdiffat-inv.md) | 692 | `result-track:8b57faa5eec8ed112d2335e5fb23331464c4ee3a1013920c931ed39528f7ebe5` |
| 87 | `theorem` | [contDiffOn_inv](../../../../RealFunctions/Operations.lean/declarations/contdiffon-inv.md) | 696 | `result-track:55805718dcc37b657d03fe0b8fe1c2bd7dad19f34aefee7c5807a586bca008e4` |
| 88 | `theorem` | [ContDiffWithinAt.inv](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-inv.md) | 702 | `result-track:e1347ecb6020b6b70bfe440279f9016f96c0763e9c1911da1f78dcfa152873b9` |
| 89 | `theorem` | [ContDiffOn.inv](../../../../RealFunctions/Operations.lean/declarations/contdiffon-inv-source-edition-2.md) | 707 | `result-track:ebb5b74eb6291b8ad034a591b2f6f5809f51ae09d034b3fc4e24619d1fe7101c` |
| 90 | `theorem` | [ContDiffAt.inv](../../../../RealFunctions/Operations.lean/declarations/contdiffat-inv-source-edition-2.md) | 711 | `result-track:91825185dece390ea440bc088269d0ea58a4222f2eef14fe682d6f393659bf9a` |
| 91 | `theorem` | [ContDiff.inv](../../../../RealFunctions/Operations.lean/declarations/contdiff-inv.md) | 716 | `result-track:1ee734836a89db403e6173b75f137865948aba0f62d3bb81cc34229dcd5714fa` |
| 92 | `theorem` | [ContDiffWithinAt.div](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-div.md) | 722 | `result-track:63c5977e9d3273877c13096cf641c88ac4abdc22e6e4ebffc567769a1d39e862` |
| 93 | `theorem` | [ContDiffOn.div](../../../../RealFunctions/Operations.lean/declarations/contdiffon-div.md) | 728 | `result-track:abf735798568d9f0a8542066c0e85ccc0737116ea5e7cdf377287706f59f13a5` |
| 94 | `theorem` | [ContDiffOn.fun_div](../../../../RealFunctions/Operations.lean/declarations/contdiffon-fun-div.md) | 733 | `result-track:efddf86efb47280f01a904c76ec8b25ff003e1ca1b5e029299b8c07438f6fe28` |
| 95 | `theorem` | [ContDiffAt.div](../../../../RealFunctions/Operations.lean/declarations/contdiffat-div.md) | 738 | `result-track:1404966a149e7b4caa0eb21d254835d47c6a71ea61399158715e0bfe2596fac9` |
| 96 | `theorem` | [ContDiff.div](../../../../RealFunctions/Operations.lean/declarations/contdiff-div.md) | 743 | `result-track:3ae16a2c668f4e7c08c62a2cf6e67ed1b5ddc240fb52c7bce1edbf46a701538a` |
| 97 | `theorem` | [contDiffAt_map_inverse](../../../../RealFunctions/Operations.lean/declarations/contdiffat-map-inverse.md) | 759 | `result-track:b72f3cfd0b1450e6a92d030f71c5c2344fe6cc16b0ada6f3fc0362295eeec43e` |
| 98 | `theorem` | [ContinuousLinearMap.IsInvertible.contDiffAt_map_inverse](../../../../RealFunctions/Operations.lean/declarations/continuouslinearmap-isinvertible-contdiffat-map-inverse.md) | 778 | `result-track:85373f46a7c50d19c387d3f1ec89bc673ed0b1d6bee92e15d4d8076f94e73cc5` |
| 99 | `theorem` | [PartialHomeomorph.contDiffAt_symm](../../../../RealFunctions/Operations.lean/declarations/partialhomeomorph-contdiffat-symm.md) | 796 | `result-track:604b1e3e2a1f332ef71e70d35ea673cf6955415cfe09346b1c080d2fdfd699c6` |
| 100 | `theorem` | [Homeomorph.contDiff_symm](../../../../RealFunctions/Operations.lean/declarations/homeomorph-contdiff-symm.md) | 855 | `result-track:3b597f14b44c6abb66af61f78c2c9957ea9a173a832d97e3f0a25267f5b45f6a` |
| 101 | `theorem` | [PartialHomeomorph.contDiffAt_symm_deriv](../../../../RealFunctions/Operations.lean/declarations/partialhomeomorph-contdiffat-symm-deriv.md) | 867 | `result-track:47ab6595149ed138d45166dd6b2665035fc61c3d7a2a0f9e1a75323813d9136f` |
| 102 | `theorem` | [Homeomorph.contDiff_symm_deriv](../../../../RealFunctions/Operations.lean/declarations/homeomorph-contdiff-symm-deriv.md) | 878 | `result-track:90862f778c3f3c19f88b739d0c816ead555ff2f9e0c5e5ea70a8a11fc3589fab` |
| 103 | `def` | [restrContDiff](../../../../RealFunctions/Operations.lean/declarations/restrcontdiff.md) | 895 | `declaration-track:e2a08fa34804570c624d762e62b19885ac3a213dad96d6688cbf6e1f0701afe0` |
| 104 | `lemma` | [contDiffOn_restrContDiff_source](../../../../RealFunctions/Operations.lean/declarations/contdiffon-restrcontdiff-source.md) | 904 | `result-track:614301eae7cc04f878c7ed83787ce5f5fc057e64749d1b7a5b7916614b3c40dd` |
| 105 | `lemma` | [contDiffOn_restrContDiff_target](../../../../RealFunctions/Operations.lean/declarations/contdiffon-restrcontdiff-target.md) | 907 | `result-track:23cf8e705d34806aa2893379672e4964c8369d3d347ffec622a371f654531242` |
| 106 | `theorem` | [HasFTaylorSeriesUpToOn.restrictScalars](../../../../RealFunctions/Operations.lean/declarations/hasftaylorseriesuptoon-restrictscalars.md) | 932 | `result-track:67e794118a5aae1ef0f0bff60c9e571704ed96b0ba723f477f1817d5730c0ce7` |
| 107 | `theorem` | [ContDiffWithinAt.restrict_scalars](../../../../RealFunctions/Operations.lean/declarations/contdiffwithinat-restrict-scalars.md) | 941 | `result-track:d0e92eabfcaf4c433965eb9c8230627f2c539503c442f440b2148396a259d20b` |
| 108 | `theorem` | [ContDiffOn.restrict_scalars](../../../../RealFunctions/Operations.lean/declarations/contdiffon-restrict-scalars.md) | 955 | `result-track:2eca1984ce6a3e6cc32514e3d21af5c151264e77b8803381749d6af200303b0a` |
| 109 | `theorem` | [ContDiffAt.restrict_scalars](../../../../RealFunctions/Operations.lean/declarations/contdiffat-restrict-scalars.md) | 958 | `result-track:2a63ea4503bf0148138494adccbaa4dbe9230211f71354d9627d8c4d29ba8e2d` |
| 110 | `theorem` | [ContDiff.restrict_scalars](../../../../RealFunctions/Operations.lean/declarations/contdiff-restrict-scalars.md) | 961 | `result-track:e5568ed1178fd090bd0929db1df91c228359cdac14c9aa042ab9eb7b2fc9c159` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8ee8e3ce6aebe61c221e81ac1f0492457071ec01563d67fe494c8984454a151 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
