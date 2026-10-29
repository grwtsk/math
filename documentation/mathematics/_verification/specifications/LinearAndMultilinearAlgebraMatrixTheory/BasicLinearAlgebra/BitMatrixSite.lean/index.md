# Verification target: Bit Matrix Site

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d976ef6a2f61553b2e545cf16c9b29c67c06a9d2",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d976ef6a2f61553b2e545cf16c9b29c67c06a9d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BitMatrixSite/Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.BitMatrixCover` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrix.md) | 7 | `declaration-track:e34e719e2b12ad19ada5564de09002db3ae5340dc81578b13cc76ec985ae2327` |
| 2 | `abbrev` | [BitLocus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitlocus.md) | 10 | `declaration-track:e78970b97a807318584a1c1588c03e46d1350d4ec466bb45599fd7e1fb8919cd` |
| 3 | `abbrev` | [BitInterval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitinterval.md) | 13 | `declaration-track:0e81b73d3a5cb230ff4c3d762beaa074ea01ca13ac426b2f707abf03654c1d14` |
| 4 | `abbrev` | [BitIntervalCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitintervalcover.md) | 16 | `declaration-track:375761ce645185a5981124ee45f8862f41208ca77e339373f1c4e79989506cfc` |
| 5 | `abbrev` | [BitMask](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmask.md) | 19 | `declaration-track:938a69d6fca8297011721dd9bae61d0bf7561414eda42626ff451f3ef7221de5` |
| 6 | `abbrev` | [BitMaskCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmaskcover.md) | 22 | `declaration-track:d7295bf3fcccaff9c0d5afc91dc58f47fe2851c78b553cde7fd68c8cf35caad1` |
| 7 | `abbrev` | [BitMatrixCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrixcover.md) | 25 | `declaration-track:f26236b1afe0479ea8c1c8eb6db1d880026795e802b8907a725fc81ad16c3aa9` |
| 8 | `abbrev` | [BitMatrixCoverTier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrixcovertier.md) | 28 | `declaration-track:50da2b2ec462466061c70673de035eec3a4059c0b33253904f432458e7881d46` |
| 9 | `abbrev` | [BitMatrixCoverAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrixcoverauthoritysurface.md) | 31 | `declaration-track:2372a1d019ba3a8ad203ab906f37c456e27d0719851f33fcfb231f1e2de1151f` |
| 10 | `abbrev` | [BitLookupPathAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitlookuppathat.md) | 34 | `declaration-track:ce9d41526a2e7735e68c70698e54532568628ceff85f4dc2eace97c6a92bbda5` |
| 11 | `abbrev` | [BitLookupSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitlookupsection.md) | 38 | `declaration-track:ec206820325eec57ca3d75bffcf19ca6db8803e79c148598b02013c2de058a22` |
| 12 | `abbrev` | [BitMaskLookupSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmasklookupsection.md) | 42 | `declaration-track:20c419d6798cc66921629cec462b84a5f1436c6500e945f8e81738c9bb8eb4c8` |
| 13 | `abbrev` | [CompatibleBitIntervalFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/compatiblebitintervalfamily.md) | 46 | `declaration-track:4748252b34cc7b89f3a41ef65d16a445178f4270adbb1529300baef80ee23c52` |
| 14 | `abbrev` | [CompatibleBitMaskFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/compatiblebitmaskfamily.md) | 51 | `declaration-track:20d2dd9c14790fb76295d22404e4a1fc323c4bbd7bd203a8ebd741abf81af034` |
| 15 | `abbrev` | [RestrictsToBitIntervalCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/restrictstobitintervalcover.md) | 55 | `declaration-track:6a61515facb1ae036860be1103b23253e4273b885ddc06dbed301a17ddea6a5f` |
| 16 | `abbrev` | [RestrictsToBitMaskCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/restrictstobitmaskcover.md) | 64 | `declaration-track:ba950517455156173a1d3ef51bc4b495075df9b9c454bf7d7b46f4dd85695b6e` |
| 17 | `def` | [coverTierIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/covertierindex.md) | 72 | `declaration-track:d2055dc24b528596d5414061f17fd2314abdf3f1a656ad69b44970d8d651e072` |
| 18 | `def` | [defaultBitMatrixCoverAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/defaultbitmatrixcoverauthoritysurface.md) | 75 | `declaration-track:e35a3396ad49e0ef37960f4631c6597c073646a236c6b3c26957555e78f69cd4` |
| 19 | `structure` | [BitMatrixSiteAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrixsiteauthoritysurface.md) | 79 | `declaration-track:6409e1a84ee2bc77965ae8ed757fb4d697058b7bcf7d35a5ab989866145d8827` |
| 20 | `def` | [defaultBitMatrixSiteAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/defaultbitmatrixsiteauthoritysurface.md) | 86 | `declaration-track:2c51f3f01c78a7e3fa97657432df8eceefb36b2d05ec6e88446271d9ab942b0a` |
| 21 | `theorem` | [interval_basis_precedes_mask_refinement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/interval-basis-precedes-mask-refinement.md) | 93 | `result-track:bf9dba844a152e2778ab80bcc9a51d1a1eca245cf6330f463c1c1acfb62d209d` |
| 22 | `theorem` | [mask_refinement_precedes_macro_routing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/mask-refinement-precedes-macro-routing.md) | 100 | `result-track:3700afdbe2bcc57fefbac1dc35d4960ddcc48e8caff30f8dc3e9d6b36e1e566b` |
| 23 | `theorem` | [default_cover_authority_uses_interval_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/default-cover-authority-uses-interval-basis.md) | 107 | `result-track:162f6ece9bfb9909a0a92b1d2b26fa323b9db8ce13a87f8294b07d0ceb056818` |
| 24 | `theorem` | [default_cover_authority_denies_arbitrary_mask_primitive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/default-cover-authority-denies-arbitrary-mask-primitive.md) | 111 | `result-track:e91a837a964489bf2fd6d2dd0a81d86d3b73097ce2324220c5d8474fb7e70145` |
| 25 | `theorem` | [default_cover_authority_allows_certified_mask_refinement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/default-cover-authority-allows-certified-mask-refinement.md) | 116 | `result-track:0149800bd4ebb8e1a687b87e4d2871a155ff5215da0a4d0138b9cc43c9f91c27` |
| 26 | `theorem` | [default_cover_authority_denies_macro_without_routing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/default-cover-authority-denies-macro-without-routing.md) | 121 | `result-track:f50101be99022ecd93233ef24ffd1a9d18e07fa081b7cf5a829aab82248d8472` |
| 27 | `theorem` | [bit_lookup_fiber_inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bit-lookup-fiber-inhabited.md) | 126 | `result-track:308814a3397e908fcd6fed127ba43fb4a1f040cf2196d84cad24a9e453e23239` |
| 28 | `theorem` | [bit_lookup_fiber_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bit-lookup-fiber-subsingleton.md) | 131 | `result-track:4291c25f96109351810d1687e5cdeb773a07e1f50cd4b0bdccc10ff64978f204` |
| 29 | `theorem` | [bit_lookup_fiber_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bit-lookup-fiber-unique.md) | 136 | `result-track:ea8c5435c95c00c4392a8c63f7dd89869264dcabb6ca3b7b7f3821c78295cfeb` |
| 30 | `theorem` | [interval_cover_is_finite_surface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/interval-cover-is-finite-surface.md) | 141 | `result-track:f508d8624ee98a1169fbfb0e9cf107618f0bf6b6d787a07ce94fcb9a9ebccd81` |
| 31 | `theorem` | [mask_cover_requires_owner_or_overlap_compatibility](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/mask-cover-requires-owner-or-overlap-compatibility.md) | 147 | `result-track:9ac221924a2cdda127d4840e92919218eaa6a622837466f3a32c074ed3467021` |
| 32 | `theorem` | [bitmatrix_site_is_not_full_topos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrix-site-is-not-full-topos.md) | 155 | `result-track:9074aac21244761b196f6acdf40618999427481e4a526af6e06296aa6daac5fe` |
| 33 | `theorem` | [bitmatrix_site_is_not_lawvere_tierney_topology](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrix-site-is-not-lawvere-tierney-topology.md) | 159 | `result-track:ec57898df3e48679e8d8ae30525d29190d97b31e041bcc66088a243c7338f567` |
| 34 | `theorem` | [bitmatrix_site_is_not_geometric_frobenius](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/bitmatrix-site-is-not-geometric-frobenius.md) | 164 | `result-track:b3eedd140b0ad3cdf58422a928f26c903265adb80138c66e72c1ab711d256353` |
| 35 | `theorem` | [interval_lookup_sections_glue_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/interval-lookup-sections-glue-unique.md) | 169 | `result-track:d19b2ad2d92b3dd5d4e1588a140cf30e49066837c34fa71512c17c2b27f76faa` |
| 36 | `theorem` | [mask_lookup_sections_glue_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSite.lean/declarations/mask-lookup-sections-glue-unique.md) | 182 | `result-track:6eba295c6d34bf1bbf2963851a3baa11302f6881c36bb5024185e3fa5a598ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc1b6b8d4059d954c24ae841822193e3bfb3904d9463011d1ee64f26525561bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BitMatrixSite/Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
