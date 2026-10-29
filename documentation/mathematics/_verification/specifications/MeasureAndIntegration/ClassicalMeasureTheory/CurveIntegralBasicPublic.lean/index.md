# Verification target: Curve Integral Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f66d4defe7ec4507090c529606544578bcc18aa",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f66d4defe7ec4507090c529606544578bcc18aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean.json)

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
| 1 | `def` | [CurveIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable.md) | 114 | `declaration-track:4b503bd25b57cfe3597edecd2c81b50f44e77fffae7737f02dc5b64f5043b882` |
| 2 | `theorem` | [curveIntegral_of_not_completeSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-of-not-completespace.md) | 133 | `result-track:d8b2e4576fdc79092b15e50565be7a93d9a92e53f87bd1bd04515540d88eca3e` |
| 3 | `theorem` | [curveIntegralFun_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-def.md) | 137 | `result-track:5d5c778aaedfb674005a594b78c40bf54dab4bd8bc5a237bc73a8d9a4d128123` |
| 4 | `theorem` | [curveIntegral_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-def.md) | 141 | `result-track:a4a52d63d6ad1cdf285f697d4317a12eb536358c5db2751b978182baf59d78ab` |
| 5 | `theorem` | [curveIntegral_eq_intervalIntegral_deriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-eq-intervalintegral-deriv.md) | 145 | `result-track:6d3d29115d5cd3e3abf07e518cb0650ae2a07246182e460400b4d14fd1ee27a9` |
| 6 | `theorem` | [curveIntegralFun_refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-refl.md) | 167 | `result-track:531297b3097d7f30886ba3f34f3436abc5070f7391a0633ce1abdd2fdac49bee` |
| 7 | `theorem` | [curveIntegral_refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-refl.md) | 172 | `result-track:58f24d1334ddeef5671a3240b3060e164ebac67a948e19bdfb12550887a301fc` |
| 8 | `theorem` | [CurveIntegrable.refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-refl.md) | 176 | `result-track:439bce806ef385bc239fca2862e1ae5d8da3a6d20bcfccc927cc673b0f4dd358` |
| 9 | `theorem` | [curveIntegralFun_cast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-cast.md) | 180 | `result-track:900eb1b6ec8533d042656ed559e079081093f2a97dfcafa6c78dcad75fa34fed` |
| 10 | `theorem` | [curveIntegral_cast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-cast.md) | 186 | `result-track:1fedb4b48cf4f65463b3ee22b806aa4068633a0538e5f4ccecbacd7b032f32e0` |
| 11 | `theorem` | [curveIntegrable_cast_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-cast-iff.md) | 191 | `result-track:ced9fd179f01913fcecd14a8a6bcfafc762b23c9f6d85646cf0ad2b2318b16ea` |
| 12 | `theorem` | [curveIntegralFun_symm_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-symm-apply.md) | 197 | `result-track:48bb3b41cb94cf88f88b49078f27689e063c9e3a24a9444666340f9451d793c0` |
| 13 | `theorem` | [curveIntegralFun_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-symm.md) | 202 | `result-track:f5d6aeb785595b9143db885e6eedd04f8984d10b038af29a356830d24f33e06f` |
| 14 | `theorem` | [CurveIntegrable.symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-symm-source-edition-2.md) | 206 | `result-track:f964895ea7b9a285e3fe98a17ee83e127f5bcee2af3f9d3be5b6351ccf84d1ea` |
| 15 | `theorem` | [curveIntegrable_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-symm.md) | 210 | `result-track:887335e77738e3a12a832dbe6f8a2442a37a51063543539eed74ac89200a9f9c` |
| 16 | `theorem` | [curveIntegral_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-symm.md) | 214 | `result-track:d96255694f63759029570204adf27ef15e8d77fcfca02da08f1dcdd1671705ef` |
| 17 | `theorem` | [curveIntegralFun_trans_of_lt_half](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-trans-of-lt-half.md) | 218 | `result-track:a357fc37a71b3204402c487c020ef632f656486a0d4df2d4828d73d55638a793` |
| 18 | `theorem` | [curveIntegralFun_trans_aeeq_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-trans-aeeq-left.md) | 234 | `result-track:a32f352d887a5ebb39254c1b86beabbdbe1096fc9490b05e59c03fb326962855` |
| 19 | `theorem` | [curveIntegralFun_trans_of_half_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-trans-of-half-lt.md) | 241 | `result-track:d438cb3db45d769ed87ed0cdad6a0c0624b0162ba679c9e1725e12b26b74372f` |
| 20 | `theorem` | [curveIntegralFun_trans_aeeq_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-trans-aeeq-right.md) | 250 | `result-track:19f2c189aa262ded13d01f2fbbc4cdff5c600cca7bd6dffbde68f30f1ca0d7b8` |
| 21 | `theorem` | [CurveIntegrable.intervalIntegrable_curveIntegralFun_trans_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-intervalintegrable-curveintegralfun-trans-left.md) | 257 | `result-track:5b1a463660b04fb3a7fd7eeacfb3e4397b5f1900b8e55dacc0153aa4afd280a4` |
| 22 | `theorem` | [CurveIntegrable.intervalIntegrable_curveIntegralFun_trans_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-intervalintegrable-curveintegralfun-trans-right.md) | 263 | `result-track:f81722eb23929856cee2eb7284ea88483bff66491595a7e17de3f6ae9e1493ac` |
| 23 | `theorem` | [CurveIntegrable.trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-trans.md) | 269 | `result-track:987bd5f62c7eae64aae9fa7b987d4ee626a5521ae71f1ca9ab0ccb4185444611` |
| 24 | `theorem` | [curveIntegral_trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-trans.md) | 274 | `result-track:f34506955de3a5063ea99f9aaa379c6806880bf1a52fd572dc3f6adc78c306d2` |
| 25 | `theorem` | [curveIntegralFun_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-segment.md) | 290 | `result-track:9ee170e4c9cd52df61af64f7311843ff35c09a9cf6ab7cbc9d9496b948bc1120` |
| 26 | `theorem` | [curveIntegrable_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-segment.md) | 296 | `result-track:c305fc67c2536a93b3fd8acb8fa3c26a9924a525e322f1b8809f0d9e997aef9b` |
| 27 | `theorem` | [curveIntegral_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-segment.md) | 303 | `result-track:ccd718b3241bc177b74b2e129ee3c870d8c995657b470c98ff6a118ad3ee6121` |
| 28 | `theorem` | [curveIntegral_segment_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-segment-const.md) | 311 | `result-track:3e2db6e84df4ea06f42077123151414baf243c1fafeceb620856f074f32ecf6b` |
| 29 | `theorem` | [norm_curveIntegral_segment_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/norm-curveintegral-segment-le.md) | 318 | `result-track:c0c24579123f7e94288660c99b69ffa6110128948d383167a7e4b83cce4ce5f9` |
| 30 | `theorem` | [ContinuousOn.curveIntegrable_of_contDiffOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/continuouson-curveintegrable-of-contdiffon.md) | 331 | `result-track:b01e46fa9a0a509cd7427f6ee800d84c1df6324f0effc1ad1dd28b556746fe53` |
| 31 | `theorem` | [curveIntegralFun_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-add.md) | 353 | `result-track:d4d6547c65cad4c2f389bde986269cd4ccdc549fdcd9b2350f28316efc6be715` |
| 32 | `theorem` | [CurveIntegrable.add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-add.md) | 357 | `result-track:21368e3bd4b09c5cf348afc697de4ac8b8776d8878d658e51a8ee08190b9d73d` |
| 33 | `theorem` | [curveIntegral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-add.md) | 362 | `result-track:db58b10268b3e1848dca9c3a6c5ad4e21df26c7979e245b582c78c33d076772a` |
| 34 | `theorem` | [curveIntegral_fun_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-fun-add.md) | 368 | `result-track:740a82134ed33e8d1a556edc7c59ce3e6cddba9718e31749e6c7a4ed4fd1a22a` |
| 35 | `theorem` | [curveIntegralFun_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-zero.md) | 373 | `result-track:b014eb7dc6302aeb4eaa964a2d61ea465e19a525626cb32d0092f7fbe8d4dc52` |
| 36 | `theorem` | [curveIntegralFun_fun_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-fun-zero.md) | 377 | `result-track:712e2360505a2296e6c7b57fd007969764f3235edcaf3c8a4af7d428d02bd634` |
| 37 | `theorem` | [CurveIntegrable.zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-zero.md) | 381 | `result-track:939743b0f65694b55209bcf36ffd736238cabdf080951d1353b576273dbcc9ee` |
| 38 | `theorem` | [curveIntegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-zero.md) | 385 | `result-track:582f676e07a075a96b1c1fa888f41e48f5fed6581f661be9ba862bad7a4db38f` |
| 39 | `theorem` | [curveIntegral_fun_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-fun-zero.md) | 388 | `result-track:c4958c8aa241fde4d6599e4ae136b93eb5d06a49f13d779ee861afb39f51fd74` |
| 40 | `theorem` | [curveIntegralFun_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-neg.md) | 391 | `result-track:740a79c06c69036272b485343708e7662128aacc6b2189eecdf84bab7f2a3645` |
| 41 | `theorem` | [CurveIntegrable.neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-neg.md) | 395 | `result-track:967d2c735f7a9a81a56bf455cd3aa19c01e08328914cff13b93ff03da07b5045` |
| 42 | `theorem` | [curveIntegrable_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-neg-iff.md) | 399 | `result-track:195b3a6dd938b6268b0044593a959439b4d64f1ed3c9c6aeb39fd79332594a47` |
| 43 | `theorem` | [curveIntegrable_fun_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-fun-neg-iff.md) | 403 | `result-track:05983ddd5e7b8ff84d735833e07b84543b2b378e9a1a580230414c6159b9be3e` |
| 44 | `theorem` | [curveIntegral_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-neg.md) | 407 | `result-track:1b17a44a47ea0dbe9b8ca906833a1a082d9b5d324a0737b66d08ed1630f938da` |
| 45 | `theorem` | [curveIntegral_fun_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-fun-neg.md) | 411 | `result-track:e78609e318fc8387d74ada39df652b1a50667a1463ac7c2e1a1f393fc427b7a9` |
| 46 | `theorem` | [curveIntegralFun_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-sub.md) | 414 | `result-track:2828e2df5ced10ca42d5556310b3fa9ecd4deb8b1a0a06179f50d02935444341` |
| 47 | `theorem` | [CurveIntegrable.sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-sub.md) | 418 | `result-track:6fd0366986637dfde1e291bb9a49e12744ec3ec2e96f25b77d5fb2eee5c3b03d` |
| 48 | `theorem` | [curveIntegral_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-sub.md) | 422 | `result-track:1751323be9294bf46b9de800d634135e197f310750c03c5d79fcdd6794a6c3e6` |
| 49 | `theorem` | [curveIntegral_fun_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-fun-sub.md) | 426 | `result-track:1e335c52045727f3d79e08001cb1a2c845926aa6915547bec3daa3c889dbda6a` |
| 50 | `theorem` | [curveIntegralFun_restrictScalars](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-restrictscalars.md) | 437 | `result-track:abdaf427ceaec29bbfaa7ee0222e3885e46acad068af5fc05149ce17959f16b7` |
| 51 | `theorem` | [curveIntegrable_restrictScalars_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-restrictscalars-iff.md) | 444 | `result-track:157154f41b11b71be98371ff3b8e5709c84f0ecd95678938900feb70450da0fc` |
| 52 | `theorem` | [curveIntegral_restrictScalars](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-restrictscalars.md) | 449 | `result-track:9695e1b51418c6dfb04c62abc4e42707381c6174be71b558e7d63c3b8f996404` |
| 53 | `theorem` | [curveIntegralFun_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegralfun-smul.md) | 459 | `result-track:b78dbbfcdc4bd76748b3488fa9c9c49afa9f73f3ebc8b738077004cdabd80b99` |
| 54 | `theorem` | [CurveIntegrable.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-smul.md) | 463 | `result-track:048b3206f2f8ab97601f15a05e897451433ef6790a26cd4ef473214a540c1c75` |
| 55 | `theorem` | [curveIntegrable_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegrable-smul-iff.md) | 468 | `result-track:d8c49118c4aec15ec913207eb65ee9587094fdf60f2bdeb0821db9f44a309b51` |
| 56 | `theorem` | [curveIntegral_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-smul.md) | 476 | `result-track:a5823e79ce685e9a0abe21785a2e1ede32bdb45e0c07ea51adc8f6d13338843f` |
| 57 | `theorem` | [curveIntegral_fun_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/curveintegral-fun-smul.md) | 481 | `result-track:815e948e1ebe04e465a55f1728055c1625ffb9284dc0ad5786ef79f921826c7a` |
| 58 | `theorem` | [HasFDerivWithinAt.curveIntegral_segment_source'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/hasfderivwithinat-curveintegral-segment-source.md) | 507 | `result-track:0dcd6ebee0d7b6b530a38a8d4538e9bf685aeee36f836da39d33f0b30b8830b3` |
| 59 | `theorem` | [HasFDerivWithinAt.curveIntegral_segment_source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/hasfderivwithinat-curveintegral-segment-source-source-edition-2.md) | 543 | `result-track:b3a75be417ec1a89776f8f45db3f4f9e9974c7fff63cab44514f55a36703d938` |
| 60 | `theorem` | [HasFDerivAt.curveIntegral_segment_source'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/hasfderivat-curveintegral-segment-source-source-edition-2.md) | 549 | `result-track:675f4303e367bbd2c57716a0730876a9515e273b51398c500d7bd16af593679b` |
| 61 | `theorem` | [HasFDerivAt.curveIntegral_segment_source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CurveIntegralBasicPublic.lean/declarations/hasfderivat-curveintegral-segment-source.md) | 556 | `result-track:65448f9037497a3d6d963c0080137be242e111a8a7f8f728e3409e07dd4b96c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76b07c914312a7c2b4e8e73e3283d6b6e4ee7689a3205ff3f161c4fb9d37d0a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
