# Verification target: Pi Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ea27487a7d8ac215e656579adfacd7de1c75d3",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ea27487a7d8ac215e656579adfacd7de1c75d3`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Delaborators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.range_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/set-range-one.md) | 38 | `result-track:bbcad57c47c3617ac5e68082219cd7a66c7e89a77b7116b4e00e638f9d66d244` |
| 2 | `theorem` | [Set.preimage_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/set-preimage-one.md) | 42 | `result-track:700c110defe30a4dcdc1b5346b76ed3da74275b1015783c327e1a0971aeafb64` |
| 3 | `lemma` | [one_mono](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/one-mono.md) | 50 | `result-track:ec8bb321e1fff7cfd3d585a61b75a403c9a96ef85b285d3a8dda13b070533bba` |
| 4 | `lemma` | [one_anti](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/one-anti.md) | 51 | `result-track:12bf8d7fe4638ff784b270c40fc786321137fd610bcf4c3a729a90a560a2c22a` |
| 5 | `theorem` | [Pi.isSelfInv_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-isselfinv-iff.md) | 56 | `result-track:8584372378a4ddb75c47da69948d16ece30b3f673cde5b1916b857222fc091fa` |
| 6 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/coe-mul.md) | 62 | `result-track:27915b39723be31951bdfc039f7c72d10c2bccad6b2a33f21c853662cf39defb` |
| 7 | `def` | [MulHom.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulhom-pi.md) | 76 | `declaration-track:afe0d6f67dea56659e4461869699d98a70f08aaba1bf24c0cd69c85b8eeb91cb` |
| 8 | `theorem` | [MulHom.pi_injective](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulhom-pi-injective.md) | 85 | `result-track:91d6e6417a14ace6f344b15f5c60e422b98e7957b8462c417b7987bae1ecfc39` |
| 9 | `def` | [Pi.evalMulHom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-evalmulhom.md) | 104 | `declaration-track:a6fc89703a6abea338914add5d02c51e48376d4f4c221aa38a7ba3ae1acdcb02` |
| 10 | `def` | [MulHom.piMap](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulhom-pimap.md) | 115 | `declaration-track:90cf60bd5c72789440bd018e17a3f4534c284112f06e456d29fec1577570c50b` |
| 11 | `def` | [Pi.constMulHom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-constmulhom.md) | 121 | `declaration-track:c47176e68b70f0fb5e0678c7a78665aa65990661a2d9ea2471e0b0b6e646c0d0` |
| 12 | `def` | [MulHom.coeFn](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulhom-coefn.md) | 132 | `declaration-track:7d2c062ce7c1b81c5f19b4e487820140bbf78b63cefb4d7f448a25e5e9c2d71c` |
| 13 | `def` | [MulHom.compLeft](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulhom-compleft.md) | 141 | `declaration-track:69331d42fa7250f5ad770c83d30b7ca0b3028595b04d5720a79adb2fe2e2b6dc` |
| 14 | `def` | [MonoidHom.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-pi.md) | 157 | `declaration-track:7765da0af63c3b0b1f6e9d29e82ae89f2453d94645af2786e9766ee49527df2a` |
| 15 | `theorem` | [MonoidHom.pi_injective](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-pi-injective.md) | 169 | `result-track:b4b36c28c5a8cb1c2b8b8857c5961334f2ae4d7f6a39e33873733d0d234424ed` |
| 16 | `def` | [Pi.evalMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-evalmonoidhom.md) | 188 | `declaration-track:fc9ce001bdf30db141e20f663ed0a6bb544f43088ad563f11d74edc28172f98e` |
| 17 | `lemma` | [Pi.coe_evalMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-coe-evalmonoidhom.md) | 194 | `result-track:9f52674d3416dfb35b4176e15bcf346308d007a13b88330eee06b4ac50ba8907` |
| 18 | `def` | [MonoidHom.piMap](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-pimap.md) | 203 | `declaration-track:a0bbafed2a7266296aa292ab702e51e3f636c5d746416df600e378a9275253ca` |
| 19 | `def` | [Pi.constMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-constmonoidhom.md) | 209 | `declaration-track:c03bb167525021faab557f428b1f6e77126d021a756de807cd847c92c1b1ae38` |
| 20 | `def` | [MonoidHom.coeFn](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-coefn.md) | 221 | `declaration-track:89c0e279f5f23c8220c01947d616a4e124cd9680a05ec9dae679985431ae3e91` |
| 21 | `def` | [MonoidHom.compLeft](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-compleft.md) | 231 | `declaration-track:55948faa636b554b00af3b551fd9b2b6f2579d03f6e0a465ce4fb2ec2570e53f` |
| 22 | `def` | [OneHom.mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/onehom-mulsingle.md) | 255 | `declaration-track:8ed4b7aa8129c182a4ad691cafeeed82351c4e75834e4d55a811dc0656f1153a` |
| 23 | `theorem` | [OneHom.mulSingle_apply](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/onehom-mulsingle-apply.md) | 260 | `result-track:4ed312f0b1d6ba822b5a581f09be396fde60e518513b07d7cc6252c6e0de8e96` |
| 24 | `theorem` | [OneHom.coe_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/onehom-coe-mulsingle.md) | 264 | `result-track:6f51b1a25b125a9110175b3cac3f182dde2e2b2a19a8f4f5037a365628e65178` |
| 25 | `def` | [MonoidHom.mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-mulsingle.md) | 277 | `declaration-track:2acf14ecf214a8d3e3f0a8ddeae26f743b39b2d8555a7962a3be1e2c59092d8d` |
| 26 | `theorem` | [MonoidHom.mulSingle_apply](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-mulsingle-apply.md) | 281 | `result-track:4167582df55cc14db8fca0d07efd8802f79104d8d25930e410758b525151db14` |
| 27 | `theorem` | [MonoidHom.coe_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/monoidhom-coe-mulsingle.md) | 286 | `result-track:86c3fde9157adf1cc5f153bad05873945cd617ea6c7bcc4b3f72518b645a63b9` |
| 28 | `theorem` | [Pi.mulSingle_sup](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-sup.md) | 290 | `result-track:5d82212715a5e204664166da51de450035731b3b4c6311df70c88df3b4b29630` |
| 29 | `theorem` | [Pi.mulSingle_inf](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-inf.md) | 295 | `result-track:104e6b3e5351c0d5cc57f08395ed6ec29598d87c7b1f8446065cbcbd968ea2ea` |
| 30 | `theorem` | [Pi.mulSingle_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-mul.md) | 300 | `result-track:c08efc8377f205654b17e8306bcebe933739ef2c86a0a438ff8ac17980ec5bc7` |
| 31 | `theorem` | [Pi.mulSingle_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-inv.md) | 305 | `result-track:439dd0aba4e01c54e7407463d49b6d07ee0af05c5b0b781feba3a9656304e6b0` |
| 32 | `theorem` | [Pi.mulSingle_div](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-div.md) | 310 | `result-track:6c03e7aad782f73698e60a3d272df1a20d0c11cf4b80b408dba27c1be49e4214` |
| 33 | `theorem` | [Pi.mulSingle_pow](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-pow.md) | 315 | `result-track:a8044760a01f3cddd3f9df9ed9e306a3aad130c0a820d6da1e884de78779777b` |
| 34 | `theorem` | [Pi.mulSingle_zpow](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-zpow.md) | 320 | `result-track:c701effccb65deb44631636b9bf96e2e0480085be396f0cb88d761e9c90dcb76` |
| 35 | `theorem` | [Pi.mulSingle_commute](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-commute.md) | 331 | `result-track:adb90b6875c24a0b375d364ad9d3ab652982235fa9b67090fd830c20b3578bb4` |
| 36 | `theorem` | [Pi.mulSingle_apply_commute](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-apply-commute.md) | 338 | `result-track:890f729911534c00d60d6ceb41fb3a26b1a7425f8fa474cf5c650c8c8d56fe3f` |
| 37 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-update-eq-div-mul-mulsingle.md) | 345 | `result-track:13944a9f49faca45e32272f492f8b03098e0705c829613be2d41d768daa8db9d` |
| 38 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle.md) | 353 | `result-track:bc35bca0a0a35836366c32d194377005922d22dde051cc413486d31e727a040b` |
| 39 | `theorem` | [SemiconjBy.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/semiconjby-pi.md) | 371 | `result-track:51d2f8f79a3cfb5d03ea9c00f383c8526cd0c7f768c340bb1e4f9f30831666d1` |
| 40 | `theorem` | [Pi.semiconjBy_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-semiconjby-iff.md) | 376 | `result-track:30c8620e72ad4ca6c0b827335ec031d6dcc15884c44c772dcc8de56b7bacc453` |
| 41 | `theorem` | [Commute.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/commute-pi.md) | 380 | `result-track:d953c45addf24287d1e98d7afa81a65901b269cd1f57d0765a891ff49e77edce` |
| 42 | `theorem` | [Pi.commute_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/pi-commute-iff.md) | 383 | `result-track:f7b10b58ceb36624515f682621f523b8188217d87acb625a26ad3d4c1d7542ed` |
| 43 | `theorem` | [update_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/update-one.md) | 390 | `result-track:42db425027b179c5e9841963190ff74cdbf790c297b1074f463a144b032785a7` |
| 44 | `theorem` | [update_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/update-mul.md) | 394 | `result-track:9d6df5c73badeb9727e3e97afd004852e77294514a300ebce4211903fb12a9b8` |
| 45 | `theorem` | [update_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/update-inv.md) | 399 | `result-track:52148175a09a81c25ac015b49558bd4a57d0c754989731f10e2925a78be2e374` |
| 46 | `theorem` | [update_div](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/update-div.md) | 404 | `result-track:4592aa7577f98fd1d2cf7b10485bf04819b727571b4049ce2737527ff883085b` |
| 47 | `theorem` | [const_eq_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/const-eq-one.md) | 411 | `result-track:1982258c596dea44d2fbb833f657c3424cbaabb05e1b3856f6a4e3cdbbde5cd5` |
| 48 | `theorem` | [const_ne_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/const-ne-one.md) | 415 | `result-track:d9a73baed1857a6556e526bd8dbda62a21390e12accf30fbc7067a3bfd6fba5b` |
| 49 | `theorem` | [Set.piecewise_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/set-piecewise-mul.md) | 423 | `result-track:0ceef4e6d2e38c58e967988ef607e65e7849149f56ac9b6bf7eb1ba51cbe1833` |
| 50 | `theorem` | [Set.piecewise_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/set-piecewise-inv.md) | 429 | `result-track:9c16218f41b1188e2e0aac1d06b420da1a243f52d48da59cfee39beea1ea0a17` |
| 51 | `theorem` | [Set.piecewise_div](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/set-piecewise-div.md) | 434 | `result-track:b3b199c88b6f259826701079b16c7a0a56cf1f09bf6055ba05d50e5c954a5c08` |
| 52 | `def` | [Function.ExtendByOne.hom](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/function-extendbyone-hom.md) | 448 | `declaration-track:a03b89681ebd5390f2b68e3ba5a3323165a70273d67d04d784c6ba8cf3ca008d` |
| 53 | `theorem` | [mulSingle_mono](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulsingle-mono.md) | 461 | `result-track:5223a3ad8e9a9c095c49af4e3e8d4ef3e213d3af35b1ec20adfd31054d321715` |
| 54 | `theorem` | [mulSingle_strictMono](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulsingle-strictmono.md) | 465 | `result-track:430a02684f44bcc7b7510dab330303c1bda68603c3010eae966fadd15146a7f3` |
| 55 | `lemma` | [mulSingle_comp_equiv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/mulsingle-comp-equiv.md) | 469 | `result-track:de5b895299474f78426a3904dc0aa9e42d0e581c2e2c289a978c60ea79aafbd9` |
| 56 | `theorem` | [curry_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/curry-one.md) | 481 | `result-track:54254c420633b92a9cc379c118f5ba891481b774455fe5f6434df2ae34f065b7` |
| 57 | `theorem` | [uncurry_one](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/uncurry-one.md) | 485 | `result-track:916636df0ae7ce016ac267f09389378c973396161423b65edb06c2aa2fd588f9` |
| 58 | `theorem` | [curry_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/curry-mul.md) | 489 | `result-track:36cc7dde8500a508099928026bf415605a85f78880d6ed539fc04f170c11775c` |
| 59 | `theorem` | [uncurry_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/uncurry-mul.md) | 494 | `result-track:c025fad79970c1cd33e3737cc8779e583787eb030cd9e7a869b72606a1b5e9e0` |
| 60 | `theorem` | [curry_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/curry-inv.md) | 499 | `result-track:330837441fe9d083a0b40fb745a07cc3cc55cace79f1cdc94d3c1569ad88f43c` |
| 61 | `theorem` | [uncurry_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/uncurry-inv.md) | 504 | `result-track:7139b356ea531d7353bb2f44fec03d73406dc806596dd775c886e524699ac457` |
| 62 | `theorem` | [curry_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/curry-mulsingle.md) | 509 | `result-track:8b7728a3a6c074adbb4e8f111b7401c088f5b1f77f8dd127dc07741249fea59b` |
| 63 | `theorem` | [uncurry_mulSingle_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasPublic.lean/declarations/uncurry-mulsingle-mulsingle.md) | 515 | `result-track:e5d42c8a0b217bbb7656da4fa5c9bb3963025f9406bcce013c93507aa621368e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e184867aa02283128bb1fedb644cd41659e909cf83a365ef614e8197e0b9126 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
