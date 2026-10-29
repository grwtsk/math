# Verification target: Cont Diff Faa Di Bruno Faa Di Bruno Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f477fa6f2548668fcb691bac6d2cc395ee3964b4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f477fa6f2548668fcb691bac6d2cc395ee3964b4`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Within` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedFinpartition](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/orderedfinpartition.md) | 101 | `declaration-track:ffeb385b9717165b7cd830d6c81ac0bb16970d44cec01b1210c1f51fc1cf44ca` |
| 2 | `def` | [atomic](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/atomic.md) | 125 | `declaration-track:051e6e27f54868209fca8b1d583c2e003c15002d254866819b3470c05ba81907` |
| 3 | `instance` | [(anonymous)](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/instance-source-edition-2.md) | 137 | `declaration-track:f24d250f225c8492a59b7a4751d62785d1401c3b98f72ac73f243fd5374dd77c` |
| 4 | `theorem` | [default_eq](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/default-eq.md) | 140 | `result-track:cd772cb184821d1a1599a54b05963bcc3bc0052db7c0db0ba90e248b1480aa8a` |
| 5 | `lemma` | [length_le](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/length-le.md) | 142 | `result-track:08a13849ad0f32489d5076ed8368d852c392c07f289598dc52c7fde5db8d5938` |
| 6 | `lemma` | [partSize_le](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/partsize-le.md) | 145 | `result-track:d8dc41cab5cbf1a586ee60744989edcd9d6ea535f7264b42d0eeeffa7daeb3e0` |
| 7 | `def` | [embSigma](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/embsigma.md) | 150 | `declaration-track:b352515bca2cdcef369bdfb54a4e8e5beb065a4c7296c99aa7799b83f71a1bd6` |
| 8 | `lemma` | [injective_embSigma](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/injective-embsigma.md) | 155 | `result-track:f1b893cb71b7e34491936af70c589e1c6aab1e61b47b55f5ba5afce1358395b1` |
| 9 | `instance` | [(anonymous)](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/instance.md) | 167 | `declaration-track:3aa9e0eddffa72c020a50abf9ccda01bed73806dbfdaa3a35e53e9509029005a` |
| 10 | `instance` | [instUniqueZero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/instuniquezero.md) | 170 | `declaration-track:1237bef41deb4c489740e417444dfe50cf0a50c0898e2087d8575f66e9a5a8cc` |
| 11 | `lemma` | [exists_inverse](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/exists-inverse.md) | 175 | `result-track:e3d3731ea4530a479fd7ec20e9fd8dbbb0906ac73e2ad315a6703bbfc1c13520` |
| 12 | `lemma` | [emb_injective](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/emb-injective.md) | 180 | `result-track:5a24cfca41d43e00083538cab4817c590d6295ad53155761b7bc7bcfe87ac10b` |
| 13 | `lemma` | [emb_ne_emb_of_ne](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/emb-ne-emb-of-ne.md) | 190 | `result-track:a22397dda0d7bbc7035e452109f6391721ae84ecbc8e2bf20b1248c3d8af9b69` |
| 14 | `def` | [index](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/index.md) | 195 | `declaration-track:d88cf2caf61aaac536bd1251d939de74a6b5f493ecade6763d8cf80803cec97d` |
| 15 | `def` | [invEmbedding](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/invembedding.md) | 200 | `declaration-track:c4fca327d74d950a09bdae645ce4c95829958c46839a4554c480755169b94c02` |
| 16 | `lemma` | [emb_invEmbedding](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/emb-invembedding.md) | 203 | `result-track:ec13d75acbbe26c024a1bf43939c06720b38dea13d7b6cb1fe963a400dbb7986` |
| 17 | `def` | [equivSigma](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/equivsigma.md) | 209 | `declaration-track:6c321377139685381d0fd6b852022ddec1a3045e37e03011f8e12b288745da54` |
| 18 | `lemma` | [prod_sigma_eq_prod](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/prod-sigma-eq-prod.md) | 215 | `result-track:f29464075efa6d7e8c93504cfa62c04346e8a02f38ac3c2d30e7112e55385bc2` |
| 19 | `lemma` | [length_pos](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/length-pos.md) | 220 | `result-track:68bc0315ec50b482c1feaabcfab52aacb32a07caed2f60b0b2f6c32099ff8c05` |
| 20 | `lemma` | [neZero_length](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/nezero-length.md) | 222 | `result-track:d077c649bdfd597429547064b2438381d43eff461f24b96775e566d746980bde` |
| 21 | `lemma` | [neZero_partSize](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/nezero-partsize.md) | 225 | `result-track:2f25e4e3a65396ba2b65389fb75b505f07485b8107cfe65db6af2ad6ea190630` |
| 22 | `instance` | [instUniqueOne](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/instuniqueone.md) | 230 | `declaration-track:be39ad0f47ef48329b7b1ca78b16e130e7a4d33bf0d1432d098a67fe4cfc9e30` |
| 23 | `lemma` | [emb_zero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/emb-zero.md) | 240 | `result-track:2df9ca98bbeb36f6b50e9d0378c71b5fe3f78c9ade8a061f5a9f83c2ac6ce9c5` |
| 24 | `lemma` | [partSize_eq_one_of_range_emb_eq_singleton](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/partsize-eq-one-of-range-emb-eq-singleton.md) | 245 | `result-track:3be858962f2c43be06463504449e345b2c914009f58c51bc3bda214ccd2e17ab` |
| 25 | `lemma` | [one_lt_partSize_index_zero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/one-lt-partsize-index-zero.md) | 257 | `result-track:cbae29be02e0263b0fb92230b6c497533f207e89f1b429998bc6b37f73ee7d75` |
| 26 | `def` | [extendLeft](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extendleft.md) | 295 | `declaration-track:c67a489bc4e0dd736c53cbc4b091790866400771fb405cf77cde2e9bc5475441` |
| 27 | `lemma` | [range_extendLeft_zero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/range-extendleft-zero.md) | 340 | `result-track:ee1df64f064769ba7829b12af094a2d8066ef5531cec81c0619ee06a7f3b729c` |
| 28 | `def` | [extendMiddle](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extendmiddle.md) | 348 | `declaration-track:5537931381057b0694a9b501de41139e5b7a63aeb9d3b90be92fa9400357f275` |
| 29 | `lemma` | [index_extendMiddle_zero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/index-extendmiddle-zero.md) | 434 | `result-track:1583902cfbf35365b71f36c1754a4cd54df002fef43b9adc5f4d6934a19d4526` |
| 30 | `lemma` | [range_emb_extendMiddle_ne_singleton_zero](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/range-emb-extendmiddle-ne-singleton-zero.md) | 441 | `result-track:1751c073542ed5a7d84f29be95d5b8c4bf08901b8ecc2879c1fe2695f993b61e` |
| 31 | `def` | [extend](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extend.md) | 461 | `declaration-track:319c6c97f7fbfd999ce0f10f99b2ce1b6f239681090208d6679240777832fdde` |
| 32 | `lemma` | [extend_none](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extend-none.md) | 466 | `result-track:cf28d12a9f0ac92364537dc1bbcc3102ba7d2f296ac351a65fd63f856dcc6127` |
| 33 | `lemma` | [extend_some](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extend-some.md) | 469 | `result-track:d9b13c2d743d240b54a25a6f257f6977f55b0c94286554d1bc74b6ab54a9e46f` |
| 34 | `def` | [eraseLeft](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/eraseleft.md) | 474 | `declaration-track:f54966f6071f0c9224bb311da5dd7cec8e52cd9b3316b67f91fce81fcf9f3cdc` |
| 35 | `def` | [eraseMiddle](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/erasemiddle.md) | 520 | `declaration-track:3422829d40f5a169b6d24f2f2ac72b148b8fc738d837a71f4b6554660014cbaa` |
| 36 | `def` | [extendEquiv](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/extendequiv.md) | 632 | `declaration-track:79688f89d0735520a15868b84913b1ce8c42babfc2b58cf774698fa823ea74da` |
| 37 | `def` | [applyOrderedFinpartition](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/applyorderedfinpartition.md) | 726 | `declaration-track:10a3f86f6d65efbdb2ef7722c03d179c7c6735f60c006c2544f62dd9d82588c4` |
| 38 | `lemma` | [applyOrderedFinpartition_apply](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/applyorderedfinpartition-apply.md) | 730 | `result-track:e8f77377a758a05d1a1297f12a051ec6d31d1bb0648997d5d8774a83d6f7941a` |
| 39 | `theorem` | [norm_applyOrderedFinpartition_le](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/norm-applyorderedfinpartition-le.md) | 734 | `result-track:652eb66c80209417fea236acdd466f3c9a970e281242471d8b16cc02cb0477ae` |
| 40 | `theorem` | [applyOrderedFinpartition_update_right](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/applyorderedfinpartition-update-right.md) | 742 | `result-track:29f2248a3ef3e8b220eac1a416c7ab72f676b3fdd8271add63944f984d29ecfc` |
| 41 | `theorem` | [applyOrderedFinpartition_update_left](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/applyorderedfinpartition-update-left.md) | 766 | `result-track:d81bfee5e52fe14cc83fe29f8b3f2c532678f1bb596b3684253ad8e1b47a1ed5` |
| 42 | `def` | [compAlongOrderedFinpartition](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartition-source-edition-2.md) | 781 | `declaration-track:4383cb95a862825fd6be17e9eaa5a54ee47244c32cb930d5749727fc9b34581d` |
| 43 | `lemma` | [compAlongOrderFinpartition_apply](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderfinpartition-apply.md) | 796 | `result-track:6b0fc195bcba8b491ef7bd64a99fc2b469d1b4dc1a532f475c12e9aaaf5b0abe` |
| 44 | `theorem` | [norm_compAlongOrderedFinpartition_le](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/norm-compalongorderedfinpartition-le.md) | 800 | `result-track:7aa444368d2e0ac9f547833f0ea2285197f19c36ced86c13247e2c0ec1417f92` |
| 45 | `def` | [compAlongOrderedFinpartitionₗ](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartition-source-edition-3.md) | 811 | `declaration-track:aeef5d6f20b6d7acbfbfbf0708bbbe45c9889caebe95c5d155851f3bb5ba800b` |
| 46 | `def` | [compAlongOrderedFinpartitionL](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartitionl.md) | 828 | `declaration-track:2d89aafd396da7ac776c8464c7c0443d56e847714440771a68c316705db1d677` |
| 47 | `lemma` | [compAlongOrderedFinpartitionL_apply](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartitionl-apply.md) | 835 | `result-track:19f09c5ad6de78ba6e4c838e48d88423f06e3db1881f2298a76b92b47c27e92e` |
| 48 | `theorem` | [norm_compAlongOrderedFinpartitionL_le](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/norm-compalongorderedfinpartitionl-le.md) | 839 | `result-track:18c849e4877bca38020dede2a6469895003ca9c6dbf02c72a86c5896f4b351ab` |
| 49 | `def` | [compAlongOrderedFinpartition](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartition.md) | 853 | `declaration-track:1e334bc541a58c26ce77917a26e85cc487904d3e15aee896b2cdb1e1e624d90c` |
| 50 | `theorem` | [compAlongOrderedFinpartition_apply](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/compalongorderedfinpartition-apply.md) | 859 | `result-track:a299fc84d25d959681dac93c34040e12309b247f3c47b2ddbabd6b4036367e04` |
| 51 | `def` | [taylorComp](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/taylorcomp.md) | 879 | `declaration-track:529b3309731da48916ac7a2b582ecaeb4b1d5092a1835f0d8decb1ad6468d383` |
| 52 | `theorem` | [analyticOn_taylorComp](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/analyticon-taylorcomp.md) | 886 | `result-track:4781214d618405a04a4141f5097752f209645b6aca893eb5ff27979fa1ed8c17` |
| 53 | `lemma` | [faaDiBruno_aux1](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/faadibruno-aux1.md) | 907 | `result-track:64b4f1227e4babb90d1a8b0dc3600d728bec72deca5449a728cc517d7b3fc8a5` |
| 54 | `lemma` | [faaDiBruno_aux2](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/faadibruno-aux2.md) | 928 | `result-track:d612bda05119b0204269d580d5c5f7d3f7f25ab3d81dc802240007d37ac466ee` |
| 55 | `theorem` | [HasFTaylorSeriesUpToOn.comp](../../../../RealFunctions/ContDiffFaaDiBrunoFaaDiBrunoNamespaced.lean/declarations/hasftaylorseriesuptoon-comp.md) | 957 | `result-track:4061f1fc4a64134464b13c12fc6a0d0620ac91db33499d71a266556fa611359b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f901e6a09e4ef7a4fc472850df735f765bb021c9b32d913c5014e505596a0410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
