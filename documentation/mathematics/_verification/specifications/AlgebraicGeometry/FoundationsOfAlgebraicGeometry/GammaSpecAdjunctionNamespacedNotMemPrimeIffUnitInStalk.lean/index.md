# Verification target: Gamma Spec Adjunction Namespaced Not Mem Prime Iff Unit In Stalk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "737bd9ec6c97ad20d21b058ff46eaa90fedd89c5",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `737bd9ec6c97ad20d21b058ff46eaa90fedd89c5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toΓSpecFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specfun.md) | 74 | `declaration-track:c1bc3c4bd73ea5da1f0a1baa83ab40f9f75293e332490aeae24e951c85d27698` |
| 2 | `theorem` | [notMem_prime_iff_unit_in_stalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/notmem-prime-iff-unit-in-stalk.md) | 77 | `result-track:4f8fafd5334181e895a48c01aff22d4fa1c3eb5a17f17ff78e73a823ed55223b` |
| 3 | `theorem` | [toΓSpec_preimage_basicOpen_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-preimage-basicopen-eq.md) | 86 | `result-track:be4b0cf820dc9ff630ce012f14261c14bcf50f24c2c5679854f653ef82a68ae8` |
| 4 | `theorem` | [toΓSpec_continuous](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-continuous.md) | 95 | `result-track:1db6c75316c6b2ad1308e22f816a2b46cec886245d6b16082f1ee09cc8b9a0f6` |
| 5 | `def` | [toΓSpecBase](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specbase.md) | 103 | `declaration-track:d0684bbb07e370005917c0bd9b4381164a38535673a3a4284b311dfbf2d17350` |
| 6 | `abbrev` | [toΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specmapbasicopen.md) | 111 | `declaration-track:943d64b5a17d9f4d55d5175f38c7277e411d66a4a7d8ef05265e9b8a06afffe3` |
| 7 | `theorem` | [toΓSpecMapBasicOpen_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specmapbasicopen-eq.md) | 115 | `result-track:f97b06073129b1fb1a555490d8b543ed629cf0a8ff1821d59cafc09186cb15e0` |
| 8 | `abbrev` | [toToΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/toto-specmapbasicopen.md) | 119 | `declaration-track:f3722dca05a9b010a32d3dbfa89d774acccb191b3e460c599db42d23b393b157` |
| 9 | `theorem` | [isUnit_res_toΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/isunit-res-to-specmapbasicopen.md) | 124 | `result-track:51047499e701914a5019791576bbd57e8470d4091505ffed8a0654502b88637a` |
| 10 | `def` | [toΓSpecCApp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp.md) | 132 | `declaration-track:9ed7a92cfe15a945323cec445fc59b2c014ae5e3d29e49074eb6f686887bda0b` |
| 11 | `theorem` | [toΓSpecCApp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp-iff.md) | 146 | `result-track:7e422e32a6db9346077d05ef3fff42f02d39cd5234738cbb1c5fdbc6ccac7ba1` |
| 12 | `theorem` | [toΓSpecCApp_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp-spec.md) | 164 | `result-track:8e800849292d8de574ea14fd2694ab4e08217a7922f1593ddb449d16dae0cc79` |
| 13 | `def` | [toΓSpecCBasicOpens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-speccbasicopens.md) | 169 | `declaration-track:ad38ec9e5a2e443be243b34c9b55880475081346ab2e5aaf9f83ca69c9a2d9a8` |
| 14 | `def` | [toΓSpecSheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace.md) | 183 | `declaration-track:9a79a237f5ac96c9ddf70bab67aa8392709954e73cdbbfac08a6805331f398a9` |
| 15 | `theorem` | [toΓSpecSheafedSpace_app_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace-app-eq.md) | 189 | `result-track:7344116d3591e9e2abfde595cb79786d58cd45cd82bb529ee99e63cdfa2c2d5c` |
| 16 | `theorem` | [toΓSpecSheafedSpace_app_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace-app-spec.md) | 195 | `result-track:f78ea99b4c89033c470e8246dae8bf4fa020dd99e5d85734121db1b6be7cdb86` |
| 17 | `theorem` | [toStalk_stalkMap_toΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/tostalk-stalkmap-to-spec.md) | 202 | `result-track:7698a137af71550ab726213b3ef3ea1fb22420deb549db14ad63c24deb667e28` |
| 18 | `def` | [toΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-spec.md) | 214 | `declaration-track:522ec7f9209ae2f6acaa8489bc44cd1bd4ff73f666bd4d0cbecdf4bf0a118bf0` |
| 19 | `lemma` | [toΓSpec_preimage_zeroLocus_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-preimage-zerolocus-eq.md) | 238 | `result-track:a6bb6e20014030757bad1986d11d55995ad5a6140fd6dea23fd797cc55e72da8` |
| 20 | `theorem` | [comp_ring_hom_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/comp-ring-hom-ext.md) | 254 | `result-track:709d4d877eab832efb289d7115b377b49b47396467be8382ec3a0dc68f348617` |
| 21 | `theorem` | [Γ_Spec_left_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-left-triangle.md) | 272 | `result-track:d92c8dc2cb67f1248d40397162af0588715e67b0bd265663cbecae7a1d15b99a` |
| 22 | `def` | [identityToΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/identityto-spec.md) | 282 | `declaration-track:7c44577cb557408e1c26a7dd9215fbebdd269fa56c613ec291c8b2fd9ffdec82` |
| 23 | `theorem` | [left_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/left-triangle.md) | 303 | `result-track:4871a465b62555d59d04425a28e80514194c48d17b9779be6c1c93941514b04e` |
| 24 | `theorem` | [right_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/right-triangle.md) | 308 | `result-track:84b1ba481d84ebdf6de9c649c504f958dcf23c246db3fc12acd2c9a5499db5a5` |
| 25 | `def` | [locallyRingedSpaceAdjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction.md) | 324 | `declaration-track:c669f14e1e6847d8e230010abaf5bc22d66a57192d7d5753ea7a2b6d978fc7ab` |
| 26 | `lemma` | [locallyRingedSpaceAdjunction_unit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-unit.md) | 340 | `result-track:d8f39ee9ebc5c58446d38a4ee48841a1e1011d37cd9d613a083f7dda928d6cd3` |
| 27 | `lemma` | [locallyRingedSpaceAdjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit.md) | 343 | `result-track:b54140885eda27ad710a4ce422e95dc56a131238300a7682a7af22dfc40173d9` |
| 28 | `lemma` | [locallyRingedSpaceAdjunction_counit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit-app-source-edition-2.md) | 347 | `result-track:bab4a26b9c7ce8e341bb9cb53578dc62f34ed0cf53fd697e4a2f441aecfac286` |
| 29 | `lemma` | [locallyRingedSpaceAdjunction_counit_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit-app.md) | 352 | `result-track:45aac63d80ef04308a1cf847eade4c70bf9fd2a3387187e844b058238c0d9251` |
| 30 | `lemma` | [locallyRingedSpaceAdjunction_homEquiv_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-homequiv-apply.md) | 356 | `result-track:ce7acee8775202154ba0d62dc16828111bfd25f02e052635475ad3c415122824` |
| 31 | `lemma` | [locallyRingedSpaceAdjunction_homEquiv_apply'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-homequiv-apply-source-edition-2.md) | 362 | `result-track:e61103f0f3e59c1d073d7523c363d45e2183a05f0e2e3103b1d82cdd29840806` |
| 32 | `lemma` | [toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/toopen-comp-locallyringedspaceadjunction-homequiv-app.md) | 368 | `result-track:eab6982787428480fecab79d06dc8d94b687f0674035014311c54ec68a1f47a8` |
| 33 | `def` | [adjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction.md) | 384 | `declaration-track:15c83cd43c0f875136f2b5ed6dcd2515f54df1d3c629996aae019e8fc97b6d61` |
| 34 | `theorem` | [adjunction_homEquiv_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-homequiv-apply.md) | 395 | `result-track:d567176699a8de37034777e3b9861cd34668d73aed9c4276208c7cdcab89ce36` |
| 35 | `theorem` | [adjunction_homEquiv_symm_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-homequiv-symm-apply.md) | 399 | `result-track:e4dad546226a981a1d9d4570a6c93c1105f27a894655a67cd3f5c39c2f00504d` |
| 36 | `theorem` | [adjunction_counit_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-counit-app.md) | 404 | `result-track:270434a4d51c59a37ea4885e000b7a017665dc9b5a1c3d0f4fa3c06d102f0f8b` |
| 37 | `theorem` | [adjunction_counit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-counit-app-source-edition-2.md) | 408 | `result-track:7891a14af619d4a50ed507052fa308f7e67008c1596cca2589fb066511a9b6ed` |
| 38 | `def` | [Gamma Spec Adjunction Namespaced Not Mem Prime Iff Unit In Stalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/tospec.md) | 412 | `declaration-track:9fc81adc1bacd438755575aeb21fcb690e86e2f66f620da1d1392468547076fe` |
| 39 | `theorem` | [adjunction_unit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-unit-app.md) | 416 | `result-track:dabd0053861152eb92d61c06ab7228bf7ce978f971002f29efacca3d1364f7d2` |
| 40 | `instance` | [isIso_locallyRingedSpaceAdjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/isiso-locallyringedspaceadjunction-counit.md) | 419 | `declaration-track:f904ccb5b9a71234af53bf94e2553c069911caaed85fc555cf6bd646581653a2` |
| 41 | `instance` | [isIso_adjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/isiso-adjunction-counit.md) | 423 | `declaration-track:42aeb7db16ba0bc1b3e3c7697eda7d4c14f789fbe1e964689d817bd1551db9ed` |
| 42 | `theorem` | [Scheme.toSpecΓ_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-base.md) | 431 | `result-track:d264476f0368fca62173ea1ed0213adabd23dec70bb15eec083e1d525f7a3c7a` |
| 43 | `theorem` | [Scheme.toSpecΓ_naturality](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-naturality.md) | 436 | `result-track:189ef13667894b1d49129c4de4a98f97edf52689e4db494191b493cb9589b63d` |
| 44 | `theorem` | [Scheme.toSpecΓ_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-apptop.md) | 441 | `result-track:0aeff19e7f3174554288cc45a9219eaf4a5f33da2eda3e78e64f1f9c0d70a41f` |
| 45 | `theorem` | [SpecMap_ΓSpecIso_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/specmap-speciso-hom.md) | 453 | `result-track:efbe2e8f445b455df1c85625720b682142931a252f26fa10fe3503e796c91879` |
| 46 | `lemma` | [Scheme.toSpecΓ_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-preimage-basicopen.md) | 459 | `result-track:c228db3c2b9a7b4e487a99fba56146e850807fca2a57d8c6b779692f34e9fde3` |
| 47 | `theorem` | [toOpen_toSpecΓ_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/toopen-tospec-app.md) | 468 | `result-track:24ef7736a92549f12080a56a983d51620e4e0bd9d538cbc084e7c277ce8bd16e` |
| 48 | `lemma` | [ΓSpecIso_inv_ΓSpec_adjunction_homEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/speciso-inv-spec-adjunction-homequiv.md) | 479 | `result-track:f7f999cf3c9cfb8effbf66a3ecdec646ff4d7a29363a963a9d6e51d252168cdf` |
| 49 | `lemma` | [ΓSpec_adjunction_homEquiv_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-adjunction-homequiv-eq.md) | 484 | `result-track:3acc8681271d192a720658410eadf43f1a7de7e13a514fc04d3c0fb480e24881` |
| 50 | `theorem` | [ΓSpecIso_obj_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/speciso-obj-hom.md) | 488 | `result-track:f341b098afa3bdcfa1e877781ff01032b4bb0a2e4c09bb04c6143137d747d567` |
| 51 | `def` | [Spec.fullyFaithfulToLocallyRingedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-fullyfaithfultolocallyringedspace.md) | 498 | `declaration-track:b826480e60c0a384ed0b87d500245549847caa6dcb02fe4a2fcb13d1ebf86c98` |
| 52 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-5.md) | 502 | `declaration-track:949ad984b453144b9ed010cb0301b73befa24d9db8d2b94ee168b8d83a5dd92b` |
| 53 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/instance.md) | 506 | `declaration-track:1a3c3bf89cb38dc66837cfaac492cc70d8fcac3884c23630c99ba70bf171d484` |
| 54 | `def` | [Spec.fullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-fullyfaithful.md) | 510 | `declaration-track:487ade9553bff311ce13fb2064dd660eadbbccd2caa313ff4163e7daba957dd0` |
| 55 | `instance` | [Spec.full](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-full.md) | 514 | `declaration-track:2078269eb489ea1010eb92e3e4665b8d29433897ec1b7ca8a7836648be265879` |
| 56 | `instance` | [Spec.faithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-faithful.md) | 518 | `declaration-track:73b585a9d88baadced0f732b72c72287a19c745dae6b39aa400025fb359efd21` |
| 57 | `lemma` | [Spec.map_inj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-inj.md) | 525 | `result-track:897f2f5d59add9dbde31d94e9e93bb5c680f440d82781cf796c4fe40aed8b9e2` |
| 58 | `lemma` | [Spec.map_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-injective.md) | 529 | `result-track:8fda97a46955bee75747d0735bb567d588d82c5b56549f487c33a6706378d169` |
| 59 | `lemma` | [Spec.map_eq_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-eq-id.md) | 533 | `result-track:6d81cdf79fc73ff922edde77d6d24ba159f2d07e077ed76bcad8fa4e7ae8a217` |
| 60 | `def` | [Spec.preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage.md) | 537 | `declaration-track:c694f7538bf8b9c27e1447adb2cf84660899e35577cce54e36dbd3380c469b27` |
| 61 | `lemma` | [Spec.map_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-preimage.md) | 539 | `result-track:85b2597e5bc3456961d050dc954bee83bcdd14beb259f95099aafd0704f8d07b` |
| 62 | `lemma` | [Spec.preimage_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-map.md) | 542 | `result-track:7cb871d13313a4684c86ba6347fe090513359e1882470c1022051e09537f8858` |
| 63 | `lemma` | [Spec.map_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-surjective.md) | 546 | `result-track:65eb2ee302ea4ce8b483f62d717e47c1ea46697cc84e56bf6dc93dd382b3e1fb` |
| 64 | `def` | [Spec.homEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-homequiv.md) | 554 | `declaration-track:8df3677f851b879c76aaaecfe7b3b064e03e36db5242c633b1b0cf048b596dd4` |
| 65 | `lemma` | [Spec.preimage_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-id.md) | 561 | `result-track:96157dd01b7a202796df439f472fa18af56d67d5d407c0b692871420a7ffe6a2` |
| 66 | `lemma` | [Spec.preimage_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-comp.md) | 565 | `result-track:58738f626503547a3e2d5700faeb97ed69f9e6ddb2d3004938300782b88ac546` |
| 67 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-4.md) | 571 | `declaration-track:933ae4d34b4ccd699e48e8d143712d15694fe161904d999ef66ee4b3cbb66038` |
| 68 | `instance` | [Spec.reflective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/spec-reflective.md) | 575 | `declaration-track:bf58d137218f179c468ec8720d1f8337778429196ce260a44582572ab60f4734` |
| 69 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-2.md) | 579 | `declaration-track:2de193c4b69ffa1dec63affdbe3e40be8f0bceab25656a9847b777d12d57de17` |
| 70 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNamespacedNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-3.md) | 582 | `declaration-track:3bcf4936c7d4e422b505805019f0f8df9c021f35c44a2de877baf58c89b96fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fd677e119111f74fec9c51605462bcd3802916d16e2611771f8489408858c47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
