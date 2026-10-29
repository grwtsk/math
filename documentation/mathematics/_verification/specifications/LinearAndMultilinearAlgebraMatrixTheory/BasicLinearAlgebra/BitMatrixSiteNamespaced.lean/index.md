# Verification target: Bit Matrix Site Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42191be2a66b5f101d88c483962888c199a1a6db",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant647307806e630ab03c2c16342e383f7da9c327181bb2652691c73546b5e3b179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42191be2a66b5f101d88c483962888c199a1a6db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant647307806e630ab03c2c16342e383f7da9c327181bb2652691c73546b5e3b179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BitMatrixSite/Variant647307806e630ab03c2c16342e383f7da9c327181bb2652691c73546b5e3b179.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.BitMatrixCover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrix.md) | 15 | `declaration-track:e86330e300f5b0b24ae77dce070839ce73f5ee182633414e68e7b2a4e819be98` |
| 2 | `abbrev` | [BitLocus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitlocus.md) | 18 | `declaration-track:6f5572c66fe4a1d0a7075c67ffdebdfd7ad077e4c64434c532f08fb5f8f6634e` |
| 3 | `abbrev` | [BitInterval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitinterval.md) | 21 | `declaration-track:39f6d944018a5f8d7b752173db2fe150d3c738ef6a572922f259f182ccb2cc8d` |
| 4 | `abbrev` | [BitIntervalCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitintervalcover.md) | 24 | `declaration-track:5cf567da2f2a53b01c89f71726d4e623b42bfdc0d7cda8b230da477d934b6672` |
| 5 | `abbrev` | [BitMask](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmask.md) | 27 | `declaration-track:4195db007102caeb10efca81e29cc340666bf48e8f905d09829e300ee292598b` |
| 6 | `abbrev` | [BitMaskCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmaskcover.md) | 30 | `declaration-track:53e3cb937f9e5283760b8dacdef4a273f123e9a7d97093a96c24ed7b25e280ce` |
| 7 | `abbrev` | [BitMatrixCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrixcover.md) | 33 | `declaration-track:a4be0368ce83345eef758d5ffdca96f3c0d5eeee045142ebda9641796363a3ac` |
| 8 | `abbrev` | [BitMatrixCoverTier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrixcovertier.md) | 36 | `declaration-track:a1e90da8817cb2fb7981b085cb2f66d4484df43a2e8d5fe3ed0554d854ecb651` |
| 9 | `abbrev` | [BitMatrixCoverAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrixcoverauthoritysurface.md) | 39 | `declaration-track:32608fe8fe4a70a60d6e718d9a12a6241c8ef2e30ed99b35d21b91ec01acc336` |
| 10 | `abbrev` | [BitLookupPathAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitlookuppathat.md) | 42 | `declaration-track:3e42182c0649493b59eac16c96502d3a3ada3df6282e0e8f3ed33035aeaad251` |
| 11 | `abbrev` | [BitLookupSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitlookupsection.md) | 46 | `declaration-track:c5063063938e439e8ca9ca8383d56b5ff2b51be126a3c6b58ab49d2b8ebdcb07` |
| 12 | `abbrev` | [BitMaskLookupSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmasklookupsection.md) | 50 | `declaration-track:2a110a3f35131a723b43be1345157e18df4bce775ca641f9b837ce0360c4bc32` |
| 13 | `abbrev` | [CompatibleBitIntervalFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/compatiblebitintervalfamily.md) | 54 | `declaration-track:17d2d7ef817ced458be4a0e2d9881aad77efdfd928d53e7b4647fc1827897b8b` |
| 14 | `abbrev` | [CompatibleBitMaskFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/compatiblebitmaskfamily.md) | 59 | `declaration-track:58fe2eb807b4cb3a52b0a14330a95af343d0a48da249f8a2d4ca5e6e96eb11bd` |
| 15 | `abbrev` | [RestrictsToBitIntervalCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/restrictstobitintervalcover.md) | 63 | `declaration-track:2025e400f96e036be070112b825d3eb344f9c80ced406ec8df550048f53f1b56` |
| 16 | `abbrev` | [RestrictsToBitMaskCover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/restrictstobitmaskcover.md) | 72 | `declaration-track:c010a3681b9347d2e31c47854fcd271e067cde4b6aa3b3725c55e9b4408bab1e` |
| 17 | `def` | [coverTierIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/covertierindex.md) | 80 | `declaration-track:a87ead79054d10b67943c3fe44bf8a6db2b09a4a14b97774601935be23184026` |
| 18 | `def` | [defaultBitMatrixCoverAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/defaultbitmatrixcoverauthoritysurface.md) | 83 | `declaration-track:8fe1e6c718766a08323415b33f67ec9816274f279e456a23819751bdf2d3fb05` |
| 19 | `structure` | [BitMatrixSiteAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrixsiteauthoritysurface.md) | 87 | `declaration-track:00ebc86ba2d8db5197f13196dce9aa81fcc4339da9e953629769aae09231cee0` |
| 20 | `def` | [defaultBitMatrixSiteAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/defaultbitmatrixsiteauthoritysurface.md) | 94 | `declaration-track:fa181c9967dac8435d1c65cc06579a192740a6f96aab0abb5aac973421c13e4c` |
| 21 | `theorem` | [interval_basis_precedes_mask_refinement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/interval-basis-precedes-mask-refinement.md) | 101 | `result-track:3708d3bae0812a51fe84157646a84149cbdb0278b19e45198507bcfcbac4c7d3` |
| 22 | `theorem` | [mask_refinement_precedes_macro_routing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/mask-refinement-precedes-macro-routing.md) | 108 | `result-track:291da97d08547c52340c9c84eb223daaec1234b40ba0de7c2d8d1df07ce6918d` |
| 23 | `theorem` | [default_cover_authority_uses_interval_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/default-cover-authority-uses-interval-basis.md) | 115 | `result-track:ca76c8ca6d0b481a017107f493e796514e574c89e72d207faa98e00bcbc21345` |
| 24 | `theorem` | [default_cover_authority_denies_arbitrary_mask_primitive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/default-cover-authority-denies-arbitrary-mask-primitive.md) | 119 | `result-track:c68598608fdf0a559f2f0f7bc74f83a258657ca2f8a36bffd59fbffa1bf4ccc6` |
| 25 | `theorem` | [default_cover_authority_allows_certified_mask_refinement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/default-cover-authority-allows-certified-mask-refinement.md) | 124 | `result-track:42628851a7e83dde1fc90618649682dbcbae9577c208b6cb733ff8e6358873fc` |
| 26 | `theorem` | [default_cover_authority_denies_macro_without_routing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/default-cover-authority-denies-macro-without-routing.md) | 129 | `result-track:7e858c22fb10420997b061e7785e92305d4cb9aa2f697795973e08f79e65098b` |
| 27 | `theorem` | [bit_lookup_fiber_inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bit-lookup-fiber-inhabited.md) | 134 | `result-track:22c45f8ed02b319c22b0d58439ba4a06417e63b4e41d04553ef0113ebf3ff276` |
| 28 | `theorem` | [bit_lookup_fiber_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bit-lookup-fiber-subsingleton.md) | 139 | `result-track:c30a312b0fb1ba5ccb839150d0c7bf8d5656c4b1db27b11fa1c89cb52d3076da` |
| 29 | `theorem` | [bit_lookup_fiber_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bit-lookup-fiber-unique.md) | 144 | `result-track:3094c5ff711f2b2f85280ad21495f81e8d8f175fc216aad3229d9f67b607d4a1` |
| 30 | `theorem` | [interval_cover_is_finite_surface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/interval-cover-is-finite-surface.md) | 149 | `result-track:c2b88d2c8727c106c2381d22d52832f68109e396a3a98c4006a939a44f737e84` |
| 31 | `theorem` | [mask_cover_requires_owner_or_overlap_compatibility](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/mask-cover-requires-owner-or-overlap-compatibility.md) | 155 | `result-track:93145719a1c4efaa63dd01392fe9d93688dce3b231817fe73d5e37327fcb52f2` |
| 32 | `theorem` | [bitmatrix_site_is_not_full_topos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrix-site-is-not-full-topos.md) | 163 | `result-track:538b674263787225648862a6ce90fe49fe54c3beae159cbf0db469f4cae250c8` |
| 33 | `theorem` | [bitmatrix_site_is_not_lawvere_tierney_topology](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrix-site-is-not-lawvere-tierney-topology.md) | 167 | `result-track:a9d5ea35f9285869f5e1393b97675ddba80af95800fc9328559b81a258e9b2e6` |
| 34 | `theorem` | [bitmatrix_site_is_not_geometric_frobenius](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/bitmatrix-site-is-not-geometric-frobenius.md) | 172 | `result-track:cbd0b49cbf0ecfcf62499752db4ffbec8542530fb29ce8851edfb65b854ceaf2` |
| 35 | `theorem` | [interval_lookup_sections_glue_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/interval-lookup-sections-glue-unique.md) | 177 | `result-track:7044dd5f5ca0b73c6aba28c779128c50f553b3093e2b22c15cdc200262d5bc91` |
| 36 | `theorem` | [mask_lookup_sections_glue_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BitMatrixSiteNamespaced.lean/declarations/mask-lookup-sections-glue-unique.md) | 190 | `result-track:debf006c41f32e35f713b606603d4106aa36574ff18b3f1b5db4af71499a1107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d50d0b584c629e63228e244d0f0d0341073eb5ef2e898ab0fd6613c1d6a52074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BitMatrixSite/Variant647307806e630ab03c2c16342e383f7da9c327181bb2652691c73546b5e3b179.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BitMatrixSite/Variant647307806e630ab03c2c16342e383f7da9c327181bb2652691c73546b5e3b179.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
