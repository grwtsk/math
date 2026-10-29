# Verification target: Ring Limits Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04142bdf0b6950e779c8f0a06d817af551045358",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04142bdf0b6950e779c8f0a06d817af551045358`.

Source path: `GRWTSK/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/semiringobj.md) | 42 | `declaration-track:07cb279f193dca1cdb3cf4b71ce31b906464e3f63682fc2f456986ddb1bfb6a3` |
| 2 | `def` | [sectionsSubsemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/sectionssubsemiring.md) | 51 | `declaration-track:374eb649c43cfafb63d285487da3110f351db7a63cf1b79159271d78f97a7aeb` |
| 3 | `instance` | [limitSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitsemiring.md) | 62 | `declaration-track:3b4aea38d39d81fcaeed852e0ab1a8fc45b4beb251fd8b749a323c2c749755f0` |
| 4 | `def` | [limitπRingHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limit-ringhom.md) | 69 | `declaration-track:cfe44705acdedf94f0726c59775b4c3962b34d9b7a5c1cbf8c42b1b18b7174ee` |
| 5 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcone.md) | 88 | `declaration-track:0944883ce394789dd53755e0084d7b83f3351620d3a85b4839e168e3c7956db6` |
| 6 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitconeislimit-source-edition-4.md) | 100 | `declaration-track:aa46969495d2cb1c22e6b94572c2db31400f106b759ccfe100d26fc86e934c63` |
| 7 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimitsofsize-source-edition-4.md) | 116 | `declaration-track:e9db15c21a10ac0479c02723e7a9c7c772ef18350ec85b8481db37b5a5f09c75` |
| 8 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimits.md) | 122 | `declaration-track:0ed23918d24da0b23b888ce02f44b019f56b7c3caa27881a97577110c0001590` |
| 9 | `def` | [forget₂AddCommMonPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommmonpreserveslimitsaux.md) | 130 | `declaration-track:a7584076f1c59d6db4bcdae20dc2d2fbc1e399463a1322c23449d19acaa70fc2` |
| 10 | `instance` | [forget₂AddCommMonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommmonpreserveslimitsofsize.md) | 138 | `declaration-track:ae0ecfdf406bf8c260dff559d3d185208a518c642b34ff339c09b907bf43f3c3` |
| 11 | `instance` | [forget₂AddCommMonPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommmonpreserveslimits.md) | 147 | `declaration-track:4b029714268ef50b537c3c56760e36c8f37147fecd52fb3534bef66453f63734` |
| 12 | `def` | [forget₂MonPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-monpreserveslimitsaux.md) | 155 | `declaration-track:5f60cd4ddf0b40a93be8e3acab65547536d84be9e2b6445b393ee3e047e3f73b` |
| 13 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-monpreserveslimitsofsize.md) | 163 | `declaration-track:e9213e10f3d4de200a56e66ea5eacf55bb6ed7a01a1baf82a4dc2053d19247c1` |
| 14 | `instance` | [forget₂MonPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-monpreserveslimits.md) | 172 | `declaration-track:6b14e863ef92f918b211d6160e159ebdd05b07b3a14de83e6b4aed098b0009c7` |
| 15 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimitsofsize-source-edition-2.md) | 179 | `declaration-track:9e63ab5098f41ac6206e55f4ef6fa25aa2759eec7c95b5d011e91d9cfbffbc55` |
| 16 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimits-source-edition-2.md) | 188 | `declaration-track:a58dda782f392a14fdadaceeba52a7e4c0bbe1c36a7bff476faa924ac8221d69` |
| 17 | `abbrev` | [CommSemiRingCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/commsemiringcatmax.md) | 198 | `declaration-track:d0b62188a63a9cd95ed53a862b3bc15cdf0f6d81b4c2f0262a05ffb7bccfd210` |
| 18 | `instance` | [commSemiringObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/commsemiringobj.md) | 204 | `declaration-track:fd772463a8d8db6d912652033bd50934a7daf6f7252663cc8686e830dd61191b` |
| 19 | `instance` | [limitCommSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcommsemiring.md) | 211 | `declaration-track:644f99393458581234c3d7e1a45dd2a1f06e4b5e264e2fc9e30b71c9aaf27c9d` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/instance.md) | 223 | `declaration-track:3a8336546224669be345751a0e3d382b60892b19a8c40d2fef309e13f5b53fb3` |
| 21 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcone-source-edition-2.md) | 257 | `declaration-track:1c386b7f4ff5c2c8f1a5428b136ed23102b8d8005e6f325667ba4bc9a82e417b` |
| 22 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitconeislimit.md) | 265 | `declaration-track:1afee2c24f889c3a438414ff49cc8588dd573f8d891dce02fe011fc6a32250ef` |
| 23 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimitsofsize-source-edition-3.md) | 272 | `declaration-track:ab3d6e3c68eccff3806144ec5dd319e5bad4f34e4962f46c73938d8f9100c998` |
| 24 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimits-source-edition-4.md) | 279 | `declaration-track:eca332285b99faf30b01fb640988d4b25f8272a6d47e609967f9b78d75221518` |
| 25 | `instance` | [forget₂SemiRingPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-semiringpreserveslimitsofsize-source-edition-2.md) | 286 | `declaration-track:85f691020cbbc487415674e3051e06c6c7eced4fc196a320e72537f0058a16ed` |
| 26 | `instance` | [forget₂SemiRingPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-semiringpreserveslimits-source-edition-2.md) | 295 | `declaration-track:f271505f0ff23aa99ee6dec9a3f4a6c274a7ecaee6e307092fcfbf6edab30194` |
| 27 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimitsofsize-source-edition-3.md) | 304 | `declaration-track:be4a8bf430b0487ed4fa27493066ae365eb43a67aed2b2b967e82d5539efbb9d` |
| 28 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimits.md) | 313 | `declaration-track:2d154e448eabe2fd781cd967c67ad69511272728f81b611bf747ef41b5332bf9` |
| 29 | `abbrev` | [RingCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/ringcatmax.md) | 323 | `declaration-track:a68e422f5e598cb06e5df29fc610042e97d95814eda37dfc4b4c09e77f422fee` |
| 30 | `instance` | [ringObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/ringobj.md) | 329 | `declaration-track:28bb4e80f99c567e6dbc4738022f545904133163b9d32c19116cbec7db3f7428` |
| 31 | `def` | [sectionsSubring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/sectionssubring.md) | 337 | `declaration-track:33687a387dd66dda772e3d2387c62e41f620d4232a645bf6e28a537c7fc86327` |
| 32 | `instance` | [limitRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitring.md) | 348 | `declaration-track:0dd269faf557d57d94466766137b13a2ae4eb64a5939e517d0e8c0fb7a1933df` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/instance-source-edition-3.md) | 359 | `declaration-track:8129fc174781701778f3addf09d13fea19132fc468861a9428d637a51366b37d` |
| 34 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcone-source-edition-3.md) | 379 | `declaration-track:5f423edecd6f22226576505ada082df7579d28507e6501dbfd751b13c5f0ff29` |
| 35 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitconeislimit-source-edition-2.md) | 387 | `declaration-track:2b4bb2407c86d4827eb49fa079bfda73955e3898af92472ff781355431eb9a71` |
| 36 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimitsofsize-source-edition-2.md) | 394 | `declaration-track:9249b182e313e435e43126160e0d5b22e5a0e74e0dfacee943031a2c49eec43d` |
| 37 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimits-source-edition-3.md) | 401 | `declaration-track:d09b8f5f64bcfca1e10951bac273d29750f9cbc3cc3c5a6f16ffcb4c5266c5c4` |
| 38 | `instance` | [forget₂SemiRingPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-semiringpreserveslimitsofsize.md) | 408 | `declaration-track:667fbf5dd6aa4bc5054523b9fdf2e7a7adf26fd8fed9be5704d3a88442389007` |
| 39 | `instance` | [forget₂SemiRingPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-semiringpreserveslimits.md) | 417 | `declaration-track:772752cacc05cc1eb867c19e8240664d4ba23c49f252cb69adecc0939963ea45` |
| 40 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommgrouppreserveslimitsaux.md) | 424 | `declaration-track:42002097455502ef7a0bb2fae823abbfe412e2aa7bf17221f1a811fff0225e76` |
| 41 | `instance` | [forget₂AddCommGroupPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommgrouppreserveslimitsofsize.md) | 434 | `declaration-track:eb61ae08c0cf4a2e542ca945e4bc778dc5b78d0b916694709b32b5cde9c1b4a6` |
| 42 | `instance` | [forget₂AddCommGroupPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-addcommgrouppreserveslimits.md) | 443 | `declaration-track:9854589873e33ae91df8ed63b41ad9666fddbe1a8d65b01e5cab7b75040c6b46` |
| 43 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimitsofsize-source-edition-4.md) | 452 | `declaration-track:e10aedc77d48a4205da3374d3a57ad72c4c0aea308d7561b423200d60d464373` |
| 44 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimits-source-edition-4.md) | 460 | `declaration-track:d64d3abc304c81bc57ae2f448f05b48cad1d55ba339d67916ce5fff7a9520f3d` |
| 45 | `abbrev` | [CommRingCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/commringcatmax.md) | 470 | `declaration-track:35352cdc9ec720f8318d0a222754137cc1653d3d28fc788b59cd02a826832ee8` |
| 46 | `instance` | [commRingObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/commringobj.md) | 476 | `declaration-track:d771b442e34fc44528455ec2377a83bc01d9f8af4110832e71371c789d4af3f1` |
| 47 | `instance` | [limitCommRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcommring.md) | 483 | `declaration-track:16757a4975e25bbd387c8d2e3c37e82bf6d99cee2892e61366a8cc36c6e840b8` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/instance-source-edition-2.md) | 495 | `declaration-track:5cd325565e1325e74fbd95c7acf00e7a3c3ed9e8ad8d9003fc5e7837aba431b7` |
| 49 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitcone-source-edition-4.md) | 534 | `declaration-track:b88e7b4383ced4f0b8cd08694bda36db5d347fffef96326d1b38ff91be184c6b` |
| 50 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/limitconeislimit-source-edition-3.md) | 544 | `declaration-track:7f3e6b8c2be437f3e2ec2f66721aa7e9d516a8cea1902578f9e6c5042d110ff7` |
| 51 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimitsofsize.md) | 551 | `declaration-track:572a8782cb1aa8136ac408a9ffb26750799b369c6c4e727e8281cf323e303377` |
| 52 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/haslimits-source-edition-2.md) | 560 | `declaration-track:38374c8ad75ec859c9df25d5bb4f2f51aa5d7943e1e63425c0ce9860180770e2` |
| 53 | `instance` | [forget₂RingPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-ringpreserveslimitsofsize.md) | 568 | `declaration-track:72b44f52bb71e60a9a5169f2c5a3ea738cca823d28adf5db9e03b2eef592e730` |
| 54 | `instance` | [forget₂RingPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-ringpreserveslimits.md) | 577 | `declaration-track:c0278d9c243b8ee228c76376733f0734f165557ea8a4bde8a5b340254c766f92` |
| 55 | `def` | [forget₂CommSemiRingPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-commsemiringpreserveslimitsaux.md) | 584 | `declaration-track:fcecbf7d99b935a0bc7c83ae6714469c043372adc8d7cc7c898c25473a13cfaa` |
| 56 | `instance` | [forget₂CommSemiRingPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-commsemiringpreserveslimitsofsize.md) | 594 | `declaration-track:b7fca5a3f16e403fc8ac27d2a593ef15d65d243d609b20465e9d806739eca8e1` |
| 57 | `instance` | [forget₂CommSemiRingPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forget-commsemiringpreserveslimits.md) | 603 | `declaration-track:54319606be298277642cfcb1b3fba7d5341ae104957c78443192290d174059d7` |
| 58 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimitsofsize.md) | 612 | `declaration-track:6abfd71a03d9c13ca2aafa5e5c551a5caf0505800198e4af7904f82e8b7e6be8` |
| 59 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingLimitsSourceEdition1.lean/declarations/forgetpreserveslimits-source-edition-3.md) | 621 | `declaration-track:bd0af693d41900fc4e29f9b05ae67d854a40ed257aaec02dbb4aa2230c1ff617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1b225c64c978352830651d26ddc121576aacc6d41d752c0013e0f133f4762b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean","GRWTSK/_verification/specifications/Algebra/Limits/Variant690af12c89ceb14268609bcf9da1146462a157be9b1c96edc63d6642ceb77ad9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
