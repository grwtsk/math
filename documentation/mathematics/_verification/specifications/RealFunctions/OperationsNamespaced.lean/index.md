# Verification target: Operations Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/OperationsNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/OperationsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inverse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFTaylorSeriesUpToOn_pi](../../../../RealFunctions/OperationsNamespaced.lean/declarations/hasftaylorseriesuptoon-pi.md) | 62 | `result-track:1862efcb3d6e175c0a2544ac64cc63388f1390b47e9dc5854a48cb3bb7cce030` |
| 2 | `theorem` | [hasFTaylorSeriesUpToOn_pi'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/hasftaylorseriesuptoon-pi-source-edition-2.md) | 80 | `result-track:186b39de8f540e917a15652d80f76ffc3e9673406d63b324548b3236e023d5d1` |
| 3 | `theorem` | [contDiffWithinAt_pi](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-pi.md) | 87 | `result-track:fad1241135c2aa4fb1f92a851f0aebb945040924ac473a3f910a7c6ee3d19d43` |
| 4 | `theorem` | [contDiffOn_pi](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-pi-source-edition-2.md) | 107 | `result-track:cd55af34e395a55cdb041d289dfaed28517604f2c91530b09719bcadd73b2b39` |
| 5 | `theorem` | [contDiffAt_pi](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-pi-source-edition-2.md) | 111 | `result-track:6361aaae956b87706d74922dae32ea4111927270e7f43489055d65c6fc16a1b7` |
| 6 | `theorem` | [contDiff_pi](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-pi.md) | 114 | `result-track:180482d48b452585c2b20b39f8586e9b5cec0e3c46ccd73b41a0d0143bc6b019` |
| 7 | `theorem` | [contDiff_pi'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-pi-source-edition-2.md) | 118 | `result-track:d8a293ab7b2f66b1329ef87b7659976fba157069ab7ed00ff16f0f1291f274a1` |
| 8 | `theorem` | [contDiffOn_pi'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-pi.md) | 122 | `result-track:8f8717d8cd0eeecee2cf66048b856531b3b76f0f4368d613260db706d06785cd` |
| 9 | `theorem` | [contDiffAt_pi'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-pi.md) | 126 | `result-track:5592a8b23d47956929e06a5ef32fa080653a61fd14033df9636c5327df1b94de` |
| 10 | `theorem` | [contDiff_update](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-update.md) | 129 | `result-track:0da5bd129645fff70182306a4b9668ff357578f93ec4bcc2599f0875a2659ce2` |
| 11 | `theorem` | [contDiff_single](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-single.md) | 140 | `result-track:0c5f2e8a5ca657312b61cebe79b892a5f5ccd35d9afcbcb477b6b8e1ebe11085` |
| 12 | `theorem` | [contDiff_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-apply.md) | 147 | `result-track:55498d691c71124211dec0e95aab6ff0b091b229066eeedb098d45d1ff915772` |
| 13 | `theorem` | [contDiffAt_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-apply.md) | 151 | `result-track:fc062854557c9f7f2212f45e7017fc79f390e89adc44f13f63bf3edc053c7c5d` |
| 14 | `theorem` | [contDiffOn_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-apply.md) | 155 | `result-track:9a60bb4b62135f92f2bb0b556e493126f18d58f1e04eabf0ae778458b7e449c4` |
| 15 | `theorem` | [contDiff_apply_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-apply-apply.md) | 158 | `result-track:be40ff1921e96a7f43524aa0fa0cf1343b72aca8eb0744f544055518579c7448` |
| 16 | `theorem` | [HasFTaylorSeriesUpToOn.add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/hasftaylorseriesuptoon-add.md) | 167 | `result-track:3cb6c5ec23bcc0fbf74447dd99e10952f117eca3d51774e9b4efc34fc526bc56` |
| 17 | `theorem` | [contDiff_add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-add-source-edition-2.md) | 174 | `result-track:52b514c46ebcfb819c573709be378aaa5a88444917461cea93af2974b9f7561a` |
| 18 | `theorem` | [ContDiffWithinAt.add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-add.md) | 180 | `result-track:26c977b11763333935dff3da30fd2d66d9e27593a683897b5f7942cb7468f112` |
| 19 | `theorem` | [ContDiffAt.add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-add.md) | 186 | `result-track:ee0ce9532dad1c422904238b3e06f43bcee0dec3b994c36ff1a063b563592305` |
| 20 | `theorem` | [ContDiff.add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-add.md) | 192 | `result-track:1aac12b87157a1a98ae4a7454568132d56f06d7968ad6034ae34836be426de78` |
| 21 | `theorem` | [ContDiffOn.add](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-add.md) | 198 | `result-track:046bf79d91b011d366085315f67a90af520ee73e28427df02bd306da43710089` |
| 22 | `theorem` | [iteratedFDerivWithin_add_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderivwithin-add-apply.md) | 207 | `result-track:3601d25621b31353a939e8075251af1605692a2febbfd9ede7f94ff8af06d55a` |
| 23 | `theorem` | [iteratedFDerivWithin_add_apply'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderivwithin-add-apply-source-edition-2.md) | 227 | `result-track:92318c211cbaf234909ee874dcfc692f84911522d727dc4d6c6ac0340c6e83d5` |
| 24 | `theorem` | [iteratedFDeriv_add_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-add-apply-source-edition-2.md) | 233 | `result-track:d31db60da325dd2eadb957462a9ed0fd2c061d61840bed4acc17ed0c2d786586` |
| 25 | `theorem` | [iteratedFDeriv_add_apply'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-add-apply.md) | 239 | `result-track:a35c8cc7b589f984817aeea274777d54f941d9f2d561e98422c83a51ae7b2803` |
| 26 | `theorem` | [contDiff_neg](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-neg.md) | 252 | `result-track:d685597e61eda2e05dad073d43abf64195a2c0f7987b463ce76d704f17072bd4` |
| 27 | `theorem` | [ContDiffWithinAt.neg](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-neg.md) | 258 | `result-track:5ec7c8d76cedc3b4013825fffb5858b0833bf88f53a486b99181aa6f0856833c` |
| 28 | `theorem` | [ContDiffAt.neg](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-neg.md) | 264 | `result-track:8efcbecd7a41464106dca3601b90af9cccfd44e0a70614f81816351ead472dde` |
| 29 | `theorem` | [ContDiff.neg](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-neg-source-edition-2.md) | 269 | `result-track:de7ae8a6560e1d05522c55123b35137fa509b481ba7768e56959b0a8af486356` |
| 30 | `theorem` | [ContDiffOn.neg](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-neg.md) | 274 | `result-track:ba0692e8ae4cb0950310ef3319e681e75b2f8f3a06eb5ea50e624fc85751f0f1` |
| 31 | `theorem` | [iteratedFDerivWithin_neg_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderivwithin-neg-apply.md) | 281 | `result-track:0d22ea5d36fa7eab0f79d686765756af59c2e45e5785646fdd9c52416917a108` |
| 32 | `theorem` | [iteratedFDeriv_neg_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-neg-apply.md) | 296 | `result-track:2485f7a95741bc24a76b6660bf7a00e72abba7a496845ae5a594b691637446f9` |
| 33 | `theorem` | [ContDiffWithinAt.sub](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-sub.md) | 308 | `result-track:a1138feea572c918c094c9ebcca0d17585412819d655820183a3ca5ab0e17b14` |
| 34 | `theorem` | [ContDiffAt.sub](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-sub.md) | 314 | `result-track:557cb81100db08a7a3b97edea8b788c2c452c334ef892facdbf8944e3e66fc01` |
| 35 | `theorem` | [ContDiffOn.sub](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-sub.md) | 319 | `result-track:f49c83e863d23dc2dfaa65058523ae289438796dea69fc5e40d3894cb85a0768` |
| 36 | `theorem` | [ContDiff.sub](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-sub.md) | 325 | `result-track:fe13e199d88f4a65881cac50634bfe7a286bf6ec3eb70bdde9c980d04d3b5bbe` |
| 37 | `theorem` | [ContDiffWithinAt.sum](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-sum.md) | 331 | `result-track:05855c731ea4bb4c2588418220dc881a7139304e469b1f6d2d12120f812e9eb3` |
| 38 | `theorem` | [ContDiffAt.sum](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-sum.md) | 342 | `result-track:e3bb2a3cf925464ed8a3a14fa4a5f3d027765ed322ecd1f708264199a8793983` |
| 39 | `theorem` | [ContDiffOn.sum](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-sum.md) | 348 | `result-track:6a9dc024ccad385250dfb9980f34a1b40eab5251a8d60052def399f44c5b50d6` |
| 40 | `theorem` | [ContDiff.sum](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-sum.md) | 354 | `result-track:19d673c9d13e934a745b5dfdbe6826ddd1e38525ad9222cd336aef9cdfe9274a` |
| 41 | `theorem` | [iteratedFDerivWithin_sum_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderivwithin-sum-apply.md) | 358 | `result-track:269525cc2c84d13e861b4b98fb0034d231b47673d8143df9a94213f389197560` |
| 42 | `theorem` | [iteratedFDeriv_sum](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-sum.md) | 369 | `result-track:7d60c2c3ad038088f36a86fc65f1f74c88b9f173297caa3f03b8c58dd6fc0875` |
| 43 | `theorem` | [contDiff_mul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-mul.md) | 384 | `result-track:74e7cd0fa1b0149166ff0a1777dae741f318ccaee0b42ce8646b94db657f6741` |
| 44 | `theorem` | [ContDiffWithinAt.mul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-mul.md) | 390 | `result-track:37eae9ee070a821579bf3ee93bf8bf63102fcef519e37155f6deeacfc37b4a72` |
| 45 | `theorem` | [ContDiffAt.mul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-mul.md) | 396 | `result-track:a30c7276a966b1eec18519158c1d74267beb2053aeaefcdfe7f466743f2c1284` |
| 46 | `theorem` | [ContDiffOn.mul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-mul.md) | 402 | `result-track:aa81cd8c2b35cff4d901fbd79665d800c7913bd0dcecfb51f97d2f316ba0c611` |
| 47 | `theorem` | [ContDiff.mul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-mul-source-edition-2.md) | 407 | `result-track:77ef80df9fb979fbde25841c468b5a521c099e6e518d89a77adf3c07b1469d39` |
| 48 | `theorem` | [contDiffWithinAt_prod'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-prod-source-edition-2.md) | 412 | `result-track:b4721dfaeffd652bf9b43a0e915730218fe168bc68b889c45fdf3ab879ef8485` |
| 49 | `theorem` | [contDiffWithinAt_prod](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-prod.md) | 418 | `result-track:a36fde18a2a503dc68ce030ad451d88828581268df973ce55371ce3f562f3743` |
| 50 | `theorem` | [contDiffAt_prod'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-prod.md) | 424 | `result-track:8f8b4480fcf0805c1dc6bdacebb4b01b5b4fb340b1ca5f5877221618401cb86f` |
| 51 | `theorem` | [contDiffAt_prod](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-prod-source-edition-2.md) | 429 | `result-track:9c41d844880e2a351340ea404273f17153f9e158b51cc2faae556e85ddb99d80` |
| 52 | `theorem` | [contDiffOn_prod'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-prod-source-edition-2.md) | 434 | `result-track:c458040132b7636d1b7e0c206c6b4f805daa90f9f9ce5b7acffbed0f725c1b03` |
| 53 | `theorem` | [contDiffOn_prod](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-prod.md) | 438 | `result-track:5d99c7bb0eb5056a731cd6d126cc1af3d287168849382706bbbe200f0426f313` |
| 54 | `theorem` | [contDiff_prod'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-prod.md) | 443 | `result-track:54ee05ce340242949963783dc3a278e56be727ec83439cbb35ee087cc22e058c` |
| 55 | `theorem` | [contDiff_prod](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-prod-source-edition-2.md) | 448 | `result-track:e39e584b55c5c9c3eb19dc69d186c331063267dc6d68004bed82b86bdd52bd27` |
| 56 | `theorem` | [ContDiff.pow](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-pow.md) | 453 | `result-track:a40cc584ca99e70a5592364f55050383d3b0e109fc8b35af25f572dca1d96e50` |
| 57 | `theorem` | [ContDiffWithinAt.pow](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-pow.md) | 458 | `result-track:3d7ace649e88d67eacd5e8e0874cbddb848ae44bc50383a099eb1ff8ac330a1e` |
| 58 | `theorem` | [ContDiffAt.pow](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-pow.md) | 463 | `result-track:8003eb769d3da91fd8774c12fa65bc6e631400af14ce98b553075fcb4fc4a7de` |
| 59 | `theorem` | [ContDiffOn.pow](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-pow.md) | 468 | `result-track:3cd8c2d97635b8720adb58b2c8125c4fd79c3a09a14e5f210c1443450041c5b4` |
| 60 | `theorem` | [ContDiffWithinAt.div_const](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-div-const.md) | 472 | `result-track:79f76b6d0173052d79e2629d6f03af2d82cefdfaa222b121911b163311f52d86` |
| 61 | `theorem` | [ContDiffAt.div_const](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-div-const.md) | 477 | `result-track:bb1091d6f3cac7f84d8a1f58b6c1d0ac9a0e228fcd24a11fcae469e9213d466b` |
| 62 | `theorem` | [ContDiffOn.div_const](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-div-const.md) | 482 | `result-track:fae187d666c7378b59ada8347be7dd70a1c08d90e7ddff2d45f017060b0a3d16` |
| 63 | `theorem` | [ContDiff.div_const](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-div-const.md) | 486 | `result-track:1233af2dc0a6dfc592b4b1d335c356c081d72ba99bde454d5d79046d895eef59` |
| 64 | `theorem` | [contDiff_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-smul-source-edition-2.md) | 498 | `result-track:6b50e2df170d3cf86cec2c921c1a087858550e4e4e83893a6c3653cf9c7672b8` |
| 65 | `theorem` | [ContDiffWithinAt.smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-smul.md) | 504 | `result-track:757eb2ae597e98c5b288b574387395c3a9eefa397d166dcb232be8e5d3a5edab` |
| 66 | `theorem` | [ContDiffAt.smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-smul.md) | 510 | `result-track:eb301c13a36da98d837ec6e84f135c6d27f4b1240f1a10eefabff1fb9993d4c9` |
| 67 | `theorem` | [ContDiff.smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-smul.md) | 516 | `result-track:1cccd4b6dbb7f7852cad0a24c68e691f3c68771ecb449680ac5957f4389f2f4d` |
| 68 | `theorem` | [ContDiffOn.smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-smul.md) | 522 | `result-track:b1f180eb3120d39e66a25f02226ba049a56b16b83ca53ea840009bdbc0ed643e` |
| 69 | `theorem` | [contDiff_const_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-const-smul-source-edition-2.md) | 544 | `result-track:9f72977f7d27c2fe601c58b1c7537282a73c0e447e5daf32e03cc5e2c5a421b3` |
| 70 | `theorem` | [ContDiffWithinAt.const_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-const-smul.md) | 550 | `result-track:b7ea033bf3088dad767d9eae3271c1d8970b877e4497cdb816c8cf0c151e19ae` |
| 71 | `theorem` | [ContDiffAt.const_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-const-smul.md) | 557 | `result-track:c8d5bce01e16a19f7eb97892b789240115122b6bd312dfff3ac541209f34c380` |
| 72 | `theorem` | [ContDiff.const_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-const-smul.md) | 563 | `result-track:7c4a6ae059ed4c4074ec78a0fe274f3b14c4660854881120ee0aa4b6a7919894` |
| 73 | `theorem` | [ContDiffOn.const_smul](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-const-smul.md) | 569 | `result-track:6cbd88711f63ee11f300fc1d5a7eae4aedcb972c503b2279ca726fa8bd846c36` |
| 74 | `theorem` | [iteratedFDerivWithin_const_smul_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderivwithin-const-smul-apply.md) | 574 | `result-track:60760145da26e829d28547750f0729aeaa9d1cfdc8b423946ce2bf398540102d` |
| 75 | `theorem` | [iteratedFDeriv_const_smul_apply](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-const-smul-apply-source-edition-2.md) | 579 | `result-track:ffa54224133a3a2a000c51bdee012e84bd2fd6bd6677f7926f1975c3a6bbec07` |
| 76 | `theorem` | [iteratedFDeriv_const_smul_apply'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/iteratedfderiv-const-smul-apply.md) | 583 | `result-track:6582d84d20c60ca35a5982edc091e6a946d4d27b9ee698fe0939703bd420a5c9` |
| 77 | `theorem` | [ContDiffWithinAt.prodMap'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-prodmap.md) | 599 | `result-track:00138d929afc4351b9d2f9db13873c2374e9c5b559b087fdee7861fd3b17c7a8` |
| 78 | `theorem` | [ContDiffWithinAt.prodMap](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-prodmap-source-edition-2.md) | 609 | `result-track:291a3369a0970efd16c89a6c51ee486a4265516712967c24c3ab258e2885e428` |
| 79 | `theorem` | [ContDiffOn.prodMap](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-prodmap.md) | 619 | `result-track:caa630d2e3cd7ecc6c37fc55747e76bbb613a8a1ace1fc9bb375d1ccff8cb9b9` |
| 80 | `theorem` | [ContDiffAt.prodMap](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-prodmap-source-edition-2.md) | 631 | `result-track:3b30caeaff0df4276ee7e7c749894a50de1e2a5da998c58428a0ee40ca05404c` |
| 81 | `theorem` | [ContDiffAt.prodMap'](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-prodmap.md) | 642 | `result-track:1500bd027687348040c3640a01e8321fbae50030e40a875bec29fcd4b8cf2949` |
| 82 | `theorem` | [ContDiff.prodMap](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-prodmap.md) | 651 | `result-track:0c72bc42b23ae0732fce88fdf1a10f04e860e7871b8be3eb935922724c27f81f` |
| 83 | `theorem` | [contDiff_prodMk_left](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-prodmk-left.md) | 660 | `result-track:0913d94f7cacb76f300e8883817af1adf2ba2b2cb153983211fd4725c359a88c` |
| 84 | `theorem` | [contDiff_prodMk_right](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-prodmk-right.md) | 667 | `result-track:326e8df6f2000793219df6d213e32fbb4ba9af0659a77a1841f3c1753f8e03f6` |
| 85 | `theorem` | [contDiffAt_ringInverse](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-ringinverse.md) | 689 | `result-track:47daee23d389c99eae10a5149fddc220698c0451d6e03de38db93812229c6115` |
| 86 | `theorem` | [contDiffAt_inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-inv.md) | 700 | `result-track:334cc43d22cc7f51b01f41329c7efb21aa7fe024774800061f401194b93fe901` |
| 87 | `theorem` | [contDiffOn_inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-inv-source-edition-2.md) | 704 | `result-track:4ce34b5c20e4361abba5e1b4378a125946477d6c1925ce0c238b258665ae3f2b` |
| 88 | `theorem` | [ContDiffWithinAt.inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-inv.md) | 710 | `result-track:0351b33d64c09f971b9ac8fd71d5670556354596f4b7bd7ea162a33a76b92828` |
| 89 | `theorem` | [ContDiffOn.inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-inv.md) | 715 | `result-track:36ddaf5901354504e3d3a2224a64d562c550c8531bd5007c51b163d8e353e7dc` |
| 90 | `theorem` | [ContDiffAt.inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-inv-source-edition-2.md) | 719 | `result-track:40af06c266f0f61a15da296cf811c33125728c88775c40b2712532043d1154cd` |
| 91 | `theorem` | [ContDiff.inv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-inv.md) | 724 | `result-track:edfbb171d638750e20d8c71a09780fc05239b9603c8746afe8cf44732b95321b` |
| 92 | `theorem` | [ContDiffWithinAt.div](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-div.md) | 730 | `result-track:fd2956f3c8804ac55775c613bbe95d1558790f627a32714f174f01bd6bcdd608` |
| 93 | `theorem` | [ContDiffOn.div](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-div.md) | 736 | `result-track:01ec662306cec4f3d2f836bb937f2d84a0811009abd9b6885d9d9d1bf10602de` |
| 94 | `theorem` | [ContDiffOn.fun_div](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-fun-div.md) | 741 | `result-track:e114c7e36f25bfd26e1872740f4ee78681394c9f6777bd8cc94bc1da927d512e` |
| 95 | `theorem` | [ContDiffAt.div](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-div.md) | 746 | `result-track:927bc48dab25f060753f492e325bd32f5603244828235410c6e31d0a98e93ea9` |
| 96 | `theorem` | [ContDiff.div](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-div.md) | 751 | `result-track:d9703f4b50ff2d5d3ca7eae53b446ec6855bdd6da406c6c861e2f6f2f1741f8d` |
| 97 | `theorem` | [contDiffAt_map_inverse](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-map-inverse.md) | 767 | `result-track:34071e3de6b57fbe9a19e8260e1981e8c444b621f6c514d8c0a9ca364224a335` |
| 98 | `theorem` | [ContinuousLinearMap.IsInvertible.contDiffAt_map_inverse](../../../../RealFunctions/OperationsNamespaced.lean/declarations/continuouslinearmap-isinvertible-contdiffat-map-inverse.md) | 786 | `result-track:a5b5855a53eec2ee87adce3e444fb935106126ce6b61acd4845b99bfadb17e8f` |
| 99 | `theorem` | [PartialHomeomorph.contDiffAt_symm](../../../../RealFunctions/OperationsNamespaced.lean/declarations/partialhomeomorph-contdiffat-symm.md) | 804 | `result-track:5f5a66abcaa3889b3bf3e3eb07cf9bb0661f06772221e7319c3fed8a341f613f` |
| 100 | `theorem` | [Homeomorph.contDiff_symm](../../../../RealFunctions/OperationsNamespaced.lean/declarations/homeomorph-contdiff-symm.md) | 863 | `result-track:ff418ab183b548c6bc5303bc904a289b29b72b4166f0b6c34aa1ecf5162093cb` |
| 101 | `theorem` | [PartialHomeomorph.contDiffAt_symm_deriv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/partialhomeomorph-contdiffat-symm-deriv.md) | 875 | `result-track:3bb2e88771fc77ac67b8022dcdaaa51fea6b2a9ebf69c8d43906760e1af46a2e` |
| 102 | `theorem` | [Homeomorph.contDiff_symm_deriv](../../../../RealFunctions/OperationsNamespaced.lean/declarations/homeomorph-contdiff-symm-deriv.md) | 886 | `result-track:55504c5892102e75d1d105350b913dbe93dec42e327e744840c88332b1446938` |
| 103 | `def` | [restrContDiff](../../../../RealFunctions/OperationsNamespaced.lean/declarations/restrcontdiff.md) | 903 | `declaration-track:9d6921b9cec2a4f1f538eac465be2d51d89e0cc77d9a572f96da8165d4cb1780` |
| 104 | `lemma` | [contDiffOn_restrContDiff_source](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-restrcontdiff-source.md) | 912 | `result-track:08865f7c392548586368bd8a39fc0c10710f96d8995739debe67578a2a7c8067` |
| 105 | `lemma` | [contDiffOn_restrContDiff_target](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-restrcontdiff-target.md) | 915 | `result-track:258fa99de3f120f9268ecea10a0f045bf56c5985630a1f5b76e94bed550be678` |
| 106 | `theorem` | [HasFTaylorSeriesUpToOn.restrictScalars](../../../../RealFunctions/OperationsNamespaced.lean/declarations/hasftaylorseriesuptoon-restrictscalars.md) | 940 | `result-track:1a699c895e637299c0f22a4a4c0e70b230942964706f7488a4185f4f6f00f3a3` |
| 107 | `theorem` | [ContDiffWithinAt.restrict_scalars](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffwithinat-restrict-scalars.md) | 949 | `result-track:736828ef76a9a869700111d8015ecb7f92cd03f3e010d6dd6da92bf783cc9853` |
| 108 | `theorem` | [ContDiffOn.restrict_scalars](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffon-restrict-scalars.md) | 963 | `result-track:57fccc353adf17222c07d23f0e3d9f977ba3fc41fdf2a0c14d2248cb876fc2b9` |
| 109 | `theorem` | [ContDiffAt.restrict_scalars](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiffat-restrict-scalars.md) | 966 | `result-track:30ed45026986116e025caf08d98ec07e19209d62b717f7f75a2e3da33a0eadbc` |
| 110 | `theorem` | [ContDiff.restrict_scalars](../../../../RealFunctions/OperationsNamespaced.lean/declarations/contdiff-restrict-scalars.md) | 969 | `result-track:6043f0724134798cdbd2dc54b0be4254c4fbd3c6fafca70fe70295afb976e769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=841ada1ae9c7b1b8f0a4247d3415c15c149604ea0efc2e799e5fee2387644155 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
