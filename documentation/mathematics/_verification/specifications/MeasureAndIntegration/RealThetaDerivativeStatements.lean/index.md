# Verification target: Real Theta Derivative Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ab79c85e0d91d794be36e399894f4535a3454b",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ab79c85e0d91d794be36e399894f4535a3454b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetakernel.md) | 23 | `declaration-track:9077d1f3d61991459eed31dcfb8e8ee6c55efb7dbf62af2b36540711da06b347` |
| 2 | `def` | [differenceSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencesamplingkernel.md) | 26 | `declaration-track:925108cc65f1cb7b7b304abbf918bed163921888b41721bbc4a5c8c6bd0872cb` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetadifferencekernel.md) | 30 | `declaration-track:26e35e92ed5943308f2753122f5fa560d2b17b987474a42c62686cffbfb34d51` |
| 4 | `def` | [realThetaRemainder](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetaremainder.md) | 33 | `declaration-track:308e010ab3876ae72f6bcaf02c8c851f3226223e000c022a9a218b899c0e8d83` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/samplingindices-eq-fixed-filter.md) | 36 | `result-track:664096b27757e17a6e678d559713581c89ab2e7b4d83aecabdd10832326bc196` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetakernel-eq-strict-sum.md) | 52 | `result-track:e71f8c2ca98ac6e25bcf68e1eb5b07e6aee36e378affd51379703678b91acbab` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetakernel-eq-nat.md) | 67 | `result-track:b5605f98017c10179280c7a1f27756808ccc9c7fbd6bf73420191492c540d3db` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetaremainder-eq-nat.md) | 72 | `result-track:6e4924d65f5d0297c0ddcaf0c1193386d50de81934b842c8e9631837102035c3` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencesamplingkernel-eq-mul-deriv.md) | 77 | `result-track:7d31864fa6e222f5a486b4e482274c28ba671ca9b299643e15bbcdd792a40e33` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetakernel-hasderivat.md) | 83 | `result-track:927d10f9f0d66f03200f06cb422a00497564394ce08acb98282fa7babf85e1f4` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetakernel-deriv.md) | 99 | `result-track:8db62ba8433f1ca3d9c5fbfdb7a552871136cd20b5b09a9e734e53c7f73ed91e` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetaremainder-hasderivat.md) | 103 | `result-track:6431f08480afb3e33e4bd31fff9bd70abd102ce647ba98c3721f5ab4f13ef16d` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/realthetaremainder-differentiableon.md) | 113 | `result-track:b99d6b80e2af8a726f5bb18689497addee2287d997da827fc587999738b203e1` |
| 14 | `theorem` | [difference_primitive_eq](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/difference-primitive-eq.md) | 118 | `result-track:4b91a8888163ae339d1f19e17d8c78407869d3e16e2f03bd21d14aa13f311a4e` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceprimitivesamplingkernel.md) | 136 | `declaration-track:d884fe2d5573a333fa0b4e68fa2f37d8ea242740e2e7c0af1078ffb619302e31` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceprimitivesamplingkernel-eq.md) | 141 | `result-track:d04322550b14444ffabd3c12358ae1f14ea419fffabc49a7df38a8816bf84d1f` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 148 | `result-track:a873d8fa867f74ef2a3091cca8af0c1f0ee313bad97ae576ffced9a480bf8cf0` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 171 | `result-track:21bad9a1ba03661c6b4ed1247fb47756292833ca3b132a4c8b88976720332bae` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/difference-tail-eq-primitive.md) | 191 | `result-track:7d1238c9dbb1ddee3f92e4490d7c1ec05e65a9c2ed85743ee170be721acdd825` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/rootweight-difference-integral.md) | 229 | `result-track:f3337f27a9f12b9d8c1bb12ac3167c80172a6043c27ffe8f05e1b68a6d98d9d4` |
| 21 | `def` | [differenceInnerTerm](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceinnerterm.md) | 239 | `declaration-track:4606130de33c24d0aeeb099dc2f24eea56567bf257b64c12b886c3b06ed27a49` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceinnerterm-eq.md) | 243 | `result-track:d99269d8dbddbfe07bb88a122356b3b011373d5c4c3f749d97f7306837630ecc` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceinnerterm-integrable.md) | 252 | `result-track:6a0b3b8e5bdeda199233f98daf47d292e9b4081b843e2b48d8b93a0c9dc446f7` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differenceinnerterm-integral.md) | 265 | `result-track:edd45268eec11aea785d3477cd76882df16ea863bdeccd7823f2da03fcc41e96` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencekernel-eq-inner-sum.md) | 282 | `result-track:b1e9e278509547969aa1e4aa1dd17cb217fe24320afbec4a5f789e52e7f78c43` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencekernel-rescaled-integrable.md) | 294 | `result-track:1d5a23b804bea237b007dc83030c68075bffbcf287c3ef1efa6f1e19f1829ba4` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencekernel-integral-eq-primitive.md) | 304 | `result-track:522fe1ae5c05644b8dd5f2f523f67737d5e29d34069afd94096cc0956eb13b8a` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/differencekernel-integral-add-rankone-abs-le.md) | 323 | `result-track:f7a453934fc2339813052d611d1ea838d76cae8ca227c350fe2a9eefdb77ae37` |
| 29 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-20.md) | 343 | `declaration-track:81e36c7965d2adc665c4a15d793a2fd24f55b0313babe8b0cd855d224a06d671` |
| 30 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-5.md) | 347 | `declaration-track:1b6ab1f4232516d29981ce158f6e8e610a4cf919d978322a24fa3a25648dd895` |
| 31 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-23.md) | 352 | `declaration-track:af7f0ccba11c2e2402e3c002e997c3d45ca8a2e45e9a0e6f4ec711f3ebe5fb4f` |
| 32 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-24.md) | 356 | `declaration-track:b856be46db98b7a7c68dcfc24ccc854bbe26ed272bfac11906f88b8de572395c` |
| 33 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-10.md) | 360 | `declaration-track:2c07e076809e73c05188f7ffe0f47cef6fadceb48f4839abe87d5bfdb8042c5e` |
| 34 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-4.md) | 366 | `declaration-track:19594b7d6212cc9728efd51e082cef9ed1464216788a66b686274c34f3e13795` |
| 35 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-27.md) | 371 | `declaration-track:f6ae639ed56334d999981a2bf857e1969e56967c0406411b003ac837e769c93f` |
| 36 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-15.md) | 376 | `declaration-track:5ea6f36df288cbde1289ebc743f0008d6d9635a1dabf8a787107747c86a2f109` |
| 37 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-14.md) | 385 | `declaration-track:588b4cd78f39769e5c1447eea964b128a4e14d643de5cc9ea7ce4ede8a28cfa2` |
| 38 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-16.md) | 389 | `declaration-track:6def401ab0c5506157c80728106a9a00035ed8a2fbbad1a197ab5cc2f146c057` |
| 39 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-11.md) | 393 | `declaration-track:44ab47973cf8ba8d30a463125c5272ef1ee6bda74cd2ade538d453d0edb5746d` |
| 40 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-9.md) | 397 | `declaration-track:282d1641aedb7ae633a59973c2c9f5192b184e8bd6b190317c2bf7d7e1ad4e06` |
| 41 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-18.md) | 402 | `declaration-track:7a92b37568c837f203bd90e588f1f13f5887ad167b38caa5800d94cd7044c1e0` |
| 42 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-19.md) | 406 | `declaration-track:7c563311cbcc1e29517d4ff74d61517344c90e9ebee592f607e477310d6033f4` |
| 43 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-22.md) | 411 | `declaration-track:96668f8569f56d9c33781febcf3541dc167d92365e887f968fb860b01883ab60` |
| 44 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-13.md) | 415 | `declaration-track:5885a9ec5bbf3d76bb1411f58420270104a42fb86770a08ac88c565dd1d27172` |
| 45 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-26.md) | 421 | `declaration-track:f0d45edd2a84c29596d73fd24aee97109f21a464cef1d920e512813c16673ccc` |
| 46 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-12.md) | 426 | `declaration-track:4b946286dcc7f48aacbb6da4b0c4c0b51de467928b68bbcf1d83c7345b192980` |
| 47 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-6.md) | 432 | `declaration-track:1c10b3b3763f4704156b9b5e66a3654f9dde187af81fcced14e8ebbd7a150c58` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-7.md) | 441 | `declaration-track:1e55da86f8970e0c117d43c659199a42c2bf7ed549081ded3cdf138bc36968f3` |
| 49 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example.md) | 446 | `declaration-track:08459cb3d58bedf37951b19ddcf5a5b25dec19a52ce600181af5e687b81a2a97` |
| 50 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-3.md) | 452 | `declaration-track:101b7e30e2ca842ae488e81ab00f87414f3f48a3f1479af4c770f8c4c03bdf71` |
| 51 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-17.md) | 458 | `declaration-track:7496145177f3d53fe8bbae80281f8fac2752b8026c9aea7a2c93cd2f5d1446cc` |
| 52 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-2.md) | 463 | `declaration-track:09005c980eff18b5bbff3ad95164f75628cf153dcdc382317127f29375b0d946` |
| 53 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-28.md) | 471 | `declaration-track:fdd67a4a2e5d8aaac28191b7b75823df7eeb3edae90f3369f295d700dca86aa5` |
| 54 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-25.md) | 477 | `declaration-track:b94cfb88cc768fa09703c028f961dd353a8e1e31e0587b0f393c924c266e7118` |
| 55 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-8.md) | 481 | `declaration-track:26edba32d5caa28ec704e1f857288d9c3934b2693af82daaa67b4c50a8db8981` |
| 56 | `example` | [(anonymous)](../../../../MeasureAndIntegration/RealThetaDerivativeStatements.lean/declarations/example-source-edition-21.md) | 486 | `declaration-track:93bada3eb2d648d4355ad99edaabd666cde8e3d0cb9571a0b39e78511d7f83a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bac858ed72691beedefbf0339e95a854899d720c1002bda64654d4da395c2d22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
