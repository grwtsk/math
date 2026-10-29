# Verification target: Real Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0b1fd72f5d80415d0286f4c016cbd59ffca4b0",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant9e2bc94dd8c51e27118fd577dcf9c924d81a8cf5e03d7d1832a8527d3a12a767.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0b1fd72f5d80415d0286f4c016cbd59ffca4b0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant9e2bc94dd8c51e27118fd577dcf9c924d81a8cf5e03d7d1832a8527d3a12a767.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant9e2bc94dd8c51e27118fd577dcf9c924d81a8cf5e03d7d1832a8527d3a12a767.lean.json)

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
| 1 | `def` | [gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal.md) | 49 | `declaration-track:1726a5ac545575001768e321d55e152ef0aca85740181265882725d2d3fc0e20` |
| 2 | `lemma` | [gaussianPDFReal_def](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-def.md) | 52 | `result-track:2a28e8a613a1189853d853ffa829182d2998107aa286fcce3f966b162c9379ba` |
| 3 | `lemma` | [gaussianPDFReal_zero_var](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-zero-var.md) | 57 | `result-track:d3f5f44d8d7c34cac273eb6d3f10211272d40f0ef8b17fe42dc11458083f9458` |
| 4 | `lemma` | [gaussianPDFReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-pos.md) | 62 | `result-track:fea3be8212c78e5e6a666098fa89bd610fc911ce9815cea5ff1871d0f919868f` |
| 5 | `lemma` | [gaussianPDFReal_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-nonneg.md) | 67 | `result-track:021ff8ce78137e05dc71418c5aa901d40a6fd0409a79c19625382fb39add1fbe` |
| 6 | `lemma` | [measurable_uncurry_gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/measurable-uncurry-gaussianpdfreal.md) | 73 | `result-track:9c969810e8b70ad5d3653880fef603a1ddf64fd86fa22d817d6f15d52f548784` |
| 7 | `lemma` | [measurable_gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/measurable-gaussianpdfreal.md) | 77 | `result-track:e61f49226952690315a19d5700f31c4a9dd3afc0d4859b73d0de72ec0621b3d0` |
| 8 | `lemma` | [stronglyMeasurable_uncurry_gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/stronglymeasurable-uncurry-gaussianpdfreal.md) | 82 | `result-track:1b29b328e7c174c460deb4ecc215dfc12ffc06dbaf644993560498fcdb466992` |
| 9 | `lemma` | [stronglyMeasurable_gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/stronglymeasurable-gaussianpdfreal.md) | 86 | `result-track:c8d5cc8b14f88ce092c638dfe2e54bc4e8860007124c87cea0ba98c15b4ec525` |
| 10 | `lemma` | [integrable_gaussianPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integrable-gaussianpdfreal.md) | 91 | `result-track:12fc5ae600ad6221dfe8f8189a550e1a5b9331490fb996faadff296439c0bf6f` |
| 11 | `lemma` | [lintegral_gaussianPDFReal_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/lintegral-gaussianpdfreal-eq-one.md) | 113 | `result-track:28aa238619b35850a061b41d5c52367a4d9e564858e3f30dd87b6c02e1da44b6` |
| 12 | `lemma` | [integral_gaussianPDFReal_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integral-gaussianpdfreal-eq-one.md) | 130 | `result-track:4ca4df6a507ff49d8548b83f928046239fc1fa506380714f339abaf1116273bd` |
| 13 | `lemma` | [gaussianPDFReal_sub](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-sub.md) | 137 | `result-track:640ae577960bf5d1209823cdda13b54d2bbcfd2e9db6f477b02cbec681b0f8b0` |
| 14 | `lemma` | [gaussianPDFReal_add](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-add.md) | 142 | `result-track:09e088d67568f6acbe3a20727d660b9411d7880eae644e5a496a6aaa02216043` |
| 15 | `lemma` | [gaussianPDFReal_inv_mul](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-inv-mul.md) | 146 | `result-track:9ac8a2dd1d9d62e688caaa272a92cec46fe176ddc4cd95518062ef125e482430` |
| 16 | `lemma` | [gaussianPDFReal_mul](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdfreal-mul.md) | 158 | `result-track:c34936bb700f893756fceb46c9fb39aea046fad07fcadf4d5e00f839cac4f3e5` |
| 17 | `def` | [gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf.md) | 166 | `declaration-track:deadcbef88507553e2fdab551bfdefd707e350e03142d921a1b5385053cfd95a` |
| 18 | `lemma` | [gaussianPDF_def](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf-def.md) | 168 | `result-track:7b0f8c70383c15c82e94a4a610446abe9c2ee4e472c7002e2ced2a8b346585c4` |
| 19 | `lemma` | [gaussianPDF_zero_var](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf-zero-var.md) | 172 | `result-track:376266c568ac426b9f7761308c8b8246a1430b954c5e60f6d867d3f596be5e08` |
| 20 | `lemma` | [toReal_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/toreal-gaussianpdf.md) | 175 | `result-track:ff0039f636d4567e9065e7d09dbf5c39f4795c15cbedce90090e98a630ef2722` |
| 21 | `lemma` | [gaussianPDF_pos](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf-pos.md) | 179 | `result-track:bb60340abb5aaaabd1862a312af4b380ac7293ba6c6c2fc7a94dea30b8be73a5` |
| 22 | `lemma` | [gaussianPDF_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf-lt-top.md) | 183 | `result-track:edb26fcab71ebdedbe370ed8e971c139bc3666179a8753756a09c3ca6c0454e6` |
| 23 | `lemma` | [gaussianPDF_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianpdf-ne-top.md) | 185 | `result-track:cea4efbcf721f696d07f0fd94d351fed8681b35069d980073bf4eb625b903b76` |
| 24 | `lemma` | [support_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/support-gaussianpdf.md) | 188 | `result-track:edbc17049925a4035e8976a05c276584b4a7b4de2d60d14e614312e1f68cf285` |
| 25 | `lemma` | [measurable_uncurry_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/measurable-uncurry-gaussianpdf.md) | 195 | `result-track:005d57f463f6fba1e3ef41defa1809d130336aa49fe7e6c7b23d3f412701cca0` |
| 26 | `lemma` | [measurable_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/measurable-gaussianpdf.md) | 198 | `result-track:b35028de4473943444b7cc9a571381b41a9140ee65de0791a4c5e9718601899a` |
| 27 | `lemma` | [stronglyMeasurable_uncurry_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/stronglymeasurable-uncurry-gaussianpdf.md) | 202 | `result-track:8dcf00c0bf241a5a4e07ea4089bb70f53502873bf66cfafa3c48acc4d5ddb8f6` |
| 28 | `lemma` | [stronglyMeasurable_gaussianPDF](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/stronglymeasurable-gaussianpdf.md) | 206 | `result-track:d61ec5e6acbaf8f0f13d1e38f5c838d4e2114328c7cbbfd9e4718f1c7bc1cefb` |
| 29 | `lemma` | [lintegral_gaussianPDF_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/lintegral-gaussianpdf-eq-one.md) | 211 | `result-track:11b13881948a0cc5279902205fd085f67e339548e7860539f3f5429a0c9fc06f` |
| 30 | `def` | [gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal.md) | 222 | `declaration-track:4169be22d17aaddf7dc1ac10c0b3631c54ae362bcf3edbc4264aef166b2fcee2` |
| 31 | `lemma` | [gaussianReal_of_var_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-of-var-ne-zero.md) | 225 | `result-track:830a3f526c22b2bd7fe82280e6793e1c4118ce2c7f94f7dedb9251f044b4c270` |
| 32 | `lemma` | [gaussianReal_zero_var](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-zero-var.md) | 229 | `result-track:c405bb465d028088c05d956ff5dd7d9929097ad19fb2c0d13e9588be7a48ba1e` |
| 33 | `instance` | [instIsProbabilityMeasureGaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/instisprobabilitymeasuregaussianreal.md) | 231 | `declaration-track:320d25f9a532669ba72b0c0c5229e36d1bc5ef30915fcf8006a739007c89615a` |
| 34 | `lemma` | [nullSingletonClass_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/nullsingletonclass-gaussianreal.md) | 235 | `result-track:dc975849ade15a5ed849307f87f08b9d077d15c4cdf840c4a3fadca1db6924b3` |
| 35 | `lemma` | [gaussianReal_apply](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-apply.md) | 243 | `result-track:9d258cb1aadf7db62c54e48103dc0c8d8256428a0fb9e87d4886cdf78fc3b5e8` |
| 36 | `lemma` | [gaussianReal_apply_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-apply-eq-integral.md) | 247 | `result-track:3cd6bfffc9352c35f9fc62f54bbdb132a39b8392cf6b1c93dad060cccd1bfc1f` |
| 37 | `lemma` | [gaussianReal_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-absolutelycontinuous-source-edition-2.md) | 254 | `result-track:9df3670a9086c5a67305f5cfb48654f2998965f8ec210b098e49957ebccea97f` |
| 38 | `lemma` | [gaussianReal_absolutelyContinuous'](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-absolutelycontinuous.md) | 259 | `result-track:33bd2b33fdc9060ece88a377bbffd6761810e5d84a6c47d1fb686e7e7c287416` |
| 39 | `lemma` | [rnDeriv_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/rnderiv-gaussianreal.md) | 266 | `result-track:b284fd4f8acbad94a23c7ec043b5783e6794bf3aa15fd50e63da5dc3b7370fcb` |
| 40 | `lemma` | [integral_gaussianReal_eq_integral_smul](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integral-gaussianreal-eq-integral-smul.md) | 275 | `result-track:afb631cd500ec6a5b1d5cc00aa5521ce9b0dc31bc57312bd604c55620f5fca5a` |
| 41 | `lemma` | [measurable_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/measurable-gaussianreal.md) | 283 | `result-track:6fba7695d2c32f2db9f9919fc44eb752bac3609bc031cee28e6df5ca0e18b2fc` |
| 42 | `lemma` | [_root_.MeasurableEmbedding.gaussianReal_comap_apply](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/root-measurableembedding-gaussianreal-comap-apply.md) | 291 | `result-track:12c4dd209cdc4f1621f423bd71896d0c440e4f4f8fc576a7ed03b2744157731a` |
| 43 | `lemma` | [_root_.MeasurableEquiv.gaussianReal_map_symm_apply](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/root-measurableequiv-gaussianreal-map-symm-apply.md) | 300 | `result-track:d5426298c4960d323f1577e92bffcf87edffa5cbeb13cef9b24d5c349713e452` |
| 44 | `lemma` | [gaussianReal_map_add_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-add-const.md) | 309 | `result-track:15b6fa6afee0955cf3ec785108b7a51b1730c4e947c55b61e81e76d384b87682` |
| 45 | `lemma` | [gaussianReal_map_const_add](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-const-add.md) | 323 | `result-track:ece1d8875e2fb77886090b31ce3ced959f711387031dadbfb2b34ee17ddf6945` |
| 46 | `lemma` | [gaussianReal_map_const_mul](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-const-mul.md) | 329 | `result-track:03bebd055498ad4748a98b8a5cc320d2ef25a4a181907cb2c9760427f2529377` |
| 47 | `lemma` | [gaussianReal_map_mul_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-mul-const.md) | 355 | `result-track:09a517a2ec20234c59f899541f9af60b045951627e6286adc16f8cbed30b841e` |
| 48 | `lemma` | [gaussianReal_map_neg](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-neg.md) | 360 | `result-track:acd06c992acc6a07246058453d7ab9fc14b6a6318442ab4bf678a44ca0c9300b` |
| 49 | `lemma` | [gaussianReal_map_div_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-div-const.md) | 364 | `result-track:fd4f24328c476deaa52d6971c49928edd038da1659e58d23fce6ac42b667b970` |
| 50 | `lemma` | [gaussianReal_map_sub_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-sub-const.md) | 370 | `result-track:38e1d23a7ac98e63294a57a5d8fb928838dd9bfd1f9d0c59a1aa10e48fc9073b` |
| 51 | `lemma` | [gaussianReal_map_const_sub](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-const-sub.md) | 374 | `result-track:d690e3d55df2e182c393149e7bd680390c8348c3eb597ae352bc32d09a0c2cac` |
| 52 | `lemma` | [gaussianReal_add_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-add-const.md) | 385 | `result-track:971d8d56eb97e228bcef264deb719479e5b743535326d8422467e26268a7c39d` |
| 53 | `lemma` | [gaussianReal_const_add](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-const-add.md) | 391 | `result-track:fc7a909802c92f63ebec86ff1db1a188855dde5f91959cbef241f7e9aed895fd` |
| 54 | `lemma` | [gaussianReal_sub_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-sub-const.md) | 397 | `result-track:9759953b2db424aed2b672166b43761e97414e61db36f934cae0da3e487abc8c` |
| 55 | `lemma` | [gaussianReal_const_mul](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-const-mul.md) | 403 | `result-track:b4d60ea76517dbe1de87ff719e281f5bf362b62691975bf0d12edbaeaa71dba9` |
| 56 | `lemma` | [gaussianReal_mul_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-mul-const.md) | 409 | `result-track:f0483b268147c55b5e7565396b356f456e76d1364342d4e0ca53984c01cde427` |
| 57 | `lemma` | [gaussianReal_neg](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-neg.md) | 413 | `result-track:fdbc9eba78fbe1754bcbc8ca3f5690951f2dca4582a655cf6c174b42097c9f99` |
| 58 | `lemma` | [gaussianReal_div_const](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-div-const.md) | 420 | `result-track:4fc38705a96304393a629cd501f8820bd1db2e6193f32f4c9c4c7d9789f15a7e` |
| 59 | `lemma` | [gaussianReal_const_sub](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-const-sub.md) | 426 | `result-track:edd8ad8f5b6971ff60362f0955d53dfcde2b5c31e4843f018b1da05f71e5a130` |
| 60 | `theorem` | [complexMGF_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/complexmgf-id-gaussianreal.md) | 442 | `result-track:9472a470b0b154de2b8b677e4bef6a7c4beb847d754ef0b34a3177664a079a5b` |
| 61 | `theorem` | [complexMGF_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/complexmgf-gaussianreal.md) | 477 | `result-track:2f65b36c3452687b0274ba4a8dd21516d91e67d1fd8db3b6a2cd0eba6f16a2c6` |
| 62 | `theorem` | [charFun_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/charfun-gaussianreal.md) | 483 | `result-track:74c4d0254ebc58b191eccf337e18c56866ee51b873de536b36dc432e5ed57e63` |
| 63 | `theorem` | [mgf_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/mgf-gaussianreal.md) | 492 | `result-track:386458c0125acfcceecacf9ba7cea44fb12f7bb1edaaa376150c81ece5f969f2` |
| 64 | `theorem` | [mgf_fun_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/mgf-fun-id-gaussianreal.md) | 499 | `result-track:c7001327c76f6bae423f4c48460877f8bcad60538ffebaf2a52692db28a5405f` |
| 65 | `theorem` | [mgf_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/mgf-id-gaussianreal.md) | 505 | `result-track:e5877ca229959503b172ed8005fe392462575275661d367bffd5542b6984061c` |
| 66 | `theorem` | [cgf_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/cgf-gaussianreal.md) | 510 | `result-track:c4040a1755e3f7d4f1faaf65d42c93bed8ca29df3102a1f0072f5e25e7b89e39` |
| 67 | `lemma` | [integrable_exp_mul_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integrable-exp-mul-gaussianreal.md) | 514 | `result-track:762a9a796642ff300edf23481a0f3b005dd6b592e55aac0dcb7a8b0828d7b1d7` |
| 68 | `lemma` | [integrableExpSet_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integrableexpset-id-gaussianreal.md) | 520 | `result-track:b4b6e68ef2e40ccc746f69efd70d49fed3c16088c2108689220a906b34163998` |
| 69 | `lemma` | [integrableExpSet_fun_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integrableexpset-fun-id-gaussianreal.md) | 525 | `result-track:8cec00207380ef8ae066b498963565dc6f8c2b7a785d8338a8cff232775586d7` |
| 70 | `lemma` | [integral_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integral-id-gaussianreal.md) | 537 | `result-track:49d800ecf4176073f09e008b25f7f36987a2b8dbf36f594a6d4b3dce7ed646a4` |
| 71 | `lemma` | [variance_fun_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/variance-fun-id-gaussianreal.md) | 547 | `result-track:b8f1278c5b6af715c1254a353edc11cd4cfdedee2b0e8805e8aa2efb94c1a58b` |
| 72 | `lemma` | [variance_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/variance-id-gaussianreal.md) | 572 | `result-track:2bf0a50d15f3e4b831bfd5d30845a9430f00db4ddec0d95fc167a0f7c672f4f9` |
| 73 | `lemma` | [memLp_id_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/memlp-id-gaussianreal.md) | 577 | `result-track:55acfe3f5d002c557099981881a3731029773be9bb4e38a67974c51dab83a065` |
| 74 | `lemma` | [memLp_id_gaussianReal'](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/memlp-id-gaussianreal-source-edition-2.md) | 582 | `result-track:d619d65950e2cedbef515a845d1d1eb2726c72bee490d19bae53ff7e5375365e` |
| 75 | `lemma` | [gaussianReal_ext_iff](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-ext-iff.md) | 589 | `result-track:4b4695368925dfeb496f743089e6708dc578c16e6b0a15346b54993cf3e78e46` |
| 76 | `lemma` | [gaussianReal_map_linearMap](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-linearmap.md) | 603 | `result-track:795d3e53b692aea774ccd281ec3894a5cea3a80a8dcecc49cf3d46dfcb0f15a3` |
| 77 | `lemma` | [gaussianReal_map_continuousLinearMap](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-map-continuouslinearmap.md) | 611 | `result-track:ebd7d43710c9a682837eba1254380fbf75f2959fe8102e0d3e086ce9fd38166d` |
| 78 | `lemma` | [integral_linearMap_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integral-linearmap-gaussianreal.md) | 616 | `result-track:9e40abbf06753e63247f742ac20699e8c5c61bd3db9e2fe8bee5f26a2e57b921` |
| 79 | `lemma` | [integral_continuousLinearMap_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/integral-continuouslinearmap-gaussianreal.md) | 623 | `result-track:b27c8f741415ce4c34ecd476ceb874751336516cdf56774c1786ae5f409630b5` |
| 80 | `lemma` | [variance_linearMap_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/variance-linearmap-gaussianreal.md) | 627 | `result-track:188c5f4cd0819b34ca589db48971734a2582d58dd9e8ea8de021c78b0685ca33` |
| 81 | `lemma` | [variance_continuousLinearMap_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/variance-continuouslinearmap-gaussianreal.md) | 634 | `result-track:f7c63f1a1c907e423b80e7edea06b635c18d6f6e9887a9b65366384ce4327aac` |
| 82 | `lemma` | [gaussianReal_conv_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-conv-gaussianreal.md) | 642 | `result-track:48663fbad1f7d82ebd25c232dab37fe9e00ca7189b6ec5be9c31ce2dd3f242ba` |
| 83 | `lemma` | [gaussianReal_add_gaussianReal_of_indepFun](../../../../ProbabilityTheoryAndStochasticProcesses/RealPublic.lean/declarations/gaussianreal-add-gaussianreal-of-indepfun.md) | 653 | `result-track:7ae3ddce1078cce3229854d7e4a34f2952e9c528212064fda12a095a50da1ac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d572ce9c98d6d4ae21a0215f08e5b56ad0f710477cd6767d4bdcd6bdc7c1d715 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant9e2bc94dd8c51e27118fd577dcf9c924d81a8cf5e03d7d1832a8527d3a12a767.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant9e2bc94dd8c51e27118fd577dcf9c924d81a8cf5e03d7d1832a8527d3a12a767.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
