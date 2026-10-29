# Verification target: Circle Integral Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449a45484d6858b06efd95f1ef62ece22fee65e3",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449a45484d6858b06efd95f1ef62ece22fee65e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/range-circlemap.md) | 84 | `result-track:3a037f97475cc6aa35e04b7ff99cd4c7334ef31783aeb9a09d4ddd805258296a` |
| 2 | `theorem` | [image_circleMap_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/image-circlemap-ioc.md) | 95 | `result-track:b53300e311c5ef8f3c24e743e537363b43d98fc6f12e9c24023ef9d0f3598639` |
| 3 | `theorem` | [hasDerivAt_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/hasderivat-circlemap.md) | 98 | `result-track:8862ec8e2dffc7f104747d285341a93c4ba671e19fc63e6c57a897fe1954a85a` |
| 4 | `theorem` | [differentiable_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/differentiable-circlemap.md) | 103 | `result-track:566bee3fbaebd68b57b66323b837528d8354c87ffc29bfbe93aa6dd8684aabac` |
| 5 | `theorem` | [analyticOnNhd_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/analyticonnhd-circlemap.md) | 108 | `result-track:9a0df3de5cba40a3bc4a5d74c5fa0395e08dae29fe56d7555db19398e011ebcc` |
| 6 | `theorem` | [contDiff_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/contdiff-circlemap.md) | 117 | `result-track:b299d71cd74ea0eb2dfac10484084b51049d824fa9b02f16f49866810df14f22` |
| 7 | `theorem` | [continuous_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuous-circlemap.md) | 122 | `result-track:5a71e090ab5f747a8d05cd28a325841480169b644afae33abad6a993d06bfd70` |
| 8 | `theorem` | [measurable_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/measurable-circlemap.md) | 126 | `result-track:2afd89a51b0699736e78a135927eccb4ab03537ba214534c6b47781bec0b85f9` |
| 9 | `theorem` | [deriv_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/deriv-circlemap.md) | 130 | `result-track:26aa37c9bcb648fcb34a6a0ae7dd2e9ba7888c7c3407eb96b318e19c4582e0af` |
| 10 | `theorem` | [deriv_circleMap_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/deriv-circlemap-eq-zero-iff.md) | 133 | `result-track:9ec8f5d6a1d7a33bda276a85726e542ffec5bfd0abb2179e82b67c7b386b1e47` |
| 11 | `theorem` | [deriv_circleMap_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/deriv-circlemap-ne-zero.md) | 136 | `result-track:dbf8115b910ef0799421c53cebe94aa5790aa6e5a3956ec7e979fc70d4045846` |
| 12 | `theorem` | [lipschitzWith_circleMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/lipschitzwith-circlemap.md) | 140 | `result-track:80fd456ee7c63ed20652606b18a5eb83f03f10be18c013b92deafaf1a870090d` |
| 13 | `theorem` | [continuous_circleMap_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuous-circlemap-inv.md) | 144 | `result-track:96a9657dfc4722dc73e75225d3c089f019e8d66fe75ea4008dc6b5b29e8731f8` |
| 14 | `theorem` | [circleMap_preimage_codiscrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circlemap-preimage-codiscrete.md) | 152 | `result-track:a3b1e9d813f620550d2b5ba51ed09be18db94617cf9e84c75545b4d3ccf9720f` |
| 15 | `theorem` | [circleMap_neg_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circlemap-neg-radius.md) | 163 | `result-track:c55f3ea6077f72850ea421d5708556827d6df2fd194071e8eef691d7c0f01f28` |
| 16 | `def` | [CircleIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable.md) | 178 | `declaration-track:e6c5b0bb38192a55e9efac29665d38ddb80d3d3a2d6f783f657dd545425a9849` |
| 17 | `theorem` | [circleIntegrable_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-def.md) | 181 | `result-track:5af4e6465fb533bc63e153b8696b5b1648420fb13b1c5b4909cae0376228bf61` |
| 18 | `theorem` | [circleIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-const.md) | 185 | `result-track:5cc860c54b79dceb670eee9cca0438dd51e1685262cef44ec65ba7f15d70f44d` |
| 19 | `theorem` | [circleIntegrable_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-id.md) | 189 | `result-track:8d67a6423d5d29a3723e08e1a1ea1d085f442a750fc9b2f0a6b3f9c7af2e76c4` |
| 20 | `theorem` | [abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/abs.md) | 201 | `result-track:cea3a3ba4fb4424ff6dc26b2c335315a1e06afe971add067050dc18c8194307c` |
| 21 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/add.md) | 205 | `result-track:ac15c0e34e56bc3c9fa11fbcee36f9f91aca0edab1cabcf40155a3d2f8587462` |
| 22 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/sub.md) | 210 | `result-track:36b582bfa5cb94e956503770b2c3a047d5866ad110edf94b14f8c02759e0fdb8` |
| 23 | `theorem` | [sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/sum.md) | 216 | `result-track:82ee57dc0c2a6e1a51a1e59104e851661d995dd3b3221025aed292b554544787` |
| 24 | `theorem` | [finsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/finsum.md) | 225 | `result-track:6aa0789b0d139b6e114cce6011671b6a5cb0f46a89414f32c4481881930a6852` |
| 25 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/neg.md) | 234 | `result-track:d729e053317ecfdeae15c4dcf00858c1cbf9f9b13640dd6e68e76f3a94d59f18` |
| 26 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/const-smul.md) | 239 | `result-track:f08b753a188aed48dbf10dc6a952b35c97cbc959f32e2a309aa7dc28268e61cd` |
| 27 | `theorem` | [continuousOn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuouson-smul.md) | 250 | `result-track:9a280ebc23d20cd4a3451242569005237c0c059626463d444e2305af4057932f` |
| 28 | `theorem` | [smul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/smul-continuouson.md) | 261 | `result-track:2863dec747c6a99cb3b40a5bda5a54a2d5f269a10893558bae45daf8a1bcc763` |
| 29 | `theorem` | [continuousOn_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuouson-mul.md) | 272 | `result-track:448ef38fa71d3ec1bdaf2da9d4d4038044a82fc6ecbc9df204b4a315fdf9e004` |
| 30 | `theorem` | [mul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/mul-continuouson.md) | 283 | `result-track:b856278dc4d7cbbdc6320ea0d9cd90b6a6492ba928fdea60447b63505c6b225e` |
| 31 | `theorem` | [out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/out.md) | 296 | `result-track:2c02076fac2270e550d01383d7586997a1a32085e28069225bee7a30d150d8fa` |
| 32 | `theorem` | [circleIntegrable_zero_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-zero-radius.md) | 307 | `result-track:6301af71c706712914aa7a24f5775bca81081b958bdee5fe44c3351ef51c08bd` |
| 33 | `theorem` | [circleIntegrable_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-congr.md) | 313 | `result-track:22428b7fb653d5f0c66ea62c28cebc799a5d6d0029dd6d84571d5bb822a01861` |
| 34 | `theorem` | [circleIntegrable_neg_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-neg-radius.md) | 323 | `result-track:baeaef8c3dcf89ae9fca9bfec1b43c44e289c3714fbb5e6df4fcba0e0602cc87` |
| 35 | `theorem` | [CircleIntegrable.congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-congr-codiscretewithin.md) | 332 | `result-track:26128d794cc4a28c7788a8a0becdf17b366dffa7358f105be2dfb49c3abe15d1` |
| 36 | `theorem` | [circleIntegrable_congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-congr-codiscretewithin-source-edition-2.md) | 344 | `result-track:c075d0e5318686f906de2c845873804664de4f4b00c2d7c3e63dd320c0d9e73c` |
| 37 | `theorem` | [circleIntegrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-iff.md) | 350 | `result-track:f538828085920448b4c7a4da5181d9975c4eb21d82d5903198ae2603fb4d9317` |
| 38 | `theorem` | [ContinuousOn.circleIntegrable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuouson-circleintegrable-source-edition-2.md) | 365 | `result-track:105b00e057c992fded24ea60f385e1b6ab43960b383bc3fa76cfbaf2b460c551` |
| 39 | `theorem` | [ContinuousOn.circleIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/continuouson-circleintegrable.md) | 369 | `result-track:0f1b82d567ec0f30333beeffbbeca878c70860cf76edd7c5298bea04b3118535` |
| 40 | `theorem` | [circleIntegrable_sub_zpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-sub-zpow-iff.md) | 376 | `result-track:b68c49adb44012eccc2d7b62b81cbda2f3786b1a49dcba724cac4b30d2738203` |
| 41 | `theorem` | [circleIntegrable_sub_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-sub-inv-iff.md) | 410 | `result-track:f3904975d9b618d8351705248f8201851550045ffe02bd45503c286089f6e1f8` |
| 42 | `theorem` | [CircleIntegrable.sub_zpow_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegrable-sub-zpow-smul.md) | 418 | `result-track:db4b51ac2e7b097314d5616010b8679a4a0f31487c4713c93dc67d52ce4ace08` |
| 43 | `def` | [circleIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegral.md) | 425 | `declaration-track:a77a54d1fbefdf25e2ff1f35eafd58feab1a27d320168ca9299c4e9fd200af3d` |
| 44 | `theorem` | [circleIntegral_def_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegral-def-icc.md) | 431 | `result-track:44ca6bd008a8f4c20507bed1a179408db1531e0c618901d9a210d2cdd0868fb4` |
| 45 | `theorem` | [_root_.TendstoUniformlyOn.tendsto_circleIntegral_of_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/root-tendstouniformlyon-tendsto-circleintegral-of-continuouson.md) | 439 | `result-track:f224304b35f23a9023f1c16ce55ee907d4dc64eb3b9bc86aebc0e2a7ed54f50f` |
| 46 | `theorem` | [integral_radius_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-radius-zero.md) | 461 | `result-track:b8dd37cf594950f0d1217100e61cd7542826275cd3d72b06d3230a97f95098df` |
| 47 | `theorem` | [integral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-congr.md) | 464 | `result-track:b1b6c596ccb420b6d8508490419343f85a57b52074353e01fcac3f4851adf531` |
| 48 | `theorem` | [circleIntegral_congr_codiscreteWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/circleintegral-congr-codiscretewithin.md) | 469 | `result-track:355919e3b3e1423e0b1d76b169cee231cddbdf72d558b6bf3e502cb64310488b` |
| 49 | `theorem` | [integral_sub_inv_smul_sub_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub-inv-smul-sub-smul.md) | 478 | `result-track:6edaec8edf60ab1a5f568fe663f9b53414e4a87b7997fa3d4f6bbce06a1a213a` |
| 50 | `theorem` | [integral_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-undef.md) | 486 | `result-track:e7e48e3ef246b260cfef0686bc48acb15b8496d65a18d1d1076515a038bf9b3c` |
| 51 | `theorem` | [integral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-add.md) | 490 | `result-track:b1e22178a839efb37cf109ee192cfffe559317a3cb228e35f76c0898e6bd7156` |
| 52 | `theorem` | [integral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub.md) | 495 | `result-track:f7984b54a1204df6043c3507dd4e6d857369a3dabac3676ec6c5f5acb68d72f7` |
| 53 | `theorem` | [integral_fun_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-fun-sum.md) | 500 | `result-track:a43321e60bc085e546829e50e41442180e98bed74da077fd907049e4026aeb7c` |
| 54 | `theorem` | [norm_integral_le_of_norm_le_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/norm-integral-le-of-norm-le-const.md) | 506 | `result-track:7b106ae9f331cc08f5f32ae31631dadc2448241cea4fb6502a10ba9e51903d70` |
| 55 | `theorem` | [norm_integral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/norm-integral-le-of-norm-le-const-source-edition-2.md) | 518 | `result-track:bfea7732b6f9603e85a1e7ef0c31897e3146a1675c598df19def33e561e6a3eb` |
| 56 | `theorem` | [norm_two_pi_i_inv_smul_integral_le_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/norm-two-pi-i-inv-smul-integral-le-of-norm-le-const.md) | 525 | `result-track:1798756ebd95f096c29f3e518c9198440a478848c2f146e681547be99cd3aa7f` |
| 57 | `theorem` | [norm_integral_lt_of_norm_le_const_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/norm-integral-lt-of-norm-le-const-of-lt.md) | 535 | `result-track:9ac2e2b4da45584ecc452c32c3316b0337fd30f54637d573a4ba444fb729d221` |
| 58 | `theorem` | [integral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-smul.md) | 556 | `result-track:ddb45675c9ae337953fcb23ce32a455d3f37f4d1d6485d0a24f65b22ca604410` |
| 59 | `theorem` | [integral_smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-smul-const.md) | 561 | `result-track:814328b0ebde9d0d6a07ae2961b2744ee8337e6ad993a1213550bbc081eb768a` |
| 60 | `theorem` | [integral_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-const-mul.md) | 566 | `result-track:a393b4ddd771b3e81836269c6cdfa75719527d6a24af2a8715da7b527906a02e` |
| 61 | `theorem` | [integral_sub_center_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub-center-inv.md) | 571 | `result-track:ea50a20821387b93abc02faf7069aea1925817cb78c72eab29b961b914e81541` |
| 62 | `theorem` | [integral_eq_zero_of_hasDerivWithinAt'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-eq-zero-of-hasderivwithinat.md) | 577 | `result-track:3c264b3c410b59c696e79a086029ed14c72fc990cf79825f545d1d1f99b8a333` |
| 63 | `theorem` | [integral_eq_zero_of_hasDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-eq-zero-of-hasderivwithinat-source-edition-2.md) | 589 | `result-track:9c2b878af1428f08fb8c698e39ef152be860f8fce714a30650f2a7eb260a887e` |
| 64 | `theorem` | [integral_sub_zpow_of_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub-zpow-of-undef.md) | 596 | `result-track:8fc871ff26b39b7d9d985aa77de43af4bba044497b3ffb37dc4be4cdb11c7956` |
| 65 | `theorem` | [integral_sub_zpow_of_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub-zpow-of-ne.md) | 605 | `result-track:b69204d4c65beb398baaaa78c29cef27d732b06ed54afae1f97263e8350554c8` |
| 66 | `def` | [cauchyPowerSeries](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/cauchypowerseries.md) | 632 | `declaration-track:3c41c39ee19ce93be90502d613fd5368bd7f612abae6bb4e31161bf9d722c0f2` |
| 67 | `theorem` | [cauchyPowerSeries_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/cauchypowerseries-apply.md) | 636 | `result-track:90a2506a761f82f1b37b9ca7ca469b9cd15ac988c3d6ad74735419c2412f5a88` |
| 68 | `theorem` | [norm_cauchyPowerSeries_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/norm-cauchypowerseries-le.md) | 643 | `result-track:2dd0786c8ed4132021955de3e0b8f2c4748042ced34587ce500f581149c52243` |
| 69 | `theorem` | [le_radius_cauchyPowerSeries](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/le-radius-cauchypowerseries.md) | 662 | `result-track:33fa82fb4f982f9698894e027112886696bd7597fa1f0bd88d6321d97a245abe` |
| 70 | `theorem` | [hasSum_two_pi_I_cauchyPowerSeries_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/hassum-two-pi-i-cauchypowerseries-integral.md) | 681 | `result-track:0464acec15ed66feb62c64bab36cdfd78864cf5c70e6a4146690e0d929731efc` |
| 71 | `theorem` | [hasSum_cauchyPowerSeries_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/hassum-cauchypowerseries-integral.md) | 709 | `result-track:929ee60029c72b406cb136e2c9c04a34862a3b9dc7443183536dce14f042cbf1` |
| 72 | `theorem` | [sum_cauchyPowerSeries_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/sum-cauchypowerseries-eq-integral.md) | 719 | `result-track:6226bd47fd4342a761bb8b139d68e531509c7cc862e3282ce74cfb6bdfe11cfa` |
| 73 | `theorem` | [hasFPowerSeriesOn_cauchy_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/hasfpowerserieson-cauchy-integral.md) | 727 | `result-track:480aaafc909c957f976b4e36220a4b548f7ae90ebe21bc068aee573468bf6f4f` |
| 74 | `theorem` | [integral_sub_inv_of_mem_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CircleIntegralPublic.lean/declarations/integral-sub-inv-of-mem-ball.md) | 738 | `result-track:e4565f97bc65e09ae8c17632f44f0060ba4534c879691fdf75494d363d4022d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=718229eba12674f25ddf088e5a0e8ac4179e528eecb37d8e155c8bb8d9ae6130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
