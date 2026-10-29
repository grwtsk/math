# Verification target: Test Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TestWeight.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TestWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 35; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_inv_one_add_sq_sub](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-inv-one-add-sq-sub.md) | 57 | `result-track:8550eaf785bb498a1bef821b24be88e31857490be748807ce15f98f68e057c7c` |
| 2 | `theorem` | [integral_inv_one_add_sq_sub](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-inv-one-add-sq-sub.md) | 63 | `result-track:42dab729c584fad62290e08c98ce571ed69a7ca108c3bdcc93a4efcc4b69b6ac` |
| 3 | `theorem` | [cauchyConv_pointwise](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv-pointwise.md) | 70 | `result-track:c51c55878c673ea1f41b34962a842872f83fad296b33ecf363f8e0e1f3da24e4` |
| 4 | `theorem` | [cauchyConv_integrable](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv-integrable.md) | 87 | `result-track:9574c3e92b898fd31d7c290ea453d21b0d252638be4b831a9ea51720872f0102` |
| 5 | `theorem` | [cauchyConv_integral_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv-integral-le.md) | 98 | `result-track:7dcc11be4476bacc64ac3d08293cb0939c8b816fe3c8bda557de3c0e716f9e7c` |
| 6 | `theorem` | [cauchyConv](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv.md) | 116 | `result-track:6d826c35e82454d280bbe02ccb35b159d08c8182dd0e5f72e8fa7ddf27b665c6` |
| 7 | `theorem` | [cauchyConv_integral_le'](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv-integral-le-source-edition-2.md) | 122 | `result-track:8e0fb277e819ac11f85080a179ef1b51cbc44f4c6238e1cccf437bbe98d5141f` |
| 8 | `theorem` | [measurableSet_far](../../../../MeasureAndIntegration/TestWeight.lean/declarations/measurableset-far.md) | 128 | `result-track:4a06de4fdf40fc98198db50cddeade71a7d2ae08511e87a0b5b72c7a5a93000b` |
| 9 | `theorem` | [cauchyConv_far](../../../../MeasureAndIntegration/TestWeight.lean/declarations/cauchyconv-far.md) | 132 | `result-track:bdd77fcff64eaf08327f43507eade7e898656a7f88247006aa722a587d26bb9c` |
| 10 | `theorem` | [norm_paperFT_mul_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-paperft-mul-le.md) | 156 | `result-track:8894becacc11d3577ed808d0fd3cac7a1a73eafb56783fd10605f864b07f62ec` |
| 11 | `theorem` | [norm_paperFT_mul_cube_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-paperft-mul-cube-le.md) | 173 | `result-track:65bb25e0a4eae23bcd946bb626358bb8efcabc69d450b46dfe80fe8289a03d2c` |
| 12 | `theorem` | [paperFT_comp_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/paperft-comp-neg.md) | 190 | `result-track:20d8558b4a965ba235ead5ce754256f9a17797bff87f1e1678fe898e481bdf8f` |
| 13 | `theorem` | [Hfn_five_four](../../../../MeasureAndIntegration/TestWeight.lean/declarations/hfn-five-four.md) | 199 | `result-track:f286c1d3dd994f3abd6f3ad4038be664629689de3ef8059831d24452898e687e` |
| 14 | `theorem` | [Hfn_five_four_ofReal](../../../../MeasureAndIntegration/TestWeight.lean/declarations/hfn-five-four-ofreal.md) | 207 | `result-track:650fe8464fc7b6b0b9246a6e2cd77e40408911e57639b62e26417903650cad09` |
| 15 | `theorem` | [Hfn_five_four_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/hfn-five-four-neg.md) | 212 | `result-track:bef788a2d89e3581bdfe73a1512cf6c602ccd90e6918d52ace91b508212a2612` |
| 16 | `theorem` | [line_re](../../../../MeasureAndIntegration/TestWeight.lean/declarations/line-re.md) | 218 | `result-track:638f2b17d0851d8c7dc514acdb6fa53304f6b053747c1a4735670fa2d76f8b75` |
| 17 | `theorem` | [line_im](../../../../MeasureAndIntegration/TestWeight.lean/declarations/line-im.md) | 219 | `result-track:01513d7144bee822a71a5674d0d60b4cb4709b2ba18193ffc4197aafc9ba770e` |
| 18 | `theorem` | [mline_re](../../../../MeasureAndIntegration/TestWeight.lean/declarations/mline-re.md) | 220 | `result-track:c8bfb1227bd7e18ee4b7bfcabd3352c606de27faf9f643fa68cc497f0ed1589a` |
| 19 | `theorem` | [mline_im](../../../../MeasureAndIntegration/TestWeight.lean/declarations/mline-im.md) | 221 | `result-track:4a4afa85a0a2d82145d5c32b940c85af7b78ec679867aaf271e458c95800e9e1` |
| 20 | `structure` | [WindowAt](../../../../MeasureAndIntegration/TestWeight.lean/declarations/windowat.md) | 228 | `declaration-track:d580a75773c02f0560d45951f7a7a21fb28cc9c1e8fc1afe8a3d87b4021e44ef` |
| 21 | `theorem` | [_root_.Zeta23.XiPrime.FamilyHyps.windowAt](../../../../MeasureAndIntegration/TestWeight.lean/declarations/root-zeta23-xiprime-familyhyps-windowat.md) | 240 | `result-track:981d4eadc6041dd58a617b8f21f4087cdf1ab5dec3cb46c6fb984c3107a33677` |
| 22 | `theorem` | [L_pos](../../../../MeasureAndIntegration/TestWeight.lean/declarations/l-pos.md) | 272 | `result-track:c6660d9e18413438f0788bf2bef99c255ea1ed552de56cb5d2a618d45faf628a` |
| 23 | `theorem` | [T_pos](../../../../MeasureAndIntegration/TestWeight.lean/declarations/t-pos.md) | 273 | `result-track:cfac89047c335ed045f9b1073063026384f8c9282582e05394f8db4c51b1f8b8` |
| 24 | `theorem` | [C_nonneg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/c-nonneg.md) | 274 | `result-track:a8cc1408ab9f3baffbfa52ad3631f0d5831e821f06058a0f75e28f32f93d3f42` |
| 25 | `theorem` | [X_pos](../../../../MeasureAndIntegration/TestWeight.lean/declarations/x-pos.md) | 275 | `result-track:1018f822e6d805216cb4be164fbca055c83622a9a6d161415602aa1890c81f1b` |
| 26 | `theorem` | [phiC_contDiff](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phic-contdiff.md) | 279 | `result-track:1f7f360f873c1c4c510bb26a9e1ceffe8415af699096a88f4655024ee2dfce1e` |
| 27 | `theorem` | [phiC_supp](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phic-supp.md) | 282 | `result-track:6fd3bbf5217ce17f1afd15371b8c2b17995a5ff4e3ed1c675c4646b98303e62c` |
| 28 | `theorem` | [phiC_hasCompactSupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phic-hascompactsupport.md) | 287 | `result-track:67f3fd07f995738fc72fd593e6f4e381b1abef9826a4af61050193f1bed61341` |
| 29 | `theorem` | [phiC_integrable](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phic-integrable.md) | 290 | `result-track:238752ee152323ad41701a3827e892759badb34674fc2a17d4aa968df38ddcdf` |
| 30 | `theorem` | [norm_phiC_le_indicator](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-phic-le-indicator.md) | 293 | `result-track:22c550baf583223ffa600a3c36a3dee3d3f57b4462947e4cdbea211efeae369b` |
| 31 | `theorem` | [integral_norm_phiC_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-phic-le.md) | 304 | `result-track:e4ec0ef906facbf315ccb9f3ea8f78cf080b931f68a66670a85a9bc7ae81480b` |
| 32 | `theorem` | [deriv_phiC](../../../../MeasureAndIntegration/TestWeight.lean/declarations/deriv-phic.md) | 318 | `result-track:b58152cf785c8c6b5b206eec0ab4fb957e70f7e567c1264a0d78cc796f4d7027` |
| 33 | `theorem` | [deriv2_phiC](../../../../MeasureAndIntegration/TestWeight.lean/declarations/deriv2-phic.md) | 323 | `result-track:ef204d385fb92e55c039cc6e1a041d3bd65b9cb205658aba56ae7aa29bda432c` |
| 34 | `theorem` | [deriv3_phiC](../../../../MeasureAndIntegration/TestWeight.lean/declarations/deriv3-phic.md) | 331 | `result-track:7790088fba25a57a75b4bac8de3e9aa7281ba202ff33ce0825308d6d67a3453a` |
| 35 | `theorem` | [integral_norm_deriv_phiC_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-deriv-phic-le.md) | 340 | `result-track:20d16cc1d772f53864d8d11ba4f39f63c6d81c871b9ab44c9b56d748ba3d4053` |
| 36 | `theorem` | [integral_norm_deriv2_phiC_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-deriv2-phic-le.md) | 344 | `result-track:cb3ff896f1252d2f561c3b54402483cc142fffd1e0367af5ba2e0c882741074d` |
| 37 | `theorem` | [integral_norm_deriv3_phiC_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-deriv3-phic-le.md) | 348 | `result-track:0420d01a877444d9eae760c70f062150b1cd618c2810682646edbdf832721fba` |
| 38 | `theorem` | [re_sq_le_norm_sq](../../../../MeasureAndIntegration/TestWeight.lean/declarations/re-sq-le-norm-sq.md) | 352 | `result-track:3806ec39258d23336cdc136a57fddea667ca9281c8f813bb96b11ca903f3a82f` |
| 39 | `theorem` | [phiHat_bound](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phihat-bound.md) | 357 | `result-track:d11355c4415a5838829e6c4e2698d64ce19071148272401e3d401b773ab77a76` |
| 40 | `theorem` | [phiHat_moment_bound](../../../../MeasureAndIntegration/TestWeight.lean/declarations/phihat-moment-bound.md) | 377 | `result-track:70c95f9dfdc86bd7fe328999ae21525ef9c61db6bb819159fdb54ec3363195d1` |
| 41 | `theorem` | [norm_phiHat_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-phihat-le.md) | 394 | `result-track:8d7e18b42325ceb933097b5dbe22a82acb4919edb96be4e5c8cf36c1249d5473` |
| 42 | `theorem` | [abs_re_mul_norm_phiHat_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/abs-re-mul-norm-phihat-le.md) | 398 | `result-track:bea058a31e21a4835125253f337a94328253ac9c3c91de18bc6e425d2777b44f` |
| 43 | `theorem` | [exp_mul_exp_eq_X_rpow](../../../../MeasureAndIntegration/TestWeight.lean/declarations/exp-mul-exp-eq-x-rpow.md) | 406 | `result-track:9394a4d93655d3c61ae7c0a8b1069bd5c8dd00ba4a3787d704c92529a6f4b4e0` |
| 44 | `theorem` | [factor_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/factor-le.md) | 411 | `result-track:603de72a3f0769e353af4bbd36475b1becdc6bbc3414f666501a35c7518a6591` |
| 45 | `theorem` | [factor_moment_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/factor-moment-le.md) | 415 | `result-track:cb7ec9fdeaaf90fb3b999a44de763e42012fdb8fe600bcdb973887b803d8c8a7` |
| 46 | `theorem` | [mfactor_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/mfactor-le.md) | 420 | `result-track:ef065e73efaec067fc3e1e700dcf840e43de67d6e53eb15b2c35206cfde9059b` |
| 47 | `theorem` | [mfactor_moment_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/mfactor-moment-le.md) | 424 | `result-track:03c05ec4605a222cf8362379b1198fe21392fc3eac61f2c7f848b8f7d342b9ad` |
| 48 | `theorem` | [rfactor_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/rfactor-le.md) | 430 | `result-track:45f6ea5db05ab0a5a926f363588b9909307a4db4695b0589ace7001bca4453a8` |
| 49 | `theorem` | [fk_contDiff](../../../../MeasureAndIntegration/TestWeight.lean/declarations/fk-contdiff.md) | 447 | `result-track:736e507542567e367cffa91844d359c6c3efae8a870ad0582ff26e1beb98029c` |
| 50 | `theorem` | [fk_tsupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/fk-tsupport.md) | 450 | `result-track:2e869f574156d8e0dce1752aa2063a080b75b474dcfff393fb035b9e608f297e` |
| 51 | `theorem` | [fk_hasCompactSupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/fk-hascompactsupport.md) | 454 | `result-track:2246abe37905d3b4e6c27c2ed3074f3c08d5db8c18daae0ddecc03ae86473cff` |
| 52 | `theorem` | [fk_continuous](../../../../MeasureAndIntegration/TestWeight.lean/declarations/fk-continuous.md) | 457 | `result-track:8ac49173f193c18fd796a8e9ae2d53717918a3ed52fc68f29a55e9ba636e5eb9` |
| 53 | `theorem` | [kfun_contDiff](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-contdiff.md) | 461 | `result-track:4a574c2f79064a69354ead52a7bc010cb197e15a3683e57e28598f5b12890746` |
| 54 | `theorem` | [kfun_hasCompactSupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-hascompactsupport.md) | 465 | `result-track:0e24ae3f8c9fd18cc0fdfb2fcebd80c560ac60b298d5805be95ab1db70fe80b7` |
| 55 | `theorem` | [kfun_tsupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-tsupport.md) | 469 | `result-track:c8459c6eb4ea2a38a7735473b0a902fa21adf035b03ef98799cdf4c468f8b81d` |
| 56 | `theorem` | [kfun_continuous](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-continuous.md) | 473 | `result-track:1672a14435f27f6eeadb79cfd9ce06b65eb628c448540974f5074a24432d5080` |
| 57 | `theorem` | [kfun_integrable](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-integrable.md) | 476 | `result-track:9596131985d7d1541364e3317b203c41c9069db90291eedbb3b4df833c568ce6` |
| 58 | `theorem` | [kfun_neg_contDiff](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-neg-contdiff.md) | 480 | `result-track:d9cd4d219e8fb8b50a63ec7a669b80f509be88ffc8d89407155443d6693c3108` |
| 59 | `theorem` | [kfun_neg_hasCompactSupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-neg-hascompactsupport.md) | 484 | `result-track:85401d87c901a5c88c4025e9717497d65df4f41f8e580af201b6327a49f55499` |
| 60 | `theorem` | [kfun_neg_tsupport](../../../../MeasureAndIntegration/TestWeight.lean/declarations/kfun-neg-tsupport.md) | 488 | `result-track:63345b887b7b0eaac18ac146e2868c9aaa88e3fa72a803151d74522f6562a4be` |
| 61 | `theorem` | [paperFT_kfun](../../../../MeasureAndIntegration/TestWeight.lean/declarations/paperft-kfun.md) | 500 | `result-track:096bdc9f0584596e06a598a7b2f97986eca525303f34937c78d9fc36b70f2a4b` |
| 62 | `theorem` | [Hfn_kfun](../../../../MeasureAndIntegration/TestWeight.lean/declarations/hfn-kfun.md) | 509 | `result-track:70f00e7c216e76402f555ef4672db65fbddb550edff9fce0ce30c24125672458` |
| 63 | `theorem` | [Hfn_kfun_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/hfn-kfun-neg.md) | 517 | `result-track:83a917404047d73a51db54b379e1ce2088612a10a35c0d3127b0126a626bb9de` |
| 64 | `theorem` | [norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-hfn-kfun-le.md) | 527 | `result-track:61c9f1aa58ac2f3a839b6a9f3a17ee374b8586e6e582f43afb7c480b6853091e` |
| 65 | `theorem` | [moment_norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/moment-norm-hfn-kfun-le.md) | 545 | `result-track:a4dd93320a374669216f507c899f0e0df2b8e841daa1d72d9e98b9cf593f4a9a` |
| 66 | `theorem` | [norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-hfn-kfun-neg-le.md) | 572 | `result-track:0937d4e70f721d8c22ab3f242ec87928795192b2704841b2a155fa0cfe90d852` |
| 67 | `theorem` | [moment_norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/moment-norm-hfn-kfun-neg-le.md) | 590 | `result-track:9f25ebe534b6e409f9d7d87525c1eb583e4d1500faa3bf49a6bb156759693217` |
| 68 | `theorem` | [paperFT_kfun_ofReal](../../../../MeasureAndIntegration/TestWeight.lean/declarations/paperft-kfun-ofreal.md) | 619 | `result-track:47fdc570f904ebeef6d8fbd6b20857305368fd79b2054b9c4d99a1aa65afefde` |
| 69 | `theorem` | [norm_paperFT_kfun_ofReal_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/norm-paperft-kfun-ofreal-le.md) | 625 | `result-track:955b6874c6c3069bde1bde5a04a32a688addda45b946497f010321b6e5b0930f` |
| 70 | `theorem` | [continuous_paperFT_kfun_ofReal](../../../../MeasureAndIntegration/TestWeight.lean/declarations/continuous-paperft-kfun-ofreal.md) | 636 | `result-track:44a9c57d746b771df3c62d132087691d500ea3d8169a3aed263675ad432b879e` |
| 71 | `theorem` | [integrable_paperFT_kfun_ofReal](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-paperft-kfun-ofreal.md) | 642 | `result-track:f76e8cee6618925dcdf02316443c97a763f5c8953eeffbc4aeb9f7f6cc17b53d` |
| 72 | `theorem` | [integral_norm_paperFT_kfun_ofReal_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-paperft-kfun-ofreal-le.md) | 650 | `result-track:c3c95ee06163e1be4e69f3e702617a1f592b1e347b7b15f4c9a100a9102311c3` |
| 73 | `theorem` | [continuous_Hfn_kfun](../../../../MeasureAndIntegration/TestWeight.lean/declarations/continuous-hfn-kfun.md) | 669 | `result-track:8c8bc60a4f7b31ae9364b57ddb7b4e4dbabed57838781dfab836524189d87521` |
| 74 | `theorem` | [continuous_Hfn_kfun_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/continuous-hfn-kfun-neg.md) | 675 | `result-track:d93582baf71027908932190f92e2af9e153ffae55c417cf0dfbcdef01cac91f3` |
| 75 | `theorem` | [integrable_Hfn_kfun](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-hfn-kfun.md) | 683 | `result-track:b6b62a84f1c5649cd684d5bbbaed9af9c0605cde1746df25ffe0a2ca244e92fc` |
| 76 | `theorem` | [integrable_Hfn_kfun_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-hfn-kfun-neg.md) | 691 | `result-track:d7ddacc0fb29f5db6001101d2c7c8cd6d9d8be84d0c4364ede43831d34162a18` |
| 77 | `theorem` | [integral_norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-hfn-kfun-le.md) | 700 | `result-track:904cc697abbfe165fcbfab911022663c048e51d25c1ff2bbacc43a56e7b30c21` |
| 78 | `theorem` | [integral_norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-norm-hfn-kfun-neg-le.md) | 720 | `result-track:ee0ad9ad668ff9383dafa394933cdf1ddb100071f3d5d779fde82e113845a519` |
| 79 | `theorem` | [abs_sub_tauStar_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/abs-sub-taustar-le.md) | 741 | `result-track:b003c178eb98680884eba2feaa87a7d67ae4a20ae6df36052c48b52cb26e993c` |
| 80 | `theorem` | [abs_add_tauStar_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/abs-add-taustar-le.md) | 749 | `result-track:d056215de5f93adde04258058ff0a14b4a43b514408d727385e55516eee2bac0` |
| 81 | `theorem` | [weighted_norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/weighted-norm-hfn-kfun-le.md) | 758 | `result-track:2424c900dec13d03687a17ea1f2aeaed11d74276eb0f292516162ebe166b6a0d` |
| 82 | `theorem` | [weighted_norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/weighted-norm-hfn-kfun-neg-le.md) | 785 | `result-track:db4afc71b53bdbb2a92c688c707b92333851376fdcd571363fd4d6deed15041c` |
| 83 | `theorem` | [integrable_weighted_norm_Hfn_kfun](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-weighted-norm-hfn-kfun.md) | 811 | `result-track:31743c57b20e541cdb7a5564a1ef8af2518dc7cb0b9781bb89fad5711eff1e5d` |
| 84 | `theorem` | [integrable_weighted_norm_Hfn_kfun_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integrable-weighted-norm-hfn-kfun-neg.md) | 820 | `result-track:0f45ebf2a51089122c4f5821b7dbb941cba2eaae488059fc7c42e13d5e9fd017` |
| 85 | `theorem` | [integral_weighted_norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-weighted-norm-hfn-kfun-le.md) | 831 | `result-track:79e5adb9d5e0363a44ed83b5341bacaf0e111da255957ceb29b3dd6ceb062a07` |
| 86 | `theorem` | [integral_weighted_norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/integral-weighted-norm-hfn-kfun-neg-le.md) | 853 | `result-track:3c1226d413ce6d812ac87d9568d06045d4926244db69ce78212f79f5a1be7e2c` |
| 87 | `theorem` | [tau_mem_Icc](../../../../MeasureAndIntegration/TestWeight.lean/declarations/tau-mem-icc.md) | 879 | `result-track:1231104eabe1bcafe365960ffd08277f429f895e3e6bcdc825e044439bcddf8f` |
| 88 | `theorem` | [far_subset](../../../../MeasureAndIntegration/TestWeight.lean/declarations/far-subset.md) | 900 | `result-track:95396cf55ebdebfc1106708a937eb052abbed69998e221cb2c147f6324161685` |
| 89 | `theorem` | [far_subset_neg](../../../../MeasureAndIntegration/TestWeight.lean/declarations/far-subset-neg.md) | 909 | `result-track:97389500691c0315d8eeb7a0a32c966cabd4562cfd41f42dc689d2268249bf25` |
| 90 | `theorem` | [setIntegral_far_norm_Hfn_kfun_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/setintegral-far-norm-hfn-kfun-le.md) | 921 | `result-track:2c00e677911394fec8c3bb552625055dd975c094051339559caf55b1a09da6f6` |
| 91 | `theorem` | [setIntegral_far_norm_Hfn_kfun_neg_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/setintegral-far-norm-hfn-kfun-neg-le.md) | 954 | `result-track:c982bb91fc11c1ea7199070e0021567d8b8923d404404b997cf6f20fd0abb35d` |
| 92 | `theorem` | [testWeight_regular](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-regular.md) | 1004 | `result-track:3fb47de157486fbf565e408dcf74e398f8e88c49f3de7948ab2dd7b2e8b63ee9` |
| 93 | `theorem` | [testWeight_paperFT](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-paperft.md) | 1019 | `result-track:1ee3f3821e5c3952d8a906d63d934ffdeca9099c00b402353ff827f4df5aa673` |
| 94 | `theorem` | [testWeight_norm_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-norm-le.md) | 1026 | `result-track:0715d34dad519a2d32ecff78a4e065f5b2e66ddc2b8bbfa1c548106fe26b1f51` |
| 95 | `theorem` | [testWeight_moment_norm_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-moment-norm-le.md) | 1035 | `result-track:5bdee5c06e3db628f359d9bc7c11786118d1154b7f9c5b53dcbaff414d5a44b7` |
| 96 | `theorem` | [testWeight_neg_norm_le](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-neg-norm-le.md) | 1044 | `result-track:24c96191134cc54bf25c51cd8a160b8181dc67e15b99e50fbfd4fb8f3dacaf33` |
| 97 | `theorem` | [testWeight_real_line](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-real-line.md) | 1071 | `result-track:8ff4b88626b6fb84b3929f3db247b1e33f8ed2f8e29c4a159e53a0046b6f2d4b` |
| 98 | `theorem` | [testWeight_integrals](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-integrals.md) | 1085 | `result-track:8503e909465ef92671f150da7360b10990951dbb52c5b118d4a9862d4a180d2a` |
| 99 | `theorem` | [testWeight_tau_mem_Icc](../../../../MeasureAndIntegration/TestWeight.lean/declarations/testweight-tau-mem-icc.md) | 1127 | `result-track:f445fb9884a6a9cf321a547f17e39d0060d9f12df5ff6e439fbe3483cec1fc36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a55e82464dc083d5ff20bb7d643c35bfbd676d12d1777e8bb1c5c747b4ca32af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
