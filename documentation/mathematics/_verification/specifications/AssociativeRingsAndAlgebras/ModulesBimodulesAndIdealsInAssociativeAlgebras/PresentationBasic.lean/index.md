# Verification target: Presentation Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46647eafc3aa1008582e0d03a321d798d7816364",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46647eafc3aa1008582e0d03a321d798d7816364`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Relations](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/relations.md) | 49 | `declaration-track:8315d8c2971071b88b3d2c8f47eec21408bb0ce430cdb39b8f7e4add01353198` |
| 2 | `def` | [Quotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/quotient.md) | 64 | `declaration-track:70ce69201afa8092556767195daca882c7612bacc76f1f2d17b9724e7df89b5b` |
| 3 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/instance.md) | 66 | `declaration-track:27b5ee1b8b8b3c3a483d7bcb98d98a16b65e5a3e7a548bda173c70890649fed5` |
| 4 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:bf33e4af39c58ec528fcf7b1dac99979938c0d8ffe33c381e3462b9e23185860` |
| 5 | `def` | [toQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/toquotient.md) | 73 | `declaration-track:0bdfc4b6b7a3c652c06c3367d7bc254ddbec6e3d6917c25fd497dd97864d28b1` |
| 6 | `lemma` | [Quotient.linearMap_ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/quotient-linearmap-ext.md) | 77 | `result-track:bbd8a2d1a9aff60921a8a2ef6cfb9aa5363c315343b8276919e9c5986b92eb0a` |
| 7 | `lemma` | [surjective_toQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/surjective-toquotient.md) | 84 | `result-track:705349729e0eda88cefd78caffb7858069b74c87a177f49996d6205239276d6d` |
| 8 | `lemma` | [ker_toQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ker-toquotient.md) | 87 | `result-track:0140945303d3f3add2ecdfd4376ad581611f86df5d41ce0b7f33b96998281e82` |
| 9 | `lemma` | [toQuotient_relation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/toquotient-relation.md) | 92 | `result-track:35617da71dad4b667c5d9f834677e3757b57d0d70c2195a80f91296bb411c35e` |
| 10 | `def` | [map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/map.md) | 100 | `declaration-track:e493a7ef1ffbc209b2dfcfde987b34712931ee2f2f098076529318a463aaffbd` |
| 11 | `lemma` | [map_single](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/map-single.md) | 104 | `result-track:4ea768d33a641663d379980c42232147b22908bab007f1aa0f76af094da4997a` |
| 12 | `lemma` | [range_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/range-map.md) | 109 | `result-track:7b3a4c78c7458b35cba5e4eefbada2e9c46f1011b62e3ff79933e6354f4c799d` |
| 13 | `lemma` | [toQuotient_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/toquotient-map.md) | 114 | `result-track:eb4ffbeee95897178068bc9a47bca28984b07f5e437d40fd81188683f3903283` |
| 14 | `lemma` | [toQuotient_map_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/toquotient-map-apply.md) | 117 | `result-track:08af3865079b37c6262bfd73c5a62af0416b1a46b32fb7202214d7e50bbd03fd` |
| 15 | `structure` | [Solution](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/solution.md) | 125 | `declaration-track:37613736f146aeb6392004672f88307e1af5c086cc42149064bdeb5f1c70536b` |
| 16 | `def` | [π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/anonymous.md) | 141 | `declaration-track:29a0d0e2fae0e50a55b3fee8160ace4210ace0c57d2a9820e10c30615588d7e4` |
| 17 | `lemma` | [π_single](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/single.md) | 144 | `result-track:09f99da723ee541ec02e5827ef1790f0301c6b2ce1de1f335ec5f78f5054cf9e` |
| 18 | `lemma` | [π_relation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/relation.md) | 148 | `result-track:0a6fe8568ace0ea7ac944443596981754ed23c77d2edc05d7b885e3ba52d617a` |
| 19 | `lemma` | [π_comp_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/comp-map.md) | 152 | `result-track:b940536c90fc2f1fb1a6b538f164980d07147d97692f80cf05c24404947aafd0` |
| 20 | `lemma` | [π_comp_map_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/comp-map-apply.md) | 155 | `result-track:551b975692580e14fce177aa19f3a60424413b8e22c8c657639288a254298cb6` |
| 21 | `lemma` | [range_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/range.md) | 159 | `result-track:6088e7dd2aa479139f3d036991ea5edcd7d738003084f6152f8c53cce1e197bf` |
| 22 | `lemma` | [span_relation_le_ker_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/span-relation-le-ker.md) | 162 | `result-track:d8db1895dfe6755158de6f677e23484333e168c8175e528724d154163b2766d6` |
| 23 | `def` | [fromQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/fromquotient.md) | 170 | `declaration-track:f6d2ad723824244d0f79b1999339e9edb2039b8573260d428812ec9ee41815ef` |
| 24 | `lemma` | [fromQuotient_comp_toQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/fromquotient-comp-toquotient.md) | 174 | `result-track:afe33e2ac32a433d0b7bfd258863d3dc3f2647d3676c0ae7ad0a542e814aec4d` |
| 25 | `lemma` | [fromQuotient_toQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/fromquotient-toquotient.md) | 178 | `result-track:32540fa0041c93255349cc2681f9943a9e98e391f0149d250e4216a3766159e1` |
| 26 | `def` | [postcomp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp.md) | 185 | `declaration-track:50555c65da6e581108469448c6a91be1084c137c8ab0aed990702b6b4b01e073` |
| 27 | `lemma` | [postcomp_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-comp.md) | 192 | `result-track:4c8be54211f83bb11a482cb38feac346a57403613ba534d5bf788856543ab60c` |
| 28 | `lemma` | [postcomp_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-id.md) | 196 | `result-track:1cbe272ecea72dccc9756e630dad873524bdf9576c259e1c0df96d1a49ad628e` |
| 29 | `lemma` | [congr_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/congr-var.md) | 200 | `result-track:3702a057d7312516dc61e67c9d28cb633b6ddfd64613ae13ef3f0c52973ebd0d` |
| 30 | `lemma` | [congr_postcomp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/congr-postcomp.md) | 203 | `result-track:e1ed11c1cb928cdfaba8345b470669b76aac3119228525d381bef74e3ba1af9c` |
| 31 | `def` | [ofπ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/of-source-edition-3.md) | 217 | `declaration-track:882c5bb40340df7581f668793a05a6e86fdf0ab384352991d22e19f66c434326` |
| 32 | `lemma` | [ofπ_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/of.md) | 225 | `result-track:1bf8df4a3c2d8e41499c60145d7d12fa598eaacdec409e722429726527ecc890` |
| 33 | `def` | [ofπ'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/of-source-edition-2.md) | 236 | `declaration-track:3988610d3ff5ccbb1fa1f7ab27ecd414062d93973564b66765a42f0b97229dba` |
| 34 | `lemma` | [ofπ'_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/of-source-edition-4.md) | 241 | `result-track:cf729aa6c063c435a9cdf697b5b00dc7e03239bd1787d5a1dd4e7cb315f54883` |
| 35 | `lemma` | [injective_fromQuotient_iff_ker_π_eq_span](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/injective-fromquotient-iff-ker-eq-span.md) | 249 | `result-track:44e79966b9cea5e71df9e08bfe75fcf6d39792c029307669b1771d81b0f5a392` |
| 36 | `lemma` | [surjective_fromQuotient_iff_surjective_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/surjective-fromquotient-iff-surjective.md) | 266 | `result-track:7780b69b41b62906b75e419e7bd3970ba35e88da725968af0d10a8f1f27d8050` |
| 37 | `lemma` | [surjective_π_iff_span_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/surjective-iff-span-eq-top.md) | 272 | `result-track:79f89b48ab1f14e0da0d01c78efb7b76091249b3847cf0ffcdd741f1c5bc4715` |
| 38 | `structure` | [IsPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ispresentation.md) | 281 | `declaration-track:34b51c1682d3309e52fe14972847cf6f3186c430acf11f3b26270e122fb9cd95` |
| 39 | `def` | [linearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/linearequiv.md) | 293 | `declaration-track:79941e6404d03b71c43b8b27089bd8aa480f7910cad46bb3906cdf7f6d0c251b` |
| 40 | `lemma` | [linearEquiv_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/linearequiv-apply.md) | 296 | `result-track:5aea8526475d8e9ca81d87ac548c24e6b6414a665ad5dc40cdc31b1177eed29b` |
| 41 | `lemma` | [linearEquiv_symm_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/linearequiv-symm-var.md) | 300 | `result-track:64e85602a3136982b73523a28fe3daf097eb3ba345e115b6402ad155ea1ccc7b` |
| 42 | `lemma` | [surjective_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/surjective.md) | 304 | `result-track:44bc68e37aa65c386f6a7c210601b0f8547fef537c28ec312dd6587c54d78bc2` |
| 43 | `lemma` | [ker_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ker.md) | 307 | `result-track:ea739a61bf12cec857b5fc9dc23c0680719989dd96f3de290346daf6dcd53886` |
| 44 | `lemma` | [exact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/exact.md) | 311 | `result-track:fd5d80fa44cba760c07df3c2e73046d7b2e2fb575d7402646ea68ada2724fda7` |
| 45 | `def` | [desc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/desc.md) | 319 | `declaration-track:95292b3d8783cd05a763f8efffbc400da3a56f63906ea28fe626f80283e52031` |
| 46 | `lemma` | [desc_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/desc-var-source-edition-2.md) | 323 | `result-track:9aa2bc40ef85c7732841ce4b485903ef69c0abe7a6bc004f7f66e4e2b859dc5c` |
| 47 | `lemma` | [desc_comp_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/desc-comp.md) | 329 | `result-track:26e24c523fded7b6ae9e999d1ff564621ed9b72a719d39f30f67b43981ff64e9` |
| 48 | `lemma` | [π_desc_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/desc-apply.md) | 332 | `result-track:2e93355638ca22c8f8192eb6b65826e3215135e47e778d38d4b9b986486fdfdc` |
| 49 | `lemma` | [postcomp_desc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-desc.md) | 337 | `result-track:68686432b39c42dc07680bfa237f1f47760a2eb1512c63f3a43e5ad5558f95ee` |
| 50 | `lemma` | [postcomp_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-injective.md) | 340 | `result-track:8db7c393dad691285ccd0f374f64898ab942fcbdee12743d150feaac3f375350` |
| 51 | `def` | [linearMapEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/linearmapequiv.md) | 353 | `declaration-track:8a3409e26c4f51fb26786b6ec56846622d507105739b1b3f4efe628a02bf49bf` |
| 52 | `def` | [uniq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/uniq.md) | 365 | `declaration-track:69d33e7629db20ca1218f5441df64a84f4ea147211681c97892963df1848cab4` |
| 53 | `lemma` | [postcomp_uniq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-uniq.md) | 371 | `result-track:4f714e385025e3c8f59ec5626ef98731a25f61faefbd607ae3df267784078d17` |
| 54 | `lemma` | [postcomp_uniq_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/postcomp-uniq-symm.md) | 375 | `result-track:3dcfa1f88acbf1a275ba99a5b666875cb41f1028c28c9074a484964e689e3c7e` |
| 55 | `lemma` | [uniq_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/uniq-var.md) | 379 | `result-track:f74549d7e7d409e177bea9ce4c448817156a943b4684225894a9093afc297eb6` |
| 56 | `lemma` | [uniq_symm_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/uniq-symm-var.md) | 383 | `result-track:3913ec283b683a9f4588c31caef7c97ce781430b5710b1a0225248fe3f2ae668` |
| 57 | `lemma` | [of_linearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/of-linearequiv.md) | 388 | `result-track:4b00b2ce04642d53ca97c4f8acf487ef1c6a79e45618c59dadcc8f428505e2c2` |
| 58 | `def` | [ofQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ofquotient.md) | 402 | `declaration-track:4b0f08450b334dafb0dfaa1e69457049e664c8698a3965056690534448a2d530` |
| 59 | `lemma` | [ofQuotient_π](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ofquotient-source-edition-2.md) | 406 | `result-track:8019a6cd708a622caf10b1a327b185191f0061380d34963489b376d1342910a8` |
| 60 | `lemma` | [ofQuotient_fromQuotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ofquotient-fromquotient.md) | 409 | `result-track:42ec005ddf5ad61b6c9af074e935570ef833453f27dd1a3ed5decc9a13e48f59` |
| 61 | `lemma` | [ofQuotient_isPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ofquotient-ispresentation.md) | 411 | `result-track:58a18b20bad134d3c916c14023391dec571b680d02f4ec40959dbbd0c236993c` |
| 62 | `structure` | [IsPresentationCore](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ispresentationcore.md) | 421 | `declaration-track:3709e9abfc764c0b1366316e99492bc637b23ccf2bddbe6f9c973a7943e63cf0` |
| 63 | `lemma` | [desc_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/desc-var.md) | 435 | `result-track:02f41cfdf6b40cd8e8ad6856e455ff021e5a974a2121a7bf6dd9f93ccec4fcd0` |
| 64 | `def` | [down](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/down.md) | 441 | `declaration-track:402549a98d95a618361f4e725024171c2979e20a838ba67b2bcd599e39c7e49a` |
| 65 | `lemma` | [isPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ispresentation-source-edition-2.md) | 455 | `result-track:ea5433c6c57a35354123f7627df49d46ed04476fb39dd9911b44b05bc99b6136` |
| 66 | `lemma` | [isPresentation_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ispresentation-iff.md) | 469 | `result-track:714e424f073bda750bdec26c0d2aee8075167b1cbea9e2b98f3633b386bbee56` |
| 67 | `lemma` | [isPresentation_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/ispresentation-mk.md) | 477 | `result-track:ed114b13035de161e1e87cc5de940031d7f7d3b600df9012906949d8bee79202` |
| 68 | `structure` | [Presentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/presentation.md) | 492 | `declaration-track:b2f1dd3e3e427db1c3cf2a619d691e5d89d2a34586157384be8ee29366607399` |
| 69 | `def` | [Presentation.ofIsPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/presentation-ofispresentation.md) | 499 | `declaration-track:31bf02509587c1aefeb14a6f3e5a6120ac3acf39b2d9b7eb116afae981a1fbf9` |
| 70 | `def` | [Presentation.ofLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationBasic.lean/declarations/presentation-oflinearequiv.md) | 509 | `declaration-track:9161ef094a4f91afd7206f1cdb9685d039011d4ce503c311ee5348d4bed232b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0816f5bda4eb181d225875ff111e18ffdd24563242e1e7b224b354759722729 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
