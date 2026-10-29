# Verification target: Free Algebra Namespaced Has Smul Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828542458aeb41b8cf08b916b1de9d7e975f0f65",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828542458aeb41b8cf08b916b1de9d7e975f0f65`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Free` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/pre.md) | 69 | `declaration-track:7b9b8b4753311da00a0f58f27916b7aec4b583323c8c6cae81af98b4baad96a4` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-7.md) | 78 | `declaration-track:bb6a0af7efa1b806fad00b500c33467a657dc9e30517d613d15d5afc8969ae82` |
| 3 | `def` | [hasCoeGenerator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hascoegenerator.md) | 82 | `declaration-track:cd0103ae43acdc86ce6403c038c1cefa5581b97f8bbca51b75a112c63e7e4252` |
| 4 | `def` | [hasCoeSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hascoesemiring.md) | 86 | `declaration-track:aaad7128434fa81b1369880963ffff95be51bfac964b4ab044cadabfaf58d445` |
| 5 | `def` | [hasMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hasmul.md) | 90 | `declaration-track:8351a52c82df501d3de9bdbae93112dcaeb6deba8de84f3735e3bbbfc47c254f` |
| 6 | `def` | [hasAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hasadd.md) | 94 | `declaration-track:517f8d08a9f7a0b9fd4295e4159b00d39c7dabff3b203f5b73cc5f150425b858` |
| 7 | `def` | [hasZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/haszero.md) | 98 | `declaration-track:1965c4f5fecd10029eecb9becf3d579777df3a33d01550edfff5e107caa60353` |
| 8 | `def` | [hasOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hasone.md) | 102 | `declaration-track:9ffa532ee9900042fa6ac1173f5f2521310e2e3c97caf50aa71c9bc7f5f7d09f` |
| 9 | `def` | [hasSmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hassmul.md) | 108 | `declaration-track:dbc325e666986d10bc6cd80979cea6a676a3b35a7d7d219f6b97e0cbe655de7f` |
| 10 | `def` | [liftFun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/liftfun.md) | 120 | `declaration-track:b29d50b28b061a14b8f38017b0746c7db629034df371b721ce49a5b2ee1efcc6` |
| 11 | `inductive` | [Rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/rel.md) | 131 | `declaration-track:6bb4776e605c97d9ecc3b500776dd18fb23a6d2f23a6aa72b227bd318a5b7301` |
| 12 | `def` | [FreeAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/freealgebra.md) | 162 | `declaration-track:d7baaf78c57bdfb32f433c266fd9a46ad58210ed89153f826cb91473a56d7490` |
| 13 | `instance` | [instSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instsmul.md) | 173 | `declaration-track:04aeba69ba100789fb53f366a1ed832cd638ba3856829b2b599c3c98cf1aa2d1` |
| 14 | `instance` | [instZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instzero.md) | 176 | `declaration-track:214f708f129ddddced142fdcf9c3fda8ea34d09fbf1dd5a5bee63ca48b302278` |
| 15 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instone.md) | 178 | `declaration-track:b72c49ed5f07abc614a1955238028f432a5a081757c38acc5a847b9440d0b9c2` |
| 16 | `instance` | [instAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instadd.md) | 180 | `declaration-track:94207f7c7f5a768c6d879444e701d0248169d2f16c8d120292fdf1f3107633eb` |
| 17 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instmul.md) | 183 | `declaration-track:d6f3990d36b8b4c93a9cf8ba7c22792e2e8eb4a49791c29d4eee66bce212e7b2` |
| 18 | `theorem` | [mk_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/mk-mul.md) | 187 | `result-track:c7fa41bac341fd8a6438f826076347a102297d77f8ca4fc3a68d13da3baeff47` |
| 19 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instmonoidwithzero.md) | 195 | `declaration-track:5ad5c5cf1355a7180440f94f5a69f90e6b6c54a187bde5518e271ac18e3a6ca5` |
| 20 | `instance` | [instDistrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instdistrib.md) | 213 | `declaration-track:9da11486b3f2c7158a25ac100fcb26a70d5a4548d956f70784e3a6057e440907` |
| 21 | `instance` | [instAddCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instaddcommmonoid.md) | 221 | `declaration-track:0b7de6aaf6e25e45f6ce3df1e6cd2ba8551a836720335d0151e4002e7d66b447` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance.md) | 248 | `declaration-track:4cc2853d41223f459163b9ae07e73130e5b2d1383fc071e3a4c30602de0f6e95` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-2.md) | 256 | `declaration-track:6d5c9fbc95d01db1e8c488abdeefa6b95edb453a5bc55f07581b66dc935a8f5b` |
| 24 | `instance` | [instAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instalgebra.md) | 259 | `declaration-track:fcb2a25e9639a5e720abbf53d3dbea16da68c3af1fbf20277dd161f18b3cb5ca` |
| 25 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/example.md) | 274 | `declaration-track:8461eae70e1b8f418dae46432345ebe0be6f99ea4b2245024433c6559acebf35` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-3.md) | 276 | `declaration-track:9f65275fb3295e4016a754ba3e58ee40b8c1b23b85f947674abb128e99f7bbf9` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-5.md) | 286 | `declaration-track:a31b59cbe8e5efe6146b6a761894c8227a9c45c6b3c09a805f9bc9f37d030f66` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-6.md) | 291 | `declaration-track:aab4c5f6ba2be6bdb7aea0eb5ac45ea1e76c1302de21703ffb5cce7f36a35cca` |
| 29 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/example-source-edition-2.md) | 296 | `declaration-track:ae01c60c1d2df176443f93ccad23397e41ff115efa7a42c8c08fe38276a8327d` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/quot-mk-eq.md) | 306 | `result-track:21297d9c4cbb2a0308c88b523e189ff8c802b8f10d9bc83b2911864b02671832` |
| 31 | `def` | [liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/liftaux.md) | 312 | `declaration-track:af96c2d3ed26cd103d3732601108456fc8f38b8156d03f996fbf22fc7a71ad80` |
| 32 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/lift.md) | 367 | `declaration-track:6cf24e55e57fcaeba2b2ecc9a9797621cff48d3ab194c532b0912c8df7bf7816` |
| 33 | `theorem` | [liftAux_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/liftaux-eq.md) | 399 | `result-track:0e0d6c9045ff4492d11f2de8fc3f3c3ed51dcd14aca02138c5ae987314f55130` |
| 34 | `theorem` | [lift_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/lift-symm-apply.md) | 405 | `result-track:631dae744a9ec0e47cbf3a949d2a6a32565d0548905c7ff3c4bd0f90bfd6212d` |
| 35 | `theorem` | [ι_comp_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/comp-lift.md) | 413 | `result-track:9980c8ba9a6ac7818ac97f7db00ddc37c9c4e44d71159f924e13d65a8cc6b5d0` |
| 36 | `theorem` | [lift_ι_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/lift-apply.md) | 420 | `result-track:1fcb3c74931455897ad1a77136417712cfcf8b9c6d1871640b203abb1873af2b` |
| 37 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/lift-unique.md) | 426 | `result-track:0f39ff8c01843307bfc7a3c23f2602b8586db9b45b73114671ca6b13b376b1b6` |
| 38 | `theorem` | [lift_comp_ι](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/lift-comp.md) | 442 | `result-track:62ca99d1dfac39d72abba6cce11096c8d22247a23777ea6beb362248dda1fc1a` |
| 39 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/hom-ext.md) | 450 | `result-track:9238cf0d93e4906adcd92396fc2e90c6a9ba68167d9aca3398e600d837f0f481` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/equivmonoidalgebrafreemonoid.md) | 461 | `declaration-track:2fc3c2d8e753f38cac44bb5252d6a235a61e4666a7e8b8fad2dd3a123aff7c12` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/instance-source-edition-4.md) | 478 | `declaration-track:a148e15cfe65bb73674c081b847c2bc77a180f2fe0184eba7fe7fb3d8f21ec96` |
| 42 | `def` | [algebraMapInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/algebramapinv.md) | 484 | `declaration-track:3291feeebcc6aeb0ae877c3eaa23290124fcb1566dc0df97ae48659440d5f561` |
| 43 | `theorem` | [algebraMap_leftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/algebramap-leftinverse.md) | 488 | `result-track:7c9d2968b6250ec37bd796025b63f5eb19b03101834b77a3db6e04eed9fa2b14` |
| 44 | `theorem` | [algebraMap_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/algebramap-inj.md) | 494 | `result-track:5d530350ffc74cb31f17e3f5dd0a856e379fdeb59a5375f374c0840d7ba34b84` |
| 45 | `theorem` | [algebraMap_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/algebramap-eq-zero-iff.md) | 500 | `result-track:d80f1ca696ec562faa233782f3ff4191c92b9690fbb86857d133a3e15d883f54` |
| 46 | `theorem` | [algebraMap_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/algebramap-eq-one-iff.md) | 505 | `result-track:63feb284ae9401c9d8ee526f52d574df359ba46e356741fc5cbd83ebd8abe8d1` |
| 47 | `theorem` | [ι_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/injective.md) | 510 | `result-track:2ba637f459a1eb3af6f5c3401959f1de4f0c71d4c6463b71865f10c49c0bfa39` |
| 48 | `theorem` | [ι_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/inj.md) | 522 | `result-track:e5e42c85d87f29f8d1b18399aee601e74353c11feffe54ff853adf7fff7e8800` |
| 49 | `theorem` | [ι_ne_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/ne-algebramap.md) | 527 | `result-track:2344877581fb6b585fdd696fc7725184fa0d1e25b92816007852e3570f2e24f7` |
| 50 | `theorem` | [ι_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/ne-zero.md) | 538 | `result-track:2e6fa8709a0cd85bebf1a4f994d5956c147402f09f50cc99c49f4568f708fa8e` |
| 51 | `theorem` | [ι_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/ne-one.md) | 543 | `result-track:1e53807b49f4357b17d02ac465684c2f266aebdb392a99c13f16842556bfceef` |
| 52 | `theorem` | [induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraNamespacedHasSmulSource.lean/declarations/induction.md) | 561 | `result-track:1d8dd8a30636a172c302d12cfe05ff5f850d2bd70827af1ac1614d2620146779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7b4af822d38d6624973968d44405acd0451510724f5736399ccc86db99026b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean","GRWTSK/_verification/specifications/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
