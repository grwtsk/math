# Verification target: Affine Fiber Tensor Network Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aff251b80d52371bce9bd17ff9dde7959b3e3f9",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aff251b80d52371bce9bd17ff9dde7959b3e3f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.OrderedFactor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ColorChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/colorchannel.md) | 48 | `declaration-track:8baa17f81f3bf67f597dc8c800ee297fa1acf1e8ec4f5b82cabdea1bc7c0777b` |
| 2 | `abbrev` | [RGB](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgb.md) | 51 | `declaration-track:94cc7d1bd3fc0a3b617a3122b6810d3110c3d6882f1e5ee9539ebe46a9b9cb84` |
| 3 | `abbrev` | [Point3](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/point3.md) | 54 | `declaration-track:8b77245faf08f7e36346b3f15c3528b3bf84e9f70d6a868fdb3806b56300d3b3` |
| 4 | `abbrev` | [Direction](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/direction.md) | 57 | `declaration-track:2944e05128ce1d37a91579af3e511f584513fd21961a420e6e2a50aa3bb4c73a` |
| 5 | `def` | [rgbZero](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbzero.md) | 60 | `declaration-track:36450734208ad2e5c975a4ae431aa64108a9d85b1f9ad99a20084356db7feb96` |
| 6 | `def` | [rgbAdd](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbadd.md) | 64 | `declaration-track:8941f5df717ef4b70240bc60429157b7fb99ce9a65f8c549a01748950d9702d5` |
| 7 | `def` | [rgbScale](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbscale.md) | 68 | `declaration-track:738023a4fdbd2149496550164c994bf550f0ce6ba697c180032c3e2ca8d77ca8` |
| 8 | `def` | [sumRGB](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumrgb.md) | 72 | `declaration-track:29680294778d86821b4c2f6a13249689a0c7816981fa1097643d8da5dc4b356a` |
| 9 | `def` | [sumScalar](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumscalar.md) | 77 | `declaration-track:de7cecc2a0062ef37e4b72dbd1c3fd07a51a15e7fc57ca1dd4e8c4f0d9b3c3eb` |
| 10 | `theorem` | [rgbZero_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbzero-apply.md) | 81 | `result-track:33c2c3f6394ba23ae6fc4cbac14b51caef677bdb87dee2e15c4e13fe1acae691` |
| 11 | `theorem` | [rgbAdd_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbadd-apply.md) | 84 | `result-track:aee8562d3d6b1b3f578836354bcc7f9b2156bc359d50f77578d286a8afd7f932` |
| 12 | `theorem` | [rgbScale_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/rgbscale-apply.md) | 87 | `result-track:2a402a687cc2644e1fff44b997dd66d0fb478d0469be502c350cffe5689e0da5` |
| 13 | `theorem` | [sumRGB_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumrgb-nil.md) | 90 | `result-track:b7da729ce28d6ce63a927b640f93f582573e93fefabb510dd196729c9c7d76f4` |
| 14 | `theorem` | [sumRGB_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumrgb-cons.md) | 93 | `result-track:1b96d457f85d7530d9eb4446f41c5c808bff733bb1b0ec6359dcb15e23a09fcf` |
| 15 | `theorem` | [sumScalar_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumscalar-nil.md) | 97 | `result-track:19d7a118bd8cb03e021ecdcb6fc63e7d142301b15481afc788f02c548a06507f` |
| 16 | `theorem` | [sumScalar_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sumscalar-cons.md) | 100 | `result-track:881249f81b05c536a30a93ebd04fef68b78846e092f7b1f0257c4b052a39e6b3` |
| 17 | `structure` | [SHMode](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/shmode.md) | 108 | `declaration-track:94283253730c1ec90a2061fed99f8b6c7e2a922cdb20dfe67f36ef5c8f696377` |
| 18 | `abbrev` | [SHBasis](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/shbasis.md) | 114 | `declaration-track:67f27ab1ce726e738cef00049d9a8c7109391d3ef5e7b467e1428a647b1d8520` |
| 19 | `structure` | [HarmonicTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/harmonicterm.md) | 117 | `declaration-track:cd874e072ff33e920fec858de4070398bfc08ff0c565d037f6713ab0c3d4d2fc` |
| 20 | `structure` | [FiniteAngularFiber](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/finiteangularfiber.md) | 122 | `declaration-track:cfa19e678c40d9007339510d18af8d7dd06a1c747dd2db4befbfe7991f9696f3` |
| 21 | `def` | [FiniteAngularFiber.eval](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/finiteangularfiber-eval.md) | 126 | `declaration-track:03733c0d487bfd76f26a7490b2ab3689464441874336b6c8b5b6026827001512` |
| 22 | `structure` | [RadianceSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/radiancesection.md) | 135 | `declaration-track:2bd089f051ce2c631e15911f41d3a61737fa126af2fca9811727c2bcb5744e1a` |
| 23 | `structure` | [LocalAffineChart](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/localaffinechart.md) | 140 | `declaration-track:f20f838a60f50efeecdf9a29a02f3fceb92bea83ecf65a550fea88f22b725ff3` |
| 24 | `structure` | [GaussianSplat](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussiansplat.md) | 149 | `declaration-track:d0c4740d9918219991a659cd833eacaec20dfac45bc70214c6e64708294de81f` |
| 25 | `def` | [GaussianSplat.color](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussiansplat-color.md) | 156 | `declaration-track:e830f199e36aa44d8950cc3ad97d4be6c22d2fd756c4c9fd66b2b6d5e6374115` |
| 26 | `structure` | [GaussianScene](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianscene.md) | 163 | `declaration-track:05e23fbc89a11414f587d2f08b7fa8f83cda2e59fb697e06f318cf5854de91af` |
| 27 | `def` | [GaussianScene.density](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianscene-density.md) | 167 | `declaration-track:38cfb9854dbeb1930167865b83f6839122835580170a049910461a79638716fe` |
| 28 | `def` | [GaussianScene.radianceDensity](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianscene-radiancedensity.md) | 175 | `declaration-track:96cc01cf615ff08d0359a6d91d3df177b823a3cbc5a8d0674dc09692ef2e4e96` |
| 29 | `structure` | [GaussianSceneSectionAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianscenesectionadapter.md) | 189 | `declaration-track:e52e2ff111bebc6e27133c01b89b386e1cb6958997c167852e8f39b00d8521da` |
| 30 | `def` | [GaussianScene.toSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianscene-tosection.md) | 193 | `declaration-track:2ce54809cfed8908040fd65de7deb33e8b27c6b3f700a379cda29e35bf888955` |
| 31 | `structure` | [Ray](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/ray.md) | 200 | `declaration-track:ae100b0d6f2e8daf05b17b6b8b73d41e024be995157e2e144b37abaacfc17642` |
| 32 | `structure` | [RayKernel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/raykernel.md) | 206 | `declaration-track:d749e090186c6beab6bc33778a4a0587642bfbc0fd3bbfe5ffe1ad9df25c27b9` |
| 33 | `def` | [atomRayContribution](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/atomraycontribution.md) | 211 | `declaration-track:4259cfc66a21935e5da5c115f9ffda647edf9a997bb9bd6ebd7f23b71a1a08a8` |
| 34 | `def` | [renderRay](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/renderray.md) | 219 | `declaration-track:16b23783aa36fabbacdbb5eca01733e637e27bf7aa892574f303dd07de762050` |
| 35 | `abbrev` | [ObservationOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/observationoperator.md) | 227 | `declaration-track:320a56f28805c8bb8a310470dc2d1cfa0c21a2d71f140130ee74ff932d4d418b` |
| 36 | `theorem` | [observation_eq_of_same_section](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/observation-eq-of-same-section.md) | 234 | `result-track:367a591ecfccfd53d85fa33a44cd406f4f9d85c98fe05572d5143f857e240f13` |
| 37 | `inductive` | [RenderingParadigm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/renderingparadigm.md) | 243 | `declaration-track:ea00bc5cdac52459306baf5dc5fc5ffadb8c101ea4399d14875ddb2de30fc6fa` |
| 38 | `structure` | [ParadigmRealization](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/paradigmrealization.md) | 250 | `declaration-track:07f15dc1780b413945ff1b931c571688ea26a95f155f473618a61269722096dc` |
| 39 | `def` | [SameUnderlyingSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/sameunderlyingsection.md) | 255 | `declaration-track:e0d1638be60c6240cb857f1ae96f89ce420988bb9b931eda07957044ea12ba08` |
| 40 | `theorem` | [render_invariant_under_paradigm_erasure](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/render-invariant-under-paradigm-erasure.md) | 262 | `result-track:badcf3fda73304cde33ee33abcf9c524000dd691435ba99c7637098e177a0d47` |
| 41 | `structure` | [PixelTensorNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/pixeltensornetwork.md) | 277 | `declaration-track:cefee8f51b4db5ab5727b3c80f61f019e8c0961283cc25a4d111224c30be3df6` |
| 42 | `def` | [PixelTensorNetwork.renderPixel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/pixeltensornetwork-renderpixel.md) | 286 | `declaration-track:3e6ed2ce916ce6357bc1537f209068a5c93af179fc9cf1d5fc497cb2d0584062` |
| 43 | `def` | [PixelTensorNetwork.render](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/pixeltensornetwork-render.md) | 296 | `declaration-track:7de7e5b5780d1a7f90e173383cba89bf586452283580eed5e0f364e0ef02b2b6` |
| 44 | `theorem` | [PixelTensorNetwork.render_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/pixeltensornetwork-render-apply.md) | 300 | `result-track:679b843db28ee8c5afee20a65fbcfaca0cfa23b71e31514c8cf058abbc9f2c86` |
| 45 | `structure` | [SoftPartition](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/softpartition.md) | 306 | `declaration-track:ebac14ca7884d81776c9494750c73eae10b91f71beb1139a485bd4cf0fdbf4b0` |
| 46 | `structure` | [LocalGlobalAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/localglobaladapter.md) | 312 | `declaration-track:20bf346897a2758549878f211bb816e27bb907a09b8e5ff351077abb711c6ed2` |
| 47 | `structure` | [GaussianSHDensityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/gaussianshdensitycertificate.md) | 326 | `declaration-track:91a8a2a0c8c1c3d9d655128cf8ccf509fc195517b650722337ba765207336abf` |
| 48 | `structure` | [OmegaBits](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegabits.md) | 336 | `declaration-track:baefafcafea3c168b5d5b8116e3302629ceca715121bca42e7b8cc54927222e9` |
| 49 | `structure` | [ModeEnumeration](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/modeenumeration.md) | 340 | `declaration-track:53434dd43f9361448683648dc9c62eea695948ba4f1ceadc6845e019cec991d9` |
| 50 | `structure` | [OmegaBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegaboundary.md) | 345 | `declaration-track:8bcae68d6e1d7a33c9a6e472ccedc7a445090e6fc3c16a3bf2279f459b2add5b` |
| 51 | `def` | [omegaCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegacoeff.md) | 350 | `declaration-track:1e26d6ef3779b50445bb79667bd5e4888380249035a1c5322fa58363af4eefa0` |
| 52 | `theorem` | [omegaCoeff_numerator](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegacoeff-numerator.md) | 354 | `result-track:db7f24b6d6d9769d9c05579893f5000392cee7053ea5dba352f45441decbdd7b` |
| 53 | `theorem` | [omegaCoeff_exponent](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegacoeff-exponent.md) | 358 | `result-track:8773362afe383cb006d102f812c24ddc8364129ff3f1a6bbae3a0791c2026255` |
| 54 | `structure` | [DyadicHarmonicTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/dyadicharmonicterm.md) | 362 | `declaration-track:7c4e8b908bae9e740945c62a8cb9bbff39183fc6e825b8ac9d002576f01e09a1` |
| 55 | `def` | [omegaTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegaterm.md) | 367 | `declaration-track:5e561eb02ed3925f4814dfba809ab278e7919ec00f21c55d29651e680b22bdc7` |
| 56 | `def` | [omegaPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omegaprefix.md) | 372 | `declaration-track:514e108639e4e10600721701fa27f1efbe3780cfa19b3d2a25c98203f9541a74` |
| 57 | `def` | [lookupCoeff?](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/lookupcoeff.md) | 376 | `declaration-track:3af482e3e92445c7d7a0ecf8ecc390514273ad7fef88e5e73a4205674d6936ff` |
| 58 | `def` | [bitFromCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/bitfromcoeff.md) | 385 | `declaration-track:beef128ce5bf1a84e86b5dbfa5a66a3de4ce6e212884af977d440926dc908b52` |
| 59 | `def` | [readModeBit?](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/readmodebit.md) | 389 | `declaration-track:2120488643f02315bd61e2cb9743bdc4cebf4f7440473e5c093cdc1f8994e81d` |
| 60 | `theorem` | [bitFromCoeff_omegaCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/bitfromcoeff-omegacoeff.md) | 394 | `result-track:8335b72c7e0a963e16fc54c77dbdf506c31526e91da07d2f1dc837e0cfc67885` |
| 61 | `theorem` | [lookupCoeff?_head_same](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/lookupcoeff-head-same.md) | 400 | `result-track:3a7f8b67fe08a5c7f935f10b6df66c753a48da3ec3a4ba8c914a99f203a57598` |
| 62 | `theorem` | [readModeBit?_head_omega](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/readmodebit-head-omega.md) | 410 | `result-track:5e34dfae7548c7435c73449471472ed4cf0700b426d07b7d294e58a91b881ad8` |
| 63 | `structure` | [EffectiveDyadicApproximation](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/effectivedyadicapproximation.md) | 419 | `declaration-track:5698f3fc8efafe045585cc110ab54d435bd4ec5c665857e72d6a23cbc407fd44` |
| 64 | `def` | [ApproximationRecoversOmega](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/approximationrecoversomega.md) | 423 | `declaration-track:b332426ca9aeec7d03c3fe378f5bc997b6a0bff00cc04bdf298a2831cfa84867` |
| 65 | `structure` | [NoncomputableBoundaryCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/noncomputableboundarycertificate.md) | 435 | `declaration-track:714ab4a4c217a4ebd111728d793108993ef6d40ba4b8aef103b3d262fba5c933` |
| 66 | `theorem` | [omega_boundary_blocks_effective_trace](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/omega-boundary-blocks-effective-trace.md) | 442 | `result-track:14fe936fc575a35201c7d2f26eb93457516a22b6a4765e12ad8f6af0e553e6f5` |
| 67 | `structure` | [ExactOmegaFiber](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/exactomegafiber.md) | 452 | `declaration-track:44ee190d3e28ee510f22d4478056665d64d6a061b648fe9d07f6b0ff7633c792` |
| 68 | `def` | [addOmegaBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/addomegaboundary.md) | 459 | `declaration-track:a8d0dac4c0d3f3d9fb286e1c28f3b7eab8dba371f1181346bfb2128bcfdd3aca` |
| 69 | `theorem` | [addOmegaBoundary_density](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/addomegaboundary-density.md) | 469 | `result-track:2e864371eb0ddbaadffc3600ed6758722f8185bf247b65b29a9525d894e4374b` |
| 70 | `theorem` | [addOmegaBoundary_color](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/addomegaboundary-color.md) | 477 | `result-track:c035f923749c7d80fead0e1a909f538580958031c3e9318581913e283911b7e4` |
| 71 | `structure` | [UnifiedArchitecture](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/unifiedarchitecture.md) | 488 | `declaration-track:3a74fa6a1c1b556aef6e4cb99e308b0f95f2f9d7c477e36c0f1ffd1463714a51` |
| 72 | `theorem` | [unified_architecture_factors_through_sections](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/unified-architecture-factors-through-sections.md) | 499 | `result-track:37d31d97564aeb76a6e06caefb73a23435826b2b08dbb5eed7add8d9c6808dc3` |
| 73 | `def` | [crispGate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/crispgate.md) | 513 | `declaration-track:8786f4d205893f4c41bf7192fe44de534b3bb7465e5e73c75eca89d9d6e0e899` |
| 74 | `theorem` | [crispGate_false](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/crispgate-false.md) | 516 | `result-track:5926ad11b026a5325aff566633be61640a55f7531d5074ce1bca38a8fc0d71ab` |
| 75 | `theorem` | [crispGate_true](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetworkNamespaced.lean/declarations/crispgate-true.md) | 519 | `result-track:795f604a686cc744185b57f9bac0c0f3067e8bcfdc03441d627c4492b8453908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ad403e559820515256624d13e9ffb27d3d80ff12a5a8b0d9a4f434e1840fe31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant5dcaeef5e030cea92edf20c2cd37770ac2692b518c117ae1d81bc7e8574e695a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
