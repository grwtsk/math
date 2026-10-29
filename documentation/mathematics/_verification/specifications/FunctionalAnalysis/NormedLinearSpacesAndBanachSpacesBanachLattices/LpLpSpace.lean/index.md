# Verification target: Lp Lp Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
  "lexical_observation_count": 148,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95065bf79d4606e53b195edd84b9761a1242ddcc`.

Source path: `GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalitiesPow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Memℓp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-source-edition-2.md) | 74 | `declaration-track:affb16f7e116634e4a0b7c60f55f4e9edb680ed8abad295d5ec91b9c5f8e9385` |
| 2 | `theorem` | [memℓp_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-zero-iff.md) | 79 | `result-track:301ec6596bab8e9764e716690810869a2e353737a429b9cae07910857505b92e` |
| 3 | `theorem` | [memℓp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-zero.md) | 83 | `result-track:9e6c9b48ff797730021c7dc9f53d751fa5215a943f2c3b6a34221b0e61a6cb86` |
| 4 | `theorem` | [memℓp_infty_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-infty-iff.md) | 86 | `result-track:4b312692b563fd48a7b12b24cfc83a851ceef07c241752c3e247d9b3ca71f1f8` |
| 5 | `theorem` | [memℓp_infty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-infty.md) | 89 | `result-track:852b79d2fb318aef5eb79fe4658ef2afb2b5ab474b467387396497e528034343` |
| 6 | `theorem` | [memℓp_gen_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-gen-iff.md) | 92 | `result-track:bc90c63de88b80196b8047bef8b9264240f2810d0f60aa846c733071d45c3c7a` |
| 7 | `theorem` | [memℓp_gen](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-gen-source-edition-2.md) | 98 | `result-track:4ee0a5bdcac06505fd6bee7378c45058a42a6e84e035dd2665f709d9fee27802` |
| 8 | `theorem` | [memℓp_gen'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-gen.md) | 108 | `result-track:1cf0f3837e43a0a714a4a4c1e61ddcb35e4928ae617aef86d4f8a361a8902b04` |
| 9 | `theorem` | [zero_memℓp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/zero-mem-p-source-edition-2.md) | 120 | `result-track:e01a51ec948b7ffc44b339e4ae6a78fccb95fd70f40bf8f817b2e1a8090e441d` |
| 10 | `theorem` | [zero_mem_ℓp'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/zero-mem-p.md) | 130 | `result-track:9c8d0687f9093ef9537a5b22dbfebeb6de0ead42193cb28c288ac7571ebedccb` |
| 11 | `theorem` | [finite_dsupport](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/finite-dsupport.md) | 135 | `result-track:8c1b26d786a774f23594d6ae1fd27a207b33144393833cb62a70820842a76eca` |
| 12 | `theorem` | [bddAbove](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/bddabove.md) | 138 | `result-track:1ddeb637eddedbfcea3af12f2b16631ef476488ba84d432c0910ed85f325b06c` |
| 13 | `theorem` | [summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/summable.md) | 141 | `result-track:344e2519fe8ba409e0403f0cce07d375bdd42d468d9ed7276afefbb76e5a8284` |
| 14 | `theorem` | [neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/neg.md) | 145 | `result-track:4747c7f607a83dadc54c2f2a317d95035c7fdbf204f5827e9928cf7058ddc6d0` |
| 15 | `theorem` | [neg_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/neg-iff.md) | 155 | `result-track:601f35dd51ee3a4152c10124b05a402db477ecf5ed6b0448a924c67d130f2dfd` |
| 16 | `theorem` | [of_exponent_ge](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/of-exponent-ge.md) | 158 | `result-track:007b09463acd0b6fc8d3493a3d3b615dce33da69aeddbad421a95a70c36d9613` |
| 17 | `theorem` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/add.md) | 196 | `result-track:89fcbee4180b1530c0e01622c5adf135d50cbff308930146d54c5aa75e2948a6` |
| 18 | `theorem` | [sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/sub.md) | 223 | `result-track:d0f6dfa34be68a794bce1cc757afc9b5a5e794e2e8d8787f75ec86b6ec057cbc` |
| 19 | `theorem` | [finset_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/finset-sum.md) | 226 | `result-track:217c82b83950d58d1eee64ad773aef72714ff193ec167738e3e923183d5ee584` |
| 20 | `theorem` | [const_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/const-smul.md) | 240 | `result-track:776c66c242be7757728798f92c3c45d63e21ecf6766a4c81a5adbf1dc1edaef4` |
| 21 | `theorem` | [const_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/const-mul.md) | 262 | `result-track:d1b48fc9b3e5d4a8f3cb27be8eeb71868cf7a2c2258d907ef06905c8ed70cf2a` |
| 22 | `def` | [PreLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/prelp.md) | 284 | `declaration-track:2d04eabcf98047afd353cf3ea7d9e9362116a5090fc223fee81a128b38530300` |
| 23 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-7.md) | 287 | `declaration-track:5e4f897f76d4c291caa13def1b05eaafad0c9c30032c5833762c1ac642bff84b` |
| 24 | `instance` | [PreLp.unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/prelp-unique.md) | 289 | `declaration-track:2e1eda2d8f99a0e8aaf7235f54448209635e0fb8563b2a7ef056b33e93feb8d0` |
| 25 | `def` | [lp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/lp.md) | 294 | `declaration-track:f33216499da35d5861aa36bad8c5a546de4d8657c21cb921abedaac2d8852fe2` |
| 26 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-3.md) | 305 | `declaration-track:0f04bf78ce0f7f45168e4a1c6be6819351cf48c8769450214516a10996554e26` |
| 27 | `instance` | [coeFun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefun.md) | 308 | `declaration-track:4c35c5bef1cf8e3f7ff48737b9c284871543d43c9e961fd60e40c503c65b1417` |
| 28 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/ext.md) | 312 | `result-track:7ae60f3e704f9ca9fc72e5c10d02d819b6e015321e97b98f19cdf625d97d280e` |
| 29 | `theorem` | [eq_zero'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/eq-zero.md) | 315 | `result-track:289baa2400643184f2ff97e642e1c06e8ce29866a404b9bd1912d24baa830c29` |
| 30 | `theorem` | [monotone](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/monotone.md) | 318 | `result-track:e447bfd8947939cba13ce1a7ee74225226083febbc3f781096d6d728fdf3f9a7` |
| 31 | `theorem` | [memℓp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p.md) | 321 | `result-track:22c05559e447f797d595b740ad9d6a473478511bdf5444291e76d54cb3fcca74` |
| 32 | `theorem` | [coeFn_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-zero.md) | 327 | `result-track:4aa7323be012238277e7070735ecd6dc1da4699a9bc81c485826ed8e5b113230` |
| 33 | `theorem` | [coeFn_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-neg.md) | 333 | `result-track:3c52662e1942833a55716f5e46d4a565d2ab21ea41320552afee1cbe03c3ad0a` |
| 34 | `theorem` | [coeFn_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-add.md) | 337 | `result-track:be8d8ca78453f2afdf81e1f7155aa6fce87b9a5dce150b064e1e966c7fa6bbd9` |
| 35 | `def` | [coeFnAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefnaddmonoidhom.md) | 342 | `declaration-track:06b5514c19b0f1fdc40414bf32f4132a24d4aaafbddc0a966635c5c44fc9de45` |
| 36 | `theorem` | [coeFnAddMonoidHom_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefnaddmonoidhom-apply.md) | 347 | `result-track:81f976105417766f6c727ff8260536f83b420e4b39402b53a9ec77e369e3bde9` |
| 37 | `theorem` | [coeFn_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-sum.md) | 349 | `result-track:c12d1ea46b14a1876495011ec38e7331b69e9f3579eab73a6aab7f49398ef0c8` |
| 38 | `theorem` | [coeFn_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-sub.md) | 354 | `result-track:5575c5bbdccb0ee6d1bd3e5e8937fcd352278dfe879bea425a785f902ad12387` |
| 39 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:1e43d9d81a3aec6412b573ce18d480114c2490d22111b5e89e113a9152de102b` |
| 40 | `theorem` | [norm_eq_card_dsupport](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-eq-card-dsupport.md) | 364 | `result-track:85d7ce9273a4d76e7d0b703db694839f0f8e88ac4ceb51c47dc1e862f84b7d64` |
| 41 | `theorem` | [norm_eq_ciSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-eq-cisup.md) | 367 | `result-track:0a40852c30a035206dc05821229b31f72b93290c80180141fe47857ed50d2f37` |
| 42 | `theorem` | [isLUB_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/islub-norm.md) | 369 | `result-track:2f96d3bf4e8d02002cf48e427ade251e96fd6980b9272799dcab59c137601529` |
| 43 | `theorem` | [norm_eq_tsum_rpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-eq-tsum-rpow.md) | 373 | `result-track:f60f2da4fc01d7f68cfc9704749884d141fc611e3bedb9bf181d8175aa501865` |
| 44 | `theorem` | [norm_rpow_eq_tsum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-rpow-eq-tsum.md) | 379 | `result-track:8ba0f411ce95ecbb149b7e48657ef3b626e9c9187972aa793d5ff9f1c8cacc77` |
| 45 | `theorem` | [hasSum_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/hassum-norm.md) | 389 | `result-track:e7a6eb8108fc7beef151ad0ded7e3e437bc1d21963eaf9756783762b54898b56` |
| 46 | `theorem` | [norm_nonneg'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-nonneg.md) | 394 | `result-track:f9a38883f2036535124b1af7efa3f3b30c60a050b642d2f2d5c04564e222ff79` |
| 47 | `theorem` | [norm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-zero.md) | 407 | `result-track:82a381315ec8649eeeed41d13a38deb9217bbd29c0dc6d35dc45f96f663e8b3c` |
| 48 | `theorem` | [norm_eq_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-eq-zero-iff.md) | 415 | `result-track:902365e8ea1daf172863f719ecaefd370c13f7c2c4bb1ac131d02fbe6b7a7893` |
| 49 | `theorem` | [eq_zero_iff_coeFn_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/eq-zero-iff-coefn-eq-zero.md) | 438 | `result-track:86d51d65233470f5b791dd42c7fb076b9e80980cfc4cf050fe1c866a529f766d` |
| 50 | `theorem` | [norm_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-neg.md) | 442 | `result-track:b8f34bb5b516998c7e4de84fd01dd6569d9fd67a8af5cfd50cc052c3ec90986c` |
| 51 | `instance` | [normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/normedaddcommgroup.md) | 454 | `declaration-track:e55b02d4c65ecb645fe975f738b385f56adbb950f1b8ef9d5c9da1b26c5aa023` |
| 52 | `theorem` | [tsum_mul_le_mul_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/tsum-mul-le-mul-norm-source-edition-2.md) | 487 | `result-track:a6d521e35c6e7cff4f19801df70817f4f88e5930f422cb8d5cf0c431d928c591` |
| 53 | `theorem` | [summable_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/summable-mul.md) | 499 | `result-track:f37cb793de3f4b9bb405fb5d9ea7e0f285e09792a6d3517769ca0376df2951a4` |
| 54 | `theorem` | [tsum_mul_le_mul_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/tsum-mul-le-mul-norm.md) | 503 | `result-track:48efe66c26a4d6f186ea08838c02c080a6059d27634a14ede73b93e26cb58d07` |
| 55 | `theorem` | [norm_apply_le_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-apply-le-norm.md) | 509 | `result-track:751ac07edf7f47396abce3282815d620e7723f74ec97ab3e53f0c6451c476775` |
| 56 | `theorem` | [sum_rpow_le_norm_rpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/sum-rpow-le-norm-rpow.md) | 518 | `result-track:5847d652867111db203a721a812fe9836bb24c1504a0fbbd40ddfc8328b6bef8` |
| 57 | `theorem` | [norm_le_of_forall_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-le-of-forall-le.md) | 525 | `result-track:52f196db28f14f3c758792aeb546dd6fdc79b69a2f93a8bcad231f78864bf4a2` |
| 58 | `theorem` | [norm_le_of_forall_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-le-of-forall-le-source-edition-2.md) | 531 | `result-track:653a8987f2fd1297fb510ea99d82e59ee006c596993e1ef8e58a7a050809232f` |
| 59 | `theorem` | [norm_le_of_tsum_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-le-of-tsum-le.md) | 537 | `result-track:316c0e54510853f17ec531eef7da8c74cf0ee860abc80457341035e5a8431258` |
| 60 | `theorem` | [norm_le_of_forall_sum_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-le-of-forall-sum-le.md) | 542 | `result-track:5b283bbb481e7574eb39a249d366218adc514d59159d4b17efddabb5a4e99ccb` |
| 61 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-16.md) | 553 | `declaration-track:dca6da5c7d0180c1e6571286cff4ea1751e3fa490896b171054c823d36eea253` |
| 62 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-15.md) | 556 | `declaration-track:c2f94dfc14d6e20b9c2a69220681fc8c31335da8db52c2ddd212423fb0cdf833` |
| 63 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-10.md) | 559 | `declaration-track:93a4451b90b9ff7e88eb36ec2a6525397975424944c211eab8e9c0b07438d94a` |
| 64 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-2.md) | 562 | `declaration-track:041ce4ae9c80224e96e2755944e6530909171161174ab2b7824b6aab797606e0` |
| 65 | `theorem` | [mem_lp_const_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-lp-const-smul.md) | 567 | `result-track:50f3d7565daf1f20ba5b6bda7eee26bb068bbe9c84f576d001d5e0e9f4f777c8` |
| 66 | `def` | [_root_.lpSubmodule](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-lpsubmodule.md) | 574 | `declaration-track:aed896968e18a4164a878484d090875895ecdd3f140516d7c37eb9de962d4068` |
| 67 | `theorem` | [coe_lpSubmodule](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coe-lpsubmodule.md) | 579 | `result-track:4eff0a4003654e75a684cb6ca08e97bd257606630d48433a29594ca14059fe40` |
| 68 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-8.md) | 582 | `declaration-track:5e5b90b255b21a0ea838c051f728538654f7b54e85241fc76bfeba58a4d25f45` |
| 69 | `theorem` | [coeFn_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-smul.md) | 586 | `result-track:c07478e6add51ba1fe1c52764c1af2d3a61cbb1463666461abbedcc089103cf9` |
| 70 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-12.md) | 589 | `declaration-track:95fe05f4bed3aeca5a7152d24156f5cf317314c557f80d4a74b8344d86566ae0` |
| 71 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance.md) | 592 | `declaration-track:0085a94e956e99f801233cca480faeb61ee0a349831972848d15c0527da83562` |
| 72 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-17.md) | 595 | `declaration-track:f8e101c10fad21477ec27d369dfd18ac62d4b22f7df0cc728eae32d8aebfd9f1` |
| 73 | `theorem` | [norm_const_smul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-const-smul-le.md) | 598 | `result-track:1a62c35d5627be7093665c0651ed834dd9e480e5c587ff3776a9f1ff33239c77` |
| 74 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-9.md) | 631 | `declaration-track:75a1d9247138455f002e83845772c5154fc6721ea250f844519d1ef26bd90a47` |
| 75 | `theorem` | [norm_const_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-const-smul.md) | 640 | `result-track:5fa70b93366809c71f916ae60aaf65d4d4c3593e2e91990ab4735d892326abb5` |
| 76 | `instance` | [instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instnormedspace.md) | 653 | `declaration-track:8b765e574bc0a84e7c41ac214d1df16d6cafc464b88f5ba42abb70d2519e41e4` |
| 77 | `theorem` | [_root_.Memℓp.star_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-mem-p-star-mem.md) | 662 | `result-track:9a990b6bd652bfb5d7bffe5645725c227ce2a6a6e736ebb573232dc5be0cd6a0` |
| 78 | `theorem` | [_root_.Memℓp.star_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-mem-p-star-iff.md) | 672 | `result-track:4fa9de69e4d75e217f4fe7b91097927badbd9aee373ad6576c2fd127071e3115` |
| 79 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-6.md) | 675 | `declaration-track:4ffe7a030d734c92b35ed6599d2668aa6726d5961d3d9f0e4656e281246cec85` |
| 80 | `theorem` | [coeFn_star](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-star.md) | 679 | `result-track:535edce52b2f4cf1b28e56812d125fc7bb20e5265874fe781e9d3ea2e87bd04b` |
| 81 | `theorem` | [star_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/star-apply.md) | 683 | `result-track:f410932dbd5201dfe27d7cf85375239587d231e3786c125876e11032f4d79a7f` |
| 82 | `instance` | [instInvolutiveStar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instinvolutivestar.md) | 686 | `declaration-track:818fed8ee0ab9e2db0a2771be08662c00eeaf1db34318345a6e556aae3745a67` |
| 83 | `instance` | [instStarAddMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inststaraddmonoid.md) | 689 | `declaration-track:2888cd963bbe8976b219296987fdffb2ffdf6205bbdf40dc16444a3190d9ec6b` |
| 84 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-13.md) | 692 | `declaration-track:b70e3956df27d60348d05d4af6c9c3d9cecd8c4d34481d30d6237eaaf137fbe6` |
| 85 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-11.md) | 704 | `declaration-track:956ff102ad2cbfd6abc53b552ef2d9fb9daa02fcf16111de97c65efc44990365` |
| 86 | `theorem` | [_root_.Memℓp.infty_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-mem-p-infty-mul.md) | 713 | `result-track:c38964b20371b43c7e5ae7fa810b6112d4d26c6df3fd791203b28b13ce500dac` |
| 87 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-5.md) | 725 | `declaration-track:2fa3ed00161c245b305966b3523032bcf2980da9a0d6cafbaee8b3fdf6d947d8` |
| 88 | `theorem` | [infty_coeFn_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-coefn-mul.md) | 729 | `result-track:1108afcb5204457aefb01a2b5866f634eeae6a9b1c8d5bb448a476ab4e4eee83` |
| 89 | `instance` | [nonUnitalRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/nonunitalring.md) | 732 | `declaration-track:ac3925361c4161aa5710c747b1cc0d8e57c6a8a824a11a3708a4b53d240c0d4f` |
| 90 | `instance` | [nonUnitalNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/nonunitalnormedring.md) | 736 | `declaration-track:e8b8a280ebc81c3d81b623a3eab06ddfde930db914ed89e4904854014b7b915e` |
| 91 | `instance` | [nonUnitalNormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/nonunitalnormedcommring.md) | 743 | `declaration-track:9b5ba7dd456cfcab1f25c67e5f3b4256d9e7ea10909672398eec55dfbde38c54` |
| 92 | `instance` | [infty_isScalarTower](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-isscalartower.md) | 748 | `declaration-track:f8a51ae9fefe7ce4f154f82e3c710ec788579f7bcb6a2b9b5114cc349ad42582` |
| 93 | `instance` | [infty_smulCommClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-smulcommclass.md) | 752 | `declaration-track:fabbde8e537e80e0c22a8699cbc3fb31f4e33b018b672120c54c8253ac587104` |
| 94 | `instance` | [inftyStarRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftystarring.md) | 760 | `declaration-track:08d6685cfb957efcf59cfa6a6c2016be9a8791e55e0c8a451dfacd44d5173250` |
| 95 | `instance` | [inftyCStarRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftycstarring.md) | 764 | `declaration-track:c92fcc55604b55f1b9f00421f86b4fa39c9b1fbd60974ad354064a45628138e0` |
| 96 | `instance` | [_root_.PreLp.ring](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-prelp-ring.md) | 779 | `declaration-track:2ce4e5bbff2b92342be86edaed5de4bfed9474bf115e3a66bc81cfdbfc9d4b10` |
| 97 | `theorem` | [_root_.one_memℓp_infty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-one-mem-p-infty.md) | 784 | `result-track:0ce6c17bb963a4f3009f7c61c98aaf8c1c2af763182c69202b907f4e92a9365a` |
| 98 | `def` | [_root_.lpInftySubring](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-lpinftysubring.md) | 790 | `declaration-track:19810df7674fc8f28a756404a282d33e5fcd42e80532a3e6683abf19ac3fe819` |
| 99 | `instance` | [inftyRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftyring.md) | 796 | `declaration-track:f63039c8c9489b900528d3dc37379566c5bf9da9aa95af0033b24326ed4a017c` |
| 100 | `theorem` | [_root_.Memℓp.infty_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-mem-p-infty-pow.md) | 799 | `result-track:6c15212a590bc588796eb3e321b653675f69f61d9063b7c9d5ffb0e2d82f8db1` |
| 101 | `theorem` | [_root_.natCast_memℓp_infty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-natcast-mem-p-infty.md) | 802 | `result-track:7b06a064a98a58935c20fe7092a36939eec044f1dcc5456e0b87fad29bd94b65` |
| 102 | `theorem` | [_root_.intCast_memℓp_infty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-intcast-mem-p-infty.md) | 805 | `result-track:ea6811ba6ca0fa37ab69a65a71591a74fc015567b3d23956bbb2fe24eea6953c` |
| 103 | `theorem` | [infty_coeFn_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-coefn-one.md) | 809 | `result-track:75c850ac4fd76b2f0ca02d93eab60bd56ae8f61d468d56826073093f15e7ab79` |
| 104 | `theorem` | [infty_coeFn_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-coefn-pow.md) | 813 | `result-track:42e097178f409f1939c28e4e38780afc7971c91174cdffc74f76387b2e1c55f1` |
| 105 | `theorem` | [infty_coeFn_natCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-coefn-natcast.md) | 817 | `result-track:21633fb55d1d4180306f649486d688121ffe10f2d54e7c31ed3565cac018cd7d` |
| 106 | `theorem` | [infty_coeFn_intCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/infty-coefn-intcast.md) | 821 | `result-track:5febb6a948076d54e98e5fadffb2824b22accfe9a447009d5d67f1e1d849b704` |
| 107 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/instance-source-edition-14.md) | 824 | `declaration-track:b9b45abac61bd6e017e500df118a38212f9e47c16e1499ab9fe936edeed8f73a` |
| 108 | `instance` | [inftyNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftynormedring.md) | 827 | `declaration-track:15efca85e9224f97043c58e52d57a8758f5fbdcfd9a503c9768a164222770185` |
| 109 | `instance` | [inftyNormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftynormedcommring.md) | 836 | `declaration-track:077667aef64c7f41e4539f96a64c4c66380a566142a4aacfb04f5a80cac12e49` |
| 110 | `instance` | [_root_.Pi.algebraOfNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-pi-algebraofnormedalgebra.md) | 847 | `declaration-track:3063084050beaec0e5bb2a1c96d2aa5050b20daceaa736aa4101758178c43907` |
| 111 | `instance` | [_root_.PreLp.algebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-prelp-algebra.md) | 850 | `declaration-track:418d30d1379cc1120d7fa094add088e0d90d676cfdb92aacc02aa06ef3945d94` |
| 112 | `theorem` | [_root_.algebraMap_memℓp_infty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-algebramap-mem-p-infty.md) | 855 | `result-track:a486670d4d90e5de1f6cc88b43bf4cdd91eba3f9b6672adf59f5e3a9a53bf19f` |
| 113 | `def` | [_root_.lpInftySubalgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/root-lpinftysubalgebra.md) | 863 | `declaration-track:e41ef073b05b547896fb3326c77a41abd42c5a34f08e425e98495c0c4aa15846` |
| 114 | `instance` | [inftyNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/inftynormedalgebra.md) | 870 | `declaration-track:9d2d4e3840f331f9abda9e043bdcfa90d9a7ad490938688430946517b1298210` |
| 115 | `def` | [single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single.md) | 881 | `declaration-track:f3da1b70bcd8df59b7f299b0b375add84df605b332395be5d16fc35a30ee1471` |
| 116 | `theorem` | [coeFn_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/coefn-single.md) | 893 | `result-track:67924f4fc3234300b35cc4a17f22f4a8e5cad6ccbeadafa6f6c9009a89c28829` |
| 117 | `theorem` | [single_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-apply.md) | 897 | `result-track:1672f2171048d3e9124061ff805d927adf72744510c6898c97ce349a58bac794` |
| 118 | `theorem` | [single_apply_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-apply-self.md) | 901 | `result-track:54df3fdf8a570cbc064c8d46c4a8dea596c6ba909c2a7de4f2792d3da6e2698f` |
| 119 | `theorem` | [single_apply_ne](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-apply-ne.md) | 904 | `result-track:c6eb5455d5b1306a3ebd606feee3ff6211022f3c70d85dda0bce2e35df1450b1` |
| 120 | `theorem` | [single_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-zero.md) | 909 | `result-track:fedde45a218e6a5beb61ed80a4d361680bd626cc5c5b8bf7702fde2e7fbc51ff` |
| 121 | `theorem` | [single_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-add.md) | 914 | `result-track:5c6e6760f8d85dd9951581953518e8b99d70cf5787aec1fd8ba81f6d392c3579` |
| 122 | `def` | [singleAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/singleaddmonoidhom.md) | 920 | `declaration-track:e3bc40d6bb5e5b9dd5a95b14d94c98786bcd24e951b075a33a10b6f3a6b9c153` |
| 123 | `theorem` | [single_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-neg.md) | 926 | `result-track:bc70c587c0ae4f68c8720f259ddf676d1786e4b9e575de1161585bcff8db9f5e` |
| 124 | `theorem` | [single_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-sub.md) | 930 | `result-track:e1734257cfd9bbf3eaac30710b293095ee435454265b3b1e8b3010c4e461dc4d` |
| 125 | `theorem` | [single_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/single-smul.md) | 935 | `result-track:d926374e416dcd35c3e8bcb601a9177a69a3eb4034929ff2dfa593d80c17a560` |
| 126 | `def` | [lsingle](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/lsingle.md) | 941 | `declaration-track:26f01e8296eb533bca9f666a754af0c9d29f97db42b1ea1b98c714f94497335d` |
| 127 | `theorem` | [norm_sum_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-sum-single.md) | 946 | `result-track:04ae5508d121924ede1ae1ba554931a850560fa5c701ab5629b67e9b162637f6` |
| 128 | `theorem` | [norm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-single.md) | 958 | `result-track:9aab569f2adc6cf1501247da3b4c31c6742c2a3e6f031608b480a2de94140d45` |
| 129 | `theorem` | [isometry_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/isometry-single.md) | 978 | `result-track:25aa297b15f6b9812f42513a377428c454b567df705fda1ff4dc61ea9cc42437` |
| 130 | `def` | [singleContinuousAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/singlecontinuousaddmonoidhom.md) | 984 | `declaration-track:c9828d8881b7bc01bb5c7c186507a82ae170c37ee3cd6e1fd05fd27bfa905593` |
| 131 | `theorem` | [singleContinuousAddMonoidHom_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/singlecontinuousaddmonoidhom-apply.md) | 990 | `result-track:50a0a8da1f202508aea5bf6560867fe57f98ef201ff1deb085a225af1ad329ad` |
| 132 | `def` | [singleContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/singlecontinuouslinearmap.md) | 996 | `declaration-track:699ee89e02761af86b37731e028086035d032cc582c5b9f8644f89a335c202a8` |
| 133 | `theorem` | [singleContinuousLinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/singlecontinuouslinearmap-apply.md) | 1001 | `result-track:7585a12cbc2858902b6ea9f4ed87fb2c4b0e8aa2d8fae45c4314a16b4d7f8860` |
| 134 | `theorem` | [norm_sub_norm_compl_sub_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-sub-norm-compl-sub-single.md) | 1005 | `result-track:437dfa96ac784f1d985f53ad4976a232db4e080c2b45abedbae0b15e3acd615b` |
| 135 | `theorem` | [norm_compl_sum_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-compl-sum-single.md) | 1024 | `result-track:d8aef6bd79b7dce7e834c23e63847e74bb5e9c5b715f1ac3ef6d6cb298f16099` |
| 136 | `theorem` | [hasSum_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/hassum-single.md) | 1030 | `result-track:e0daaa773f50ba47f11f1a4c48067e41b6bf1336df51204932297ec7b4b5c8f0` |
| 137 | `theorem` | [ext_continuousAddMonoidHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/ext-continuousaddmonoidhom.md) | 1056 | `result-track:8e6ef430b39da6459bcf2fc329bd7585bf1ceb1ab6f0293fd8b764d913d2b86b` |
| 138 | `theorem` | [ext_continuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/ext-continuouslinearmap.md) | 1073 | `result-track:03c67d2f112128c2ffab3c480fe1f6ef91db6673252b4cdf6d141560e45ba430` |
| 139 | `theorem` | [uniformContinuous_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/uniformcontinuous-coe.md) | 1091 | `result-track:1485092525bba7a829e36c2f240e654fa3d3eb189fe98825e126a4cffbf87efd` |
| 140 | `theorem` | [norm_apply_le_of_tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-apply-le-of-tendsto.md) | 1106 | `result-track:e05460c982dc88e57eee054c331db83712e608b006083ae19b21c074d9ff8f81` |
| 141 | `theorem` | [sum_rpow_le_of_tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/sum-rpow-le-of-tendsto.md) | 1116 | `result-track:5d9c45633cd756670320bb7d425c5856bcf57b8692d3b90e42afa31641fb8e46` |
| 142 | `theorem` | [norm_le_of_tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/norm-le-of-tendsto.md) | 1135 | `result-track:7ac2b8ca18ac8ff0126ea32115fcdadbbc2c4b01428b5c16a329117628c99792` |
| 143 | `theorem` | [memℓp_of_tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/mem-p-of-tendsto.md) | 1148 | `result-track:4a469cf25d54e6ddb1e6d57a59a29760f6347291627af336e6ae25b514fdab51` |
| 144 | `theorem` | [tendsto_lp_of_tendsto_pi](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/tendsto-lp-of-tendsto-pi.md) | 1161 | `result-track:cbe535744ac7ee8b2a10339f1bc7c1a43b56b709f1c00a2f017e259f8b2b6943` |
| 145 | `instance` | [completeSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/completespace.md) | 1176 | `declaration-track:3bb2f77900c4b633b18d71e882f00d285df6869c3b5b01dd348d89077c45f15f` |
| 146 | `lemma` | [LipschitzWith.uniformly_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/lipschitzwith-uniformly-bounded.md) | 1196 | `result-track:208fb2d864d29934f62d7fef614f5ac9b81345fbbbdc84eeceed273a50a42e22` |
| 147 | `theorem` | [LipschitzOnWith.coordinate](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/lipschitzonwith-coordinate.md) | 1210 | `result-track:85c56c6e46662a5b5ee95287a39946e63723818b9dd5afdeaa984420db451037` |
| 148 | `theorem` | [LipschitzWith.coordinate](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpLpSpace.lean/declarations/lipschitzwith-coordinate.md) | 1224 | `result-track:dfac35a741b0d65209ae125cd462b345872f23f439d1177e11b11d031bb0250e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2ce26d8fb4d449bc44e5d29138aa20208c76c86d80827d353ce320da441ca84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
