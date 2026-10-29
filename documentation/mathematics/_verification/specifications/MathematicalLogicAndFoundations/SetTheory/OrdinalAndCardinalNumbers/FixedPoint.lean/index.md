# Verification target: Fixed Point

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a308324d7d2f5407ebbe53a77e14a6687bcf1f7",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a308324d7d2f5407ebbe53a77e14a6687bcf1f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.List` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Enum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Exponential` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily.md) | 51 | `declaration-track:c543c5083844a24f22e9728ee19f3e2be87fbde18d3f4a245407ea4cbedc5e92` |
| 2 | `theorem` | [foldr_le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/foldr-le-nfpfamily.md) | 54 | `result-track:e7508bb8fe20f4a3d49bfcaa9b5939f12f4070b60efad871abc58dad1f9795a2` |
| 3 | `theorem` | [le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/le-nfpfamily.md) | 58 | `result-track:e417983ddb4e19b1cfbe32465ffcdeb7c440276d380ee6315cf59ffeca9c1ed4` |
| 4 | `theorem` | [lt_nfpFamily_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/lt-nfpfamily-iff.md) | 61 | `result-track:c510c962299e765c2aa8b74c705f518f4745c564f1bc896ef2c7e1dedae2ca52` |
| 5 | `theorem` | [nfpFamily_le_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-le-iff.md) | 67 | `result-track:514629175ba6380f2e2537a160c85e5f94283358ed7dd798cf1666b73e317d0b` |
| 6 | `theorem` | [nfpFamily_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-le.md) | 70 | `result-track:858c032eccb60f0c31bb5ed7436eac15335a7a530805b559eedc50bcfe68c376` |
| 7 | `theorem` | [nfpFamily_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-monotone.md) | 73 | `result-track:7f880c5735f0a022bc357ccb67d6e1909b0eb67592e2ee1dd5cbd7aed6af5f4b` |
| 8 | `theorem` | [apply_lt_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/apply-lt-nfpfamily.md) | 76 | `result-track:8298a66808285cf583ecd59dc1d2ce15f7f36ebd46fee63e1996248a1805443a` |
| 9 | `theorem` | [apply_lt_nfpFamily_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/apply-lt-nfpfamily-iff.md) | 81 | `result-track:a26a1a4034ffa1c203c28427b1203feaa01c42f137e8be8c29c0c08f94c90584` |
| 10 | `theorem` | [nfpFamily_le_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-le-apply.md) | 87 | `result-track:140d4dfc4a42e44fb755c051b2f1c7da41b18ae12df67e79ac2e936ef944fb6c` |
| 11 | `theorem` | [nfpFamily_le_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-le-fp.md) | 93 | `result-track:87c9f4ce8dd58aac8468ed35912ffc16a95aef3f59d129e507c202550ffef0ac` |
| 12 | `theorem` | [nfpFamily_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-fp.md) | 101 | `result-track:8cbd5ecc2ad40d5b1232670e37d9f4091e3acf471cc36b10fabd12052eb62af8` |
| 13 | `theorem` | [apply_le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/apply-le-nfpfamily.md) | 108 | `result-track:dcc30481a465f792d88794ab2c0b3a575b1e809ed2b00125ee8fa6f5010f950e` |
| 14 | `theorem` | [nfpFamily_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfpfamily-eq-self.md) | 116 | `result-track:580d89183103cd434ccc0126fceb275da6b1f8f20e7bef45f0d8a3b004ade6db` |
| 15 | `theorem` | [not_bddAbove_fp_family](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/not-bddabove-fp-family.md) | 124 | `result-track:b9037ffdd0ae71942084fa0addcbf27987442886adda5ff9684f74505fffaeca` |
| 16 | `def` | [derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily.md) | 135 | `declaration-track:cc126f07c30ef221d575d4e2e3346677d0e7d1b20a4610370dd0a4fb607e76e5` |
| 17 | `theorem` | [derivFamily_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-zero.md) | 140 | `result-track:bd8e19e58d204d8de45409f463b7b995d800c142e5528ccda87911b6b33ab626` |
| 18 | `theorem` | [derivFamily_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-succ.md) | 145 | `result-track:7f53bbbe7651df651a52a99ceebc8a30a32bdd6249306e7bf5bd1c394ff6b8c4` |
| 19 | `theorem` | [derivFamily_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-limit.md) | 149 | `result-track:f40bd49a887a7e173d8307c27b6eb69484fd8ffcd0076d5f6f216dbf22ea31be` |
| 20 | `theorem` | [isNormal_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-derivfamily.md) | 153 | `result-track:9d4aae1b9b712f128002108a192b2ec20889e9b5e6811529103b6d867025b163` |
| 21 | `theorem` | [derivFamily_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-strictmono.md) | 160 | `result-track:da84a7d452496c57bb7e824683592a2ad9272590a409c7116bc6c63d13946372` |
| 22 | `theorem` | [derivFamily_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-fp.md) | 164 | `result-track:7d47f7dac9a01d0a2584a24c443b2b586f2ece249af7e3974961c3cce2cf5778` |
| 23 | `theorem` | [le_iff_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/le-iff-derivfamily.md) | 181 | `result-track:7fcb4cf95ed5fa843af6da4ed4dd86acabe0e10bec0a9eeb71adcc0c98a8b0b3` |
| 24 | `theorem` | [fp_iff_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/fp-iff-derivfamily.md) | 209 | `result-track:3f965d0e25e600cc1dd02b8c1fdf00b6b2cac2253065530f66139621dd67e1f5` |
| 25 | `theorem` | [derivFamily_eq_enumOrd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/derivfamily-eq-enumord.md) | 214 | `result-track:84e956b44455a34f971a150be1afaa6de658580c09413de2f7e94a7b75d72a93` |
| 26 | `def` | [nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp.md) | 237 | `declaration-track:294e9fee8b50d70cce29f874cf8735f25dc469167c476c94f29b415c22d5436e` |
| 27 | `theorem` | [nfp_eq_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-eq-nfpfamily.md) | 240 | `result-track:e0c6f909f71ff18f3edbf1116f19cd3ba914faa68c4b8e4b2a76a3cb50c1c48c` |
| 28 | `theorem` | [iSup_iterate_eq_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isup-iterate-eq-nfp.md) | 243 | `result-track:e49b2edbd1f8af29f4ea9734599e42f0f318c094e088c06b5c767921f106a199` |
| 29 | `theorem` | [iterate_le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/iterate-le-nfp.md) | 255 | `result-track:a0c4e33aaa0de265e1b4d3974d6bba2ddcefabac00ec5491bc4b2798e30cd8ca` |
| 30 | `theorem` | [le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/le-nfp.md) | 259 | `result-track:3657acc35bc888b83ff6437a36b5dbc64fbef3f4dc240990caa48859efd59143` |
| 31 | `theorem` | [lt_nfp_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/lt-nfp-iff.md) | 262 | `result-track:d4a9dcdf29af5b76db3295440d32f2ea5505645d08c01923fe6da2096be73dfd` |
| 32 | `theorem` | [nfp_le_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-le-iff.md) | 266 | `result-track:78dce3a0a0b00638dee9dd30077ff9410792b832676a9a6d1497d9e258b577f9` |
| 33 | `theorem` | [nfp_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-le.md) | 270 | `result-track:61f2e27393fba070a1935e61f17af6321589b90660469110d83b7aad646edf93` |
| 34 | `theorem` | [nfp_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-id.md) | 274 | `result-track:cfd5248ada621f7f165ba3a84a1f01792af4291e88cab6e57882331258ab98b8` |
| 35 | `theorem` | [nfp_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-monotone.md) | 279 | `result-track:8bdcbf14310624c4ab7e52b9e5bc50af3029dd49468bcb9102144d6288b0632e` |
| 36 | `theorem` | [iterate_lt_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/iterate-lt-nfp.md) | 282 | `result-track:aaa5f3f1cd627a7e3663b55f7961839411be58332155dc7f58da03fc62557c8c` |
| 37 | `theorem` | [IsNormal.apply_lt_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-apply-lt-nfp.md) | 287 | `result-track:3e59f333f513dca5574227c82260bbfb594725013eb5f936481d1a419b612c7d` |
| 38 | `theorem` | [IsNormal.nfp_le_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-nfp-le-apply.md) | 292 | `result-track:a6991c2ea60019192913dc9052863f4e21ae509e3ceb7e64d31fca1b8af52864` |
| 39 | `theorem` | [nfp_le_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-le-fp.md) | 295 | `result-track:fce5ddd044084a7a64b7057f80c6a3f50c737599529df74f974b1a5588e50d8e` |
| 40 | `theorem` | [IsNormal.nfp_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-nfp-fp.md) | 298 | `result-track:1c48c873ace6e1e97fae0151d61b5076f9001b64f3d2e0608a8a6a66b1c8160e` |
| 41 | `theorem` | [IsNormal.apply_le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-apply-le-nfp.md) | 301 | `result-track:13aa6a571fad1d0e5f3ff7f2a3a049f24f90c0b41194f1d5e80b0a6f57296719` |
| 42 | `theorem` | [nfp_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-eq-self.md) | 304 | `result-track:abb6e48f93da9f021841a7c7645b78a37ebc3f3ea28328520db43e7a0898becf` |
| 43 | `theorem` | [not_bddAbove_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/not-bddabove-fp.md) | 309 | `result-track:790af1770b17957f0a919885eed4084c16fdd5f0bc2fbfb637c2630207956d19` |
| 44 | `def` | [deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv.md) | 316 | `declaration-track:fdfa84522febc6e27c5cab8a524435b28b45b5f0d5d1a5fb6be3c7254ae02d2a` |
| 45 | `theorem` | [deriv_eq_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-eq-derivfamily.md) | 319 | `result-track:e72b103a26da15c890540e2d3681658ecede8217f67f17d6c0d93ba3870acff4` |
| 46 | `theorem` | [deriv_zero_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-zero-right.md) | 323 | `result-track:d045dbf3701e6ea5cee9d21a569b5a7fabf5b731a6554c0a147ea5149ac845aa` |
| 47 | `theorem` | [deriv_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-succ.md) | 327 | `result-track:e50659ebce4cf121f8a43497bad7812bb0645ea57461f39ff965352df87a7f95` |
| 48 | `theorem` | [deriv_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-limit.md) | 330 | `result-track:0c833da9b85748a30b216592fd7ea471f79a8e1e57d6ecafea1446836d07f501` |
| 49 | `theorem` | [isNormal_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-deriv.md) | 333 | `result-track:8c6d8d0424b58e245648090ae2e5a9b58fd3cf163ad46e866099c8f32df8327c` |
| 50 | `theorem` | [deriv_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-strictmono.md) | 336 | `result-track:9db1d0030db6ea2111e9df1a00c4f8b4211bf75f89b785802e9efa32867b4fce` |
| 51 | `theorem` | [deriv_id_of_nfp_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-id-of-nfp-id.md) | 339 | `result-track:75ac57fd11d08048d09a8930259cd60a8a7db883cfa0e90a46f6644cf56832ff` |
| 52 | `theorem` | [IsNormal.deriv_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-deriv-fp.md) | 342 | `result-track:d9e2f2d92dc0c2f059325244e99195d7b54066affb281dd788e2e0df12760362` |
| 53 | `theorem` | [IsNormal.le_iff_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-le-iff-deriv.md) | 345 | `result-track:f4dec91e070202a21a2ccabba4a497f132a3c28cb960df01420e0a03a5b9f506` |
| 54 | `theorem` | [IsNormal.fp_iff_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/isnormal-fp-iff-deriv.md) | 350 | `result-track:9cf400d9258b90c8bdfdd9e0ec48670a8fe176cd1dfb070ef88b2099bacead48` |
| 55 | `theorem` | [deriv_eq_enumOrd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-eq-enumord.md) | 354 | `result-track:e9084dad0c776fb75fa4703c93d8caa2ac4dced56221fed8e0d37b981d8a0d05` |
| 56 | `theorem` | [deriv_eq_id_of_nfp_eq_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-eq-id-of-nfp-eq-id.md) | 358 | `result-track:c0de3e2126fad6ef3cb6b501ab4bb8469e7eeafac689cd4a81ff4419b2f391f3` |
| 57 | `theorem` | [nfp_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-zero-left.md) | 361 | `result-track:dc843d6813467a9e01db263d0dfa63b3c3f88d81ade1cde8b9b217b16b19214f` |
| 58 | `theorem` | [nfp_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-zero.md) | 371 | `result-track:908214c2cffdb7b1288270ee9409b62d5afdd2b9113b449e384c2bbb1cee7ce4` |
| 59 | `theorem` | [deriv_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-zero.md) | 376 | `result-track:8fe6108075216a7fea01c6910f6e36d522d05782fa53e13754d680373815b479` |
| 60 | `theorem` | [deriv_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-zero-left.md) | 379 | `result-track:9a5e29ff2a16bbd61399ae2a2c813c0fae45205e0d76b9695cda5bef23e9aafc` |
| 61 | `theorem` | [nfp_add_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-add-zero.md) | 387 | `result-track:ab7ecadeabf30136edaff90d0de1a5352000658ec3deb83bcbc00ff3700b1fbd` |
| 62 | `theorem` | [nfp_add_eq_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-add-eq-mul-omega0.md) | 394 | `result-track:687670cc737fe398a659ebdbdfa3ba9944440ffe5a41e481295483949d8abe86` |
| 63 | `theorem` | [add_eq_right_iff_mul_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/add-eq-right-iff-mul-omega0-le.md) | 400 | `result-track:18d319fd2a8725b74876e4725451dc30aa47ef97c1a298dcad80e8ec872ba289` |
| 64 | `theorem` | [add_le_right_iff_mul_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/add-le-right-iff-mul-omega0-le.md) | 410 | `result-track:33efc3f1eeb78cb9471d8c6ef8797fb8763da38b6c0774cd08fd89a02448f3cc` |
| 65 | `theorem` | [deriv_add_eq_mul_omega0_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-add-eq-mul-omega0-add.md) | 414 | `result-track:f64b48d89182a07f7f092bae4741be332113b3c8bd15c9a0f20f12a29b6350cf` |
| 66 | `theorem` | [nfp_mul_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-mul-one.md) | 426 | `result-track:ba3f9a7bc1f63966cbe6777dd68b9fe45b590c0f795b8772728af204db4e2f0a` |
| 67 | `theorem` | [nfp_mul_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-mul-zero.md) | 435 | `result-track:fb18307131e7fbcdac805a59a07c749ca1800f6855d1ac6556082fa4170d16e8` |
| 68 | `theorem` | [nfp_mul_eq_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-mul-eq-opow-omega0.md) | 441 | `result-track:70c9ef28bf87719715785376ad7250c75a7f444a5b5635e2ba130124b1222c7e` |
| 69 | `theorem` | [eq_zero_or_opow_omega0_le_of_mul_eq_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/eq-zero-or-opow-omega0-le-of-mul-eq-right.md) | 453 | `result-track:45f11512918d921dfdc585f76620ae64b89ff9ea03749b216af638a10f27a985` |
| 70 | `theorem` | [mul_eq_right_iff_opow_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/mul-eq-right-iff-opow-omega0-dvd.md) | 464 | `result-track:2c80b4ecfa4af4d6bd3830a0b9e2a07d5dbd36372e270274697f902823641097` |
| 71 | `theorem` | [mul_le_right_iff_opow_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/mul-le-right-iff-opow-omega0-dvd.md) | 479 | `result-track:0561f8b8b58b2389e4a31f974fd2c9627a6f10ab5a6154348df720836402403f` |
| 72 | `theorem` | [nfp_mul_opow_omega0_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/nfp-mul-opow-omega0-add.md) | 484 | `result-track:f8b3572ce5ee4ebc4dc9916312cb716a3e6b41c080e08f1ba1f11e1285b6d739` |
| 73 | `theorem` | [deriv_mul_eq_opow_omega0_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPoint.lean/declarations/deriv-mul-eq-opow-omega0-mul.md) | 501 | `result-track:d2585b667946ef32987ad28dd3a508279b96f426c3386a3f0c8d640776655ca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7aa65202e329fb0b4597cc8426038db9e485a6c4684048c44f704442fcdd7d08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
