# Verification target: Homotopy Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "814ba603d25c5dd377b35ce721271aaf81abc815",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `814ba603d25c5dd377b35ce721271aaf81abc815`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Ordered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homotopy](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopy.md) | 86 | `declaration-track:595e063b5154513f6e657564090148ef567c1e81bf7da69275f15418ed86c4e1` |
| 2 | `class` | [HomotopyLike](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopylike.md) | 99 | `declaration-track:b4ae5aa2d8b0499c84b1ca40de35630efcc5312fec855f3a0a45a242f3714dd7` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:d1409b9521fe04573e7010d37ef53a66b92a9dbfcfe1d72cf1830f25ab391434` |
| 4 | `theorem` | [ext](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/ext.md) | 132 | `result-track:3f6100d2669010916f79586407874fd10450b388149b742f53c378c0578b3106` |
| 5 | `def` | [Simps.apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/simps-apply-source-edition-2.md) | 138 | `declaration-track:6bd259bdfb052ad71adade7c45e7d244516a5ccc4ece54e34098123dd0d6585b` |
| 6 | `theorem` | [continuous](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/continuous-source-edition-2.md) | 145 | `result-track:d0534fd6e643bcccfd98a4851b1b2495ef2c8929735fd22ef7c491a32443fcb3` |
| 7 | `theorem` | [apply_zero](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/apply-zero.md) | 150 | `result-track:2e781fd9639de997a5d31dedba2a965184d4dfe2f34e9585cf4bd37b10204b0c` |
| 8 | `theorem` | [apply_one](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/apply-one-source-edition-2.md) | 155 | `result-track:f96359348c93638b829e9d661607bb17ed18f6408c028b54d2e2c3ddc252895d` |
| 9 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/coe-tocontinuousmap-source-edition-2.md) | 160 | `result-track:c9c62f0f4c36c7706659a049bad60e300915a1d60621caafa55c8f948bf1a9ff` |
| 10 | `def` | [curry](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/curry.md) | 166 | `declaration-track:0a5c2e5e4da52b5af0504ba36f50b469d753459493b7ce69d17c8c481ca0b525` |
| 11 | `theorem` | [curry_apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/curry-apply.md) | 171 | `result-track:9941af8bbedc1aa4ebf0c3cbdc0cb44b3d23059107351fadd0951c34583c7c31` |
| 12 | `def` | [extend](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extend.md) | 177 | `declaration-track:8bdec116b61ca4b47301271c18e364d44685b70a26daf6c3fa93e442e1f0b4b6` |
| 13 | `theorem` | [extend_apply_of_le_zero](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extend-apply-of-le-zero.md) | 181 | `result-track:806ab67768532c0293af85fb49f0d495677ae75e8090427a4e006588276d0e7b` |
| 14 | `theorem` | [extend_apply_of_one_le](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extend-apply-of-one-le.md) | 187 | `result-track:bf7f4325615c2a42604c3cfd3651b90d8946aaa00b881d769ab882c928b12be4` |
| 15 | `theorem` | [extend_apply_coe](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extend-apply-coe.md) | 194 | `result-track:b14b987eeb2a7a3ddc0d0f3e07e664e84901d0cea7de13e9c0511a3aae1f79ae` |
| 16 | `theorem` | [extend_apply_of_mem_I](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extend-apply-of-mem-i.md) | 199 | `result-track:d865bd2bb98748ae360315e521962d974503c6104112c2eb3c44fe266542d75a` |
| 17 | `theorem` | [congr_fun](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/congr-fun.md) | 205 | `result-track:cddaa00faf5b1f2836321529bc5e67353f1ea27a7273e590e0dba20a2541fb03` |
| 18 | `theorem` | [congr_arg](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/congr-arg.md) | 209 | `result-track:e1aae0c6aab4edefc31c7a5a62289f03264a9450ecc199ec8a2335a7033da8e6` |
| 19 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl.md) | 218 | `declaration-track:2af7003ff1faa476a20d6aed790e4111a0400d3f953065324907b6b464f089c1` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 224 | `declaration-track:64ce6bc79dbec8b09f6750a2109269a26871115880dfd0708d28443c4aa3e827` |
| 21 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-source-edition-6.md) | 230 | `declaration-track:a81afff483c7712fe482cc1aa565e7d2b9503cfae73297a75255b8a154395caa` |
| 22 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-symm-source-edition-3.md) | 237 | `result-track:ae0a7e8acd35170dbea1015de9916961ab1f69e98a0c703cd578b1146aa93b3e` |
| 23 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-source-edition-4.md) | 246 | `declaration-track:94c3ca9247be803e2355ec94287daa0a0e49b2df6ef3eb7b325384c89e876e05` |
| 24 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-apply-source-edition-2.md) | 259 | `result-track:295d8d249383ebe91bccb01a5c628cfb41f1eeb2c3bdaa3d4b3cc57c29eb4a6e` |
| 25 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-trans-source-edition-3.md) | 271 | `result-track:ee53246a5a73d51a88d1dc67119119233122a43ad38d7e7a3c49f1433600e80b` |
| 26 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/cast-source-edition-2.md) | 294 | `declaration-track:a648bec707eb47424af37b3ecd16462c99efc1fda8300efdc7559b81161ce023` |
| 27 | `def` | [compContinuousMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/compcontinuousmap.md) | 304 | `declaration-track:6d305545e1ae711846f6864b42e0f3b9a3fa4aef130c3256a8e5852d5649ccca` |
| 28 | `def` | [hcomp](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/hcomp-source-edition-2.md) | 314 | `declaration-track:e853c08e993597cdc07b226ee3c5f602913aa3d3f397562dc27770a79dc7f887` |
| 29 | `def` | [prodMk](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/prodmk-source-edition-2.md) | 324 | `declaration-track:ca5e83d90f62b9f313df051ef3f1753b3283643c2150c276ca7030f904ec2b4a` |
| 30 | `def` | [prodMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/prodmap-source-edition-2.md) | 333 | `declaration-track:a47405445e162ff9f4406633ae6645445e9441996bdca550685a761da4dd14fb` |
| 31 | `def` | [pi](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/pi-source-edition-2.md) | 339 | `declaration-track:cd80c80b6f9cbb5d7d2e317fc9487cedb11a3bbca820abb41fd17108fe1fe415` |
| 32 | `def` | [piMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/pimap.md) | 348 | `declaration-track:299a692defabea30a26cfca2433c554750a3fbd6db999c0d0d656e03e9b85574` |
| 33 | `def` | [Homotopic](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopic.md) | 358 | `declaration-track:c4d8758fab3405995d14030ef550cb14c50f6cd6a39507ae2486a738c6285f2b` |
| 34 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl-source-edition-4.md) | 365 | `result-track:b7ca29b2a4b96e87a1b8021b8c6be3a73d0025ba5a99b4629c87ac5fe9b0b229` |
| 35 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-source-edition-4.md) | 370 | `result-track:465786fef20883a0ea781246ff319e1d47a47d87038155b5db6450a0ef29ff08` |
| 36 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans.md) | 375 | `result-track:2142607642a7517b3603dfd4a4fe7076f3a1bbc0b0e76a4d30f3fa639456c5c1` |
| 37 | `theorem` | [hcomp](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/hcomp.md) | 379 | `result-track:341b5ec769153353efe6a0b923dd136fede8679b7573c61b6a1d6eb6084b63f6` |
| 38 | `theorem` | [equivalence](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/equivalence.md) | 384 | `result-track:2c67a993eaa88aebdedaa01b88227cbd009dd5a9a1726d876adacce9bac3bec2` |
| 39 | `theorem` | [prodMk](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/prodmk.md) | 388 | `result-track:33943af60a5c2d1a3d9afbd6abfd031c11631ea3ba7b0857ba366ab31ecee7a4` |
| 40 | `theorem` | [prodMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/prodmap.md) | 392 | `result-track:6e71ea1b9fb2f62fb63055bfd6110e923fef91557eea40243681ec8fe02bcb47` |
| 41 | `theorem` | [pi](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/pi.md) | 398 | `result-track:53e1543d4850b9b400a646a4c2bf728f324d1701f1dc90e327e3a612c68c178e` |
| 42 | `theorem` | [piMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/pimap-source-edition-2.md) | 405 | `result-track:f147a45fbd1e0b38f45afca21bf712225cbafe959c172afe8620045083f79be4` |
| 43 | `structure` | [HomotopyWith](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopywith.md) | 416 | `declaration-track:f189c7c72e32a489a74b4544fcd2858fe88b4e080cf164b16c3264466fcbcf75` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/instance.md) | 429 | `declaration-track:1b3439762a06f79696ce8c3c79ad8bedaed74c7fe54717333343216a21a1a540` |
| 45 | `theorem` | [coeFn_injective](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/coefn-injective.md) | 437 | `result-track:b883fd71d1d5a4eda52305a3022de6091ede210b3f409a006ca95b461e00f1ab` |
| 46 | `theorem` | [ext](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 442 | `result-track:f8880bf5be9b2436d49bac915cfb452bee3555251d0025b84b0f64e2df68797a` |
| 47 | `def` | [Simps.apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/simps-apply.md) | 447 | `declaration-track:52a796394a8f4f4a8b7d4eecc1eb94b4a8e9b40873699a6fe6edafe8d4c150a7` |
| 48 | `theorem` | [continuous](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/continuous.md) | 454 | `result-track:6e1d3dd7bee244b26c636b829bcc7cb582ed6984e05f8a093192a1ac2991df92` |
| 49 | `theorem` | [apply_zero](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/apply-zero-source-edition-2.md) | 459 | `result-track:7e43cd0d68ae35d5cf40b654a09c03a51310d7ee7532c6e915ca38476924ef36` |
| 50 | `theorem` | [apply_one](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/apply-one.md) | 464 | `result-track:d7a9a016087ece15319d2b7e501ed4218ee9da97e34b45e9470a6278e5c64c27` |
| 51 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/coe-tocontinuousmap.md) | 469 | `result-track:30a5454564afa729740d328225dad77537982cb102711136ab551e210d866a40` |
| 52 | `theorem` | [coe_toHomotopy](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/coe-tohomotopy.md) | 474 | `result-track:83af2224f47caed4fa58b4af7f831f87e0ecf9ce829105a37b6746fd96409403` |
| 53 | `theorem` | [prop](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/prop.md) | 478 | `result-track:cda5a48c08204c7e246cd3c65435f0da98054d252aa9bc2e394eedded8b0fbf5` |
| 54 | `theorem` | [extendProp](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/extendprop.md) | 481 | `result-track:30f47f711b2ffe67e96d2db7fa83bf653dfd10704dbd38f07ccfe2fac4cc9727` |
| 55 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl-source-edition-3.md) | 492 | `declaration-track:6c8c04047715cb742e646f5a8878c740776261e1d8241a92040b3b5a20e927ee` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 497 | `declaration-track:58632ef70eb5551d96fdead5553ce751f22da2e0c90a97bf446f6a663dfcfa85` |
| 57 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-source-edition-3.md) | 504 | `declaration-track:418831ef43cba23a7f1da90faad9c73e3d3122d73f8262dc4d215078639d74a8` |
| 58 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-symm.md) | 510 | `result-track:50d3b4b80240bfb0567baf68cc783685681bf73281cfcd03ad58eafdb9795951` |
| 59 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-source-edition-3.md) | 518 | `declaration-track:7d6515dd4769d5019e04925e98ab601452a735547e2ef9956156a348f70773dc` |
| 60 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-apply-source-edition-3.md) | 529 | `result-track:dde7ff4ada61e4b2c81ba3bd0f75b52a6659a67de005f44312e075e4ecec2f7e` |
| 61 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-trans-source-edition-2.md) | 539 | `result-track:837096a0013caf2874981bb8c5235a9791a41db141f00c69c62ef952f88a61f4` |
| 62 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/cast-source-edition-3.md) | 547 | `declaration-track:beae01679dfac03d1cb120369ad8837a95057fc5866c24457a118c8fce798da5` |
| 63 | `def` | [HomotopicWith](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopicwith.md) | 558 | `declaration-track:8f34b54ce43c2284242b6d91d20669a0afd2a82f59de55eea595570a3204f76f` |
| 64 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl-source-edition-6.md) | 567 | `result-track:d18c90889be0cf38765bf2bd58c6fc4632659b3e5d7ca8278f5b010bd4e2dc6f` |
| 65 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-source-edition-5.md) | 572 | `result-track:6863872c34231b5b0cc06c1d272e13c0895e459441f9cb672e62e8d370ec9353` |
| 66 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-source-edition-2.md) | 577 | `result-track:542b8cc7d05a0783c3c1c59113a4faf75ea3c76783e36b773eca1af4534e9c54` |
| 67 | `abbrev` | [HomotopyRel](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopyrel.md) | 587 | `declaration-track:34cba47ba7258459aa271e3b88a37f45f7fa1fae4fbd1254ffd8e0a1c92c8af2` |
| 68 | `theorem` | [eq_fst](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/eq-fst.md) | 597 | `result-track:86e27b42570b0855b040c4e27b873913a819915d2cc05d7205f12c68afbd3eab` |
| 69 | `theorem` | [eq_snd](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/eq-snd.md) | 601 | `result-track:e846fc7d938348f594d6ac795a0b78c9e96ddbde194df0eafe1a197a94aafbca` |
| 70 | `theorem` | [fst_eq_snd](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/fst-eq-snd.md) | 605 | `result-track:e7e70742336509b9942172df89bdacf214aa7c852dd4593582e4ae7680f614a2` |
| 71 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl-source-edition-2.md) | 618 | `declaration-track:3627f7f213361dd9cf7fc3d6b04055e6a6caf96a4108e4dc4f29402f1b5f5712` |
| 72 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-source-edition-2.md) | 626 | `declaration-track:18abf51b3d2b4f926dcf1df59fa12b731fde39da7427888761d685c1c2ea0665` |
| 73 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-symm-source-edition-2.md) | 632 | `result-track:8ce9091dc09410a2f1137a1ca1b4c8bea4f93564bdda8e4d36c09b9c3733b0de` |
| 74 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-source-edition-6.md) | 639 | `declaration-track:c54c80fb7db966d6c913772e1d8d41d40765325f5f83cc34b1095b0255508cf7` |
| 75 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-apply.md) | 649 | `result-track:031744271af02755a38779e5d7c09f6c373589483c8688f93ca3dede4472fe09` |
| 76 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm-trans.md) | 658 | `result-track:570200afabd6fdfa162e6882080cf0923ccb36d412fd038f34aed69308c4d7c2` |
| 77 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/cast.md) | 666 | `declaration-track:3fd781a09b60a00b84e08eae50b23cfd9136293792500a41dff14eed803455c1` |
| 78 | `def` | [HomotopicRel](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopicrel.md) | 677 | `declaration-track:115dc3612a957b1dd12f9a615f461118173a752b6c8f70df77fa90383ea7e6b6` |
| 79 | `theorem` | [homotopic](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopic-source-edition-2.md) | 686 | `result-track:cdf02967d86e1fbd8d7dc1730201ed5d9f0c3a0037e9f5a1f5cdbe24e8f4d114` |
| 80 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/refl-source-edition-5.md) | 690 | `result-track:ba9382f790e3e2db8bb4cfb9eb311364debe4d6867772a7667726b7db325a612` |
| 81 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/symm.md) | 695 | `result-track:0004846c24eee08ef22e20082af80db5e826c6357b005d86aca04ecccffba15a` |
| 82 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/trans-source-edition-5.md) | 700 | `result-track:ad9d4cf55570aba157a48e428c415f271e40deb7448dc8ffa0c8f0173465fcdd` |
| 83 | `theorem` | [equivalence](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/equivalence-source-edition-2.md) | 705 | `result-track:992b6286ba5417b51d9997aefab42a410359ec6f59eca0d52db823c8fb834718` |
| 84 | `theorem` | [homotopicRel_empty](../../../../GeneralTopology/HomotopyBasicNamespaced.lean/declarations/homotopicrel-empty.md) | 711 | `result-track:dafcf2bb0b925703c2bf2f033605908fcf434e7217cbd35de0aa7bde9606adb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2e56790e0e765298a2bd42e778a2b522bdfa7facde90a058e3082b70594bff7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
