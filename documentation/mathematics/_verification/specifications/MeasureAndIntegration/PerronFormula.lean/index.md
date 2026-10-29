# Verification target: Perron Formula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PerronFormula.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PerronFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Uniformly` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ResidueCalcOnRectangles` — import line 5; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Wiener` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zeroTendstoDiff](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/zerotendstodiff.md) | 32 | `result-track:8cefc5dbe2307b589f75af32ada5bed09eb63cf7000ecc61d2ebc9fe779831a8` |
| 2 | `lemma` | [RectangleIntegral_tendsTo_VerticalIntegral](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/rectangleintegral-tendsto-verticalintegral.md) | 51 | `result-track:71d5b0df05e2c358cfdd7557c900929f2f521e106cf0f08b35d2f361f3acfbd5` |
| 3 | `lemma` | [verticalIntegral_eq_verticalIntegral](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/verticalintegral-eq-verticalintegral.md) | 67 | `result-track:55dc540b13ab7347eba4dec7ecae2aad415ce1adbd8958719e23e1a69680570f` |
| 4 | `lemma` | [verticalIntegral_sub_verticalIntegral_eq_squareIntegral](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/verticalintegral-sub-verticalintegral-eq-squareintegral.md) | 79 | `result-track:eb8c2eee0f5e86945d4051c018abc257055205fb93097dd6e4c2e4a80ed46e29` |
| 5 | `lemma` | [RectangleIntegral_tendsTo_UpperU](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/rectangleintegral-tendsto-upperu.md) | 121 | `result-track:8adb6f9ff0a0b5d2e43f851edcb20d376d21fd1eeb38f68557994c9dc27bfe0e` |
| 6 | `lemma` | [RectangleIntegral_tendsTo_LowerU](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/rectangleintegral-tendsto-loweru.md) | 152 | `result-track:c6f2dab1563dbf4d61919798adfcad2cc76be0effb9bd72284e60cb70c48b41d` |
| 7 | `lemma` | [limitOfConstant](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/limitofconstant.md) | 200 | `result-track:cd1681fce3d796c3fc4984d708b18313485bd4b9f8c762b372ec2dda2d25da7b` |
| 8 | `lemma` | [limitOfConstantLeft](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/limitofconstantleft.md) | 222 | `result-track:7f19323485e930af5d90c607e8d806ea5b873800734a78f46a4f8dba73219ddb` |
| 9 | `lemma` | [tendsto_rpow_atTop_nhds_zero_of_norm_lt_one](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/tendsto-rpow-attop-nhds-zero-of-norm-lt-one.md) | 243 | `result-track:6e0dea5881725036227d441aecc0afb1d78481bf31e4f6f8f7432efecc56cf57` |
| 10 | `lemma` | [tendsto_rpow_atTop_nhds_zero_of_norm_gt_one](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/tendsto-rpow-attop-nhds-zero-of-norm-gt-one.md) | 256 | `result-track:a0a34b04bb4bf777533fbedc8ef678b03d81cc9be0b5cc4c8b866dc1163c2851` |
| 11 | `lemma` | [Complex.cpow_eq_exp_log_ofReal](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/complex-cpow-eq-exp-log-ofreal.md) | 271 | `result-track:c58319080ff9bd27833fc662b4f31ec6d0934018400be64125263cd159b33d1c` |
| 12 | `lemma` | [Complex.cpow_neg_eq_inv_pow_ofReal_pos](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/complex-cpow-neg-eq-inv-pow-ofreal-pos.md) | 276 | `result-track:00986c92bfb2dee027ad3ee1bdd9af97166e5411290430a63b8094826ee2486f` |
| 13 | `abbrev` | [f](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/f.md) | 285 | `declaration-track:30a57d0bf24cafa0e0b53971399636c3b7d2f0ace76a7ac6d5177272bc92552c` |
| 14 | `lemma` | [f_mul_eq_f](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/f-mul-eq-f.md) | 288 | `result-track:9293f5d7d2269f0a0c74e8519be73c21ce6a84be70a7cbb8d1c8edc760e0756e` |
| 15 | `lemma` | [isHolomorphicOn](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/isholomorphicon.md) | 310 | `result-track:28b5bb7921c0a72c25602ca2b4d3e620aca45425e6b36ad3d4869549c39ccca5` |
| 16 | `lemma` | [integral_one_div_const_add_sq_pos](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/integral-one-div-const-add-sq-pos.md) | 325 | `result-track:2bf4b059adab115e768920349f27e769e9c8c2b726c252cf1833ba2f52bc2d41` |
| 17 | `lemma` | [Integrable.one_div_const_add_sq](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/integrable-one-div-const-add-sq.md) | 336 | `result-track:5c125895fac1de65bbf29d276fd511d67610ec6c606d401fe9a149b1199c64d6` |
| 18 | `lemma` | [integralPosAux'_of_le](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/integralposaux-of-le.md) | 340 | `result-track:7a62b08faca240ddd2ed51f697503c45ab6718a71660363b1be9529968067b24` |
| 19 | `lemma` | [integralPosAux'](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/integralposaux.md) | 367 | `result-track:4b52e14eac7efde7a0999371eb9dde33cda9a1f2e01afa7e75c9a81a7935f688` |
| 20 | `lemma` | [integralPosAux](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/integralposaux-source-edition-2.md) | 383 | `result-track:b192f84e28c3f27b6e35e94a353750491c781e321f673025c4f25b51d3b25954` |
| 21 | `lemma` | [vertIntBound](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/vertintbound.md) | 400 | `result-track:11a76fd2822976ba5195840fe359fa404065f4d94a9dd4d2196694b4706e7a22` |
| 22 | `lemma` | [vertIntBoundLeft](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/vertintboundleft.md) | 444 | `result-track:0ae129f0a12e8b16f82027d89be71161ff20e0887ab8d5b0ec500aa27135fdf0` |
| 23 | `lemma` | [map_conj](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/map-conj.md) | 490 | `result-track:69d96f8cae3f59a77bf0d725aca2a14181311398c7b1315264da132df3b68eb0` |
| 24 | `theorem` | [isTheta_uniformlyOn_uIcc](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/istheta-uniformlyon-uicc.md) | 497 | `result-track:432311ad6141ae3aef3db876f0b5c827b8f1d5fac21c8a3efcf875428200b7bc` |
| 25 | `theorem` | [isTheta_uniformlyOn_uIoc](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/istheta-uniformlyon-uioc.md) | 520 | `result-track:bf197622ef74a30dcb4422d84f5e8adcc205e07ab002b66f156dd8b7a3bc490b` |
| 26 | `lemma` | [isTheta](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/istheta.md) | 527 | `result-track:96e49351cb151e4a6bfb646bc5c9fb237f29f9900a94250900095f616dad212d` |
| 27 | `lemma` | [isIntegrable](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/isintegrable.md) | 541 | `result-track:a1d8bc3172f72b298179e182120ee55793dc058f44d5ca175c1a64c4c68c2208` |
| 28 | `theorem` | [horizontal_integral_isBigO](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/horizontal-integral-isbigo.md) | 560 | `result-track:b791bfd7e5b861736e9b70c197a42c375501821f51ad475da2113a99644feb9f` |
| 29 | `lemma` | [tendsto_zero_Lower](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/tendsto-zero-lower.md) | 585 | `result-track:9b28f093753a126b9754419c6856f60871dbfebaab6e5cdcb9de31437549757d` |
| 30 | `lemma` | [tendsto_zero_Upper](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/tendsto-zero-upper.md) | 605 | `result-track:69e6e70369e41a8c05d6a2e561e8096e8035297ad386188ffbc1904e9030efd8` |
| 31 | `lemma` | [contourPull](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/contourpull.md) | 613 | `result-track:0864263d0ab85c504bb92ddc62a05467e619e9123e478d904d41495a8200cbfe` |
| 32 | `lemma` | [formulaLtOne](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/formulaltone.md) | 638 | `result-track:85227a040400feb8b7e96fbb358d5256b85d542768191d2cf3d2da61b6d70473` |
| 33 | `theorem` | [HolomorphicOn.upperUIntegral_eq_zero](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/holomorphicon-upperuintegral-eq-zero.md) | 676 | `result-track:efbffe2f9d17b7e86690dfc198156d1865ea67f51d56cdb37cf2bfce188d3072` |
| 34 | `theorem` | [HolomorphicOn.lowerUIntegral_eq_zero](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/holomorphicon-loweruintegral-eq-zero.md) | 689 | `result-track:e8993cce9ce59f6a8f0624fbb4f98f02f00b60ab4ccf6a35c8d4a9915bcadc72` |
| 35 | `lemma` | [sPlusOneNeZero](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/splusonenezero.md) | 703 | `result-track:74f85423030fa30ae1bfb1a492f852829c2c615a5f45b679f1ee42aec4fed3de` |
| 36 | `lemma` | [keyIdentity](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/keyidentity.md) | 718 | `result-track:cb1d9d0ae4c2edc6fed07b17766c997186a2c5a660c3a1be1261bc29c430c05d` |
| 37 | `lemma` | [_root_.Filter.Tendsto.eventually_bddAbove](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/root-filter-tendsto-eventually-bddabove.md) | 727 | `result-track:578bdb429bea84bbb00e82eda11945ff0ff78a5c60377d5e165eaa88b1ddb34f` |
| 38 | `lemma` | [bddAbove_square_of_tendsto](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/bddabove-square-of-tendsto.md) | 736 | `result-track:1af2325dd1f3b192b94cfeb6f41be2514d74311f565e675b4d612a1e9d0e4936` |
| 39 | `lemma` | [diffBddAtZero](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/diffbddatzero.md) | 762 | `result-track:a03f88cfda4201b9ca18785bdbbe8ec52580aa258a9aae6ea92d091f6a52ad36` |
| 40 | `lemma` | [diffBddAtNegOne](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/diffbddatnegone.md) | 808 | `result-track:8ff828956b192cdcc80f745421b9ecb05be2e689dcb87e4483eb2f979aba3339` |
| 41 | `lemma` | [residueAtZero](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/residueatzero.md) | 845 | `result-track:8e205745c7420bc35b8889bf359e20a389857146798670ae88e1ea9a4a4d4fe8` |
| 42 | `lemma` | [residueAtNegOne](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/residueatnegone.md) | 888 | `result-track:a06cc87574a7fb16d1838ba6b7e039253ea662d206502134d0cd547862d36f3a` |
| 43 | `lemma` | [residuePull1](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/residuepull1.md) | 935 | `result-track:9b2025cd5f7789c145300899a22d323d5839e46d3df0b9b8a9c4b5c5709db899` |
| 44 | `lemma` | [residuePull2](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/residuepull2.md) | 969 | `result-track:021bec980c28076accf0840efe546dda52fe6960d3864115f2cf39b8bcaae9ab` |
| 45 | `lemma` | [contourPull3](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/contourpull3.md) | 1005 | `result-track:2c97e6444880b08a03c78947b96488f7bf554d08e430aec343ab9fa141d976f2` |
| 46 | `lemma` | [formulaGtOne](../../../../MeasureAndIntegration/PerronFormula.lean/declarations/formulagtone.md) | 1026 | `result-track:0c661ecb46e5de1a80fef661cd2f4250f073079ef56461e7eb2b3db28dfd3ceb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57f95a4ad145cf1e9451d07ea1c82eb93119ea49238dc5facadcc248359ab96f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
