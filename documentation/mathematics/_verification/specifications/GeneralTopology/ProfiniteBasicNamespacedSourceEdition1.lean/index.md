# Verification target: Profinite Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04aac1b40436b287c59a8f2f8c53772896795e46",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04aac1b40436b287c59a8f2f8c53772896795e46`.

Source path: `GRWTSK/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Profinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/profinite.md) | 61 | `declaration-track:a27eec3eebb6e92f5a4727b5012ecc33bea9e13639f0b2d186788bb2d8aaf8aa` |
| 2 | `def` | [of](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/of.md) | 73 | `declaration-track:e87693d9437d41fb3cd12122779890fe72b495b39e6012fa9a36d7780243eab2` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 78 | `declaration-track:efc0a36bf54de2f73b4cec4cadcd3bc50dc100ea619b40a99ef4f08c76025273` |
| 4 | `instance` | [category](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/category.md) | 81 | `declaration-track:91b962e82dcf729d54da44408e95556cddbf27b76b527edeb4f9a798c820a5c5` |
| 5 | `instance` | [concreteCategory](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/concretecategory.md) | 85 | `declaration-track:65f003d0e06df3683553334a0aad267d8446ca0c8964fb26df07c9d7080da830` |
| 6 | `instance` | [hasForget₂](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/hasforget.md) | 89 | `declaration-track:87def11b0017052e49851a72e4e3cda2b746e352bfe208f292c43d298dafdbad` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 93 | `declaration-track:c2a6b9823d6f768121c9ad8c0bd3a92c6e686648d7b4befef1ad1321eb6250de` |
| 8 | `lemma` | [forget_ContinuousMap_mk](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/forget-continuousmap-mk.md) | 98 | `result-track:5e0152bfcbe9bd703d124af90830ed6895472e8a820f0f4567c21ee384c9c85f` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-11.md) | 102 | `declaration-track:f30892e76574a3c26c0277bb218d722fad43a96d955ffa7d60f432f52cfd1fa9` |
| 10 | `example` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/example-source-edition-2.md) | 106 | `declaration-track:f953125059c495ba1ba0f91170397715c838f88e68c4c4f4d9cf7c082ee8196a` |
| 11 | `example` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/example.md) | 109 | `declaration-track:744f8932fb3146a3f1e28592f6e58a76226088a4e82f3aacaa8f29971ac5bd2d` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 113 | `declaration-track:4b4cea5d507bcbf4c047b7188f0d2f03ce7e5eb1c09eb19c347480dc9e7d1f4b` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance.md) | 117 | `declaration-track:1435fa6a27e1d0df5afd354d1b83d969954aa8ea117d1dc048c94ecd72696358` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:47b68be5b12cf0da59132b24d6f433f5630c5b0198cfb85c93f436aa462d560c` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-12.md) | 125 | `declaration-track:f69162cec1b1da498ff29eae440855536d4a232ff866810cb380ae4b2b1a2cd0` |
| 16 | `theorem` | [coe_id](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/coe-id.md) | 137 | `result-track:0b010a4ea7acad4a031b894266bd20794ef8876760006361ad3ddef7a4d37366` |
| 17 | `theorem` | [coe_comp](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/coe-comp.md) | 143 | `result-track:c56d543bf53b8306778cce5d03472b394fcab7e57ebb551b702074def84c8751` |
| 18 | `def` | [profiniteToCompHaus](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/profinitetocomphaus.md) | 152 | `declaration-track:bd266be9a4328c519cc65fa0152778c63c7da37ba38d47ca6c5f5ce39695e715` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 158 | `declaration-track:3917810b313a64f42a45157176dbae8dc4716277c27ffe9c3e6784e43309f96f` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 161 | `declaration-track:ad3f0611755af12594d1deaa129a4aaa1e41c229e14c914797307eb3c8eb2c35` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 165 | `declaration-track:6ccf1955c10b2aa008122002feb85e7d5cdac250985432a9a2fd8bb60fcd0a88` |
| 22 | `def` | [Profinite.toTopCat](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/profinite-totopcat.md) | 171 | `declaration-track:b958459271689ea90c7e1f64fd5f4dc2722d6da088346278355a7794f111d186` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:3d2a5f86193f1cc9f2f0b914812f98eb80b8263800163cca5d9d7c9ac23bab41` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 180 | `declaration-track:49358ca0fdc45152d8361a8cb89326104af873dffc5bfbd0543ac66e5df8f161` |
| 25 | `theorem` | [Profinite.to_compHausToTopCat](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/profinite-to-comphaustotopcat.md) | 184 | `result-track:eaa0d14012407404daa55e5280faf61cd47b2f6182aad9253fa8c0cf21d098d3` |
| 26 | `def` | [CompHaus.toProfiniteObj](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/comphaus-toprofiniteobj.md) | 198 | `declaration-track:9db84fd9d348a13961a6c0cb454f11516047b27f27d36293fe5d39c42bd099b8` |
| 27 | `def` | [Profinite.toCompHausEquivalence](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/profinite-tocomphausequivalence.md) | 209 | `declaration-track:6ce996e5106f1cfeb6792096e4d88c31a4274678fa3f7ce6cba03c51e615d514` |
| 28 | `def` | [CompHaus.toProfinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/comphaus-toprofinite.md) | 222 | `declaration-track:7a1f42eddd8986369b0247bb6c7793c0d0bba4d868e4d2bba4a510e9e6fce4b2` |
| 29 | `theorem` | [CompHaus.toProfinite_obj'](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/comphaus-toprofinite-obj.md) | 226 | `result-track:08b8288bb092b92ffca7307e80bd9766586a44f68735a56d6fb9f3383c63acdc` |
| 30 | `def` | [FintypeCat.botTopology](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/fintypecat-bottopology.md) | 232 | `declaration-track:7c6495c1e5b9c5dd8d5705a32a38efa87d33311c6cc5b851b858338c30086135` |
| 31 | `theorem` | [FintypeCat.discreteTopology](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/fintypecat-discretetopology.md) | 239 | `result-track:09da320a59690447928b16645fa3ed77e971e8954371028420a395ee4c85937a` |
| 32 | `def` | [FintypeCat.toProfinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/fintypecat-toprofinite.md) | 248 | `declaration-track:2ceaaf33bc0862c55d0b7d8590be804d2aa532a9b3a724b1dcee376f81513309` |
| 33 | `def` | [limitCone](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/limitcone.md) | 263 | `declaration-track:c604a4b67270195fc949f3c7d764d12e8b809c7bbe182c66bd2038e2892dc542` |
| 34 | `def` | [limitConeIsLimit](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/limitconeislimit.md) | 279 | `declaration-track:5ae2fc923b0bdbfa91a982a88f61170a0923d428b1fe1c5ae030108cc4873cce` |
| 35 | `def` | [toProfiniteAdjToCompHaus](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/toprofiniteadjtocomphaus.md) | 288 | `declaration-track:8e1a37948d7f3ca92b8fd6cc205138da653ab84c1de1a54630de96c4b179eb60` |
| 36 | `instance` | [toCompHaus.reflective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/tocomphaus-reflective.md) | 293 | `declaration-track:ee1ce44a407328ff14de0f243b1d409d85f2734e61a9727a4dd4bed6da47e78b` |
| 37 | `instance` | [toCompHaus.createsLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/tocomphaus-createslimits.md) | 297 | `declaration-track:275555ff41980f9ecf386cb0635f2beaa7af7c143b5311bf8005a24b77446138` |
| 38 | `instance` | [toTopCat.reflective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/totopcat-reflective.md) | 301 | `declaration-track:b3afbd7824f2ac861a4a8363390324743d9ef7b0845a9e975f2743d7aeaa7d26` |
| 39 | `instance` | [toTopCat.createsLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/totopcat-createslimits.md) | 305 | `declaration-track:bad62ade5b9593aab3e710a203394229c8b444216e4be0ee2b483117d7ad8238` |
| 40 | `instance` | [hasLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/haslimits.md) | 309 | `declaration-track:75ad206efd665f1dbd234a8764079eeb5faa32ac37c6b077546621c8ba35927f` |
| 41 | `instance` | [hasColimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/hascolimits.md) | 313 | `declaration-track:d9e4e4c5b1441b716666efa78a3efd2e0f427788e83c593cadadb2b77d7ff4cc` |
| 42 | `instance` | [forgetPreservesLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/forgetpreserveslimits.md) | 317 | `declaration-track:7eacb9c4067d58b5aeff817783b8df3525c0c34f26ae3da91dcb7f6977beb0fb` |
| 43 | `theorem` | [isClosedMap](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/isclosedmap.md) | 324 | `result-track:a3aadb4fff9231241131807551ab4d763e29eb8eb8208cd85682987e14c7baf3` |
| 44 | `theorem` | [isIso_of_bijective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/isiso-of-bijective.md) | 329 | `result-track:452fa363ba9a2bbdf8481147622c51b3cafcd16045db7321a0155c91cd9ecc7e` |
| 45 | `def` | [isoOfBijective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/isoofbijective.md) | 335 | `declaration-track:5a7b3b1ad5a81ead2556848be023ed824a13e3981c5a44d3d5cdf96802ff4666` |
| 46 | `instance` | [forget_reflectsIsomorphisms](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/forget-reflectsisomorphisms.md) | 340 | `declaration-track:cb5e7e82f9df8a6b93b31083ca996425cc1aa642ad86a42aa0afa4e0f3f43859` |
| 47 | `def` | [isoOfHomeo](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/isoofhomeo.md) | 349 | `declaration-track:7e9ac6512b2485e57bf9dce073ffccc780e3ad4dd4985ae722efd3ad48b51c4e` |
| 48 | `def` | [homeoOfIso](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/homeoofiso.md) | 356 | `declaration-track:f58e2c18a2610d4833d75a18790f1bbca2604cd1ee35ab21cdc812d5e34b773e` |
| 49 | `def` | [isoEquivHomeo](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/isoequivhomeo.md) | 363 | `declaration-track:697880edd521725e069df274f7c9e6559199c12bf5650ba7e8f9cfba65d28c9f` |
| 50 | `theorem` | [epi_iff_surjective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/epi-iff-surjective.md) | 370 | `result-track:25074bf15937c8b0b8bdc6ad199359eb11b54a162f714b4d00170ae16cea2099` |
| 51 | `theorem` | [mono_iff_injective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition1.lean/declarations/mono-iff-injective.md) | 407 | `result-track:a33c0aaca5a05c584ea932114a608957b00268eb07b5b84162c60e74fb83f0d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35a093428d8dccae5cd7bfb867a67ddd35385e330a8c70fbca0b5274aca78fdf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean","GRWTSK/_verification/specifications/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
