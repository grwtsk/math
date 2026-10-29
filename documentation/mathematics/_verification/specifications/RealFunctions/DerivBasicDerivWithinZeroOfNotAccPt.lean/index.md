# Verification target: Deriv Basic Deriv Within Zero Of Not Acc Pt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059f5456357b2365bf906d3b0e80f5d1ae3c8d99",
  "lexical_observation_count": 165,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant358ed02d0664d65eb5846345666a70f39c921df86b19d29fc4580ed7aeaba6f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/index.md) · [Full source](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059f5456357b2365bf906d3b0e80f5d1ae3c8d99`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant358ed02d0664d65eb5846345666a70f39c921df86b19d29fc4580ed7aeaba6f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant358ed02d0664d65eb5846345666a70f39c921df86b19d29fc4580ed7aeaba6f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter.md) | 109 | `declaration-track:bc1f5a384f68dee3c189a25d8ccc14f960e2a734be0fe7ad49e3889f306d9c6b` |
| 2 | `def` | [HasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat.md) | 116 | `declaration-track:da8056cb008277d079dee1be0d105a8aac7c85793ef48cd1c4a13a001bd2df94` |
| 3 | `def` | [HasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat.md) | 123 | `declaration-track:6372d792ff640041fde6e8efbf038d51a1a6f5639e5129c062e78e4be3bbd7a2` |
| 4 | `def` | [HasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat.md) | 129 | `declaration-track:b27cc98164a92195171563453e0f023a50352bfaf8ea33e87cb6e9aac5e2550d` |
| 5 | `def` | [derivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin.md) | 138 | `declaration-track:e0ff8b87839b040f6a6f415ff76f2bdfc2789bdcde37f53b874e12e1fd4212fd` |
| 6 | `def` | [deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv.md) | 146 | `declaration-track:8173ef3e336788cfdfcd67f53cd031705b3f39f923d26459fbdf8d8997db7685` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 158 | `result-track:6595198b206ba569d9f0a6cf148c8d231a92f1ebcc54bd220ddf908fd406f953` |
| 8 | `theorem` | [HasFDerivAtFilter.hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivatfilter-hasderivatfilter.md) | 161 | `result-track:6bec3ca50ce502992ed27643b7e71a59473036ebeffc7aa784761b54eab05b38` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 166 | `result-track:be7096ee7285869c8551c960216d04ee2de0501d09cd84416e4b8eedfb43db42` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 171 | `result-track:7385a87a807e6a03ad01513d2aadfd62e1a96d76cb1e4a580201e83af2044696` |
| 11 | `theorem` | [HasFDerivWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivwithinat-hasderivwithinat.md) | 175 | `result-track:acfbaf99d0ff49f349a9a5f282d680987fb5d259275cc5f67a38578a5258bd87` |
| 12 | `theorem` | [HasDerivWithinAt.hasFDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-hasfderivwithinat.md) | 179 | `result-track:f22fbac238d5b53c7fd55cb3f9c8de27f3566519f174b69b8191b71b37edacc5` |
| 13 | `theorem` | [hasFDerivAt_iff_hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivat-iff-hasderivat.md) | 184 | `result-track:791aa5d966a96d333b33850f9d180fec6436ecb049efcb2127175712fc416148` |
| 14 | `theorem` | [HasFDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasfderivat-hasderivat.md) | 187 | `result-track:e650eeb43574b034e628325a3b000c3e519e430b1c410b35c73e8210dfa65dc0` |
| 15 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 190 | `result-track:7b598283069747294a0ed605ae33fe9ea207138ec8c17a52f65c4d9de30565ba` |
| 16 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictfderivat-hasstrictderivat.md) | 194 | `result-track:53aa8ded0e479210ca667e7a7e75e3e72de58c5f62dc9e524df9f4a8f316ce18` |
| 17 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 198 | `result-track:7c8374abbb43660f29b0651f00816860d2823fad597bbae35e1b4aa932948812` |
| 18 | `theorem` | [hasDerivAt_iff_hasFDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-iff-hasfderivat.md) | 205 | `result-track:6fce669fab1d5d71ded0649aaf07d589d550a9c9b09946fe74c49c39a2935d77` |
| 19 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 212 | `result-track:5b648b0c93a60b14f3fe7962c777da7288626442de82a585c571c215c2032b16` |
| 20 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 218 | `result-track:c5c527f61354e4d1676fdace87c0f3b60da5761cefaa5d1bde9dd0eff84d2bcf` |
| 21 | `theorem` | [derivWithin_zero_of_not_accPt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero-of-not-accpt.md) | 233 | `result-track:700cd51098177c7e400408acd58bb904602f1ba2f581a2ba951da841af2baf8c` |
| 22 | `theorem` | [derivWithin_zero_of_not_uniqueDiffWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero-of-not-uniquediffwithinat.md) | 236 | `result-track:a262ef6ca16e6d928b97abd4141e24dc87f2deef9d74c5f0bd107d28e30ac905` |
| 23 | `theorem` | [derivWithin_zero_of_isolated](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero-of-isolated.md) | 242 | `result-track:064df4ebae114f1056e1ace3ff06d755f93df3cea52e5f73ead0a29eb153d0dd` |
| 24 | `theorem` | [derivWithin_zero_of_notMem_closure](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero-of-notmem-closure.md) | 245 | `result-track:b216784bf4fbbce8f5df330a1dd26c0d739b6d31fc4587143ecc136468c6f319` |
| 25 | `theorem` | [deriv_zero_of_not_differentiableAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-zero-of-not-differentiableat.md) | 251 | `result-track:713acc36f532f5e568705f9d6e57484cd0ae43bf30f8a1178e70e972d8013937` |
| 26 | `theorem` | [differentiableAt_of_deriv_ne_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiableat-of-deriv-ne-zero.md) | 256 | `result-track:07d9be1f06f7e1c55a04fd1205259265deea99d97ba40226f265bfbb1104acca` |
| 27 | `theorem` | [UniqueDiffWithinAt.eq_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/uniquediffwithinat-eq-deriv.md) | 259 | `result-track:f4d6c3b20cc650321814aaf92146e9ec8cda077ebe76dcd51445c78dba2faf21` |
| 28 | `theorem` | [hasDerivAtFilter_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-iff-islittleo.md) | 263 | `result-track:49572bd04e2651c1c98c6e1c4f6585d1c91ce62b9789165a21808cd47fe9c1b2` |
| 29 | `theorem` | [hasDerivAtFilter_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-iff-tendsto.md) | 267 | `result-track:f7f6ddc0fa62ecb7e306544afd8deae11231d849143930109dbd30a36ee6e484` |
| 30 | `theorem` | [hasDerivWithinAt_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-iff-islittleo.md) | 272 | `result-track:29f5e22f39e6e658a8eb589943f255579cf89c9dbc0722cca6c9a3baa9c9a99e` |
| 31 | `theorem` | [hasDerivWithinAt_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-iff-tendsto.md) | 277 | `result-track:03554f570b8f397dcbb5b0cc934aebab13bc5fe14c26e401dc928574d1471ef6` |
| 32 | `theorem` | [hasDerivAt_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-iff-islittleo.md) | 282 | `result-track:67a6b08f96cc735c453073f4fc5f2543a6d96f477f77717fd77d04c2d8d984f9` |
| 33 | `theorem` | [hasDerivAt_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-iff-tendsto.md) | 286 | `result-track:9646268a948a8946d4746c8e2b6a4efe7326cafcd2558a4abe665dc9a94b3b99` |
| 34 | `theorem` | [HasDerivAtFilter.isBigO_sub](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-isbigo-sub.md) | 290 | `result-track:58069b795927fff056ea6f06c1f55b5cbfea55478d9695eabfc9b5d4de3e2dea` |
| 35 | `theorem` | [HasDerivAtFilter.isBigO_sub_rev](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-isbigo-sub-rev.md) | 294 | `result-track:0fbc2cde29fad2beb457bb69015b372b406f0086039766c4e7ad6d13164ed8c7` |
| 36 | `theorem` | [HasStrictDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-hasderivat.md) | 300 | `result-track:38d4ab6b85575cf8383a906d84de2930d02bcb20b6d5f30271725422cd30d7f1` |
| 37 | `theorem` | [hasDerivWithinAt_congr_set'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-set-source-edition-2.md) | 303 | `result-track:ac4ca50a2f4e2698d3f04c060846cab8fd3b13c1a3c53a06bfa1317122c99a31` |
| 38 | `theorem` | [hasDerivWithinAt_congr_set](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-set.md) | 307 | `result-track:3e35abb1f9a38b1011b78825964f3e16209505290e7f0956adbb110f47e05bfa` |
| 39 | `theorem` | [hasDerivWithinAt_diff_singleton](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-diff-singleton.md) | 314 | `result-track:128832aa12687d38d309e5f34d9611b0d27b4e04bcc9e07f08f406652e7c6100` |
| 40 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-ioi-iff-ici.md) | 319 | `result-track:8d7cf8e74a9439b8e645c3e9029432ede957a854dec7fc2f5115106fa1abdb95` |
| 41 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-iio-iff-iic.md) | 326 | `result-track:95f270310a554dc2a9f0430103c72fe430230b9b6c2875d740dce3f2ba4977fa` |
| 42 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-ioi-iff-ioo.md) | 332 | `result-track:e80d9e5f5cc4c3175f1e05ac805ef268736fac7e8cd31fc173a7c89a1735c8c6` |
| 43 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-iff-islittleo-nhds-zero.md) | 338 | `result-track:763dbfacc62c5eed5b67568d253d2776efc61d126a48f5c6abead3c40cd2c352` |
| 44 | `theorem` | [HasDerivAtFilter.mono](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-mono.md) | 342 | `result-track:3e7227d8725504f3fb3d50de25010bf21cc8b7aab52238bc1fb97ba22f469f40` |
| 45 | `theorem` | [HasDerivWithinAt.mono](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-mono.md) | 346 | `result-track:eb57e1fcc5f15f5d7e3f4d74c5660d6c944eb262ffa47284ffde6a08027f629f` |
| 46 | `theorem` | [HasDerivWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-mono-of-mem-nhdswithin.md) | 350 | `result-track:32cdd738bd0b0f6764c4c03e078f5a17dbdc95d06f0d34e44339050af5159c5b` |
| 47 | `theorem` | [HasDerivAt.hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-hasderivatfilter.md) | 357 | `result-track:c1490a34e05784da13ac4aac8f164e33de3fab659c5b948217466ac9ad7af86a` |
| 48 | `theorem` | [HasDerivAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-hasderivwithinat.md) | 361 | `result-track:389d892f556877a692d1407ab93794b02330757639c8e4a114d8918b69e46e04` |
| 49 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-differentiablewithinat.md) | 364 | `result-track:42b019525ef9989b40c100d0269219df93f69ce586c2d466fd2f549d56a43dca` |
| 50 | `theorem` | [HasDerivAt.differentiableAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-differentiableat.md) | 368 | `result-track:8ab09338d6e70a8d788c75ecac175bd151b02b83a38d7c3b86497af0e3894af6` |
| 51 | `theorem` | [hasDerivWithinAt_univ](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-univ.md) | 372 | `result-track:551d114f3f4da8f5afe409a7af9c865fb0029bd451683bb6f173a3270a0bee80` |
| 52 | `theorem` | [HasDerivAt.unique](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-unique.md) | 375 | `result-track:9dfbc62cba47a72e2f28574a6db6c96fe599d22b626d3cfa41df78bb2c5301ac` |
| 53 | `theorem` | [hasDerivWithinAt_inter'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-inter.md) | 378 | `result-track:a5d627847a7000999304c176e1d997167c74be3fe08622051c6533f2f817b36d` |
| 54 | `theorem` | [hasDerivWithinAt_inter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-inter-source-edition-2.md) | 382 | `result-track:ca9a781e46a5c86a4f39ea8f27518fa998c29a8801778c5ae246f5793b17cb00` |
| 55 | `theorem` | [HasDerivWithinAt.union](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-union.md) | 386 | `result-track:38605202b1621a18808ce38240283645cd1fcd071eee05a5d4fc4fb36b41e270` |
| 56 | `theorem` | [HasDerivWithinAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-hasderivat.md) | 390 | `result-track:3208875b6d9df41099c690830f7a2a7e26859838125e2a921c3cdbf0c04a03a0` |
| 57 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiablewithinat-hasderivwithinat.md) | 394 | `result-track:86404829ff7a879d9e1cd09af8194dc253d6306fc3df2ee07f9479f3f590865f` |
| 58 | `theorem` | [DifferentiableAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiableat-hasderivat.md) | 398 | `result-track:1b603937af88496ebdad5428328ebdf68d5457d73cb16e4cd955ffe2d88efc23` |
| 59 | `theorem` | [hasDerivAt_deriv_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-deriv-iff.md) | 402 | `result-track:ac042e6ff82949920db98050fe5435787c3573083c3601535a645afc6353d789` |
| 60 | `theorem` | [hasDerivWithinAt_derivWithin_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-derivwithin-iff.md) | 406 | `result-track:68d7d6117d0ec44c477370834aaf22c5ee77982c2323cbdf362b221278df34ee` |
| 61 | `theorem` | [DifferentiableOn.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiableon-hasderivat.md) | 410 | `result-track:65b06d61a286a4998bd46bd93e9e2440e88a7767e6367eb85d4ffbaaab64c726` |
| 62 | `theorem` | [HasDerivAt.deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-deriv.md) | 414 | `result-track:80cc30721519c77644f6f8c9065342b1344b900fab24714162beef5cf0b350c3` |
| 63 | `theorem` | [deriv_eq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-eq.md) | 417 | `result-track:67869ebc959934c48b6ad32b27c50d51f4746c133d550b6e701eafa7428dc8e9` |
| 64 | `theorem` | [HasDerivWithinAt.derivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-derivwithin.md) | 420 | `result-track:8f47aa25dccb42f53de155dac93cd752cccb15bab456928807d70d80f789e6fa` |
| 65 | `theorem` | [fderivWithin_derivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/fderivwithin-derivwithin.md) | 424 | `result-track:0d0c7b6adcf50ff37158b2666a8fad01d7bd77908c25ed92a4d9bd8c0f914323` |
| 66 | `theorem` | [derivWithin_fderivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-fderivwithin.md) | 427 | `result-track:3a73678b00d4ea59d2a9c026520120a4cbe21293415809c5f2dcddeb7ddad645` |
| 67 | `theorem` | [norm_derivWithin_eq_norm_fderivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/norm-derivwithin-eq-norm-fderivwithin.md) | 430 | `result-track:08faf3fcdd71eb635f39ca953be1129b328af9011faf714439f6a3e8b96e5b7d` |
| 68 | `theorem` | [fderiv_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/fderiv-deriv.md) | 433 | `result-track:e6a29eb012b49ab3e3e519cf164a1e8cce7ddd6ae9c06bfcad863d4a8238fdc6` |
| 69 | `theorem` | [fderiv_eq_smul_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/fderiv-eq-smul-deriv.md) | 437 | `result-track:30e22729a59ac1adcb02d7eea2af5dd1537f598f2b5c4f8831dee826bed8a371` |
| 70 | `theorem` | [deriv_fderiv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-fderiv.md) | 441 | `result-track:e28ba2fb0a29efd65e7fd3e9c02afa33ea37f42cf093b040a9318e12f21d7755` |
| 71 | `lemma` | [fderiv_eq_deriv_mul](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/fderiv-eq-deriv-mul.md) | 444 | `result-track:71b523f5e8ce045de86af54c35f614a9b313e8cc2e465d28042a5d646e4f7947` |
| 72 | `theorem` | [norm_deriv_eq_norm_fderiv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/norm-deriv-eq-norm-fderiv.md) | 447 | `result-track:372802aafd62185909da94dd9ef031e6a6282a1c5d9b13c3dfbfd621ecba243f` |
| 73 | `theorem` | [DifferentiableAt.derivWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiableat-derivwithin.md) | 450 | `result-track:1c97d9146b0be20ed9448cfba4433a636761c30252adab20804f983ad168388d` |
| 74 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-deriv-eq-zero.md) | 455 | `result-track:113eb0fa31956874c42164ea3048882122b0fc9682bb25427ff19e8631319b5f` |
| 75 | `theorem` | [derivWithin_of_mem_nhdsWithin](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-of-mem-nhdswithin.md) | 460 | `result-track:71283768050f4786240e46bd39b1f1a4b3f6fdef28fb8dc6ef86fcb8d7c8dbe0` |
| 76 | `theorem` | [derivWithin_subset](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-subset.md) | 466 | `result-track:5c795ddcd29d2b421417cae6db934538aa291f02bcca5c9288f79ca16713349c` |
| 77 | `theorem` | [derivWithin_congr_set'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-congr-set.md) | 470 | `result-track:9675d3e04719c356a236fdbec406919284d69d6712f0bc41e4c4969a975c6e11` |
| 78 | `theorem` | [derivWithin_congr_set](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-congr-set-source-edition-2.md) | 473 | `result-track:b39faa8acb1a76509191df9cffa30f90e73b2ea86bf4449bc12af7400a3dcf50` |
| 79 | `theorem` | [derivWithin_univ](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-univ.md) | 477 | `result-track:10aa465476853f981b74e9496f00076b653f82a23d817771797929f330333b5b` |
| 80 | `theorem` | [derivWithin_inter](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-inter.md) | 482 | `result-track:6a83708f286754640de1800363745a41b397e76062c7da7badec41695d5145b5` |
| 81 | `theorem` | [derivWithin_of_mem_nhds](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-of-mem-nhds.md) | 486 | `result-track:dba807809095c21f471f0cd89ec0cbf930989d32984436484297e789cf8f9c9d` |
| 82 | `theorem` | [derivWithin_of_isOpen](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-of-isopen.md) | 489 | `result-track:0fc63d4d94cd0eac30a88d545b88ae67fccca97ccb446d86ee8cb66825f7898f` |
| 83 | `lemma` | [deriv_eqOn](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-eqon.md) | 492 | `result-track:fbd516c2b5e1b2b9022d40ef23241b9b327acfc7c63d372c19ad28ac723d710c` |
| 84 | `theorem` | [deriv_mem_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-mem-iff.md) | 496 | `result-track:f9373b97c4df2ba4677fb79fa6e6d3bb9dbba65bca3bcfd16c99fb1326a4965f` |
| 85 | `theorem` | [derivWithin_mem_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-mem-iff.md) | 501 | `result-track:d6204194d0379eadbb88cb87929caed85e81ab8e5543af4b605bfb723f3819d2` |
| 86 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/differentiablewithinat-ioi-iff-ici.md) | 508 | `result-track:6b8b67b07bc3456f09117939b134d9ef50c4c7fbb3b5dbc92874d91f07252ff8` |
| 87 | `theorem` | [derivWithin_Ioi_eq_Ici](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-ioi-eq-ici.md) | 514 | `result-track:1ad673c13185078d4569cc48706216d879a1ae5d6189965e771c3644dc72322c` |
| 88 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 528 | `result-track:21296cc60a8fe006504639ec64e2ed1f899e942fdff8475dfd9adf38ceb4f4c3` |
| 89 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 532 | `result-track:bcbcb532273c8183547878399f42d1f70ee1f46ab1a6f80f2c2c5c698d783ba3` |
| 90 | `theorem` | [HasDerivWithinAt.congr_mono](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-mono.md) | 535 | `result-track:caf9073f5bf5db5727fc9224c39f96121c8c5d4fa28330cb2b374e0dc1eea7d0` |
| 91 | `theorem` | [HasDerivWithinAt.congr](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr.md) | 539 | `result-track:5c54dc02b3d82820e64dabc440afbfedf6ae5fca80dc6abee2792d04a461eebf` |
| 92 | `theorem` | [HasDerivWithinAt.congr_of_mem](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-of-mem.md) | 543 | `result-track:667babfa8d72a4d9340851f51ea1e86e256a300093b6720f8d4225f7eb9ae64c` |
| 93 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 547 | `result-track:f32efeac0fc8363246747202e83d30673778f5756413a50d2b06acc7e651cb19` |
| 94 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-hasderivwithinat-iff.md) | 551 | `result-track:cca3b677ac5fbc278ccda6250e0912500b33329e47f64469480b3f1e3b7606b7` |
| 95 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 555 | `result-track:d734e7d1eefe1ced1d5d3189aa358360625b84a72916593ea8657802288e76ff` |
| 96 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff_of_mem](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-hasderivwithinat-iff-of-mem.md) | 559 | `result-track:6bddc0e9774cb7b540e17b844ec9e33c21a5ae35225bcce63e31b978383b60fe` |
| 97 | `theorem` | [HasStrictDerivAt.congr_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-congr-deriv.md) | 564 | `result-track:df58e82e82ee3507f9380e20a4229449d693d31e4db5b9d519e1b794c34cbebd` |
| 98 | `theorem` | [HasDerivAt.congr_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-congr-deriv.md) | 568 | `result-track:4b28465adedf9472abe82e229031c17b8a1c7d4461456626f13145097d883b82` |
| 99 | `theorem` | [HasDerivWithinAt.congr_deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-congr-deriv.md) | 571 | `result-track:0b113b8406858773bd3cb95fd9cc8d7693c94620d175cc9cc2b1ca8d8b34d083` |
| 100 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-congr-of-eventuallyeq.md) | 575 | `result-track:3cc8b4e60c6738c0afee617acd155503c85b42f2ac3d0a0f5b0239932fdbf33a` |
| 101 | `theorem` | [Filter.EventuallyEq.hasDerivAt_iff](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-hasderivat-iff.md) | 579 | `result-track:78ff0e515b41893dcd361493414b0039a56bff1eabc6aee9a77865117476531f` |
| 102 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-derivwithin-eq.md) | 583 | `result-track:8e6a4d20204f10b559ba37900df8e3309b616bb708a8e6094803384b52fef1f6` |
| 103 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_mem](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-derivwithin-eq-of-mem.md) | 588 | `result-track:aaa156187268ad1a6b520c433855b331767a5bf51fe3b61aeb57eaccdb997e14` |
| 104 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_nhds](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-derivwithin-eq-of-nhds.md) | 592 | `result-track:b25a34844020743c3a8dde71661da12808bb2838ba98e751adf80c0ef040830a` |
| 105 | `theorem` | [derivWithin_congr](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-congr.md) | 596 | `result-track:6af33de28173ce005bcf1bb741f7c968846d47401340b079bd02777de98aba15` |
| 106 | `theorem` | [Filter.EventuallyEq.deriv_eq](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-deriv-eq.md) | 601 | `result-track:15fefbdfd63b5cf88ce862c50ee24381e24b6709d38bb5356ff6db63f43e9e7b` |
| 107 | `theorem` | [Filter.EventuallyEq.deriv](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/filter-eventuallyeq-deriv.md) | 605 | `result-track:786b288c60813e679565c152bf4b5b314cc799275064af15f58fab12b03b8383` |
| 108 | `theorem` | [hasDerivAtFilter_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-id.md) | 616 | `result-track:8f70d52bde255a3c2717c951b7d9a9e91040b82046ea0a90a3eba0b304282469` |
| 109 | `theorem` | [hasDerivWithinAt_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-id.md) | 619 | `result-track:16467481dc26fa4710a42cd6e0397c3c5f99bdaafcce345bba0c340727ce5088` |
| 110 | `theorem` | [hasDerivAt_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-id.md) | 622 | `result-track:465f7bf2093863618847ebdf7254c6130b482282de06fb1c1e5b30af685eb327` |
| 111 | `theorem` | [hasDerivAt_id'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-id-source-edition-2.md) | 625 | `result-track:891475117fd24695d8ee02bff3c942dbbea6cc7438da2e7873cb934cf67f011f` |
| 112 | `theorem` | [hasStrictDerivAt_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-id.md) | 628 | `result-track:5f2f2f4fc59a961792789e6562a7f54a43a214332488b70fc1092a2b9f2c19dd` |
| 113 | `theorem` | [deriv_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-id-source-edition-3.md) | 631 | `result-track:b8b4a819232763fd96ee7edd6dac16b43e815328611f3c29b5a839aa1fb75303` |
| 114 | `theorem` | [deriv_id'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-id-source-edition-2.md) | 635 | `result-track:412545c95c3ee87890c2a0209d10219668fc1d054600ca8656c3ea322d748d7f` |
| 115 | `theorem` | [deriv_id''](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-id.md) | 640 | `result-track:259c85a5a45e7a5303cdb0e62fcd90aa97098abd6f3d6120b34d8b6cb04540f3` |
| 116 | `theorem` | [derivWithin_id](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-id-source-edition-2.md) | 643 | `result-track:eaadf01c1ea4b2f72bab7c0454ae1fd5fed8928b416a6cfaeb7214838611b964` |
| 117 | `theorem` | [derivWithin_id'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-id.md) | 647 | `result-track:ca56b2376a8d6dd34ed86386375c84f1829b6adf54bc79adf7e20922614cbed2` |
| 118 | `theorem` | [hasDerivAtFilter_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-const.md) | 661 | `result-track:33bf8dc3ea1eb4fe7f0970b75dd3e72c10fab974472c0564331953e91b95b54d` |
| 119 | `theorem` | [hasDerivAtFilter_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-zero.md) | 664 | `result-track:dc05cc8f1a9ff0e1715bdfcafbcb45d825d655fe10776f498c421a86e2a48851` |
| 120 | `theorem` | [hasDerivAtFilter_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-one.md) | 667 | `result-track:61405e36a25e8d7dd35f1af00d46ea3128286a4c2a5bed191e09d143777e711a` |
| 121 | `theorem` | [hasDerivAtFilter_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-natcast.md) | 670 | `result-track:b51b0dadab8ea5ee0e1d83c9a02e745bf5918228cc3673014b0cc5a95b6d58ad` |
| 122 | `theorem` | [hasDerivAtFilter_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-intcast.md) | 673 | `result-track:1e7308467fa67a60670c47f408bf2dfe0694c252853352bc25d725dae3212d47` |
| 123 | `theorem` | [hasDerivAtFilter_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-ofnat.md) | 676 | `result-track:1a951416988adf2eb2edb04605a99433ae7ed061306348511107d5f2efd9131e` |
| 124 | `theorem` | [hasStrictDerivAt_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-const.md) | 679 | `result-track:4231d3723e9adc0616e6058ad95fc2733eb5dd594f8c04e3f190bce15fdacdde` |
| 125 | `theorem` | [hasStrictDerivAt_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-zero.md) | 682 | `result-track:e3ac057b9ac642abd7815731ed06799951aaf99e8b8c2b7ac74d8d9641c9660f` |
| 126 | `theorem` | [hasStrictDerivAt_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-one.md) | 685 | `result-track:cb6bffa2456e73377a50a9d7cd913dc2cc4ccab46171549a85e2a17cd12037d2` |
| 127 | `theorem` | [hasStrictDerivAt_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-natcast.md) | 688 | `result-track:1eac5fa0bc1fa3cc0a41344873cd7f2ffcc71777953ba10dacabf7d101209248` |
| 128 | `theorem` | [hasStrictDerivAt_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-intcast.md) | 691 | `result-track:63341a6ff5b82f65a6a36a33320a4a5f402fb9f30ccd7a3f8d59f2b1ec6ea518` |
| 129 | `theorem` | [HasStrictDerivAt_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasstrictderivat-ofnat.md) | 694 | `result-track:800df190a029dd9498f3cc261728df682a573917047e160ff0fe16567c265f1d` |
| 130 | `theorem` | [hasDerivWithinAt_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-const.md) | 697 | `result-track:fed010bbb873811cbb260babd764432e01434795026dad3f1cab0b99dde05617` |
| 131 | `theorem` | [hasDerivWithinAt_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-zero.md) | 700 | `result-track:9abe937005e90783c93245fb9f697cd12ca094ee70587c8be662d07593a6f439` |
| 132 | `theorem` | [hasDerivWithinAt_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-one.md) | 703 | `result-track:f0af6ba379d790067421bcccb6f24652690711720cc8a292694249585111d12b` |
| 133 | `theorem` | [hasDerivWithinAt_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-natcast.md) | 706 | `result-track:38f41e5b86b837c5f4cdfc2f60d02171b227768fda46377afa7b921b75072da9` |
| 134 | `theorem` | [hasDerivWithinAt_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-intcast.md) | 709 | `result-track:847e33dc3c87ea19f6cfc0a6263b64cea1a77948108c15d5075c4e9d9a4960b5` |
| 135 | `theorem` | [hasDerivWithinAt_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-ofnat.md) | 712 | `result-track:1abe33fe16beaa689d2ad6a4f8b7b3401e191ece0b01edbfa299488b3f94c93a` |
| 136 | `theorem` | [hasDerivAt_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-const.md) | 715 | `result-track:3cc859a7ad16d7569706644e25b2673e2bdf15584fec8394acd859316b8c9009` |
| 137 | `theorem` | [hasDerivAt_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-zero.md) | 718 | `result-track:a194d1fe192fbfd1eb7de92477e0538c1def6682006b5b17c4c1ccc2d47dfdce` |
| 138 | `theorem` | [hasDerivAt_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-one.md) | 721 | `result-track:a3d5dbc854808e6dd7fda6d8f43ba1bfd591b3c7e4e23f03177da18c7137f42e` |
| 139 | `theorem` | [hasDerivAt_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-natcast.md) | 724 | `result-track:00e48c42af0dadf2a7c289a21e7562d7a56f999e12219bd23140a82a31c97e43` |
| 140 | `theorem` | [hasDerivAt_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-intcast.md) | 727 | `result-track:09a7921eee7d8deb2ab51dd1eec50dcc33cd7d76ee4218c6562f77cd268da415` |
| 141 | `theorem` | [hasDerivAt_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-ofnat.md) | 730 | `result-track:874a1b993657ecb5d12ff1d65d68b140db909b79b95f49f7d5bbbca178c1d095` |
| 142 | `theorem` | [deriv_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-const-source-edition-2.md) | 733 | `result-track:dc0e087c2d4e47653f1102d5f6ea532710cbd6ff59c5e07cb0ab2cb0ca9e95a9` |
| 143 | `theorem` | [deriv_const'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-const.md) | 737 | `result-track:2a8529b3d9978ab3b77df443fed5a96ce583c75a5719ed8ff82a4c229da31240` |
| 144 | `theorem` | [deriv_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-zero.md) | 741 | `result-track:93ee86d36e1fffcdf6cd6a49e09e6346544d6607cdf6c4b41189dd11af6ab929` |
| 145 | `theorem` | [deriv_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-one.md) | 744 | `result-track:c56b4c328c7a76bea0ec0c65b6ded6907f50c5ed9001f518063dc4b9bec95543` |
| 146 | `theorem` | [deriv_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-natcast.md) | 747 | `result-track:0fe3c02114e999413041417045e78bba43854d97e1960f749cb9d9eb255abbcf` |
| 147 | `theorem` | [deriv_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-intcast.md) | 750 | `result-track:d32895bee6578cb1a2d858233d003121d54140522633dc3f731baf40794d6f19` |
| 148 | `theorem` | [deriv_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/deriv-ofnat.md) | 753 | `result-track:10c7f882a57737aaff8ad021654d5aa24e144169c375bd5a494dabbf491aa1a7` |
| 149 | `theorem` | [derivWithin_fun_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-fun-const.md) | 757 | `result-track:dad2bb03d7d197ef6f5c3ef0b711f609821258aa7dae867978b5b86dd996b169` |
| 150 | `theorem` | [derivWithin_const](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-const.md) | 761 | `result-track:080bd0927aa679b97db0c8411150abdc92ad01c3f10c3f5cd472cf4e14edfeb2` |
| 151 | `theorem` | [derivWithin_zero](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-zero.md) | 765 | `result-track:c52b5374d748e87b6e7ba0cc916b1bb33fdaa57f46f116231a492c56db51cd12` |
| 152 | `theorem` | [derivWithin_one](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-one.md) | 768 | `result-track:ba75b72dada7c97c092c78fc67f08eae6454c86fa50e17f0bd8b4ce09fc37bc7` |
| 153 | `theorem` | [derivWithin_natCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-natcast.md) | 771 | `result-track:9247713cc57e07b41a65b2e83500679fb394086ddee5ed426945d6d7c498d0d0` |
| 154 | `theorem` | [derivWithin_intCast](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-intcast.md) | 775 | `result-track:f911a97542bde9f048d741fdd68a434ccd713ba99a9c5d86761722ff0ace8f56` |
| 155 | `theorem` | [derivWithin_ofNat](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/derivwithin-ofnat.md) | 779 | `result-track:76f6d93b42c536f56783553825495846d00c603e859d493423d18432d2958ea8` |
| 156 | `theorem` | [HasDerivAtFilter.tendsto_nhds](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivatfilter-tendsto-nhds.md) | 788 | `result-track:e0967f6a951db1241ac667d7089fe63a2754089ffeee50c25954753130d66831` |
| 157 | `theorem` | [HasDerivWithinAt.continuousWithinAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivwithinat-continuouswithinat.md) | 792 | `result-track:5b5b6ef87010aec4f7ac5469b854643f001c06c31f1453d6b0670360b586805f` |
| 158 | `theorem` | [HasDerivAt.continuousAt](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-continuousat.md) | 796 | `result-track:fddda4001e2db4180ecb852e6ead0dbee051bce414479f3a00ac56d4f67e5526` |
| 159 | `theorem` | [HasDerivAt.continuousOn](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-continuouson.md) | 799 | `result-track:a3b6e719c6de19330fcd01c434fdd4174d4bd449e3d4821755030b96c610cbc9` |
| 160 | `theorem` | [HasDerivAt.le_of_lip'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-le-of-lip.md) | 809 | `result-track:e5b5ae767fa50694b73c21a880ee3424eb6bf85e69feea5e3943b13f6e9d8fab` |
| 161 | `theorem` | [HasDerivAt.le_of_lipschitzOn](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-le-of-lipschitzon.md) | 816 | `result-track:1ab844099bcd55c8caa8e11f481981c498a7826b7a23c91499ffe53b9b25c7e3` |
| 162 | `theorem` | [HasDerivAt.le_of_lipschitz](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/hasderivat-le-of-lipschitz.md) | 822 | `result-track:8c9e91d10f78616cea1b64240fddf7036c6090981476f0cb23026e2c6bcb766e` |
| 163 | `theorem` | [norm_deriv_le_of_lip'](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/norm-deriv-le-of-lip.md) | 829 | `result-track:5ce2e7e8cf050fc94827a4316317cb337e70445d04fcfbac56f786700c72e797` |
| 164 | `theorem` | [norm_deriv_le_of_lipschitzOn](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/norm-deriv-le-of-lipschitzon.md) | 837 | `result-track:6ea8783f82dfa54224660c9b97c25224b33ca48d1523c4a8a183c13c082b9d83` |
| 165 | `theorem` | [norm_deriv_le_of_lipschitz](../../../../RealFunctions/DerivBasicDerivWithinZeroOfNotAccPt.lean/declarations/norm-deriv-le-of-lipschitz.md) | 844 | `result-track:14f20494b24ca1c9401290876f6300bb100efdc0a76d2ed13b2a2cee834c7ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48b61ace4e56289750f510b4baa3c8ab60a1af460ffdd379e1b8cfc8e54f3e91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant358ed02d0664d65eb5846345666a70f39c921df86b19d29fc4580ed7aeaba6f0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant358ed02d0664d65eb5846345666a70f39c921df86b19d29fc4580ed7aeaba6f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
