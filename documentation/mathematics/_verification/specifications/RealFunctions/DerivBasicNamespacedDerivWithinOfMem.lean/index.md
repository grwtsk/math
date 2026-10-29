# Verification target: Deriv Basic Namespaced Deriv Within Of Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e989b76fefcaa2b1d0b3ae4365f89dc430e8227e",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant909f828d4c91178e893e1227e596750f91d157551bb13c9ea8dc7314d4c47fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/index.md) · [Full source](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e989b76fefcaa2b1d0b3ae4365f89dc430e8227e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant909f828d4c91178e893e1227e596750f91d157551bb13c9ea8dc7314d4c47fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant909f828d4c91178e893e1227e596750f91d157551bb13c9ea8dc7314d4c47fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter.md) | 111 | `declaration-track:f40ddc46eb51abda387e95d836a4b85c2f61dc98ca20f3105d33696af3327b82` |
| 2 | `def` | [HasDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat.md) | 119 | `declaration-track:ddc4ccfde1ce865be22afdf6b468dd046f3dbd7213ecaaeef43ce31bd79b2a49` |
| 3 | `def` | [HasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat.md) | 127 | `declaration-track:bcf80a1852fb339b67de99a7bd5d57fa0786db7fd6cc1f5028f58f01787ce0ff` |
| 4 | `def` | [HasStrictDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictderivat.md) | 134 | `declaration-track:0c666fba95e3657dc2afa697bc70a7f658dd8ee86765a2ca6179341b3c53231a` |
| 5 | `def` | [derivWithin](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin.md) | 143 | `declaration-track:0b7fe76b50d546bb24afdff41ae4d2b941243780a1e235a39ebf5b65346cf9f1` |
| 6 | `def` | [deriv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv.md) | 152 | `declaration-track:9f61220f5a669982d47de2b16fec9f3a44c14a90a592a08999fe6142715e5804` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 167 | `result-track:2fc52b2e6598fcc7f0ffa40d8d8ec9fdf1007434c93783d86d516ca9b7cb1db1` |
| 8 | `theorem` | [HasFDerivAtFilter.hasDerivAtFilter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivatfilter-hasderivatfilter.md) | 171 | `result-track:0a46dae842c21015d18165adff49d3764808fe88d9e1e0f6b8a6860fcd76e014` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 177 | `result-track:c531b3c5b218314f220719f3a97a5c4590cd7688e814d8dc6c5a133737eb6307` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 183 | `result-track:97e9208ffb09c542a77efd7ad4df2ba3754a9f152e93ff4c01f9f37b3e530882` |
| 11 | `theorem` | [HasFDerivWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivwithinat-hasderivwithinat.md) | 188 | `result-track:f08a0d55e85170d6f4738aac96306529745afc3f4a2085353f7ab8a5b27a015c` |
| 12 | `theorem` | [HasDerivWithinAt.hasFDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-hasfderivwithinat.md) | 193 | `result-track:206e0212463b94257e572b092461ff938a12af3bf1c0173af23aefef8b2a53a4` |
| 13 | `theorem` | [hasFDerivAt_iff_hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivat-iff-hasderivat.md) | 199 | `result-track:2a7a23a825c1bbdbff72c1e264727a14f497725cd8260f9305d9e0ab919996b2` |
| 14 | `theorem` | [HasFDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasfderivat-hasderivat.md) | 203 | `result-track:473ac3d7f6fe9ebeab31b09ee56b811f0fbac8793e382d569537e7154a0da2f8` |
| 15 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 207 | `result-track:e34b2da77be60316100977114539ff22290f4d0031b312f661feae22b906baaf` |
| 16 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictfderivat-hasstrictderivat.md) | 212 | `result-track:6b7c579996c84455b539f01cf583d382ef06f6a89be55d244483f480e31ae7c1` |
| 17 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 217 | `result-track:648ca14d4eec6241d51eb595ac77b632c16a38c12eab251639b6f2afc0b2f2cb` |
| 18 | `theorem` | [hasDerivAt_iff_hasFDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-iff-hasfderivat.md) | 226 | `result-track:9d7fd97629f550826613fc1873d341e93db6323bd3f1d671e83cf48a22d3655c` |
| 19 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 234 | `result-track:25f05a6f180c7351cc4bf03e5abf9f93dccec28d4f5440e90c82c00673a2070b` |
| 20 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 241 | `result-track:2dcc21926890f4ac1ac8ad7d0c253f4f8be9a029f2d72bd89ee372928dbe2b52` |
| 21 | `theorem` | [deriv_zero_of_not_differentiableAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-zero-of-not-differentiableat.md) | 246 | `result-track:5427d56321b253ebbb3e2f1fb14da329ec41fa1c8fa245908a9f9f4cdb12d88a` |
| 22 | `theorem` | [differentiableAt_of_deriv_ne_zero](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiableat-of-deriv-ne-zero.md) | 252 | `result-track:f383c29a65f4a4b88205098fbe3744c7c4056376c91b512217609de1604dccda` |
| 23 | `theorem` | [UniqueDiffWithinAt.eq_deriv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/uniquediffwithinat-eq-deriv.md) | 256 | `result-track:48dec47f81ec5117432e43dc551cccbc9033f4cedb034a97fd7b5b1ab89ef855` |
| 24 | `theorem` | [hasDerivAtFilter_iff_isLittleO](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-iff-islittleo.md) | 261 | `result-track:1b8b5c25499895f79dd0898616a62a0464c3610c7dbe82358c2fe52e239f456c` |
| 25 | `theorem` | [hasDerivAtFilter_iff_tendsto](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-iff-tendsto.md) | 266 | `result-track:612f53739a7b923d8f4d3a5d90aff55100672e7d762005fcb1135e137dd37cca` |
| 26 | `theorem` | [hasDerivWithinAt_iff_isLittleO](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-islittleo.md) | 272 | `result-track:ea755c6e6631f091e44b1953d468b9347649acf58b841747e85d27aba649b718` |
| 27 | `theorem` | [hasDerivWithinAt_iff_tendsto](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-tendsto.md) | 278 | `result-track:253e47c55baeba4311c77c322ae348b930cc23c0a4094e73e630530c436f949a` |
| 28 | `theorem` | [hasDerivAt_iff_isLittleO](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-iff-islittleo.md) | 284 | `result-track:d2d9ecb2b0759656a376bc863e1e192959754fcf2d82dc929de2e29eafbfcbe9` |
| 29 | `theorem` | [hasDerivAt_iff_tendsto](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-iff-tendsto.md) | 289 | `result-track:c6775013f063be3095c1b9d00762b0c1df34b5ceeb4a14baefc15f10ef6f7786` |
| 30 | `theorem` | [HasDerivAtFilter.isBigO_sub](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-isbigo-sub.md) | 294 | `result-track:2160985bb870f22290b09a83964ac4c3a11fa6666c4c81726c40577167ad6b63` |
| 31 | `theorem` | [HasDerivAtFilter.isBigO_sub_rev](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-isbigo-sub-rev.md) | 300 | `result-track:3d6e1d9bb57a96a2b97c4cf82ad433d1b202f532e0d6d1c4de836f85b05ed996` |
| 32 | `theorem` | [HasStrictDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictderivat-hasderivat.md) | 308 | `result-track:5e027f006bf77739428c92d8adf85546e549cdb4fcddc8f2272906e5fbe036eb` |
| 33 | `theorem` | [hasDerivWithinAt_congr_set'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-set-source-edition-2.md) | 312 | `result-track:e87a7f098c04c2d0bd8dee1ce62e4cacae37c1bc810a7c731cef3259cace28fa` |
| 34 | `theorem` | [hasDerivWithinAt_congr_set](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-set.md) | 317 | `result-track:b31663c1eac8374fbfd62fff3bf473677b802f0d4aa22856a8b4ce5eb4cfedaf` |
| 35 | `theorem` | [hasDerivWithinAt_diff_singleton](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-diff-singleton.md) | 326 | `result-track:8e329ab25c890ad571fcf9aaa2119e30e850f67e1a4453214d98482ace9fecbf` |
| 36 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-ioi-iff-ici.md) | 332 | `result-track:eeccdb55e1256042ce978ae1c8f6f3c49d6eaea8e5bf4fd4b752ef5750fc42d8` |
| 37 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-iio-iff-iic.md) | 342 | `result-track:e17a51afc6cb75db84c98f2fb42902c6809a8b2903290e9e8156d46e7eda4997` |
| 38 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-ioi-iff-ioo.md) | 351 | `result-track:9ce5f659a6e339e355836ec4c369d4fec17e7184676f20794b596e413e00a128` |
| 39 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-iff-islittleo-nhds-zero.md) | 360 | `result-track:13db54fbd293a855dc4415b09837ee46f2b73a7c34ad7c9ea0ec0efe7c918a29` |
| 40 | `theorem` | [HasDerivAtFilter.mono](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-mono.md) | 365 | `result-track:fe17ecbe4ac2b3831c2dbd7604fd7b05a9d8900a4c6d551fff97f610cea05ab2` |
| 41 | `theorem` | [HasDerivWithinAt.mono](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-mono.md) | 370 | `result-track:0645f6e78be10b6730d5b0f6bf85d2c7917b2aff6e1b09535b5d57beb7d665f9` |
| 42 | `theorem` | [HasDerivWithinAt.mono_of_mem](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-mono-of-mem.md) | 375 | `result-track:17e25aee2ffb960ea830c3a99db975b252c9519bb4d15c0843ae51fd90f02756` |
| 43 | `theorem` | [HasDerivAt.hasDerivAtFilter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-hasderivatfilter.md) | 381 | `result-track:0b179d6212821786dbdfa97cd98afd28f305bc19fea72edab7d1080cfd7974ce` |
| 44 | `theorem` | [HasDerivAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-hasderivwithinat.md) | 386 | `result-track:7ac7b57e3eba3a17c424e26c6e391d2dabc5664db4e33ee1b899a4001bf2aba4` |
| 45 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-differentiablewithinat.md) | 390 | `result-track:1f223f18893c0e8bfc3ba4a723b8747d8f9e6549fce45119dc74c66c0ee90744` |
| 46 | `theorem` | [HasDerivAt.differentiableAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-differentiableat.md) | 395 | `result-track:e343d55c8444a6784f50dd77d874c0ccd35ce82c840fe037861e94f7898dee11` |
| 47 | `theorem` | [hasDerivWithinAt_univ](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-univ.md) | 400 | `result-track:8e65d2cf5054ef1867669f65e60416001de28cc1fc380a2fcbcae80a2906964d` |
| 48 | `theorem` | [HasDerivAt.unique](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-unique.md) | 404 | `result-track:6d258195f9a1ca5120de39cdf994921067b8f589ee24bf077111c6f8c4418105` |
| 49 | `theorem` | [hasDerivWithinAt_inter'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-inter-source-edition-2.md) | 408 | `result-track:bc1fd9522127113ab9ae72dcfc13c15895c39f69942e0855f46dae6bf85a8d5e` |
| 50 | `theorem` | [hasDerivWithinAt_inter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-inter.md) | 413 | `result-track:0410664b5a99d658271ebe066aabbe4915789a1d92b156f82c2bfab7de79f650` |
| 51 | `theorem` | [HasDerivWithinAt.union](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-union.md) | 418 | `result-track:e0f31076c8362ff43ca9f26868df031c973f841afc790abacb9b64b9f89ec6aa` |
| 52 | `theorem` | [HasDerivWithinAt.hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-hasderivat.md) | 423 | `result-track:9551e40d8e559f0c7398d12afe1cf304b86b970ea1910fe13f63a5140e477124` |
| 53 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiablewithinat-hasderivwithinat.md) | 428 | `result-track:71a21d9054b076280a4d85fb1cc8c42f473e0788214af3deabca28352f81ef81` |
| 54 | `theorem` | [DifferentiableAt.hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiableat-hasderivat.md) | 433 | `result-track:aea72ad5b9faa8038a86b3cbfc27bb961727d0b9db4cba06374865bccde43448` |
| 55 | `theorem` | [hasDerivAt_deriv_iff](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-deriv-iff.md) | 438 | `result-track:d5a6db855b605757386f89067d984f4b61ec5e093d6ceef1f10cec672b350e7c` |
| 56 | `theorem` | [hasDerivWithinAt_derivWithin_iff](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-derivwithin-iff.md) | 443 | `result-track:401da7472abeffdefa66b9b778345e15291d864d546d703e6f79c8e063733b02` |
| 57 | `theorem` | [DifferentiableOn.hasDerivAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiableon-hasderivat.md) | 448 | `result-track:9d2009e55e7c2e61c1befa3829cfa6207aa8fa462943cf3efb1d103f3af845ab` |
| 58 | `theorem` | [HasDerivAt.deriv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-deriv.md) | 453 | `result-track:7fff39c983e0447dd0a0057a769505fbdcaf3e24cd642c57b203e6bb40986107` |
| 59 | `theorem` | [deriv_eq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-eq.md) | 457 | `result-track:cc51dbe324414a09aec839ce74e98c4cf89514469be937083b7c9e522a5aa81c` |
| 60 | `theorem` | [HasDerivWithinAt.derivWithin](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-derivwithin.md) | 461 | `result-track:213605cab6e9c3e837aa5db407feca30e9f325938618734ad26141ed0a6d79e1` |
| 61 | `theorem` | [fderivWithin_derivWithin](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/fderivwithin-derivwithin.md) | 466 | `result-track:b38bd093163dc809bc584748a9d377969db60c9ad59de5e62270cad19f3ca6a5` |
| 62 | `theorem` | [derivWithin_fderivWithin](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-fderivwithin.md) | 470 | `result-track:0dc5faa34020c13c00339ea66dcd573d053db845ee2857b42be2b2f8f2a3b2b0` |
| 63 | `theorem` | [fderiv_deriv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/fderiv-deriv.md) | 474 | `result-track:9ee90e826a851b307220b6b24691a4d519baa29e8810e807c0f07f8b71425e3c` |
| 64 | `theorem` | [deriv_fderiv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-fderiv.md) | 478 | `result-track:5f06e1f6e1b586ea1da4eb4bd7cd10d7aa4975ec7e9dfab9f61865be687c4f0f` |
| 65 | `theorem` | [DifferentiableAt.derivWithin](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiableat-derivwithin.md) | 481 | `result-track:d50b3c9ca5e139a90145b8c9db6567240a66e94f921c5c94bd8a60d0eb6161bb` |
| 66 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-deriv-eq-zero.md) | 487 | `result-track:81be87f38c52ed15046bdf0547b5f990456a3c16cfe9127ce1a5b23add0ea138` |
| 67 | `theorem` | [derivWithin_of_mem](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-of-mem.md) | 493 | `result-track:c521eb5b9926615a145cad443ac4a571071bf2bc462670b4a44941183fe13a6b` |
| 68 | `theorem` | [derivWithin_subset](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-subset.md) | 498 | `result-track:39cdb999797260ee16d34cb4744e97a5d4e32970ef173c4180a076cc8f3da7ca` |
| 69 | `theorem` | [derivWithin_congr_set'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-congr-set.md) | 503 | `result-track:8112d5e8376cdd587c7cb34026a866d770524c60c1f8d48ec20be9c80e14a2ed` |
| 70 | `theorem` | [derivWithin_congr_set](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-congr-set-source-edition-2.md) | 507 | `result-track:f431aee693ca2df95b8ee35580174a8df698639d2e080dbeced63b7a5ea01e94` |
| 71 | `theorem` | [derivWithin_univ](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-univ.md) | 512 | `result-track:4711278db82480ae1bdeae5c323b7223e1e6ddaff26df6ca263fb0e9017a2c46` |
| 72 | `theorem` | [derivWithin_inter](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-inter.md) | 518 | `result-track:03ec666ccb3c7713310c68db7b9be253642a7a013a1067dae93fdf55710777a3` |
| 73 | `theorem` | [derivWithin_of_open](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-of-open.md) | 523 | `result-track:088677d23605abb6cb6316dd6d213cc2ac760510143938728364a49057684671` |
| 74 | `theorem` | [deriv_mem_iff](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-mem-iff.md) | 529 | `result-track:441284efaf0c602ef8b70f7ec94f76e016644681a2116f9dd5de42dbde4129bc` |
| 75 | `theorem` | [derivWithin_mem_iff](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-mem-iff.md) | 535 | `result-track:c11c482d8d25fc3d7d48890230b92e0459d5b7af69da2f62ce636106661d0206` |
| 76 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/differentiablewithinat-ioi-iff-ici.md) | 543 | `result-track:5a24fbe91a1540dfee87a8cda5639b1bd869ed1af5c595bb97d532e6e50bed74` |
| 77 | `theorem` | [derivWithin_Ioi_eq_Ici](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-ioi-eq-ici.md) | 550 | `result-track:f09b4f26bbc5a5775ccd1f05a6e794da0b0573a0c971cfc11077d4ed551db53d` |
| 78 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 565 | `result-track:25ed024e504baf7a0f85213ea9123a2369ea76628a503ceee94cc841bd6d2b19` |
| 79 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 570 | `result-track:debf0c9dde70b046e425848f371f000d96a9a84f92afdd4fb5846fcb09736637` |
| 80 | `theorem` | [HasDerivWithinAt.congr_mono](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-mono.md) | 574 | `result-track:470981b766da9a5faa6a8fced38f38e2846d151d65df4f25e21d6f4b970e63d1` |
| 81 | `theorem` | [HasDerivWithinAt.congr](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr.md) | 579 | `result-track:b5a27a904c7b8630d3f61c0f104e70aceff64a2afff69a7e1fe9fc2f8239ea09` |
| 82 | `theorem` | [HasDerivWithinAt.congr_of_mem](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-mem.md) | 584 | `result-track:82f15c2da629efaae328f91e2184d746737ebf7be06aacc3fd273ae18458027e` |
| 83 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 589 | `result-track:dce06d7155a2205b275b399772bee5e5b9b3070b20a4ca78fcfe54baa5854b9a` |
| 84 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 594 | `result-track:64f37baab74e831e052847e71f2f9e0d9b4555f93d765278f6428cdd4a614984` |
| 85 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-congr-of-eventuallyeq.md) | 599 | `result-track:3fbff127ec4c7e902e6316ee4b6305e5a995d6701d33627e5e9dc2a0e0492837` |
| 86 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/filter-eventuallyeq-derivwithin-eq.md) | 604 | `result-track:2135686bf40dd08bbaad20752c08be8c0a5ec4fc7922563954c2b0ca7579304c` |
| 87 | `theorem` | [derivWithin_congr](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-congr.md) | 610 | `result-track:4c19020797a75bada930c0605ab8e1562272f930aa6540cb76e7a123e310f394` |
| 88 | `theorem` | [Filter.EventuallyEq.deriv_eq](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/filter-eventuallyeq-deriv-eq.md) | 616 | `result-track:d4b236ee3845124cd3878c7ee211c37ae02abb11bd55931cddae7b32e1ec2efa` |
| 89 | `theorem` | [Filter.EventuallyEq.deriv](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/filter-eventuallyeq-deriv.md) | 621 | `result-track:0b9aa98968493cb64b6ac9141fbc54669ccda9d571732739809039a6dd8d1ce4` |
| 90 | `theorem` | [hasDerivAtFilter_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-id.md) | 633 | `result-track:9a10dcd2fd01c8971c971e28fdd2df02222d52fefe3fe072c3e150fc6e437559` |
| 91 | `theorem` | [hasDerivWithinAt_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-id.md) | 637 | `result-track:e6e39553ed27dcedd359801b62523fc4e7970aaa6b35c775675d27acc6210c3a` |
| 92 | `theorem` | [hasDerivAt_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-id-source-edition-2.md) | 641 | `result-track:4a37ab21453ee460dacd45fdb088b9763a74c87e0b154820c2a007a735453922` |
| 93 | `theorem` | [hasDerivAt_id'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-id.md) | 645 | `result-track:3be51ab69f1ddf2346226aebbf17d216c8fe74a8e99e5f7d3b8d51d11da2af99` |
| 94 | `theorem` | [hasStrictDerivAt_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictderivat-id.md) | 649 | `result-track:31deaa56429c4b843321b61fa83ed3f2d88a4f1d63b4f77e222ededd12282541` |
| 95 | `theorem` | [deriv_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-id-source-edition-2.md) | 653 | `result-track:47a878a7b8da49b5127fefd35c668ec57aad60b6c62b12dca2099b0ecb6fdb09` |
| 96 | `theorem` | [deriv_id'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-id.md) | 658 | `result-track:11c2b19711d5e146d4f7b677170ee3f758bfbb2c2b59f42f3a658a893885e77b` |
| 97 | `theorem` | [deriv_id''](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-id-source-edition-3.md) | 663 | `result-track:7ef11e6454fa0e58bec5d033dd447cf51c7aaf86e1e9466eef8fd2b51cb036ba` |
| 98 | `theorem` | [derivWithin_id](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-id.md) | 667 | `result-track:460d2b10f67ac326b3e0125e2155405c91dcad7783adfd7aed2da218670f30b9` |
| 99 | `theorem` | [hasDerivAtFilter_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-const.md) | 679 | `result-track:de1d930e2e806ec8fad1d5e6620fc83db21ecf57c23d64c4a39b9696ab407ae5` |
| 100 | `theorem` | [hasStrictDerivAt_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasstrictderivat-const.md) | 683 | `result-track:ec92ee261014cfb1816dca1e310e219b1058aef1903a64454138868ada5500b1` |
| 101 | `theorem` | [hasDerivWithinAt_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-const.md) | 687 | `result-track:d459b73a33b76da50cd92f95ae3eae4f161ba98211541be1177fb57f69ae6a19` |
| 102 | `theorem` | [hasDerivAt_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-const.md) | 691 | `result-track:c48f1d1ac3764037c5eff99130ba8bad883484b07b145c277b8face654e2e0f4` |
| 103 | `theorem` | [deriv_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-const.md) | 695 | `result-track:049da7646b31affa6e8c9d6f85b3192b68d7043d90c04c9f58cd5cfb4fdc8f12` |
| 104 | `theorem` | [deriv_const'](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/deriv-const-source-edition-2.md) | 700 | `result-track:a9fae1ec89104dc42ae633c0e627c4946b73b393ccd9810f5a136bf235ef9ea0` |
| 105 | `theorem` | [derivWithin_const](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/derivwithin-const.md) | 704 | `result-track:5a355f14df9b744e2c541c6954a9be9fa30f00608d3189a2eab2039af9c9409d` |
| 106 | `theorem` | [HasDerivAtFilter.tendsto_nhds](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivatfilter-tendsto-nhds.md) | 714 | `result-track:e44fc30e888557f14b339d08b3880f7679195c4354e8e016b0ec8cbb17069077` |
| 107 | `theorem` | [HasDerivWithinAt.continuousWithinAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivwithinat-continuouswithinat.md) | 719 | `result-track:cd82f1c38bb6657e58c7623f1a37d4729819aa24a2adf9e644e9cd66425bb60c` |
| 108 | `theorem` | [HasDerivAt.continuousAt](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-continuousat.md) | 724 | `result-track:e4e1e311706a4091a759c86f3fbfb49f2dc90b9ebb2c8ec2024334fa0b7214c1` |
| 109 | `theorem` | [HasDerivAt.continuousOn](../../../../RealFunctions/DerivBasicNamespacedDerivWithinOfMem.lean/declarations/hasderivat-continuouson.md) | 728 | `result-track:c99c5988faa3793f2bb9e20ac4922d2c90bf929fd9769751c51f5c37bc71dd90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b3bf92b8e5112e3795ceb2566748505e7609a841d498902ddf4f2138771a442 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant909f828d4c91178e893e1227e596750f91d157551bb13c9ea8dc7314d4c47fba.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant909f828d4c91178e893e1227e596750f91d157551bb13c9ea8dc7314d4c47fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
