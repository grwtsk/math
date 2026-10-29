# Verification target: Representable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc4f6e3f318a62359e36fbfaecb6e48a2e54780b",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc4f6e3f318a62359e36fbfaecb6e48a2e54780b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.relativelyRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/functor-relativelyrepresentable.md) | 108 | `declaration-track:bac8221750f598f2311e5dc6caf2e39096645b30af3e74e69349ee7c571d3713` |
| 2 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback.md) | 132 | `declaration-track:39aa08f4eb7f116108e9e3216db14720340b3f7ffee22ff5fb0f353ccc3a8e74` |
| 3 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/snd.md) | 145 | `declaration-track:295a8dcb6ee1fa338390eaf0e7d2b024b30f9742132d5725d6de9a143cead1d0` |
| 4 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/fst-source-edition-2.md) | 159 | `declaration-track:e5a13f06d7211c4950aca41883b3475d312462c86385c27a204ec646e8ff36dc` |
| 5 | `abbrev` | [fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/fst.md) | 164 | `declaration-track:0221488b1a3c8f6960cd1e16d7e9b71008ba0d9c1072b47469fea7d092719b94` |
| 6 | `lemma` | [map_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/map-fst.md) | 167 | `result-track:e49c82b82dd5311bd385838d4b9935df34139940c7f32d3967c4146bc90d0b92` |
| 7 | `lemma` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/ispullback-source-edition-2.md) | 170 | `result-track:e56c5707157729c9767ddf075c1293a4acde303a8b11bd6a4d437305ca7ac5a7` |
| 8 | `lemma` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/w.md) | 174 | `result-track:1d7255d8de138294bc87623456dc2b11b9cc66f8def454197a8cc5ecda3c7c99` |
| 9 | `lemma` | [isPullback'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/ispullback.md) | 177 | `result-track:2012151ec2d8a55b6820fc8f0eb1daa0e8fdb8145054354ca18b6cf2b646b08b` |
| 10 | `lemma` | [w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/w-source-edition-2.md) | 181 | `result-track:6bc348b19d63136de402f45c06ccc79ccc1ca7c3d189eb93d9096c408f9a9e69` |
| 11 | `lemma` | [isPullback_of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/ispullback-of-map.md) | 185 | `result-track:05b29fc7c236dc1e64a22a1ac1cf49b8e3b3e6092ce36d65bb0ac0854b7f22dd` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 196 | `result-track:d6f076fd25dd0a984a9116e90e802781c8de10abc4b8f05ea8e9c95e5e2697e4` |
| 13 | `lemma` | [hom_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/hom-ext.md) | 207 | `result-track:214ee7b794a41747720cb938ee501d33bb6619241a30b2f61f4f5de8c2359f93` |
| 14 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift.md) | 218 | `declaration-track:95718268fef0bdc0adaa398c0c8fd8a2b3bfdc74ffeb61c01028539011c47b9b` |
| 15 | `lemma` | [lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-fst-source-edition-2.md) | 222 | `result-track:735ec0983c204c889a6a2ab5bb70f90b190cd5c5d0448a1c5dabb0698289706e` |
| 16 | `lemma` | [lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-snd-source-edition-2.md) | 226 | `result-track:d3fd53552892907e41cc4a3cb2339fb94824bb2e073956a1e33ce25343549116` |
| 17 | `def` | [lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-source-edition-3.md) | 237 | `declaration-track:b40811cc3f7475258b666c15fc36e8db0444c3a4225b1f17f22ab5217501c029` |
| 18 | `lemma` | [lift'_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-fst.md) | 240 | `result-track:447cb248f3374ed968b1aa2f15a3c55eddee9bba240e7562eb2aa315072a10b9` |
| 19 | `lemma` | [lift'_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-snd.md) | 244 | `result-track:7e318ba42988da04ba583fc590d55f4b98c3a9b3c61b4847301d416932031ae7` |
| 20 | `def` | [symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/symmetry.md) | 251 | `declaration-track:64469a4a397559eb20516f0455313d0c9f4c285f1917997616ee43a9bbc02d21` |
| 21 | `lemma` | [symmetry_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/symmetry-fst.md) | 255 | `result-track:b101435e2fbf3c5c02fa3825877d4344eccdaf1726035ec0803060ac3f3d3348` |
| 22 | `lemma` | [symmetry_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/symmetry-snd.md) | 259 | `result-track:29a2d1985fe3543e91067a4691cad9f1a2e44c8ed831d61f88180c11fcbd2c02` |
| 23 | `lemma` | [symmetry_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/symmetry-symmetry.md) | 263 | `result-track:c106dc453167f53cb956bd189508cca00e671f60545ed5596fbcb94dce740ee4` |
| 24 | `def` | [symmetryIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/symmetryiso.md) | 268 | `declaration-track:5b3a8b4aa79f3d0b4bc3b8b722f74db1cf5a1d3188309293f74d471bb372481f` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/instance.md) | 272 | `declaration-track:ae1f1fbed23a0c307bbc663dca758dacdb4b185919475b7f03f6ee444882a97a` |
| 26 | `lemma` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/map.md) | 279 | `result-track:14644699976b2a5eecf69e84976da78bbe29c518bf4790c0f6d848d86c4d50a1` |
| 27 | `lemma` | [of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/of-isiso.md) | 286 | `result-track:d57f7f843f5d836e60d9b0eb60e7761869c6943d8209b9e7ade514bd4a874d1d` |
| 28 | `lemma` | [isomorphisms_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/isomorphisms-le.md) | 289 | `result-track:cbf927ebf66bd1ed9898f57bfaac576bac472cdd9531f648a868f9c396a2f386` |
| 29 | `instance` | [isMultiplicative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/ismultiplicative.md) | 292 | `declaration-track:62d7217194bc5c407897439a404548d90d2ba8467054a27183278cb7f9b4e0b0` |
| 30 | `instance` | [isStableUnderBaseChange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/isstableunderbasechange.md) | 298 | `declaration-track:4817d9656e90157f2a897a28cc86559584cf300189d33bb26a2452c3124a87e3` |
| 31 | `instance` | [respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/respectsiso.md) | 304 | `declaration-track:09e19d4a2e6e5ca39f2fe364e665d768c15f50b6a05a1e99387fc177a73b4a9c` |
| 32 | `def` | [relative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative.md) | 320 | `declaration-track:8796f7f77ff905ae536db00f2f6f2c00b7e55d88d27ce8225642a35a411c3144` |
| 33 | `abbrev` | [presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/presheaf.md) | 332 | `declaration-track:abd772dac3bd6d1c88bd6b514b5c18b421ef747bb14274af01b44bbd2febd548` |
| 34 | `lemma` | [relative.rep](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-rep.md) | 337 | `result-track:8ebb283024e8bee6efe8d9c7697519e28f3d2426cfe2437fa401ea634ab57643` |
| 35 | `lemma` | [relative.property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-property.md) | 340 | `result-track:ee189a17357f6f5668e2318a025c4bd0e65b86805ab6b1ff7365af524bb7fe9b` |
| 36 | `lemma` | [relative.property_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-property-snd.md) | 345 | `result-track:87aa8a6f532ecc8a5ec716c7526d0635adfca9a462e38bf54c9dc8117cf38f36` |
| 37 | `lemma` | [relative.of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-of-exists.md) | 354 | `result-track:42e1e75e3e4a875eed0aa2eb368f7dd7a980684eaab9059036dec15374ae663c` |
| 38 | `lemma` | [relative_of_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-of-snd.md) | 364 | `result-track:a386744016aad1d86b74cb858b9471668a1e2dedd0d72b0319945b4bd609ac57` |
| 39 | `lemma` | [relative_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-map.md) | 372 | `result-track:6f1d11143842671d0bc2625da8b75cfd1d53c68f967ce3a27216ae6e091a32fb` |
| 40 | `lemma` | [of_relative_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/of-relative-map.md) | 380 | `result-track:5e466852f9b86d80f9c005e75752cd9c0db94181367cbf32778d7094901b1833` |
| 41 | `lemma` | [relative_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-map-iff.md) | 383 | `result-track:d72e8eb77dce83b47d54334e695beeb6398db0165a2dd6df545e33561aef143d` |
| 42 | `lemma` | [relative_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-monotone.md) | 390 | `result-track:5e9a91b33af8faaeb90a75fb62d42e1258770fba6693e23ade91bd9d864c5aec` |
| 43 | `lemma` | [relative_isStableUnderBaseChange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-isstableunderbasechange.md) | 398 | `result-track:2098c9e891333ecf69d95482da1af816c70e1a68cef63918d0401cfedf3577a0` |
| 44 | `instance` | [relative_isStableUnderComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-isstableundercomposition.md) | 403 | `declaration-track:371ec269f7db4d417e6a66188cfbfc4d918aa0b16228fcec6d94b29c17039138` |
| 45 | `instance` | [relative_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-respectsiso.md) | 415 | `declaration-track:bf19c11030c628654195707f7ef2f000d1b6159458e316c2312d89d4c96cd0bc` |
| 46 | `instance` | [relative_isMultiplicative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/relative-ismultiplicative.md) | 418 | `declaration-track:8b292913be7243bb0ec1b7b3f5bea8560e1e862996384c660a2556ce8e270153` |
| 47 | `lemma` | [presheaf_monomorphisms_le_monomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/presheaf-monomorphisms-le-monomorphisms.md) | 429 | `result-track:097e543da8ea7f72ae056a18287195111b87dd9fb395a89bad1965402ebe68ff` |
| 48 | `lemma` | [presheaf_mono_of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/presheaf-mono-of-le.md) | 445 | `result-track:4059474cb15809e63cfbe0ccb80f9884c3e1fea816de4a02dc6df3f69e53623c` |
| 49 | `lemma` | [fst'_self_eq_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/fst-self-eq-snd.md) | 450 | `result-track:a7515a4312672dc46f74c8ffb92212b0d938afd7f8e74df584cb8710cdc49f00` |
| 50 | `lemma` | [isIso_fst'_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/isiso-fst-self.md) | 456 | `result-track:14f83405d337d71f3bd2244e5625580f98c1e86997b7fed3747ae64fdd2c4bc3` |
| 51 | `def` | [pullback₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-source-edition-2.md) | 489 | `declaration-track:9a091561d7708bee2afd9af2dbfef6e251cf768e836ae499c75b7ba52a8aafaa` |
| 52 | `def` | [pullback₃.p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-p-source-edition-2.md) | 491 | `declaration-track:8e199fcb69aa49d1c90475ab09421ed5283e6ed1bef9e48a3fbf7c86578d1dee` |
| 53 | `def` | [pullback₃.p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-p.md) | 493 | `declaration-track:469a9834d736d1d5310a0cc4c30573cd59b06053cb97e7565833de16216d1e34` |
| 54 | `def` | [pullback₃.p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-p-source-edition-3.md) | 495 | `declaration-track:ce2b02aab9616a5d7ef14133b76b2cf6a134d0f0eaf40b0d14ed34d2c2493c00` |
| 55 | `def` | [pullback₃.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-source-edition-3.md) | 498 | `declaration-track:f620883ab44716b236fc77ccd90c0c028f27023ef9cd918c9eedf7fc03ad1bb8` |
| 56 | `lemma` | [pullback₃.map_p₁_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-map-p-comp-source-edition-3.md) | 502 | `result-track:df1806c8fc59af4f2d8049e6fc53979df27ffb5b8ae6feab3e5f3586e641f687` |
| 57 | `lemma` | [pullback₃.map_p₂_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-map-p-comp-source-edition-2.md) | 506 | `result-track:9258c32fec789dd6467a7017676d3367ae41f225cd3527d27f92d1364d053be9` |
| 58 | `lemma` | [pullback₃.map_p₃_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-map-p-comp.md) | 510 | `result-track:0402628d5edb59209c9ce355d38fee97a89bd1678e51852fbda3f5182574c59d` |
| 59 | `def` | [lift₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-source-edition-2.md) | 520 | `declaration-track:a9f335a09459b0b819cb3b63edff7203c1939598c6c48dc6f670d713b8b9dffe` |
| 60 | `lemma` | [lift₃_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-p.md) | 525 | `result-track:1209f97806a0d1ef6849f1080db20c61fa5d82fc3483f109f80b0aa9d68dcb09` |
| 61 | `lemma` | [lift₃_p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-p-source-edition-2.md) | 529 | `result-track:56aa3031c1d261e1026f3fbd828620d4c9decb9c3f75a2d6cd3bdbf2710c741d` |
| 62 | `lemma` | [lift₃_p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/lift-p-source-edition-3.md) | 533 | `result-track:afd24055a651358630fc1c9a1506e43ef544c1991c7fe60594514d5a95c3fdf3` |
| 63 | `lemma` | [pullback₃.fst_fst'_eq_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-fst-fst-eq-p.md) | 539 | `result-track:92f67aa44be8b1ee0f5831e471d1c06814bdb4ff918fe30be580c53bc4f12d6c` |
| 64 | `lemma` | [pullback₃.fst_snd_eq_p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-fst-snd-eq-p.md) | 542 | `result-track:3d36ee5978952c7f00adc85303fefa10d82131d17c134592d431248bfd40c19f` |
| 65 | `lemma` | [pullback₃.snd_snd_eq_p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-snd-snd-eq-p.md) | 545 | `result-track:34c857cc349fcfa03642b9019b69e3eb9abfed6b7a49fb0f49c2228873cf4760` |
| 66 | `lemma` | [pullback₃.snd_fst'_eq_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-snd-fst-eq-p.md) | 548 | `result-track:4c0346451b0a713b349a82f426267002aa0d287799a6af3f68b1b6c6d736e9b7` |
| 67 | `lemma` | [pullback₃.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RepresentableNamespaced.lean/declarations/pullback-hom-ext.md) | 554 | `result-track:c4c58b76578629200450be4cb7b5d60cb15dd77e0cb06af031940dfe2240ba12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb1667e2b2d54b20c02e9697f0e67ecfe478195a0b131b48f70e3148adf6ea91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
