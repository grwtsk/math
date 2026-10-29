# Verification target: Simplicial Object Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c9176cab3d84262b1eb24470b4324e60207c2e",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant89704eb79aeefde2dce0ceb8a8c6800e16e7f4fdb4b4760ceed9c7620c103e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c9176cab3d84262b1eb24470b4324e60207c2e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant89704eb79aeefde2dce0ceb8a8c6800e16e7f4fdb4b4760ceed9c7620c103e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant89704eb79aeefde2dce0ceb8a8c6800e16e7f4fdb4b4760ceed9c7620c103e56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialobject.md) | 48 | `declaration-track:6c33c03c11e5ad48a6526ff020511eef0688c400ceefe23096260438287fc556` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-14.md) | 52 | `declaration-track:8d40871d8d86c71031b7cf5dd23e3b80451c09738b2a6a5b987c75a114018bee` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-8.md) | 66 | `declaration-track:4ca4e15a2f564fbbddba86d6010639064925278956b416088fe084a988355c63` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-7.md) | 71 | `declaration-track:42308572336ce5a344e8656b9c63e2fe41603f858398756320f8f4d2dd76eefa` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-11.md) | 74 | `declaration-track:6814687d9d1df63708efe5a66c68418d5d5f3cc6a51f638b9e4455053ca300e4` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-9.md) | 79 | `declaration-track:5793e161e852be54efacc01cc793955434bf2ffa61de89defde649a1b8577ec1` |
| 7 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/hom-ext-source-edition-2.md) | 85 | `result-track:4aa633c5316fd9c16c5c3fb9125fe107b45aa86a5811aa65ca2da8c8675703f3` |
| 8 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/anonymous-source-edition-3.md) | 92 | `declaration-track:ca2cbcf17c2d346af6b4b97b9eb0bcf502dfad062092b0bc3851d215b1e99fb0` |
| 9 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/anonymous-source-edition-4.md) | 96 | `declaration-track:e62431b74bb04ecdbf52a8f7b750909c68f7eb2561e0f1a2df1c87bc185b5f3a` |
| 10 | `def` | [diagonal](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/diagonal.md) | 100 | `declaration-track:9fcefd51ab0405bb3a3030b8163b95af76d28ac21aefc6c7edae9ee64965e9a3` |
| 11 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/eqtoiso.md) | 103 | `declaration-track:22b4b20da31cf7c2c7a457a533220f060bd038966a6d8df1a79ba3962827ff2a` |
| 12 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/eqtoiso-refl-source-edition-2.md) | 107 | `result-track:e3898ee9c393bd20d711914c17b99958f68c93cdc4f145e31b41a22b999744a5` |
| 13 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-7.md) | 113 | `result-track:af2e06cab69822f2c8c183d5a63023f6831d56974c999cb6dd8ec4667813f3a6` |
| 14 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-5.md) | 119 | `result-track:75e5b1559e06ca63afc6315e4d5b12839c98af6629992395eac754684c9b0669` |
| 15 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-4.md) | 126 | `result-track:6e7b577ae5305c2fced86a1cf6f72a41c0580aae0a1905fc3825add9c3aef26d` |
| 16 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self.md) | 134 | `result-track:0a70d8e0303a09f0e9fc9071c0eadb1e88838d82c8c61773914c43056bd33b65` |
| 17 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-7.md) | 140 | `result-track:e74581e0e5fac2eba353c182873a35416d0fd43b5f14783515ebcf6d0ba3a5ed` |
| 18 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-le.md) | 147 | `result-track:191e142fc9577c1baaa8f9b7cdc8c56093f928bd66ea6ad874bc1722233213f9` |
| 19 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-3.md) | 154 | `result-track:6d844b31154fd944d4bbea18390a51c3a984e92ab2b8d46446614cbfe2f058e0` |
| 20 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-2.md) | 159 | `result-track:1d807f6ad07365158a8ba366e0b7f15eeff4b902baf097e7b1ea2b683bffce49` |
| 21 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-succ.md) | 166 | `result-track:628fcaf90bc0a97018c9ec888f7446d7dac27f46aa7d1308a872eced9904ddbb` |
| 22 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-succ-source-edition-4.md) | 171 | `result-track:aaed0a09a90bf0cdf80e703435b6eb396746aed2b90068291eec3000d59ea69d` |
| 23 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-gt.md) | 178 | `result-track:d1198720178912a77fd7c3051e8e04448611517bf470a70076311e9e5f4a714e` |
| 24 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-gt-source-edition-3.md) | 184 | `result-track:d7505562315ba06e5f96d8e043709357ae5b68facb54b0f1bdb56cb71e6f0c6b` |
| 25 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-3.md) | 193 | `result-track:6db2198fdc9a41769cbf5b2c1caaf32d516c82813577fad7198692fcddad191c` |
| 26 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/naturality-source-edition-2.md) | 201 | `result-track:717c367b1ef92478acb7cc61db5b8b8b268d2eb37016087e7b65b289e96a48a3` |
| 27 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/naturality-source-edition-3.md) | 206 | `result-track:76d32c3dc6065a35f1aae0a33a87b549dcde53de0c44a971ef094592d0531508` |
| 28 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering.md) | 214 | `declaration-track:084354c148b7462a80b2a6baf651a5712814f2bb2617268eb74f48fa1436ddd6` |
| 29 | `def` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncated.md) | 218 | `declaration-track:5babe1e2fcad7f68dbf54b3cc6edcfdde61d4c93e1277cc2cee20f277807911b` |
| 30 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-17.md) | 221 | `declaration-track:cfe75b6778a849aee9993494fd8a56a5f5c60e41df414ae5acffa5bdc61f3a78` |
| 31 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-24.md) | 229 | `declaration-track:f94e85088bf794e2841e0cbd1f7bad86b40b38932e180bfc21c9dffcc0ff3f9c` |
| 32 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-3.md) | 234 | `declaration-track:158f098530fcf7193208f8713123e4283b4124195c4d8cdf32331d0042dccff7` |
| 33 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-4.md) | 237 | `declaration-track:18e4878ba0ae59624bc33a8e3b5799209808ddf3337ddb091c48bb4b3d1bb219` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-15.md) | 242 | `declaration-track:a3d26a946547e10906a3550c1b2289d42cdb70a39c6788cef0bbfce8c5d3bc7c` |
| 35 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering-source-edition-6.md) | 248 | `declaration-track:ff57fdc6a9519b10632ac517a1b897ceeba544617281edb15afd9214c7986908` |
| 36 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/macro-rules.md) | 258 | `declaration-track:24996d1a864daf5db644155668f85d790cf432f23c57a6bf9203362af3726276` |
| 37 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/trunc-source-edition-2.md) | 270 | `declaration-track:d20165f133abf89e072e6ac0d041973b22d1b3b7654120d0a8721c1e9244c8e7` |
| 38 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncation.md) | 278 | `declaration-track:07dfec978e2e62f06c4c055317ab681dff2a8d3da809d5fc24af0edda2c1545b` |
| 39 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncationcomptrunc-source-edition-2.md) | 282 | `declaration-track:6410a06cc30d95e85caac3a1ebde4ebf02fdb10e3ed248566ee757cce0a9cc33` |
| 40 | `abbrev` | [Truncated.sk](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncated-sk.md) | 292 | `declaration-track:602554f10057c4899c636708a7ea7437b464390878213fb5849abbaff6c560ec` |
| 41 | `abbrev` | [Truncated.cosk](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncated-cosk.md) | 298 | `declaration-track:da30e03861fe355a5ec73d9641263795d6e70719c3f968ee6d7d6cf95efcf369` |
| 42 | `abbrev` | [sk](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/sk.md) | 304 | `declaration-track:0651edf2eecd1236efcbd911c6499b9775aadb6591859dbdddf467b2caed4ddf` |
| 43 | `abbrev` | [cosk](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosk.md) | 309 | `declaration-track:39714e2e593e0f1f4c18ec9a58dc95ed2ff6e9526a2aba5b0a0d3a4f0725a96a` |
| 44 | `def` | [skAdj](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/skadj.md) | 327 | `declaration-track:d46e2df82eb8eac027e58754ecce5b6fed55983ae2afc7cf718a412ca7e717f3` |
| 45 | `def` | [coskAdj](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/coskadj.md) | 331 | `declaration-track:e7bed0eccac533773a068b32122e2965ed9e70e1295cfc742337a44ceb912a05` |
| 46 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-10.md) | 334 | `declaration-track:62dafcaa379d6c42d1b1e7481a318f7bc5dc8162084472457ebf5db796ded3b9` |
| 47 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-19.md) | 339 | `declaration-track:d91322b35571e42ff0b96194b715875cf65e238dc7f343d27bd9e0b8a45cc803` |
| 48 | `instance` | [cosk_reflective](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosk-reflective.md) | 353 | `declaration-track:3cf3a57e6c289a050add71d2bfbbf38d53e0830802f58da7177431ef0e336865` |
| 49 | `instance` | [sk_coreflective](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/sk-coreflective.md) | 356 | `declaration-track:c75c2bad318d9ee47ac4706767e7f17f3180488d0f3a3db999b7d52efcc1172c` |
| 50 | `def` | [cosk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosk-fullyfaithful.md) | 360 | `declaration-track:a48a1ecff73db1b4172533444820dc72b5f59f7cae658b7fb384d399bf5ab1f7` |
| 51 | `instance` | [cosk.full](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosk-full.md) | 364 | `declaration-track:219421e615bfc15f788789c52f2da9cdeaf1595224b47cd5411853682d0464cf` |
| 52 | `instance` | [cosk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosk-faithful.md) | 366 | `declaration-track:1b46f737b6f7199b55869a0412f1a53b2e0bbea6c48b886bdc123950bbe4c33a` |
| 53 | `instance` | [coskAdj.reflective](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/coskadj-reflective.md) | 369 | `declaration-track:4b1715fe54f9c70ce1cb4a3ac73862459d0efa253075acdbed47631c17a0844a` |
| 54 | `def` | [sk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/sk-fullyfaithful.md) | 373 | `declaration-track:3262656d09b3dd87701b575a80bf6cd40a7742f930f01c713fb432bba897f69f` |
| 55 | `instance` | [sk.full](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/sk-full.md) | 376 | `declaration-track:d6557445e2d04ebba2b4a1da483413ed5d4060672de3a62cdc3d1d5275b1026f` |
| 56 | `instance` | [sk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/sk-faithful.md) | 378 | `declaration-track:5e448098f1c6ae2c41d045ad927b568e7042fcfa35dc52568c0d7b53de88a977` |
| 57 | `instance` | [skAdj.coreflective](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/skadj-coreflective.md) | 381 | `declaration-track:a5116b7e44fb34176f116c0305e26e9a2bd9c77fc2b09c421735bc00e3056849` |
| 58 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/const.md) | 391 | `declaration-track:7def7267d031247ab756023d989b3b2448769fd07bafbec94e0a0d0e2fc0f8f7` |
| 59 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augmented.md) | 395 | `declaration-track:43930775155320f723a93ae7cfaeb72a12f09a30c6a31faccba8de56a097d167` |
| 60 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-22.md) | 399 | `declaration-track:edb29cfb33dd0a33c7aab3adcfedbbc71a8c3b94d9e5684edda53b121a1a7748` |
| 61 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/hom-ext-source-edition-3.md) | 408 | `result-track:7219cf6fea28adae92de0ef54008a32ee8d3f0a5577a76d1d8175bd03f668358` |
| 62 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/drop.md) | 414 | `declaration-track:819400ff800957b16fd591bc7e25ad1d9593b6c03988a8f0caa1025bde6dd95b` |
| 63 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/point.md) | 419 | `declaration-track:0cfa524f22197ce0ba1167c78c699eda796b85b5d215104ec84d7d690ef35c6a` |
| 64 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/toarrow-source-edition-2.md) | 424 | `declaration-track:d9a00ac10dd9e3588a177ddacff6d591cf9a93becdbb0912c3aba6887f91a809` |
| 65 | `theorem` | [w₀](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/w.md) | 440 | `result-track:2eebe6cb4ad86fe7fb3683848ca77d6295a8da250e48556945d2c667e3035e1b` |
| 66 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskeringobj-source-edition-2.md) | 449 | `declaration-track:a2509c8a0b71c683ec3ba22de664b06a0aa531358ff24d32772ca5556f82f004` |
| 67 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering-source-edition-2.md) | 466 | `declaration-track:33a9d33e44e5b12b0be7ee10754b568e2b511859a59b67cf310f6330827ab21d` |
| 68 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/const-source-edition-2.md) | 482 | `declaration-track:a52f56e22619f54439877c36eeeb1a3b9a719bcdd94c2b1be281f99c444de62f` |
| 69 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augment-source-edition-2.md) | 495 | `declaration-track:f1c4384e43e88773936f0dceb148b872445368d39e06e9d11c75332ccacf5d4f` |
| 70 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augment-hom-zero-source-edition-2.md) | 510 | `result-track:2c581cf41f7f0cc6a429e748732423db429b959557b8f74394031374aa640c65` |
| 71 | `def` | [CosimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosimplicialobject.md) | 516 | `declaration-track:aa4f401aed33e04fe3e277e9fd4c9c2eddd561326ceca036518c702f3d153617` |
| 72 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-2.md) | 520 | `declaration-track:14c3cdb59be9c0a79970de4143425cac30db48a58b3c034512a3d5c8c3e64095` |
| 73 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-21.md) | 531 | `declaration-track:df64242c83a8d25fb1179c482da7abb82d3a9f366a08218ec95febb90cc80070` |
| 74 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-12.md) | 536 | `declaration-track:726fb39889155e8162ead111816a4eed655f008f94f625178f562676a1a8597f` |
| 75 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-20.md) | 539 | `declaration-track:dbf15c1dcf43db1449fd22a4486828db770301539c95889a96ab95d3fcf14a30` |
| 76 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-18.md) | 544 | `declaration-track:d13390bea02a49e1a8fc9429fe7baae8bb11da6bab9a685512290f6fa26cc524` |
| 77 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/hom-ext.md) | 550 | `result-track:445dd2c5aa2ed681bf281dd83f32af5df19f33223b524ed83baa837479004709` |
| 78 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/anonymous-source-edition-2.md) | 559 | `declaration-track:aa3c7595d060a4a9c3e784676e614c28f07d0902df04d20a3869a4ddbed88f04` |
| 79 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/anonymous.md) | 563 | `declaration-track:2d19c2b2039ec1ebe1e71ba25db6626c013227634304ae67370589be504a1189` |
| 80 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/eqtoiso-source-edition-2.md) | 567 | `declaration-track:dd98892f8783f7462af5ae2221c59b14a42f4dbf50eb0643b8194b8b1f7d313a` |
| 81 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/eqtoiso-refl.md) | 571 | `result-track:a9b714b566ab44323c2e5ba71883562b038f5c62c4e03262d8bf591a57b458a0` |
| 82 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-2.md) | 577 | `result-track:21a3d253f2c2594a74d0df741398fd5af3ca60ed50de613b7a441a96c812ac1c` |
| 83 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-6.md) | 583 | `result-track:83793f888ce693696ea077482c0c4c6a4e6b90f48d8a10e82d50183a641eabcd` |
| 84 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp.md) | 591 | `result-track:0e4c1bdc5aa0e8723f95deb4ce234a11e90d88dee7314cf0807c0fe3319f5f8e` |
| 85 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-5.md) | 599 | `result-track:a3930405484d835c92af61929737ab5263d56dd7d0659bf20c84d6ee87671588` |
| 86 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-6.md) | 605 | `result-track:d517119540ac0a7ba6248420f94c66fedc9d71cc955769e93d318c84f8add58d` |
| 87 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-le-source-edition-2.md) | 612 | `result-track:6a7d4429d67019c8cc3ecb5a05f593c0d344d43825423a4152d2992c50fe80ad` |
| 88 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-8.md) | 619 | `result-track:f02763c254d5e78b77e9ae120174268a831649fc397c1521006ced152e4fb233` |
| 89 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-self-source-edition-4.md) | 624 | `result-track:7c0a4c6fb3ff9e2849d97cc00bc25c01087f579097638b591206e5d5c1dd27ee` |
| 90 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-succ-source-edition-3.md) | 631 | `result-track:7bf5c99f8997565b6d9cca784e3528ff5a3236b182cd7850c73b669b81b2aaca` |
| 91 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-succ-source-edition-2.md) | 636 | `result-track:6c7b9e6126668a60bf717dde2c69a87f88ee1b90373f6064960c3c841c04d232` |
| 92 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-gt-source-edition-2.md) | 643 | `result-track:d3134ec6b81519f979e521da44889d9ef49ece7fdecffe9d21e2f3edacb9283c` |
| 93 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-of-gt-source-edition-4.md) | 649 | `result-track:e61ad8d1a7a4bde26283f23aa5423441a088f75b922757dc1d1f3a21dc26906c` |
| 94 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/comp-source-edition-8.md) | 659 | `result-track:c599f59a6551e936b68cf3f362854553db74368176d27166570eed1ecee0addc` |
| 95 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/naturality.md) | 665 | `result-track:04b7cd9713a92a27bcca6422d9d261e223d96f1f224a133ead38cca2875f89cb` |
| 96 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/naturality-source-edition-4.md) | 670 | `result-track:bbd573f76c772c2a4f8aba4997f219b42b172eaf95fb434be55367d2683559e2` |
| 97 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering-source-edition-5.md) | 678 | `declaration-track:f88d59ba254fe16fa3eb157dc5ba4020e931bc47d06c009264972878ab08d5a5` |
| 98 | `def` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncated-source-edition-2.md) | 682 | `declaration-track:70364c97b4b95bf7622dfd5cbc1e46aa55c87c3c931f8c4c2cf3711c82099bf6` |
| 99 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-16.md) | 685 | `declaration-track:b1286d36487cd9b2f9d8615107a6cac2e541094d100c8ea42d94aa7b7999bc6a` |
| 100 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-6.md) | 693 | `declaration-track:2f87d30a6e2da743c0d7fbb58c93646e5f7a9bdbe79c8fa851a8eaf7d36b0cbb` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-13.md) | 698 | `declaration-track:867a7ac151b1e425591f1b727116e1866440daf7da163f5ab79d056c8cc19e9b` |
| 102 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance.md) | 701 | `declaration-track:11e468bc775ebb3a44f48f33aed7419c5ae56d2699036eff05cbbaa0bd4162a0` |
| 103 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-5.md) | 706 | `declaration-track:1afa294b8818fcace1970625b3e2a59bab06a3d6509914ed909ea49d4db1c080` |
| 104 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering-source-edition-3.md) | 712 | `declaration-track:b75fea7310c59c5cfac1af7be959507d9c822ee6804c52c3b222b273bbde1897` |
| 105 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/macro-rules-source-edition-2.md) | 722 | `declaration-track:870318a9433586996b48c7012dd01bfb6a38b5412a0e26953e37629215ffa36f` |
| 106 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/trunc.md) | 733 | `declaration-track:744243b4446a49163c626e1cc2b14af8dbf22ed05669fb797154555a9eab8cdf` |
| 107 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncation-source-edition-2.md) | 741 | `declaration-track:ef38877d409d9e2b5c97a9cebcf2f063e426e1a52ea82208efcb2c884f11cdb7` |
| 108 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/truncationcomptrunc.md) | 745 | `declaration-track:360e47e93a1a82e605de26c694acb3df2a767863493fb510d1fa1944085684b4` |
| 109 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/const-source-edition-4.md) | 754 | `declaration-track:d8c7c976cbc1f64064bf0228faaf27762b3d01cf7c311de939cb8e86ac378284` |
| 110 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augmented-source-edition-2.md) | 758 | `declaration-track:7a0d9a33d047d732656b02c51d9c0ac719a7c7a018d758c72d595b3d14e4b5ee` |
| 111 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/instance-source-edition-23.md) | 762 | `declaration-track:f20d23c0e8224665a8688d2ec987449e247a5213c8fcc52470b3d5591e962803` |
| 112 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/hom-ext-source-edition-4.md) | 771 | `result-track:933d1f4743a55ff083d8ff1934a5c398503d9303d987785b034e899936621978` |
| 113 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/drop-source-edition-2.md) | 777 | `declaration-track:b1108136ac2fef4e7306fba09cf010f6269b360837656310da75a27481907f03` |
| 114 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/point-source-edition-2.md) | 782 | `declaration-track:1b5602656a8111b5094bd3b5753734f438ec7bdfdcfa784498b4a27331db2ad4` |
| 115 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/toarrow.md) | 787 | `declaration-track:1dd75dba7dc2633acf11f47f47cd87d145c8cef798017abfc7c33564de5e43e8` |
| 116 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskeringobj.md) | 805 | `declaration-track:9e03a2f2d91e6d72865bbf687eebe05e3d892ae4e0413becc47624562374fd74` |
| 117 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/whiskering-source-edition-4.md) | 822 | `declaration-track:baca1c36d1e1422d14414f1b53827b77745fc340ce3d87cdc45dc8b66562f0c9` |
| 118 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/const-source-edition-3.md) | 838 | `declaration-track:a741b0b9b91ad7803250ddccc652e637524a5236a5d9eb54887eb45fdd8f6dae` |
| 119 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augment.md) | 853 | `declaration-track:63ff4ad74cb77809b7367b96c0b5fdc09924de44a6c279f79129cd4eaf8d7de6` |
| 120 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/augment-hom-zero.md) | 866 | `result-track:21a9460e1e2d8384e3f2da8d75ece95294cf86345a0b1a5fa13168490dccc606` |
| 121 | `def` | [simplicialCosimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialcosimplicialequiv.md) | 873 | `declaration-track:fa2323ddc2a42e2bb412f39704a8f7462eb3d67150a196f179db364bf7e949f5` |
| 122 | `def` | [cosimplicialSimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosimplicialsimplicialequiv.md) | 878 | `declaration-track:541201697771139e22339e8bca43ed9dd9b27285fd447a2b967a202c51fd502e` |
| 123 | `def` | [SimplicialObject.Augmented.rightOp](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialobject-augmented-rightop.md) | 886 | `declaration-track:df427298d4ff7ebc66e0a48ab152166fcdcf93635017fe2094c096613937d535` |
| 124 | `def` | [CosimplicialObject.Augmented.leftOp](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosimplicialobject-augmented-leftop.md) | 895 | `declaration-track:5268887f78b11ac3c0e87fa19c92940028418467bf78ae01d2e6baea8f2e1deb` |
| 125 | `def` | [SimplicialObject.Augmented.rightOpLeftOpIso](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialobject-augmented-rightopleftopiso.md) | 904 | `declaration-track:a4406a960ca4f6c24c0669111f8093fd309040aa5e700b318151d8e4eeae7c92` |
| 126 | `def` | [CosimplicialObject.Augmented.leftOpRightOpIso](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosimplicialobject-augmented-leftoprightopiso.md) | 911 | `declaration-track:7336a6bf1544dd3161973a9ac450c57317c459175c3adc19ea29c89b397748fc` |
| 127 | `def` | [simplicialToCosimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialtocosimplicialaugmented.md) | 919 | `declaration-track:e776d06fe1685384c429405fc73fba992db48f3ce79a4767dc8a396ff428565a` |
| 128 | `def` | [cosimplicialToSimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/cosimplicialtosimplicialaugmented.md) | 934 | `declaration-track:a24ea94689817f4e0a4e9667516a4123d1f48197506d81183bcfa0588df73ba9` |
| 129 | `def` | [simplicialCosimplicialAugmentedEquiv](../../../../AlgebraicTopology/SimplicialObjectBasic.lean/declarations/simplicialcosimplicialaugmentedequiv.md) | 951 | `declaration-track:ab98606c63e6881435445d98f128c207d20ff1f5a745cb52f1ed5adeb700b118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f1c7da73fe49dce8de36e660f685cd6506acb168a65bb119bf4d35ce34dfeb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant89704eb79aeefde2dce0ceb8a8c6800e16e7f4fdb4b4760ceed9c7620c103e56.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant89704eb79aeefde2dce0ceb8a8c6800e16e7f4fdb4b4760ceed9c7620c103e56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
