# Verification target: Hurwitz Zeta Odd Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bea269c1fef938c672f09f5252358eda8f48d095",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bea269c1fef938c672f09f5252358eda8f48d095`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.AbstractFuncEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.JacobiTheta.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.MellinEqDirichlet` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta₂''](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/jacobitheta.md) | 65 | `declaration-track:f18396e3751468f7760657ef053c23d6b73857b55f48e1a5deaf53009a56c4d5` |
| 2 | `lemma` | [jacobiTheta₂''_conj](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/jacobitheta-conj.md) | 68 | `result-track:33787de396c2261eb7369940858ff2de601e87960b3921032f01d0d44036e889` |
| 3 | `lemma` | [jacobiTheta₂''_add_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/jacobitheta-add-left.md) | 74 | `result-track:b203343a6f6cfe1a50c2ffd145ec548b9dedf25c2700ca45d37b0dcf9c7ebba1` |
| 4 | `lemma` | [jacobiTheta₂''_neg_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/jacobitheta-neg-left.md) | 86 | `result-track:95324da8361b7da32ea7d0b52ccf3b821e8b8916efb2ab5ce354d6b7634598e6` |
| 5 | `lemma` | [jacobiTheta₂'_functional_equation'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/jacobitheta-functional-equation.md) | 89 | `result-track:85e626de43615067c4de85038c3ab0355130a5214f93604975747cf772f28c08` |
| 6 | `def` | [oddKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel.md) | 114 | `declaration-track:baaa5c03af4bc509e5c668e454f137e0f6b98cd39bebeb92bcbba5e8a7a33348` |
| 7 | `lemma` | [oddKernel_def](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-def-source-edition-2.md) | 118 | `result-track:972df23ebd706671f16d4a6a92e65ebc5175102d164ae98448253d59aeb94d18` |
| 8 | `lemma` | [oddKernel_def'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-def.md) | 121 | `result-track:2e6f499bb54a8df30c508f49d57a4b39d8ed03a35c9b404405632a74544291d9` |
| 9 | `lemma` | [oddKernel_undef](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-undef.md) | 126 | `result-track:59c6b74b7eb3648d8a43ad056c0f494a06055f30dae223fff2222c702f816513` |
| 10 | `def` | [sinKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinkernel.md) | 135 | `declaration-track:063d0af8ab7508a8ccda4d084072a0365cafa3f8c899ec164b98324977c0bf14` |
| 11 | `lemma` | [sinKernel_def](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinkernel-def.md) | 139 | `result-track:f771496c0cae6632d61c6a43d223897656dff6433eb50a4625ed2356b2025ac0` |
| 12 | `lemma` | [sinKernel_undef](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinkernel-undef.md) | 142 | `result-track:d81ed34ee4cbe4dbbc46d0849ab5ff881e6ec518baf6ac296d17b518dcfa4cde` |
| 13 | `lemma` | [oddKernel_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-neg.md) | 146 | `result-track:799d5cea0eee486f11ede54386bb795b55f323a4698109f6a63ec0e2b2227297` |
| 14 | `lemma` | [oddKernel_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-zero.md) | 150 | `result-track:fee61b433282eeadfc8a0f823e3921a8b5ca09293f9a8d1ac6bbcbada2875075` |
| 15 | `lemma` | [sinKernel_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinkernel-neg.md) | 153 | `result-track:37e4a0d167ffa52a21d50c8ae861e6c372195415fa0a8c35231fe52872ef1737` |
| 16 | `lemma` | [sinKernel_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinkernel-zero.md) | 159 | `result-track:2f5901a9a51dce1937342daa801cce48fda82da2e6a5cf55bc1a70fe214323a4` |
| 17 | `lemma` | [continuousOn_oddKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/continuouson-oddkernel.md) | 163 | `result-track:f8591d13e41f4eaa319d1f4420df1c7844f2d34bd89711aba03de1cdf57425b5` |
| 18 | `lemma` | [continuousOn_sinKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/continuouson-sinkernel.md) | 177 | `result-track:0d26b575d36aca991abbaa0fa5bc1f5cb089952b22d8edd9989a531c724dbdc1` |
| 19 | `lemma` | [oddKernel_functional_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/oddkernel-functional-equation.md) | 186 | `result-track:afc84fbc721760dbc77e95c63c382faf61f6419b2fd87178c11d644132b746d0` |
| 20 | `lemma` | [hasSum_int_oddKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-oddkernel.md) | 215 | `result-track:2cbc2ee6e30e60a6e85449ca12b8bc56fd032bd6a974026bca9b204a000df1bc` |
| 21 | `lemma` | [hasSum_int_sinKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-sinkernel.md) | 230 | `result-track:1be4cb5cd094a73b5a1e1ace37ba1f59b29862044b17786bed6f3f2c471541ec` |
| 22 | `lemma` | [hasSum_nat_sinKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-nat-sinkernel.md) | 246 | `result-track:36cb34a97b4bb6f0b00bc7212888dd2c5afc6a5f84ea6034e608d7fd27d0f3a6` |
| 23 | `lemma` | [isBigO_atTop_oddKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/isbigo-attop-oddkernel.md) | 270 | `result-track:7e867eb83c77048ade9ff94160f43f713e0a0ebf942e16174495263d5158b45a` |
| 24 | `lemma` | [isBigO_atTop_sinKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/isbigo-attop-sinkernel.md) | 281 | `result-track:3ba60c382a5f4edca6f464edbb4dc087cffe0ef5d09b1412b187858c7e821c85` |
| 25 | `def` | [hurwitzOddFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hurwitzoddfepair.md) | 306 | `declaration-track:b9302f21cb5ef4793fad33fc00739b3990921990493ebf44081cbbe0a912ce66` |
| 26 | `def` | [completedHurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedhurwitzzetaodd.md) | 341 | `declaration-track:3b1d117984b32d99b1a516a0332e23be65036a05c5c7d7f438bb3e13f1591fb8` |
| 27 | `lemma` | [differentiable_completedHurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/differentiable-completedhurwitzzetaodd.md) | 344 | `result-track:6085814fde9609178ab4d1ec29788ddf23569720f9eaf029e0e7f2d130a96312` |
| 28 | `def` | [completedSinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedsinzeta.md) | 353 | `declaration-track:6f9dab7f29e51a38fef967e73f3d2598aeeb83f1808d20d63e7de496b9d5339c` |
| 29 | `lemma` | [differentiable_completedSinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/differentiable-completedsinzeta.md) | 356 | `result-track:05e0f23ccbd54cae95279315ab8e1bcb57129d1c392ffdaa31994a03ebf8ce52` |
| 30 | `lemma` | [completedHurwitzZetaOdd_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedhurwitzzetaodd-neg.md) | 365 | `result-track:fdea0a206e4224c77e766cbe04b9681698440cd13e98459088abce75c7b500c3` |
| 31 | `lemma` | [completedSinZeta_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedsinzeta-neg.md) | 370 | `result-track:9e0f87a738b66c96e05f7fdf78d63679cd04e4a24b357cac7d7f89663ec2a0d3` |
| 32 | `theorem` | [completedHurwitzZetaOdd_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedhurwitzzetaodd-one-sub.md) | 376 | `result-track:cf36ae3d1992a0ef2826ee686ff117c67d8345733b367c7cbaaac5711e0dbae5` |
| 33 | `lemma` | [completedSinZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/completedsinzeta-one-sub.md) | 384 | `result-track:5498e7037cb318ec2ef6658a22f0b44e6024f0fe45e159fcdb48ae46df3156f7` |
| 34 | `lemma` | [hasSum_int_completedSinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-completedsinzeta.md) | 394 | `result-track:40eb069d7fe7f3584300791ffd5ebf5053e57f638a5d349e488a9dc93b4578d2` |
| 35 | `lemma` | [hasSum_nat_completedSinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-nat-completedsinzeta.md) | 417 | `result-track:f3b0fdd044a650bcf199e28285784adfcda6857173f56e382eece02ba3ca4e6c` |
| 36 | `lemma` | [hasSum_int_completedHurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-completedhurwitzzetaodd.md) | 435 | `result-track:76af776595c56f0952e3f7fa2757623b5200026ad51aed9ccc3772cc705861e2` |
| 37 | `def` | [hurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hurwitzzetaodd.md) | 458 | `declaration-track:4b6051299806cd77f54cee47413244469f55da278bb1f0d3ee5eb3f3c869618d` |
| 38 | `lemma` | [hurwitzZetaOdd_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hurwitzzetaodd-neg.md) | 461 | `result-track:82c4ee2385f2b1e374d3a92fc3161fb951fd73643a02548f14c531e3ca4ac3aa` |
| 39 | `lemma` | [differentiable_hurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/differentiable-hurwitzzetaodd.md) | 466 | `result-track:68e92bc97d8ce6b91923aed25b9f7cce5561990af77e291018d26c0685228223` |
| 40 | `def` | [sinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinzeta.md) | 473 | `declaration-track:87217de681b5e0aabbeba44d57f9701324094019d9e2967c2b16d823a072d8f7` |
| 41 | `lemma` | [sinZeta_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinzeta-neg.md) | 476 | `result-track:8c4fc973831bb66cc01ae1e36bd472112d25f100bbf548e6c55440ef5f07d807` |
| 42 | `lemma` | [differentiableAt_sinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/differentiableat-sinzeta.md) | 481 | `result-track:1d89e9f5ed1ede6656f1f426cff9bc1ec4bf5319bb609458ce24481429a0f5ce` |
| 43 | `theorem` | [hasSum_int_hurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-hurwitzzetaodd.md) | 487 | `result-track:62ff58cfa9e00d1681f55ffe31da3c2e32e9d76bae596f1b12867f7156cc2626` |
| 44 | `lemma` | [hasSum_nat_hurwitzZetaOdd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-nat-hurwitzzetaodd.md) | 495 | `result-track:7c503cc8263e49550d3ab0008d9ae41ea256799475b199461c24e28aecfb5e45` |
| 45 | `lemma` | [hasSum_nat_hurwitzZetaOdd_of_mem_Icc](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-nat-hurwitzzetaodd-of-mem-icc.md) | 505 | `result-track:c07dfef47128a976abc450721faac94f15975fa977f27c4246e4cb66c872e998` |
| 46 | `theorem` | [hasSum_int_sinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-int-sinzeta.md) | 519 | `result-track:72b2de9a61e27134444d5d6ff08e7c7c80b84de1346fc603a6215704ca54fe7c` |
| 47 | `lemma` | [hasSum_nat_sinZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hassum-nat-sinzeta.md) | 528 | `result-track:27fe00f7ac214ebe3bfc06aaf21b745f08dad7ee150eb0759e7049a4584911b6` |
| 48 | `lemma` | [LSeriesHasSum_sin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/lserieshassum-sin.md) | 542 | `result-track:77d40a387d3e9821c24c69f9804188d638b7e8165b342e4141aaa768420f88e4` |
| 49 | `theorem` | [hurwitzZetaOdd_neg_two_mul_nat_sub_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hurwitzzetaodd-neg-two-mul-nat-sub-one.md) | 547 | `result-track:66294cb3d0405da2e3c8824e05f6f511c4006a6b29078e1a013a8727960d0c87` |
| 50 | `theorem` | [sinZeta_neg_two_mul_nat_sub_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinzeta-neg-two-mul-nat-sub-one.md) | 552 | `result-track:1ce9a11631b1dfe04dc7d46b34ad549d8375e329bb97a5d5ae9356941a76f709` |
| 51 | `lemma` | [hurwitzZetaOdd_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/hurwitzzetaodd-one-sub.md) | 558 | `result-track:990d54aa8307feff97b71f66ad1fa179381279f1b0a8541f019d4fbf1898a1e2` |
| 52 | `lemma` | [sinZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaOddNamespaced.lean/declarations/sinzeta-one-sub.md) | 566 | `result-track:46f2ab328ebbdeb374f858203a8cacceae4276736aef6a295b273ab20ce2f80f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d003a0f50d2d03cd45b0b9b698346fc23fd0d2bbd00629b36ab76eb9474eb144 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
