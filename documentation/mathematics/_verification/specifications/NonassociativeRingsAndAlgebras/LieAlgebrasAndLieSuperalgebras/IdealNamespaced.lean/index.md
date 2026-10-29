# Verification target: Ideal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a81eb1da715dc2870d83cb7dd514f54dd18623d7",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a81eb1da715dc2870d83cb7dd514f54dd18623d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Submodule` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal.md) | 50 | `declaration-track:4e28ae0ea47041ba10dae1a7ff543b39aea2e6f783141f9d82c8046bd2d332d8` |
| 2 | `theorem` | [lie_mem_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lie-mem-right.md) | 53 | `result-track:b6c9dc8d820bcbd9ce94938271d4fecafa1551cd7e9b3b085182f127aa5caac8` |
| 3 | `theorem` | [lie_mem_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lie-mem-left.md) | 56 | `result-track:707d4666a658a76b6af7f41276eb40b85e6686b9328c3b1f271513bd3f6403b2` |
| 4 | `def` | [LieIdeal.toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-toliesubalgebra.md) | 60 | `declaration-track:a8af177c66bfb0e4dee9c0192bca80e37ce285748d80b9255847ee84904bddeb` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:245405b476f1b9ddbdba29c25c1ffd2d17d1d1a527c668a20c7f87f993ce29fb` |
| 6 | `theorem` | [LieIdeal.coe_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-coe-toliesubalgebra.md) | 69 | `result-track:4d191829581a8c7f7a4bfdee7423dd52cda7ffba00d83d963ea9315857760466` |
| 7 | `theorem` | [LieIdeal.toLieSubalgebra_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-toliesubalgebra-tosubmodule.md) | 76 | `result-track:3f917b978c96c12559b8146461e6ac7619e431240f09fc9f0f92d0b9be960e0a` |
| 8 | `instance` | [LieIdeal.lieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-liering.md) | 87 | `declaration-track:a42d262cff6a53912ffaf37891eaf112986da68565e620133b4f8bc752935925` |
| 9 | `instance` | [LieIdeal.lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-liealgebra.md) | 91 | `declaration-track:fa827cda4073cdfc1aaec6743941527aaefa7da8b26b1d40208c11b41573ae9e` |
| 10 | `instance` | [LieIdeal.lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-lieringmodule.md) | 95 | `declaration-track:970c9314affdfe31428625b0f5204be83ee563a9d9fdaa5cc601d50abf5eb562` |
| 11 | `theorem` | [LieIdeal.coe_bracket_of_module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-coe-bracket-of-module.md) | 100 | `result-track:4117294c403f59fb144212735dd575fcd162f701552d1fcc99ea275f992adfc6` |
| 12 | `instance` | [LieIdeal.lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-liemodule.md) | 106 | `declaration-track:04006e4bf417965cba35f372c72071e31651b37fa641f93eff63c1c4d4a6242d` |
| 13 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:ea0d4c5f2f1a88818747b34187e7891e0621f94ec23627db556888c958f63073` |
| 14 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/instance.md) | 112 | `declaration-track:02d774b2b7ae9855c78eec4121f93c8e1a165d01a3f04ed9eaea1942166ec864` |
| 15 | `theorem` | [exists_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/exists-lieideal-coe-eq-iff.md) | 123 | `result-track:22201c46508c404bdb0c2edabce3e403686519da73b742f8d11a95c76fdb209a` |
| 16 | `theorem` | [exists_nested_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/exists-nested-lieideal-coe-eq-iff.md) | 128 | `result-track:046245879b744af3f40b1e84bad2622c43d366564d07e8f01ce920b425c48832` |
| 17 | `theorem` | [top_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/top-toliesubalgebra.md) | 152 | `result-track:0fff261ac4c27f341c5f3c056fd2e0043e0e6efc1a42c4d6762ab2b51c403ad5` |
| 18 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map.md) | 162 | `declaration-track:b6baf38f3894ddca01795b91217670be1821109bc8d9bc9f7b6d937d07bca32c` |
| 19 | `def` | [comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap.md) | 169 | `declaration-track:37d1dae8e84cd95c6e0f3e21358374d5a66b8023a129d8ef4fb06e07d12739c6` |
| 20 | `theorem` | [map_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-tosubmodule.md) | 180 | `result-track:6e9e55971bcbb85ae40106ffb5f37af071132b84a106ce5c20fd1775a00c9ece` |
| 21 | `theorem` | [comap_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap-tosubmodule.md) | 187 | `result-track:05cf5e92225e81446f3c708b845c6f0ba8eb33099067be1379b2f1daf630e0ee` |
| 22 | `theorem` | [map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-le.md) | 193 | `result-track:801d93a6d831dfe7bc6ebeed722996096f81e246bdbea367ff64e4fd5aaefc6f` |
| 23 | `theorem` | [mem_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-map.md) | 198 | `result-track:e495fda0216eba5541bb8d4bc77c3032e130bbb46beb7f4d160cbb978447b438` |
| 24 | `theorem` | [mem_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-comap.md) | 204 | `result-track:b8145ea197be3b9fd5a930516cfcfc32d829f2b7c2eff128ad9d48659b1fdb09` |
| 25 | `theorem` | [map_le_iff_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-le-iff-le-comap.md) | 207 | `result-track:32df34973f6cdb68135e75263d1ad96dd79c5de6026b33cd1e6aec712a228703` |
| 26 | `theorem` | [gc_map_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/gc-map-comap.md) | 212 | `result-track:294733efa501beed8b7dedb799a0a4a2ae6f405c71dc360e479c0c79caba55f2` |
| 27 | `theorem` | [map_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-sup.md) | 215 | `result-track:614c894779a4d909a21772a047e0d5ab20e344f2b6cfb85318339e403148fa68` |
| 28 | `theorem` | [map_comap_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-comap-le.md) | 218 | `result-track:bf1ed2c6bbd4ad508fc64c48844d2b697a65b457b25033aed821e2228dbf4e64` |
| 29 | `theorem` | [comap_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap-map-le.md) | 221 | `result-track:b578b38b5061da45bb580e4953296454c37c829c72521b51fd4326a921b4e073` |
| 30 | `theorem` | [map_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-mono.md) | 224 | `result-track:bdd645ced3e0a8b09726c48dd9a96c67f5878fd78e294ca127b0ff4bd817d9b3` |
| 31 | `theorem` | [comap_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap-mono.md) | 229 | `result-track:075cfb65e4fe6c8f6d4c49bcf771136e3b050471eb91c814368cfa3d402b6f60` |
| 32 | `theorem` | [map_of_image](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-of-image.md) | 234 | `result-track:042ff4d7569faa4c60f2fb38f79c521d9d792c22f8c87d9a9e82ba677440ce63` |
| 33 | `instance` | [subsingleton_of_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/subsingleton-of-bot.md) | 254 | `declaration-track:14e91e59c2f1b87054999d76c8535532d4cc5af430db8b1ac1f03c6e629acc04` |
| 34 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/ker.md) | 268 | `declaration-track:b02faf3aed184c32009e8cd93a64992f2ace8ce422df709c449cedc031fcd064` |
| 35 | `def` | [idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/idealrange.md) | 272 | `declaration-track:71be32e606fb7ad32a899985d0d7983c65679e9244e1cf0e09f8d850ed6000ee` |
| 36 | `theorem` | [idealRange_eq_lieSpan_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/idealrange-eq-liespan-range.md) | 275 | `result-track:e7b436761c5e3c53b258cd013729a90cb6a43dfb4495340b1b5e5bf43d54c7b3` |
| 37 | `theorem` | [idealRange_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/idealrange-eq-map.md) | 278 | `result-track:6f66b0935439c5dd3597b4d3d5ecbc3dfe03b95be17f314842d4e4a47f3fc667` |
| 38 | `def` | [IsIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/isidealmorphism.md) | 284 | `declaration-track:9f58fae24be2f92f486d3e0327c3b32da3b4cbd436084be660ff02642faef6a0` |
| 39 | `theorem` | [isIdealMorphism_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/isidealmorphism-def.md) | 287 | `result-track:510e35c5cc5474efa72bc51df44cef6a0a5cd8af240c675243acbd6be83464c4` |
| 40 | `theorem` | [IsIdealMorphism.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/isidealmorphism-eq.md) | 291 | `result-track:db910391576e82361ce9c35b7c745165d333b42a6a0ffea738ebc0372cc84e8e` |
| 41 | `theorem` | [isIdealMorphism_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/isidealmorphism-iff.md) | 293 | `result-track:20db11189a64dc45a0ad93772bb3221bda9239364a4bb68f5b3895ff8e638f42` |
| 42 | `theorem` | [range_subset_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/range-subset-idealrange.md) | 303 | `result-track:d3818eba1767e3c1e60a824ea09dd65bd238427afaf9e29fe8e282b9323c2364` |
| 43 | `theorem` | [map_le_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-le-idealrange.md) | 306 | `result-track:559560311ac85aa8a561bdcb978a856597d53c39ee620100dd155ce193c64d57` |
| 44 | `theorem` | [ker_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/ker-le-comap.md) | 310 | `result-track:c157de341df4b2b16d219962125d78333afa1cc18d6315fd7855ccc73f0b22ee` |
| 45 | `theorem` | [ker_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/ker-tosubmodule.md) | 314 | `result-track:22ac725dd95d74998793212e86e1a1f21480098eb338f99e4a9b5ce3433914b2` |
| 46 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-ker.md) | 321 | `result-track:8c17d23987679f60a1ac6ae1ad7d4b229f26cdd95b480f8cfb2b0c93ad6d7bc6` |
| 47 | `theorem` | [mem_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-idealrange.md) | 325 | `result-track:d81ab271ded15e9e65f7dbcf24a475688ca9604fa7a6cfa4d04c69273cdbfbcc` |
| 48 | `theorem` | [mem_idealRange_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-idealrange-iff.md) | 330 | `result-track:ccf476481343f612a33644bcd104f9bbc5807a0f4dbad0ea0ed4a088a9aaa25f` |
| 49 | `theorem` | [le_ker_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/le-ker-iff.md) | 335 | `result-track:be57bb4de2663bf0f3bd0258d5dbbce08b17c4dcf56f7d51908046ebac1b408e` |
| 50 | `theorem` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/ker-eq-bot.md) | 340 | `result-track:cf4b4414367b54afa4df4a46dca922398ccf7812d9da88e67f013d4d1d80e547` |
| 51 | `theorem` | [range_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/range-tosubmodule.md) | 345 | `result-track:73e17fc7bdf59b93548431afc619c2a95667aea04d9dc8462a03de1f6b15569c` |
| 52 | `theorem` | [range_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/range-eq-top.md) | 350 | `result-track:c903a149792704cedf92ecd9ea09be8e7a2ecd376b5b4e8112d5901c303c4ea7` |
| 53 | `theorem` | [idealRange_eq_top_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/idealrange-eq-top-of-surjective.md) | 355 | `result-track:7797b58c7424d3fa4d7c5480a9803baed5f8988c60d83c4f3aaf987946f22179` |
| 54 | `theorem` | [isIdealMorphism_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/isidealmorphism-of-surjective.md) | 363 | `result-track:9aaffd0d84d0a2e6b31a3ed02bc3578644badbf4453f4747dec58db3ee773528` |
| 55 | `theorem` | [map_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-eq-bot-iff.md) | 374 | `result-track:335bc066d2325cef13564581d51defaa5409cfb84b5e9b06bbccf78acbe5369c` |
| 56 | `theorem` | [coe_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/coe-map-of-surjective.md) | 378 | `result-track:a4d9bbcf576614d6892d4903bae2b6d327f0207a06a46fcb88f1fdbbe6b32c17` |
| 57 | `theorem` | [mem_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/mem-map-of-surjective.md) | 393 | `result-track:59b5d24f2d8ac1511a56765f0d24f341e9004fa686d2cce24cb9514106ab4be1` |
| 58 | `theorem` | [bot_of_map_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/bot-of-map-eq-bot.md) | 400 | `result-track:33d08f56d545d9f811e8118c155d7746df9c7ff0004d53dfeba6161791ce5996` |
| 59 | `def` | [inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/inclusion.md) | 407 | `declaration-track:76d194a3d0e7fe7fe315692c50412ff3700cf07dce6b20e15962cd8c8e7dfff2` |
| 60 | `theorem` | [coe_inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/coe-inclusion.md) | 412 | `result-track:4a31dab022dfef0a8a4c3005d494e7ed3b25312a8096f763192c938c08b9af61` |
| 61 | `theorem` | [inclusion_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/inclusion-apply.md) | 415 | `result-track:14dc3cec76fb7f35a89ffdbe7c5478bfdb24414607e8cae0ea3c285e8b62579c` |
| 62 | `theorem` | [inclusion_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/inclusion-injective.md) | 419 | `result-track:ddf547e6097b27e089b0971b9e30f4ffd2ed4f57ff1fe63920add05cfb5182df` |
| 63 | `theorem` | [map_sup_ker_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-sup-ker-eq-map.md) | 424 | `result-track:598cad68efb4d6f79e4869cbf66eef876382ea27d65a1f698889e71033ac72c3` |
| 64 | `theorem` | [map_sup_ker_eq_map'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-sup-ker-eq-map-source-edition-2.md) | 436 | `result-track:eb4b6c00e7f16647cef619385c1de615096a419364e5f5496a55d5be2972119e` |
| 65 | `theorem` | [map_comap_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/map-comap-eq.md) | 441 | `result-track:f57732b2235488380ad4813bb99601ed2491f5accb0112da645c9a47adb0289e` |
| 66 | `theorem` | [comap_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap-map-eq.md) | 449 | `result-track:e5fa717317c97c58c3baec4c003078ec8ef9ed2c159365a620d790da5345676c` |
| 67 | `def` | [incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl.md) | 457 | `declaration-track:c66a7e846711167003b3c61395867d8fcd97f38528306223dc71f49b587a4731` |
| 68 | `theorem` | [incl_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-range.md) | 461 | `result-track:6f0e0091cc70c88b944be768a808ae52a6105266356321b079a23ed14a0df9a5` |
| 69 | `theorem` | [incl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-apply.md) | 465 | `result-track:407fde55b40525861ec34f65f3b032206e3846775048f9354fbaacfe1122bda5` |
| 70 | `theorem` | [incl_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-coe.md) | 469 | `result-track:d5863bf6a3f12fb5d6ed064d793db6da21d920d056808df00b0ab1a41c5a9ca2` |
| 71 | `lemma` | [incl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-injective.md) | 472 | `result-track:ba7e962c4c44a5ab9972fe07db4d37b733705794e7539c74f45ffa9b2b857201` |
| 72 | `theorem` | [comap_incl_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/comap-incl-self.md) | 476 | `result-track:dc15bd580ec09ed4e4535b4300fdd3ecc2bd6e3bd5a974e90a13306a8de24af1` |
| 73 | `theorem` | [ker_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/ker-incl.md) | 479 | `result-track:d49a5e8cdc520e581faae5eebf9748ec45621f15c63bfde0d1a0f7357a9d5fdd` |
| 74 | `theorem` | [incl_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-idealrange.md) | 482 | `result-track:7eed3f2c8cd405f449e273afcbd4d98ac56a3f2df43e379a1554be01ab856f2e` |
| 75 | `theorem` | [incl_isIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/incl-isidealmorphism.md) | 488 | `result-track:ad0b97f64873221e8fb28aee98cbaf5459ab9512bbc62e9b7f845b225a06f61a` |
| 76 | `def` | [LieIdeal.topEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-topequiv.md) | 506 | `declaration-track:45903ae70d64615c80ff97e9fec019435d329f97c0e90bff0fd219936306b61a` |
| 77 | `theorem` | [LieIdeal.topEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/declarations/lieideal-topequiv-apply.md) | 509 | `result-track:49773b8e2a7ac216b6a3951da76cd4d80ab729e809b99742fac8a4808ae5bdf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abd3c6407e9dfc912864180a4206ab5e070548639947adac9d131ec82f791d92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
