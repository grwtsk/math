# Verification target: Implicit Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e01ca0232714d36187f0400ac0ac31d0f61b4340",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ImplicitNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/ImplicitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e01ca0232714d36187f0400ac0ac31d0f61b4340`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean.json)

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
| 1 | `structure` | [ImplicitFunctionData](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunctiondata.md) | 108 | `declaration-track:7b64e6b649fd5195a47e0c9d3728596dfd1a881a5adef99873f147ff60721bff` |
| 2 | `def` | [prodFun](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/prodfun.md) | 136 | `declaration-track:6e3afb381847ba34ccaa9de9b217a3cddb8dd7234d6afc9d76c6b868a244dcfd` |
| 3 | `theorem` | [prodFun_apply](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/prodfun-apply.md) | 140 | `result-track:1c308a80191b86a67d921e368647159b4212f8190de59954f22b8aae9a6bd667` |
| 4 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/hasstrictfderivat.md) | 143 | `result-track:cb186bac93baf3df0b0a6ecbb82abb10572b65007c90889c4ab351a882c5da97` |
| 5 | `theorem` | [isInvertible_fderiv_prodFun](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/isinvertible-fderiv-prodfun.md) | 151 | `result-track:0de64dc717a66a396cbf735ac898a005d9bff0a51004a5ff589b03cce22443a8` |
| 6 | `def` | [toOpenPartialHomeomorph](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/toopenpartialhomeomorph.md) | 159 | `declaration-track:3d9076c5e953e5e332e89e347ad14a66e31b8dfef0e05fffc11e4b9fe7155311` |
| 7 | `def` | [implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction-source-edition-2.md) | 166 | `declaration-track:bb5477ca16c40c89a62493dc3bace9ba8d676d2c01fdd1091dc5b9c58822b97f` |
| 8 | `theorem` | [implicitFunction_def](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction-def.md) | 169 | `result-track:db0d5d92fac486c7e7a088f9ffc59d95277de80c0fb02b5576b77a13d6f35b8b` |
| 9 | `lemma` | [implicitFunction_apply](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction-apply.md) | 173 | `result-track:a179be51d44ccbb2d398a0d5d5e480665780371c6cfe1d122a76d88586d4d656` |
| 10 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/toopenpartialhomeomorph-coe.md) | 178 | `result-track:c7a09a30484330dc0cc52d8bd7bce6cec12fe74dfe70412174754c92da91bf1e` |
| 11 | `theorem` | [toOpenPartialHomeomorph_apply](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/toopenpartialhomeomorph-apply.md) | 181 | `result-track:3ea5df089ec5c4fb14228db3aeeb95d443fd1338eeb8e6d4f935186042604c4d` |
| 12 | `theorem` | [pt_mem_toOpenPartialHomeomorph_source](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/pt-mem-toopenpartialhomeomorph-source.md) | 185 | `result-track:5450e85e2f8701decdac0767b5af22ea568782d6bd5327aee2179fd5c06209d4` |
| 13 | `theorem` | [map_pt_mem_toOpenPartialHomeomorph_target](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/map-pt-mem-toopenpartialhomeomorph-target.md) | 188 | `result-track:27d9c7d3e6a3719535a6f4e32c1a760047c4ed0a4cb0eaa1ef4b43132e6bfada` |
| 14 | `theorem` | [prodFun_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/prodfun-implicitfunction.md) | 192 | `result-track:03864f1578baceb0355a6ee6aca915ca9190a1692f276ce70e7a0251b5cc5599` |
| 15 | `theorem` | [leftFun_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/leftfun-implicitfunction.md) | 196 | `result-track:730e8dc8f7287b81f10218a443bee669bf10bf5cf09062b5817d6a8cb9ec00ae` |
| 16 | `theorem` | [rightFun_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/rightfun-implicitfunction.md) | 200 | `result-track:52a8027b962782faeb7e65dae394ca5a12ecb610fdb5d543f4b6dca6275dca5b` |
| 17 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction-apply-image.md) | 204 | `result-track:62dd63d155709d28693108a84f2971568545ddfcc45a5d8f0c9e65378a021d2f` |
| 18 | `theorem` | [leftFun_implicitFunction_eq_leftFun](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/leftfun-implicitfunction-eq-leftfun.md) | 208 | `result-track:3be7ee19f69080cc12a751e127ae991fcef0bace42749793bcc0c61067c3d0c1` |
| 19 | `theorem` | [rightFun_implicitFunction_eq_rightFun](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/rightfun-implicitfunction-eq-rightfun.md) | 213 | `result-track:56726b7bf0c8abbd08c4fdc210933a3b904643dd6af4633f6c7202a078df849e` |
| 20 | `theorem` | [leftFun_eq_iff_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/leftfun-eq-iff-implicitfunction.md) | 218 | `result-track:33a8b3f3f9bf179bcd5ae84ef61392490a1db8cdcc5419fcb55ce61cd1dc23ef` |
| 21 | `theorem` | [map_nhds_eq](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/map-nhds-eq.md) | 223 | `result-track:e07d792d6438eff4dbec4ba5f998a5e487b0c29a528cf105cb9227ceb0dc2ddf` |
| 22 | `theorem` | [hasStrictFDerivAt_implicitFunction_fderiv](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/hasstrictfderivat-implicitfunction-fderiv.md) | 228 | `result-track:d9d2e5a23953f94ae3cb2839e8930ddb31a45972cbf4fb32066224014d1e7347` |
| 23 | `theorem` | [differentiableAt_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/differentiableat-implicitfunction.md) | 236 | `result-track:e3751aecf8e23715bc2805bdf9c31e7b7d188e6ab9fd7925addaae29b70c48ae` |
| 24 | `theorem` | [fderiv_implicitFunction_apply_eq_iff](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/fderiv-implicitfunction-apply-eq-iff.md) | 240 | `result-track:502bd0abe99cafb0c026068950f233968604301dc53b94c78c3a16663e49a6e7` |
| 25 | `theorem` | [leftDeriv_fderiv_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/leftderiv-fderiv-implicitfunction.md) | 251 | `result-track:f887983890eac9374c550fcec92dca36d7597f2835fe9ee682a5b7b17e316829` |
| 26 | `theorem` | [rightDeriv_fderiv_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/rightderiv-fderiv-implicitfunction.md) | 256 | `result-track:7c4ff0645b810737dc57e3d149d6d1d87c34a7d9d98e9b458ce06f4fbcb7a594` |
| 27 | `theorem` | [hasStrictFDerivAt_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/hasstrictfderivat-implicitfunction.md) | 260 | `result-track:aa789249b45a5e1699e18d1f0b20c267a11e610b7348764384e494d58b93e727` |
| 28 | `theorem` | [map_implicitFunction_nhdsWithin_preimage](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/map-implicitfunction-nhdswithin-preimage.md) | 269 | `result-track:540642ea259f0cab39e5475de0b81f6f425af9ffdc7bc36aa793f53ba58f939b` |
| 29 | `theorem` | [eventuallyEq_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/eventuallyeq-implicitfunction.md) | 292 | `result-track:dd6d59a9bf90fec63848c4cadaea5906f0960f3ca8d7acdd581c9f149bf7685f` |
| 30 | `def` | [implicitFunctionDataOfComplemented](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunctiondataofcomplemented.md) | 328 | `declaration-track:48318524fcb94023477d0045b485f3c04254ff2b5bb2319020bf9e37148185f1` |
| 31 | `def` | [implicitToOpenPartialHomeomorphOfComplemented](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented.md) | 344 | `declaration-track:d5a19debc153cad276ea4eef37ee6f3f0ff4607c29515d2629211c4d0a8f09ae` |
| 32 | `def` | [implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunctionofcomplemented.md) | 350 | `declaration-track:b7e60cdaf82c2bc8c5476a77fb2c4a59d196d26244cf6eadb456c33b0f72cf65` |
| 33 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_fst](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-fst.md) | 357 | `result-track:db69b6f2c13cbd746af1d63616c51f825063e93868ac214e4a9b64eb91fbebaf` |
| 34 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_apply](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-apply.md) | 362 | `result-track:152e0c8ee2c59e666e3606449b79fd6470bb9b2d32240db617bc7fd8f01df910` |
| 35 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_apply_ker](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-apply-ker.md) | 369 | `result-track:aac0c45db4676cc634d102ab98e6d975f08f484795779e8cd1b5bf306a1c8930` |
| 36 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_self](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-self.md) | 376 | `result-track:e549b25404a2721ef034a83fe943e2eadb3b4b219b128a90deea86cc418fe288` |
| 37 | `theorem` | [mem_implicitToOpenPartialHomeomorphOfComplemented_source](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/mem-implicittoopenpartialhomeomorphofcomplemented-source.md) | 381 | `result-track:d66867b1da65cda3f945b945af0309a944f2782f8e955915c85f596557c4dc5a` |
| 38 | `theorem` | [mem_implicitToOpenPartialHomeomorphOfComplemented_target](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/mem-implicittoopenpartialhomeomorphofcomplemented-target.md) | 386 | `result-track:5c89f4d5c87650915ede181557e35857b8f6d0f6b8519fb9bb6480935ecafbfb` |
| 39 | `theorem` | [map_implicitFunctionOfComplemented_eq](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/map-implicitfunctionofcomplemented-eq.md) | 395 | `result-track:890079e30dbb83e17e06927900338eb987fe8ec48a941c50c9109052739f2657` |
| 40 | `theorem` | [eq_implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/eq-implicitfunctionofcomplemented.md) | 405 | `result-track:d3dfaeade38e12a1533d743afb2e70da98950305269395424bff3d2df533dcd7` |
| 41 | `theorem` | [implicitFunctionOfComplemented_apply_image](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunctionofcomplemented-apply-image.md) | 412 | `result-track:99eb04f90995486e1e3ddeae0797309f92cbbdab01748165c46272d94b39021f` |
| 42 | `theorem` | [to_implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/to-implicitfunctionofcomplemented.md) | 420 | `result-track:8ff263015ac5e5a03fe2f10a0694b4d56f9ebdb0691b20c82d64d6347631f641` |
| 43 | `def` | [implicitToOpenPartialHomeomorph](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorph.md) | 465 | `declaration-track:c09e5e226bbb42b14d294de9b0e68179a05372812ee71e6776cf64d1d4c79ce4` |
| 44 | `def` | [implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction.md) | 472 | `declaration-track:04b543081f07c529c0c9c8a78de4628056fad26beeec2bb29d8d9afa4cd855fa` |
| 45 | `theorem` | [implicitToOpenPartialHomeomorph_fst](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorph-fst.md) | 478 | `result-track:bfa28256db3069dc6cb17748dad24c8e00437357a33b366130af2e42962a078a` |
| 46 | `theorem` | [implicitToOpenPartialHomeomorph_apply_ker](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorph-apply-ker.md) | 483 | `result-track:c4d366d8974edf1af7e457587abe2aec9c27d3a2c70f4babc26c6d6100f952bf` |
| 47 | `theorem` | [implicitToOpenPartialHomeomorph_self](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicittoopenpartialhomeomorph-self.md) | 490 | `result-track:02ba980a6770c548938d537d59ff07eea6164c938a0675c4b228879ebaebb06e` |
| 48 | `theorem` | [mem_implicitToOpenPartialHomeomorph_source](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/mem-implicittoopenpartialhomeomorph-source.md) | 495 | `result-track:52a7f49103cb67900499a6bea9e158da3442f77c099702d4c0e39f0ac50a773d` |
| 49 | `theorem` | [mem_implicitToOpenPartialHomeomorph_target](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/mem-implicittoopenpartialhomeomorph-target.md) | 500 | `result-track:45b6d88c64375850820db3d291cdfa1b7fedc51de4d2c0e80b7472dd94fc77b0` |
| 50 | `theorem` | [tendsto_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/tendsto-implicitfunction.md) | 506 | `result-track:f4ec74f925cf2717bbb3fa484e40f4d408e4769f27e3527479092cbca68854f6` |
| 51 | `theorem` | [map_implicitFunction_eq](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/map-implicitfunction-eq.md) | 518 | `result-track:e3afe867f17d0c403bb92b0e5436d392f34b175cdd2f3efcbad08cc2fe51340e` |
| 52 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/implicitfunction-apply-image-source-edition-2.md) | 524 | `result-track:951a175b65866124fc2ce63944e805d706f195a7d59e8e9856ba113c493de3a7` |
| 53 | `theorem` | [eq_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/eq-implicitfunction.md) | 531 | `result-track:b83b9c5bc633fa8d791ce7528c57dd98f6e144d249af8db675fbd26d7753db6f` |
| 54 | `theorem` | [to_implicitFunction](../../../../RealFunctions/ImplicitNamespacedPublic.lean/declarations/to-implicitfunction.md) | 537 | `result-track:0489f7f47761e2143f5b2bb3741255347d68e3a21a61df84570cad6bd483c5cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b1a600e90754acbf883818cddfb39480552c2293d63d65a1d36980be958ea8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
