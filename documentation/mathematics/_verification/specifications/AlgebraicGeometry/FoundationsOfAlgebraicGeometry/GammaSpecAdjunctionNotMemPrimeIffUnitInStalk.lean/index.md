# Verification target: Gamma Spec Adjunction Not Mem Prime Iff Unit In Stalk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6c9fc3bbae6ac3bb9b0cc58d6c55076330c015",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantefa21a187a9c81ae993f067bf0d258e66e386fe3fbcac8ee29413f43a84b98e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6c9fc3bbae6ac3bb9b0cc58d6c55076330c015`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantefa21a187a9c81ae993f067bf0d258e66e386fe3fbcac8ee29413f43a84b98e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantefa21a187a9c81ae993f067bf0d258e66e386fe3fbcac8ee29413f43a84b98e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toΓSpecFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specfun.md) | 66 | `declaration-track:f8d35c6f42e5dc39417d78b9980a6aa4caad2f06e4e7118aa55fecc296c47627` |
| 2 | `theorem` | [notMem_prime_iff_unit_in_stalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/notmem-prime-iff-unit-in-stalk.md) | 69 | `result-track:e81e4611ff8ef1b43079a215f8b85609246d7d13b4825aae030ff907b30d6786` |
| 3 | `theorem` | [toΓSpec_preimage_basicOpen_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-preimage-basicopen-eq.md) | 78 | `result-track:ccc67db8e19c72fe690e673e1ef5022e1531fbede170ab0fd124ef762f7c0ba9` |
| 4 | `theorem` | [toΓSpec_continuous](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-continuous.md) | 87 | `result-track:25258e2e06c82f48013259e03ae6716f50c8aab4f7c4a2ab0ff3ad2ad9368402` |
| 5 | `def` | [toΓSpecBase](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specbase.md) | 95 | `declaration-track:d5079280bc3952d2a5a4d346df20cf6e48bd6e9df4f65ed4d683371daaa6ae3d` |
| 6 | `abbrev` | [toΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specmapbasicopen.md) | 103 | `declaration-track:a230c5324194c6723e17797f40b2444ad3f33164bd980c331d8fbabfa7ec0b99` |
| 7 | `theorem` | [toΓSpecMapBasicOpen_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specmapbasicopen-eq.md) | 107 | `result-track:8009043934a1be5021a348a7d92f1bdc7ee31727405a09010a7f3b09801d39b9` |
| 8 | `abbrev` | [toToΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/toto-specmapbasicopen.md) | 111 | `declaration-track:6528433ea4819dd53fadfb81d3d9b224b67c2ea2ba3713694a2ed41fcb6d9c3a` |
| 9 | `theorem` | [isUnit_res_toΓSpecMapBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/isunit-res-to-specmapbasicopen.md) | 116 | `result-track:24507403fb44ba8e4f6975ad2ac60a70c1cab534555af352abade9051af7eaab` |
| 10 | `def` | [toΓSpecCApp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp.md) | 124 | `declaration-track:e1cee452ca31fa7fb527c79d1c447bab4ac2c5b336d5833842d37c23baca80bf` |
| 11 | `theorem` | [toΓSpecCApp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp-iff.md) | 138 | `result-track:655273992112cc06f31dcd48e0bdf8371dbc50543145989bc60bcfe9f293eeab` |
| 12 | `theorem` | [toΓSpecCApp_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-speccapp-spec.md) | 156 | `result-track:a346ef8394a72b6e2267f02da487c6552778e1c5434e877533880df80d87206b` |
| 13 | `def` | [toΓSpecCBasicOpens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-speccbasicopens.md) | 161 | `declaration-track:6dfb7371927f3396be230c4a27ed25ac2258c44803f8fbe4449cbffa14d78d68` |
| 14 | `def` | [toΓSpecSheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace.md) | 175 | `declaration-track:28fecff8322e9134ad4a86a0452c6b3104cbfa2fb7c09dfb5a6ece93e39305aa` |
| 15 | `theorem` | [toΓSpecSheafedSpace_app_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace-app-eq.md) | 181 | `result-track:0d1a80aef9b199ffb97ad5ddeea1f46683affbc7effcdf43bc797bd1d2f6b95a` |
| 16 | `theorem` | [toΓSpecSheafedSpace_app_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-specsheafedspace-app-spec.md) | 187 | `result-track:34e60386daf84ab938d44f22018f66eb10e7bc2693ea33832d0e843ab9f357ba` |
| 17 | `theorem` | [toStalk_stalkMap_toΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/tostalk-stalkmap-to-spec.md) | 194 | `result-track:d9f9ed087c519138d10c567f25df77022c4a7b42a4c27eab33fac0afe49da486` |
| 18 | `def` | [toΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-spec.md) | 206 | `declaration-track:188603941c8288a2f5be60204a6191c988aac6d892e44002e29eb50ad46dec2c` |
| 19 | `lemma` | [toΓSpec_preimage_zeroLocus_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/to-spec-preimage-zerolocus-eq.md) | 230 | `result-track:42e55274c2914f9df2d595e5169cf2a5a4b38eb9ad425354556aa48b726dc150` |
| 20 | `theorem` | [comp_ring_hom_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/comp-ring-hom-ext.md) | 246 | `result-track:2b30ca1444d3c1a4cf2f1bf5fe22e0a512d62cfea6789ab98e5cedea0cc02365` |
| 21 | `theorem` | [Γ_Spec_left_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-left-triangle.md) | 264 | `result-track:63d38ad8508a495327764e8a3ec72fb8e873a12c29fe385354fb1b15d82a2125` |
| 22 | `def` | [identityToΓSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/identityto-spec.md) | 274 | `declaration-track:e935d73cd05d3a3523811ed4d6bb1f7b5c1f4f86e7662278400eb1e4adf3bec3` |
| 23 | `theorem` | [left_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/left-triangle.md) | 295 | `result-track:09782fb92def7498c8a11e22382d5833e39b6b192f90bf2888db9207b5b3ed0c` |
| 24 | `theorem` | [right_triangle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/right-triangle.md) | 300 | `result-track:8fe8376cd7e19494a26c2e16f83a9e1a0504d519c298105c6ff32a6768f4c37f` |
| 25 | `def` | [locallyRingedSpaceAdjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction.md) | 316 | `declaration-track:384bef61687277641d9549014b9d7b934cfb51775c4379809266be6d64ecfb1a` |
| 26 | `lemma` | [locallyRingedSpaceAdjunction_unit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-unit.md) | 332 | `result-track:c55a02a5754f62e4d65291fbc951aac843e79943c576d3755039b596f07b1ec3` |
| 27 | `lemma` | [locallyRingedSpaceAdjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit.md) | 335 | `result-track:7a89065f076095f0f9ce51b3c0014bba921b028d55841649ae7e38cbc6ae3a42` |
| 28 | `lemma` | [locallyRingedSpaceAdjunction_counit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit-app.md) | 339 | `result-track:417bbff720bde319eb4acd6e6464d6219ce97e690289122b4aa14a82a4bdee29` |
| 29 | `lemma` | [locallyRingedSpaceAdjunction_counit_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-counit-app-source-edition-2.md) | 344 | `result-track:fbd061336156d1b8f745b30ed4f304304447df845700d7001d33f5fa61c2a397` |
| 30 | `lemma` | [locallyRingedSpaceAdjunction_homEquiv_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-homequiv-apply.md) | 348 | `result-track:229e4e7fec8846e5b78cc33de387e32a5060f5eec7ba4ddd1931ee016f10d02a` |
| 31 | `lemma` | [locallyRingedSpaceAdjunction_homEquiv_apply'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/locallyringedspaceadjunction-homequiv-apply-source-edition-2.md) | 354 | `result-track:c10bb1eba213d8388db73deb97ac41378f7608d123fb5e7a14ffe4e7b7fbadb1` |
| 32 | `lemma` | [toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/toopen-comp-locallyringedspaceadjunction-homequiv-app.md) | 360 | `result-track:fe2c5a654607a0537979df925a0d3df2af62c0847eace8539e5a4ad127050af8` |
| 33 | `def` | [adjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction.md) | 376 | `declaration-track:0a3d535264aee8e78fa5826d6ffb47474da494ebeaf2b4703a7cc292d462c611` |
| 34 | `theorem` | [adjunction_homEquiv_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-homequiv-apply.md) | 387 | `result-track:c950dd7d97f704e8b6a79aada4928d377cbd0218491e7863427a59b1257e906c` |
| 35 | `theorem` | [adjunction_homEquiv_symm_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-homequiv-symm-apply.md) | 391 | `result-track:283752515284050ed56dd764dc0b2885a4219792e52afeccf3f7b639a2cd6382` |
| 36 | `theorem` | [adjunction_counit_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-counit-app.md) | 396 | `result-track:90d71298783779941d29ef9af85127894e8edcf1094d063db9f0cac840f0c109` |
| 37 | `theorem` | [adjunction_counit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-counit-app-source-edition-2.md) | 400 | `result-track:b7e0aed61fb458050b2da56e73d649c2aa53b618a0f81fdda04770c62e8799ef` |
| 38 | `def` | [_root_.AlgebraicGeometry.Scheme.toSpecΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/root-algebraicgeometry-scheme-tospec.md) | 404 | `declaration-track:1bab89eace395d0a8590e87d2e9bb1f5195c4f6d87230fd2402a8d12e5f5229e` |
| 39 | `theorem` | [adjunction_unit_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/adjunction-unit-app.md) | 408 | `result-track:43f274927bd8064e58d2c59939fe4ed2e4b31f242140e688fa521591d5033d59` |
| 40 | `instance` | [isIso_locallyRingedSpaceAdjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/isiso-locallyringedspaceadjunction-counit.md) | 411 | `declaration-track:d9f59f9bc4609e873a8eb806a6e51221458c1ea1f6a631bbca0c2cad88de1ddb` |
| 41 | `instance` | [isIso_adjunction_counit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/isiso-adjunction-counit.md) | 415 | `declaration-track:17a23802e29598952a2cd31c774efa35caa6cf59f2bbb02588a4a56807fccd96` |
| 42 | `theorem` | [Scheme.toSpecΓ_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-base.md) | 423 | `result-track:117cfacecda385ba0faedf00b6822084db6b4b66b6eb8964149ac4fd5cce5e9d` |
| 43 | `theorem` | [Scheme.toSpecΓ_naturality](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-naturality.md) | 428 | `result-track:29ee7eb01086353b958579c3ab521af2baf37c9393b74dd866ef398dfe5caae3` |
| 44 | `theorem` | [Scheme.toSpecΓ_appTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-apptop.md) | 433 | `result-track:2c2bcc8998956194e6fddcf1fcd76b914c0934f89b7118694000046310477299` |
| 45 | `theorem` | [SpecMap_ΓSpecIso_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/specmap-speciso-hom.md) | 445 | `result-track:0169ce275ef8de1b2a74b69ce42e3f5fcf6fe79786c52bb8df6f6b542e98411e` |
| 46 | `lemma` | [Scheme.toSpecΓ_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/scheme-tospec-preimage-basicopen.md) | 451 | `result-track:3bb0ca5e3956d7dd6b01050ae32a0516e0d77dddeac36a1c5c5bf43635e1dba2` |
| 47 | `theorem` | [toOpen_toSpecΓ_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/toopen-tospec-app.md) | 460 | `result-track:0718b1aca9ff46282c1d03548d641a80f26ef081f9772626adbcf811be42c3f9` |
| 48 | `lemma` | [ΓSpecIso_inv_ΓSpec_adjunction_homEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/speciso-inv-spec-adjunction-homequiv.md) | 471 | `result-track:8ab48aec906c296e712229e034fe093380f9f40c89a9a0acfa38c4d671d32f14` |
| 49 | `lemma` | [ΓSpec_adjunction_homEquiv_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-adjunction-homequiv-eq.md) | 476 | `result-track:176d2530a3ac17e699745bb9c4d1004ec1abb1e7ce62cdb74f039f3d4ec9c8fb` |
| 50 | `theorem` | [ΓSpecIso_obj_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/speciso-obj-hom.md) | 480 | `result-track:f5bc225292b01181b7a9bfd55c4efa7dcc9ad70f5c7f978c559054b369bb437d` |
| 51 | `def` | [Spec.fullyFaithfulToLocallyRingedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-fullyfaithfultolocallyringedspace.md) | 490 | `declaration-track:2607cafd078384f9df1c88bbbbc11121d7cec7e37e45498c84221c3040491d7a` |
| 52 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-2.md) | 494 | `declaration-track:2b058dbafd0d8cdc679fb768622065ac4a8f28925d78b7e8668a82303f38563f` |
| 53 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-4.md) | 498 | `declaration-track:c96032605b5b4c86283aa8c8fa58aea79408ff2777ad0aeb0cc445915d4ce4a3` |
| 54 | `def` | [Spec.fullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-fullyfaithful.md) | 502 | `declaration-track:9ed782c9031f58754108aee7cae99034eff4277e5aae210ab5c2581c3da24898` |
| 55 | `instance` | [Spec.full](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-full.md) | 506 | `declaration-track:3aeb413ccf712d0f7bfd1163d5f46d06f0144d7ce7f3811dcc98dccb19836f3b` |
| 56 | `instance` | [Spec.faithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-faithful.md) | 510 | `declaration-track:44ee00d6770256fc5bac050d0b77a4666624cb58b6b87c45ceed5a7c2a3ed164` |
| 57 | `lemma` | [Spec.map_inj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-inj.md) | 517 | `result-track:935d2cf905c64cf023f2a3764c4f92d41bee710ddc923d4b0918f70075dec791` |
| 58 | `lemma` | [Spec.map_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-injective.md) | 521 | `result-track:0a23a345311116df6f1b39d2c33387d6383796fb057e460624ad61f39bcc2d96` |
| 59 | `lemma` | [Spec.map_eq_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-eq-id.md) | 525 | `result-track:416b9d10538dceb6f600af287baf8b34032e10d0b41f3cd7252c6f359143e83e` |
| 60 | `def` | [Spec.preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage.md) | 529 | `declaration-track:9a63115611f02b6d9a20dc59fcea8bc20641dbbd3d9829c6ccbe55a167b80045` |
| 61 | `lemma` | [Spec.map_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-preimage.md) | 531 | `result-track:d9527a8be4d037ecb36a7bd1d5d83bc1746735c0b9204b3bf804e9e93495ad58` |
| 62 | `lemma` | [Spec.preimage_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-map.md) | 534 | `result-track:2b70d53179af25ba9f92efc329d092d2a4db2b7ef218fa5ba8401759ed5a7ca1` |
| 63 | `lemma` | [Spec.map_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-map-surjective.md) | 538 | `result-track:1f1b386946de8476064dae3e75a750e07801bfec72db41f9e162e747bf366f29` |
| 64 | `def` | [Spec.homEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-homequiv.md) | 546 | `declaration-track:ba067d576b92eecde7e7f93c5c971829ff0c96ba0f2b469f3cb9763883bf687f` |
| 65 | `lemma` | [Spec.preimage_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-id.md) | 553 | `result-track:0885ae7658bfabf4c3742c7e05c0127edf9779854ac1f191e2ad4050e5cd26a9` |
| 66 | `lemma` | [Spec.preimage_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-preimage-comp.md) | 557 | `result-track:196409436c899a45ddb516681bd71ad2626002b073d6a4a9006f08d6001510bc` |
| 67 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/instance.md) | 563 | `declaration-track:1130afc0ede0bda27e8439f0472ee10c1461f35990cc5cf7f6833cdf1031257f` |
| 68 | `instance` | [Spec.reflective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/spec-reflective.md) | 567 | `declaration-track:5509f058488054f60bdb0cb0756cad83ff1a75cbbad005bbf6244a00ee53f409` |
| 69 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-5.md) | 571 | `declaration-track:dc5dcb30d6f01606a2cfe87a30abad35b93eabb1ded6bf6a5d7a0fd7d2de474e` |
| 70 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GammaSpecAdjunctionNotMemPrimeIffUnitInStalk.lean/declarations/instance-source-edition-3.md) | 574 | `declaration-track:8b5e3f79ec9084064ba52e173b26950ab7e5ef95a8bf2be8b94318fc8bb6731d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=563b2e5a2fbeefb6044cf6ab46212e1bbebbbd6bcb8a07efba6ce9ac1ba326d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantefa21a187a9c81ae993f067bf0d258e66e386fe3fbcac8ee29413f43a84b98e3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantefa21a187a9c81ae993f067bf0d258e66e386fe3fbcac8ee29413f43a84b98e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
