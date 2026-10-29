# Verification target: Limits Shapes Products Cofan Mk Proj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c7a3692df46db3452b21d48c6f658eb8c28c3f",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c7a3692df46db3452b21d48c6f658eb8c28c3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/fan.md) | 55 | `declaration-track:72a8aca6db7212f9160bc23eb4adfd50b2b4179236f3a12b271363f44e27735f` |
| 2 | `abbrev` | [Cofan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/cofan.md) | 60 | `declaration-track:16b7583e1fd7f9981bc253eda69cf41cc52543323bb612d74b6886ebcceb0b9e` |
| 3 | `def` | [Fan.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/fan-mk.md) | 66 | `declaration-track:25200ea86418b3a78d833c61869001efcf88cc7f4dc14e6f910cc053bf127fc5` |
| 4 | `def` | [Cofan.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/cofan-mk.md) | 73 | `declaration-track:31505655d1fa7b29fc118a8630f0e267a83e33e7abd5cfe486815c7356443894` |
| 5 | `def` | [Fan.proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/fan-proj.md) | 79 | `declaration-track:b4d6abc238d2eb001d33b35eaa20f9acfbcc854ecea2032acee948acafc8633a` |
| 6 | `def` | [Cofan.proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/cofan-proj.md) | 84 | `declaration-track:63ef21d697eede00d4c039429eda7e5c3de6edddc0f42408ea0b175b265c64d7` |
| 7 | `theorem` | [fan_mk_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/fan-mk-proj.md) | 88 | `result-track:7474e52a316a68c46e276cab775e4a2889fa4db2029448469d2ebbcb337934a8` |
| 8 | `theorem` | [cofan_mk_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/cofan-mk-proj.md) | 93 | `result-track:ec7c7a450c9d7608d09acc727e765c3b8f65460477e930ca0453e0e28a2d41a9` |
| 9 | `abbrev` | [HasProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hasproduct.md) | 98 | `declaration-track:7b1b1cb0115422b88045e44093e6b2dee8601335479495bc130a039b926a861a` |
| 10 | `abbrev` | [HasCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hascoproduct.md) | 103 | `declaration-track:f5a25b799b7fb68a81922b2132fcc44b6c5b6485dbb114304c2389024008edb2` |
| 11 | `def` | [mkFanLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/mkfanlimit.md) | 110 | `declaration-track:186b78c10eb665b5c8d09d996b7cef97528b4190534da843360f9b3d24b46dfc` |
| 12 | `def` | [mkCofanColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/mkcofancolimit.md) | 121 | `declaration-track:12f96bc2984e3b4678caa77f8fa07891886ead35a644d21db36d2d47836617b8` |
| 13 | `abbrev` | [HasProductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hasproductsofshape.md) | 133 | `declaration-track:824b0697377f8da1c9826a5fa8a502b552aa4b6fd3b4fe018b65f1823a6de498` |
| 14 | `abbrev` | [HasCoproductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hascoproductsofshape.md) | 138 | `declaration-track:a5352e83700dd79fa94b6094d83f0408a7f1f9ff45e3303b8029e67987c09457` |
| 15 | `abbrev` | [piObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/piobj.md) | 147 | `declaration-track:cd451f76a92ae59c333ca1abc375fd163fd01e9aa91afcddae9fea59a9297d79` |
| 16 | `abbrev` | [sigmaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigmaobj.md) | 154 | `declaration-track:2ef5f8b7a168406b16eaf1a63e21980cc6af1d4f6662544e29fe3f6125d7e270` |
| 17 | `abbrev` | [Pi.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi.md) | 165 | `declaration-track:a4459c5a3a64252b17b98c96d3e692fde809bb6b6ecc940cea1807bcfb9aa39d` |
| 18 | `abbrev` | [Sigma.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma.md) | 170 | `declaration-track:5300832a75172c51dccb420a28ae242bf17abd24e86d4d609f4f6561335d5e1e` |
| 19 | `lemma` | [Pi.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-hom-ext.md) | 178 | `result-track:1d02196b262764de7fd9b4b6d6eca1e0f60b335cb8bcf6451f88a3631c6b659a` |
| 20 | `lemma` | [Sigma.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-hom-ext.md) | 183 | `result-track:3c072ccd6183d1f36280baf0cff2cdab1e2c0a8de95c10dec8a28eaf18af1683` |
| 21 | `def` | [productIsProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/productisproduct.md) | 188 | `declaration-track:27a7392eb65e2a2579818c27eb62643894cacd331aa68a4dade905a197a9b6ed` |
| 22 | `def` | [coproductIsCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/coproductiscoproduct.md) | 193 | `declaration-track:5237ae50f2eec84f48c018d621a6303e02310953da26f7c661a4cf73fdac02a2` |
| 23 | `theorem` | [Pi.π_comp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-comp-eqtohom.md) | 201 | `result-track:81dc1340c3c1e72f0a18bf9efc8e0aff74d09131d8917aedd6aea5f7cad28b36` |
| 24 | `theorem` | [Sigma.eqToHom_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-eqtohom-comp.md) | 210 | `result-track:90f8862c1b0ab2f1146c8df482fae23b166395c4485425f8c449b8fafc6630c3` |
| 25 | `abbrev` | [Pi.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-lift.md) | 216 | `declaration-track:b435732e3345d3d356f22efcca89ad928cb8b1db7893a48b81110038ed9711ad` |
| 26 | `abbrev` | [Sigma.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-desc.md) | 221 | `declaration-track:4ed36aa61226a0ed2883b2377feb33477484f401c4cd76764df918ddafe990a1` |
| 27 | `abbrev` | [Pi.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-source-edition-2.md) | 228 | `declaration-track:bccf2079c327cedd7184609fa5de37ef29eccd475a7898af7ab580ccaf936141` |
| 28 | `lemma` | [Pi.map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-id.md) | 233 | `result-track:60bf2d5dd3a8e9c370cb3de27463d3e595f2c3a4b569c74426d5e72d1492452f` |
| 29 | `lemma` | [Pi.map_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-comp-map-source-edition-4.md) | 236 | `result-track:a0ee40589b580ffae3f7c6bc3dbff8f099d6ca60215c98a63f4e46b4bbc1efdf` |
| 30 | `instance` | [Pi.map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-mono.md) | 241 | `declaration-track:293d7ddc23c5fb441e264f8633442519257ded0a08f2e7249fd8c80f2686474d` |
| 31 | `def` | [Pi.map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map.md) | 249 | `declaration-track:2a309c575550042491689828e7cf08029e4d66860ca526e53998ecd45c69715c` |
| 32 | `lemma` | [Pi.map'_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-comp.md) | 254 | `result-track:826bd1847c178f9941a8923c8dce6a32bf3ab5397e2f02c6f5f0e6f7a07ce6f0` |
| 33 | `lemma` | [Pi.map'_id_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-id-id.md) | 258 | `result-track:d874fc24c2611bc176afe17c32a3b6d29bd052e902dd9dab9e7a680860677899` |
| 34 | `lemma` | [Pi.map'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-id-source-edition-2.md) | 262 | `result-track:99f20f8ce88fb9aa4e9250d7bf82fafe13659778f1d49b60b454927f27297d58` |
| 35 | `lemma` | [Pi.map'_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-comp-map.md) | 266 | `result-track:526aec0f29989c5f42821ac92f919878fe79d809e6ae645bb62f012e1753e9e4` |
| 36 | `lemma` | [Pi.map'_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-comp-map-source-edition-2.md) | 272 | `result-track:570c4c7eeb0f5385ff7a07ba6ffaab70c843c3681d22c6177b01a9053a7824c3` |
| 37 | `lemma` | [Pi.map_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-comp-map-source-edition-3.md) | 277 | `result-track:58cfb1e8d784b8d1ce957d60789a384c14117552e44862deb96a777627593b2e` |
| 38 | `lemma` | [Pi.map'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-map-eq.md) | 282 | `result-track:50c6cd07943893f4eb8e831ac788f3f40a0e9c8bdaacab2c76354fc92460cc09` |
| 39 | `abbrev` | [Pi.mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-mapiso.md) | 290 | `declaration-track:bbf8f6579da1167cba9e6074709f5ae87e82dd834b264e7e17ce2254c162684c` |
| 40 | `abbrev` | [Sigma.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-source-edition-2.md) | 297 | `declaration-track:e60e7d662672b1426e3e3f4507b2989e0bdeca4735e8c83ce2b6b624167db692` |
| 41 | `lemma` | [Sigma.map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-id-source-edition-2.md) | 302 | `result-track:c9e3c447375a0dcefdefb6d1918bf908968f10e2c1b546b72377e2b20a724feb` |
| 42 | `lemma` | [Sigma.map_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-comp-map-source-edition-3.md) | 305 | `result-track:3aa4c454f60a9c24521687f910fe75a9d70a4fdcd40b15981aeeead1146a1ca9` |
| 43 | `instance` | [Sigma.map_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-epi.md) | 310 | `declaration-track:0fe1c7bac68e5e08c347fdc018d8190ea30591094119a82283932edf61eb541e` |
| 44 | `def` | [Sigma.map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map.md) | 318 | `declaration-track:dcb12caa5ca4a899da6577194ec17f4afd18c1937ac0818011f491d71483fe8d` |
| 45 | `lemma` | [Sigma.ι_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-comp-map.md) | 323 | `result-track:da0995eecb61eb9604318bcec1095fe86063323df65d0c2dd268467d5e2bcb18` |
| 46 | `lemma` | [Sigma.map'_id_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-id-id.md) | 328 | `result-track:3f79785b2971283808dc416e34a52d5bbb8bb544dace685f775d814ed6c065fd` |
| 47 | `lemma` | [Sigma.map'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-id.md) | 333 | `result-track:6ba054cba998d9fd721b97b2976dcbd31f8063a04e52a91ef40dcaca203d4e3d` |
| 48 | `lemma` | [Sigma.map'_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-comp-map-source-edition-2.md) | 337 | `result-track:2985aff5d3c0636236d61c48ab77488b5bd2f1ac78fd054181e7f7c36a0aab8d` |
| 49 | `lemma` | [Sigma.map'_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-comp-map-source-edition-4.md) | 343 | `result-track:bb7282da5be6c067f42bc041164a69650cd84229c863c2b39791937a378b191f` |
| 50 | `lemma` | [Sigma.map_comp_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-comp-map.md) | 348 | `result-track:01d0249188b809686bc916e0b0f6acbc865ac8e14cd2975deb073cf2634d3967` |
| 51 | `lemma` | [Sigma.map'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-map-eq.md) | 353 | `result-track:822e7505fdf2d9ca23b268da86c2d5205383a33c869ea9113f735acd3ccd1793` |
| 52 | `abbrev` | [Sigma.mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-mapiso.md) | 362 | `declaration-track:bb3b1d594a34fb04b52526a38101a1fe736633aeae45035bcdf9b47de2078b13` |
| 53 | `def` | [Pi.whiskerEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-whiskerequiv.md) | 370 | `declaration-track:8dd4019b18b428f7b05945a5f898f30759814fd373a0f93479d0ef63365e10e6` |
| 54 | `def` | [Sigma.whiskerEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-whiskerequiv.md) | 379 | `declaration-track:06fd62d93c99380d525fbfdab0320692643e474f7b3729fb9795e253abe24e20` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/instance-source-edition-4.md) | 384 | `declaration-track:eb23a4d2ee19e767e051881f3e98e8055ade24c1948a127d6a28d4cd3b94c12a` |
| 56 | `def` | [piPiIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pipiiso.md) | 393 | `declaration-track:1f3560885073d2676e8a8fd8b881eddec7c96d72913841832a99f7d09a4637b0` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/instance.md) | 399 | `declaration-track:b6780a1141117602f508f8dd3139a5db93df3eb51504591dd8a30c6ccbe4fb1d` |
| 58 | `def` | [sigmaSigmaIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigmasigmaiso.md) | 410 | `declaration-track:21e77cf333d98a14486e537f2f85c9c54d1f7d082f9aef341f63a8ca6c865a56` |
| 59 | `def` | [piComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/picomparison.md) | 424 | `declaration-track:593ecc8508054cf64515c6db09ad464a987b3ea1887c22a74a1bf9f0697f7d51` |
| 60 | `theorem` | [piComparison_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/picomparison-comp.md) | 430 | `result-track:e9b92e4fa7f20069eb94d02da3e38536bbd04869201c5b511e6ce6549aaaf01a` |
| 61 | `theorem` | [map_lift_piComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/map-lift-picomparison.md) | 436 | `result-track:47097e71489589c7c0a375b4447b7b01dd713eb8c1b564dd9ae0d6923e41c13a` |
| 62 | `def` | [sigmaComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigmacomparison.md) | 445 | `declaration-track:3b06fe394cfda5fbe1adca72b2a58e5940cc8850cd6b99af3b032a7f2468b614` |
| 63 | `theorem` | [ι_comp_sigmaComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/comp-sigmacomparison.md) | 451 | `result-track:78568abdbafab50c718a62a5a33fd199b7992aaff581ee306e7844bb39b1267d` |
| 64 | `theorem` | [sigmaComparison_map_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigmacomparison-map-desc.md) | 457 | `result-track:f2da85bd688d4f009c44880c811d9e1ab4d1f7a5188d53020458ed15c1ad7df3` |
| 65 | `abbrev` | [HasProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hasproducts.md) | 470 | `declaration-track:95758149794db8ff322314d5f9c5bfa90929c795db6a162bedf67c214f924408` |
| 66 | `abbrev` | [HasCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hascoproducts.md) | 475 | `declaration-track:713fd668ec55159a7a902776dc450177ad3e42c801de4c288b743c850bb59468` |
| 67 | `theorem` | [has_smallest_products_of_hasProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/has-smallest-products-of-hasproducts.md) | 481 | `result-track:6545337b02f9a0945b35356eefed1cf122f93817220e3aa8d4181317e47fb219` |
| 68 | `theorem` | [has_smallest_coproducts_of_hasCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/has-smallest-coproducts-of-hascoproducts.md) | 485 | `result-track:62e90ecebbb9cf01cd10cebaaca468b27464e0987da9b41affd43d81e8f0a4e4` |
| 69 | `theorem` | [hasProducts_of_limit_fans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/hasproducts-of-limit-fans.md) | 490 | `result-track:95cca29eaa272135b81199c52225d99bd42709d932cbb3556eacd0a57efb8b50` |
| 70 | `def` | [limitConeOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/limitconeofunique.md) | 510 | `declaration-track:da311536d037f17e61afda5d31358f405ce8f06a9129a4512ca728e15f0cb975` |
| 71 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/instance-source-edition-3.md) | 529 | `declaration-track:cbbbe49639f3dd4e61df1339868a976dede2b934cbfdd450e023eb955071195c` |
| 72 | `def` | [productUniqueIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/productuniqueiso.md) | 535 | `declaration-track:371168786a3202beb06364b70db7ef3c7e27664e3e3ed1795cc468ab80edd32c` |
| 73 | `def` | [colimitCoconeOfUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/colimitcoconeofunique.md) | 541 | `declaration-track:1a3d961597ef36f2a9d44a7db1027419e11886ac1829c62ab55ef30255a30f00` |
| 74 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/instance-source-edition-2.md) | 561 | `declaration-track:bd0e48c16b3ccde0174cfe44cdb926ac8f149cd361a04605ca98ac2e244fbf9a` |
| 75 | `def` | [coproductUniqueIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/coproductuniqueiso.md) | 567 | `declaration-track:fc678a7816a3478c6fcb303ac28d8c3a8c6f5263ca66bf17128da8ac9703c15f` |
| 76 | `def` | [Pi.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-reindex.md) | 582 | `declaration-track:1ca27b2183bfd00d9a4e1dab86b66164afbcf59f4c85b585ec44033306197f4f` |
| 77 | `theorem` | [Pi.reindex_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-reindex-hom.md) | 587 | `result-track:1185a48b1443e87e9b5cbc2c8f26313c12e7d5a3ac4e725d5d5742c2b9c91106` |
| 78 | `theorem` | [Pi.reindex_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/pi-reindex-inv.md) | 596 | `result-track:9c45a1d76997470ffcae24e7784fe1bd0e128118e7e688f5c7b5977173216015` |
| 79 | `def` | [Sigma.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-reindex.md) | 607 | `declaration-track:7444d1e16b16f8bd05e60169d157e36bd4eb2d03ac93a88082fcd6c1468f6829` |
| 80 | `theorem` | [Sigma.ι_reindex_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-reindex-hom.md) | 612 | `result-track:2ca8f48e3346f6302119ff9f5a2ec9f8059e060ed2017479ff4750d8640a8e54` |
| 81 | `theorem` | [Sigma.ι_reindex_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/declarations/sigma-reindex-inv.md) | 625 | `result-track:06240d8dedf87c8e3bba905d328619720fa9b5483d89ed24cf9726214a64bba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aee54c7646a80ffea71e36202acfdd6f85a2575ef1a909e3b074f668c53a7233 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
