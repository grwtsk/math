# Verification target: Het TNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3345de192329555d61307478a75af83e77e1b360",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variant0948d3d1dd24a589228fad893eac5172373ee59f377f53945912906741d99b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3345de192329555d61307478a75af83e77e1b360`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variant0948d3d1dd24a589228fad893eac5172373ee59f377f53945912906741d99b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variant0948d3d1dd24a589228fad893eac5172373ee59f377f53945912906741d99b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ComputableSmall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/computablesmall.md) | 29 | `declaration-track:c6ee5cb70086bdf8a03a6b49a12fb6b4d4a4ab9be4c367150325612842c4f312` |
| 2 | `class` | [Small](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/small.md) | 36 | `declaration-track:e502e7d0e495ed439d1203c6add14ce47610b0e0c5d355c36256ef5d4b624736` |
| 3 | `def` | [ComputableSmall.choose](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/computablesmall-choose.md) | 40 | `declaration-track:6ced2b521874c3ae072ea0714d4df45bbde5f134b4ae76cea64f7f1e0ea75fef` |
| 4 | `structure` | [USquash](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash.md) | 46 | `declaration-track:563d8881554af0d46e0edce8995854d14fff1fbac7f5a459d48c9e245e39242f` |
| 5 | `def` | [USquashOrUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquashorunit.md) | 50 | `declaration-track:a2fa605e4abde258d028807cf970b49bc656879c2944d882daa36662079c6ccf` |
| 6 | `theorem` | [uSquash_eq_uSquashOrUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-eq-usquashorunit.md) | 52 | `result-track:b473e33ffa67fa82e8566781bcd5c633f254540d60a1bcb024728a6b4f6af1a7` |
| 7 | `def` | [USquash.deflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-deflate.md) | 55 | `declaration-track:752f41e8144b76c2bb8f9fbcd90bd90b73c501042ec1257e875609b213f2f481` |
| 8 | `def` | [USquash.inflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-inflate.md) | 57 | `declaration-track:d6686469cfbd09d50d764879f8485c2678085aa7834541cc1dbcb89301eeff0c` |
| 9 | `theorem` | [USquash.deflate_inflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-deflate-inflate.md) | 60 | `result-track:7513e73f757995291a89c35d841efe720ab2797896fc6d6e713d492f33f59e87` |
| 10 | `theorem` | [USquash.inflate_deflate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-inflate-deflate.md) | 65 | `result-track:0341102f55ebf19525e6211f07989818274a2a8b81b417a1d20cea2e8328b815` |
| 11 | `theorem` | [USquash.inflate.inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/usquash-inflate-inj.md) | 69 | `result-track:ba86e8902bdbd9b64a7db906e7f72f6a223889c234046d7414fdf9060d98ab65` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:296420e0c20d2419a69d2aac8f382e5ebe363c96e950cc26aeaf1e57c0100b44` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 79 | `declaration-track:8f4cd5073a6f6b2b26b7ce67e9b66b8279e683a84bcac579ebaa2e0fe4842faa` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 87 | `declaration-track:c3d409c16ee2f64d718864b733bcc382b5479a85b35c26b29596443c7a58f4ee` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 96 | `declaration-track:4bd8cb58575ba932ea7a95b733f45a655645d9a2007e0231cfaf7ba7ed401bfb` |
| 16 | `theorem` | [Small.of_surjective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/small-of-surjective.md) | 105 | `result-track:7f79ea671f677b81a3f89d0cf43635610b3394062d81597b36b4a1f5b060d36b` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 118 | `declaration-track:ce5a0509a9a335fe5c7a358262d83138ed87d2641995b8a73fadae21e4f5b676` |
| 18 | `theorem` | [Small.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/small-map.md) | 122 | `result-track:4ec99bf50ec1e15f67d4b803acbdbe73a071c7f84cd1aa774edf16d8d7a8438e` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance.md) | 131 | `declaration-track:0006a86b4899a3f3ede4e88adf127d7787a806bc563c181d6252ca33c2c0ec69` |
| 20 | `theorem` | [Small.pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/small-pbind.md) | 138 | `result-track:d2560269ef8aae1ab1485ec663cbf3e83bb762f37bee35db529da7645c6aa8a6` |
| 21 | `theorem` | [Small.bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/small-bind.md) | 145 | `result-track:ba86c6115446a4e25b132441527014fa2271f9871cb0d4a3b2ba0be8224043ea` |
| 22 | `structure` | [HetT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett.md) | 177 | `declaration-track:769c3bf4bee58f2aed4d5a066d6dbe24214b7b690be6778dcae8940357a8689a` |
| 23 | `def` | [HetT.ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-ofpostconditiont.md) | 199 | `declaration-track:df47aeea9374abd7a701c647ea3557f2ab5a72ba184adce9992a2e32e0501622` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 202 | `declaration-track:4c03e990198a9ca8037aa36f8f8ca40b3da754e6ad63ed7fda21343903d2f8de` |
| 25 | `def` | [HetT.lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-lift.md) | 211 | `declaration-track:86ce8a5bf2e78c1e06d57db78d6bf1362d3f75331d143351780d5bbf8e47368e` |
| 26 | `def` | [HetT.pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pure.md) | 219 | `declaration-track:812e4f7b74470ff58b474e0c5fb8b0d15cfe582edd1cae5f0b42d673747f3266` |
| 27 | `def` | [HetT.pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pmap.md) | 226 | `declaration-track:1b2023ecbcbef4b036663d34b75b21fbeaca7038440ae3af1b4044e24e0d086b` |
| 28 | `def` | [HetT.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-map.md) | 235 | `declaration-track:d3df9064099ec0a9bc5419aabff9ba1c2d9a78487387216b9ac206742c672a8a` |
| 29 | `def` | [HetT.pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pbind.md) | 243 | `declaration-track:b1aa5ecd7f511c67dd2c7c193122ba55357bd457aa707b20dca844b40aa70274` |
| 30 | `def` | [HetT.bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-bind.md) | 255 | `declaration-track:9d5c60a08e79406a61e33a16f031aa1ab069928b3e14290e0eca4d034f242193` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 264 | `declaration-track:75b05f67368c5b6e6e5b754dfcd61e14c04c0d99d09e5a738324e98a104a7b1d` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 267 | `declaration-track:e15e21b920a4908f5dd391088aa10e316c4561972160e1f42897e90b295e6d0b` |
| 33 | `def` | [HetT.prun](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun.md) | 275 | `declaration-track:6ea043abe61e2fdff823c59e33293f1aa0aeeb26362e6f341206ac7a5f00bcc0` |
| 34 | `theorem` | [HetT.property_lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-lift.md) | 280 | `result-track:2a148c9341419bf4f78668c952eec6ff9a718692c81ba4f981b2b420621923aa` |
| 35 | `theorem` | [HetT.prun_lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-lift.md) | 285 | `result-track:ba771c53db5f1c40a2791911c24064be0b87eb0ef4394fcbe453bf62e18363cd` |
| 36 | `theorem` | [HetT.property_ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-ofpostconditiont.md) | 291 | `result-track:3f671f5a84b5081139456a55ebafd2d75f29fa27601b0a9084d622566a0ee5a2` |
| 37 | `theorem` | [HetT.prun_ofPostconditionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-ofpostconditiont.md) | 296 | `result-track:acbb0ffaf23b1952b6ba52df3542592aaeff8319f2f89b635ea90cfc95fff18a` |
| 38 | `def` | [HetT.liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-liftinner.md) | 305 | `declaration-track:e1c8259b841a020ebb3446d2806311e9977af7c4592789acd7bf0191b7a06f45` |
| 39 | `theorem` | [HetT.property_liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-liftinner.md) | 310 | `result-track:fa8402fc3e14bc622e0fca9fb621c9cbe4ea33b5f07678f6b4b5ec8a8286d2ad` |
| 40 | `theorem` | [HetT.prun_liftInner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-liftinner.md) | 315 | `result-track:8114bf76aa396039499a24acc7ee940ed0f1710f3ebc61f8494933e9a20d0daf` |
| 41 | `theorem` | [HetT.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-ext.md) | 320 | `result-track:a96a61a778ca78bdc89b337894aa0e3050da2850645b8b7ff92c4856750dc520` |
| 42 | `theorem` | [HetT.ext_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-ext-iff.md) | 332 | `result-track:1eb8e0ed604187ec2f3932afde2b5d6ca72eb09c4cb2fed0ede4b78c59e780b9` |
| 43 | `theorem` | [HetT.map_eq_pure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-map-eq-pure-bind.md) | 344 | `result-track:c22ae427da56bb9832bb79377c7401f5f547c32d4304caf2bf6e2c536b1ce211` |
| 44 | `theorem` | [HetT.property_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-pure.md) | 350 | `result-track:f0eec8d78ae21635782e32bfd389c9b6c1116ad71cf8313c3f10065669634a4b` |
| 45 | `theorem` | [HetT.prun_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-pure.md) | 355 | `result-track:238997ac7a88137a69edc6ae6a2919c2e7ac839ced3290e557f0ffe6bec28936` |
| 46 | `theorem` | [HetT.property_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-pbind.md) | 361 | `result-track:341c0b5c3862b48cdc0c37b4108c924e3fde847f2b197076b9bdc5d98d143ea4` |
| 47 | `theorem` | [HetT.prun_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-pbind.md) | 367 | `result-track:398a2666f66e2d5a9eae88b044649fdee35b8ef0f7328568d3ae3609f28c7820` |
| 48 | `theorem` | [HetT.property_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-bind.md) | 373 | `result-track:8c909860868c22c14f90759d6a3bb21122f54aad336bee408b419e4fd376f64a` |
| 49 | `theorem` | [HetT.prun_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-bind.md) | 379 | `result-track:d9a3b159851a99afa3c8609c12e6c35242f8a9bcacfb0eb22e78e761dbbe0ed3` |
| 50 | `theorem` | [HetT.bind_eq_pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-bind-eq-pbind.md) | 384 | `result-track:8d84b37b421d0e5777496194980eae77c2f02a18bd4f85b53be1d47ae4298ff7` |
| 51 | `theorem` | [HetT.property_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-pmap.md) | 390 | `result-track:b691fbd15f5cfa084a442a200f1b55de9f00ac2d143b566a35ff0b784a4c0c2a` |
| 52 | `theorem` | [HetT.prun_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-pmap.md) | 396 | `result-track:2a66dad83203573d8115a81f732e2ffdb5facc827652bab2845cbb6eea20089d` |
| 53 | `theorem` | [HetT.pure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pure-bind.md) | 402 | `result-track:7d6a0201e3afac0f13f9bcfeefee4d4046403e675e76a067105ea3f9eba18d47` |
| 54 | `theorem` | [HetT.bind_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-bind-pure.md) | 408 | `result-track:63494d779af2ca56a1ed2a5070bcf076fc786f9957100ae5f486d1f42731fea7` |
| 55 | `theorem` | [HetT.bind_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-bind-assoc.md) | 414 | `result-track:b8c99508a3b1a7ce67e0eb385a457c3600ab240095c86a772a5e4f5a94ce4154` |
| 56 | `theorem` | [HetT.map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-map-pure.md) | 426 | `result-track:34292775616f83d4bcb35e6c3d893d6dce0197ed9ffe08c79112d28aeab9fa29` |
| 57 | `theorem` | [HetT.comp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-comp-map.md) | 432 | `result-track:ac86f62619fb4449e21825a3298bc801164ed842120ee6bd8886645197fdf739` |
| 58 | `theorem` | [HetT.prun_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-prun-congr.md) | 438 | `result-track:a600e7dada3b1bbacb886004ce2171c8f46e21b2cff845d40553d9a21768caf3` |
| 59 | `theorem` | [HetT.pmap_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pmap-congr.md) | 445 | `result-track:6c38c8595561b4d090a122e65b9bc210728187333770ea6b3106bf545ca2effa` |
| 60 | `theorem` | [HetT.pmap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-pmap-map.md) | 451 | `result-track:d8b06e591dfe7ab45d9eaa949507e202ae5bc8ce37900f6193cfca4956763ce8` |
| 61 | `theorem` | [HetT.map_pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-map-pmap.md) | 464 | `result-track:6460040460f76857c73b71ecbaac1de7a2dcace0d28875afc82fc750b701b62a` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 477 | `declaration-track:4f1d14e90fe99e46e33a95c7556f5347e7a2a326ece017cd9036a81558c1a8d8` |
| 63 | `theorem` | [HetT.property_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-property-map.md) | 490 | `result-track:1983bcaac7a8558b69d004be27c6b7be4f7865c4f5064ba41728f3a067ad8f71` |
| 64 | `theorem` | [HetT.liftInner_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HetTNamespacedPublic.lean/declarations/hett-liftinner-bind.md) | 501 | `result-track:ec9ae051d6ab94ea6e8007d4dadd564ca5c088052a24bdc2b9fe2ec6b0f25880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f288f9cd757e13bef4568323f1e6cf1dedba3f761104d54268fdb5515ebe958 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variant0948d3d1dd24a589228fad893eac5172373ee59f377f53945912906741d99b58.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variant0948d3d1dd24a589228fad893eac5172373ee59f377f53945912906741d99b58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
