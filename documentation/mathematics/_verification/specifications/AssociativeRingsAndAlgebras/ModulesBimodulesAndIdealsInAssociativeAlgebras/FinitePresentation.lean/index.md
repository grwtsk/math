# Verification target: Finite Presentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8d72c1205c62f1d65e2ec1ec2305e4e42384d04",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8d72c1205c62f1d65e2ec1ec2305e4e42384d04`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Small.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Projective` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.FinitePresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation.md) | 65 | `declaration-track:6d309f8063bb77e8ef107548b1bfdcc7f5efc30f909811de852d547788a3a2c6` |
| 2 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:60bbbc6cce1db388f5772d3c276aaaf017b4c19a53d377e570e36c212c6a8afc` |
| 3 | `theorem` | [Module.FinitePresentation.exists_fin](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-exists-fin.md) | 82 | `result-track:f2949d592ca22555e3cde0ff361be7bf3455e22552e27030681e32c687f1c4af` |
| 4 | `theorem` | [Module.FinitePresentation.equiv_quotient](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-equiv-quotient.md) | 93 | `result-track:86c7d5001a72031de067268ca20ba3b58bfc6f717bdcd8ac315840681e66ffa4` |
| 5 | `lemma` | [Module.finitePresentation_of_finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-finite.md) | 106 | `result-track:d3d315f22f739cc1a65fc9c384d0f2ea5fea4ef2781173a94612d02835476d61` |
| 6 | `lemma` | [Module.finitePresentation_iff_finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-iff-finite.md) | 111 | `result-track:3c80ebb5f47b420e3d39ff3d591d882676616335524dbd981bf89affc3e01b87` |
| 7 | `lemma` | [Module.finitePresentation_of_free_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-free-of-surjective.md) | 117 | `result-track:f168b6274ab0975f4343e23ebfef433a0aac87bf32e615107f2b6bc72d9049b9` |
| 8 | `lemma` | [Module.finitePresentation_of_projective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-projective.md) | 150 | `result-track:ede32da8ece884f6728fb186eea8c5091b07a5bf21c200b399d253910dddad95` |
| 9 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:2578373a85189a6e583b3ffb7bea34a8bfc3f513196ff400e2e2250451520240` |
| 10 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-4.md) | 162 | `declaration-track:b2d076dddef3e831b243bf7163c44bcee7de7c0b57dbaa8cadade87c24afcfd8` |
| 11 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-8.md) | 163 | `declaration-track:fca4c1a962de996cc512b77c0ad33c1d94e34a7e504de329030b797fed3dd5d5` |
| 12 | `lemma` | [Module.finitePresentation_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-surjective.md) | 165 | `result-track:fe0042eba9ca444aa415ee3d56707a5f3aac17179f22a35bf68be5ae9211bc3c` |
| 13 | `lemma` | [Module.FinitePresentation.fg_ker](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-fg-ker.md) | 183 | `result-track:fa238110f7fe8c575dd40b0728afa26f88fbb7a09abd7e315676dcdb47b0bb7c` |
| 14 | `lemma` | [Module.FinitePresentation.fg_ker_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-fg-ker-iff.md) | 207 | `result-track:1f784697e9a9c9d3a21e92dd94999ac9f020234e35fda0373e1b4d8f3506d9ef` |
| 15 | `lemma` | [Module.finitePresentation_of_ker](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-ker.md) | 212 | `result-track:19ecc15ca62025e1cf367c82f5eb53feefe4591f430de577c6fe440564f15aad` |
| 16 | `lemma` | [Module.finitePresentation_of_split_exact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-split-exact.md) | 246 | `result-track:d15984f6bbbbe8687fa57cb23916dc8dfd38792038f1adb56e468bf6638f5038` |
| 17 | `lemma` | [Module.finitePresentation_of_projective_of_exact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-projective-of-exact.md) | 264 | `result-track:13192adba1168b7baf972c2643259b68beb770039f9d07c1ae630dbcd9bda861` |
| 18 | `lemma` | [Module.FinitePresentation.of_equiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-of-equiv.md) | 273 | `result-track:41cda1092178658bebd1e04c3a2873c9abce2bebdd77bbabd59a4b4a9922ab3d` |
| 19 | `lemma` | [LinearEquiv.finitePresentation_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/linearequiv-finitepresentation-iff.md) | 277 | `result-track:03da65a4126f8e5472d334418b8382a3fd278660ea35505490a9b2065c0e274a` |
| 20 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-6.md) | 284 | `declaration-track:f3367f7ca51ea367b99cfcd7609dd5aea15e9460a8d85d62b8ceb441a6dbcae6` |
| 21 | `instance` | [prod](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/prod.md) | 289 | `declaration-track:6edff125a6d39166e89bbc03d82a2b86ff560c60505bcb9588649217a18479ce` |
| 22 | `instance` | [pi](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/pi.md) | 297 | `declaration-track:17fdf744b29175df0252cc63d9b3b34c7c420cb4c17865c4ae50438dcb08eb06` |
| 23 | `lemma` | [Module.FinitePresentation.trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-trans.md) | 318 | `result-track:17550754a68fa8d502dc62b7c42d80cd8df3bb9dec9b30fe856b680bb9b10215` |
| 24 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-5.md) | 334 | `declaration-track:d1d74809032ef7d029094eeda2be4651d792d8deb6c3d5fb95345d1ad1271106` |
| 25 | `lemma` | [FinitePresentation.of_isBaseChange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/finitepresentation-of-isbasechange.md) | 351 | `result-track:96d5fc1fbee738bddd34e7f3d27c26c0af3fdae5283782fcd23e56f8c8fe0421` |
| 26 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance-source-edition-7.md) | 359 | `declaration-track:fad4d10996861d83267456a06a914e71c25638acd179351fd721eb57a105d4ee` |
| 27 | `lemma` | [Module.FinitePresentation.exists_lift_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-exists-lift-of-islocalizedmodule.md) | 364 | `result-track:69c4947a33f1db3e98bf0ed2b67f172e2190c0ac535c1118f14ef3f4911aa963` |
| 28 | `lemma` | [Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finite-exists-smul-of-comp-eq-of-islocalizedmodule.md) | 415 | `result-track:b5e52164a41cd38e9db1aa7cef8eec738b86742f0bd505c1159a5700cb388fdf` |
| 29 | `lemma` | [exists_bijective_map_powers](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/exists-bijective-map-powers.md) | 437 | `result-track:dfb19ead9e84663603377a507605a04fd26d10b106ec1830e4ab5c70bd4a36b7` |
| 30 | `lemma` | [Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-exists-lift-equiv-of-islocalizedmodule.md) | 500 | `result-track:350367719a6955f9d88308663291ab777606f945d9c25ed0be4c6b1f57d71a5a` |
| 31 | `instance` | [Module.FinitePresentation.isLocalizedModule_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-islocalizedmodule-map.md) | 543 | `declaration-track:6304525507e37d427bd404a549f800c7523be3df8000ebe34eb9ffa22a6e63ff` |
| 32 | `instance` | [Module.FinitePresentation.isLocalizedModule_mapExtendScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-islocalizedmodule-mapextendscalars.md) | 566 | `declaration-track:0b3e4ae2ec25427e737cce647593d305533877b4529cbbc2aad2ea8c648822fd` |
| 33 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/instance.md) | 573 | `declaration-track:0cf562078124deb4675e82d5b059ea1dc829fe3916b63db81e4a0ab74d39a438` |
| 34 | `def` | [Module.FinitePresentation.linearEquivMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmap.md) | 582 | `declaration-track:72153187960c61cd8196d688562dece2d5b574476fb2fc904d524bbf49a3eec3` |
| 35 | `lemma` | [Module.FinitePresentation.linearEquivMap_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmap-apply.md) | 586 | `result-track:3354ca3f984f65b8ac6ed5c3002456dbfa98ee8522db4e35d1038ee6a3e1f411` |
| 36 | `lemma` | [Module.FinitePresentation.linearEquivMap_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmap-symm-apply.md) | 593 | `result-track:56294a50d5e025a20782c42d7ab876b7ab427b3a0afc80b84c385f67cd298757` |
| 37 | `def` | [Module.FinitePresentation.linearEquivMapExtendScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmapextendscalars.md) | 604 | `declaration-track:decfa70ae4ed16f4e0e792a7201dc7740f9bceddb22a154c012b1e77de2abe15` |
| 38 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmapextendscalars-apply.md) | 610 | `result-track:499398f91cab64be99168399b5bb6b6b16d1bc80ada939b2d90d1540e6e2a575` |
| 39 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/FinitePresentation.lean/declarations/module-finitepresentation-linearequivmapextendscalars-symm-apply.md) | 617 | `result-track:62a4a2291cc838527c253f79487bdd2d25bc27cd70a67a2f5c34131508d144e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25a82f953061994ff21961cc384ecfb76ce7cf905459763ba492d11bdb5ebf72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FinitePresentation/Variant4c561ed0da0f3e0309cbf68c39aed18113e0a726860ab9a880cd57096b6ec8a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
