# Verification target: Functorial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd16e8029aa42f04bdecc39b0ad801c1ebedae3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Functorial/Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd16e8029aa42f04bdecc39b0ad801c1ebedae3`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Functorial/Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Functorial/Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap.md) | 35 | `declaration-track:d6a424e16f42c5d5da14bca2ca866e638edd3d982c8b48e2a5be13226a9d72fd` |
| 2 | `def` | [comapIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comapiso.md) | 39 | `declaration-track:e9dbe9e2f34138c64123a988aad1fef12e823f86d372742f36458d3cfabaa080` |
| 3 | `lemma` | [comapIso_inv_subschemeι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comapiso-inv-subscheme.md) | 44 | `result-track:58fe5ded5030c5ad3e152e35fc25206caa4faa1acc97123f94d10fa282ff56e6` |
| 4 | `lemma` | [comapIso_hom_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comapiso-hom-fst.md) | 49 | `result-track:67b792e7536507657e3691c50f8c591f6b971ad28ae9444dc085fe5cc29abe69` |
| 5 | `lemma` | [comap_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-comp.md) | 54 | `result-track:d4e9ac8891d67d802f1b777d9ccc2326c2b3e537963454f39612b785c3a9bcae` |
| 6 | `lemma` | [comap_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-id.md) | 63 | `result-track:310e9b91fb39391811d4969cfc69262590ed206ca83e5cd628542ef855b936b8` |
| 7 | `lemma` | [support_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/support-comap.md) | 69 | `result-track:00bd61772a2a0768d5cecd499e9dd1da36c6f5a50b0389a5b224bb89f5abe633` |
| 8 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map.md) | 76 | `declaration-track:945db70dc602bd24220aca96d6832b77eb1e2f45ab479601c68aab7d6c8b914e` |
| 9 | `lemma` | [le_map_iff_comap_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/le-map-iff-comap-le.md) | 79 | `result-track:787f36e2462d253d793440da2cfaa9a758864937efe0ffeb5e1aff2f72cf2e3d` |
| 10 | `lemma` | [map_gc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-gc.md) | 97 | `result-track:8adfb0868878ebd7b8422e7676fbae7e257b940d22cdce0c162837a77987808d` |
| 11 | `lemma` | [map_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-mono.md) | 99 | `result-track:39ec37e28db732063da725bafd35ca0e4015c9fba85ba67460074767d7a0302b` |
| 12 | `lemma` | [comap_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-mono.md) | 100 | `result-track:2c7dfc91d48260456f7e09b9e6e6fa18fe0cfe48160351d85f174463946b7472` |
| 13 | `lemma` | [le_map_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/le-map-comap.md) | 101 | `result-track:023ba812d05c0e37bce18627de6f742ddcbf4c3ce448eabf7848daea19b04ff2` |
| 14 | `lemma` | [comap_map_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-map-le.md) | 102 | `result-track:0b8813c2f207780dccd2c9c69b1b1a14c6beecdbbadf42d7f53c04014c097d46` |
| 15 | `lemma` | [map_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-top.md) | 103 | `result-track:f5ea5d769e0f74aaac20d104de5ff33264ccd4a2c3c1e0942d213a383d4f5dc1` |
| 16 | `lemma` | [comap_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-bot.md) | 104 | `result-track:0de502deb24c2fdbb156e3e6aebb0a418b94af8f8a8855355dc06d745db081ee` |
| 17 | `lemma` | [map_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-inf.md) | 105 | `result-track:0191313532a6f9aff0192cadc755f716d1b7d0f4737c45171dfde11100a7ab45` |
| 18 | `lemma` | [comap_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-sup.md) | 106 | `result-track:45332c83df80747f964529f56a0bee032c42c33f8532429bc492861eae309137` |
| 19 | `lemma` | [map_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-bot.md) | 111 | `result-track:71f56caaa58e2713b22f612980a35d4d4711a0e0c90896393efd27bdafcbbd43` |
| 20 | `lemma` | [comap_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comap-top.md) | 115 | `result-track:caa5d2d6460bc72a8125b0f8bd3bc8fa1eb5b79cab527c1bc416550b18eb16ee` |
| 21 | `lemma` | [map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-comp.md) | 120 | `result-track:23448242179df7c506b004835abeb627b8bbbef083059ca9dab9b4a89f1447ac` |
| 22 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-id.md) | 128 | `result-track:309bd893c5da16ac2ea993eba85751725fcd3b7784ea0108f328a904093752d9` |
| 23 | `lemma` | [map_ker](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-ker.md) | 132 | `result-track:aade14b9bddab7934e27562a9fa1599c046e18723b4f4b1c4808a4597206ef42` |
| 24 | `lemma` | [_root_.AlgebraicGeometry.Scheme.Hom.ker_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/root-algebraicgeometry-scheme-hom-ker-comp.md) | 135 | `result-track:2b6e37652f7d0816f42c12a5f58424b3726fe983c785366dd1f7754812a4c74f` |
| 25 | `lemma` | [map_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/map-vanishingideal.md) | 138 | `result-track:6fffb14fa5a9a6f4f543f07f7c64b99a684c5618b13eeb0122eaefe1a4c88a77` |
| 26 | `lemma` | [support_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/support-map.md) | 149 | `result-track:7b7acd06e821fda46307d4bff7ff36a62c8482c98532d51d8a8bd60d2ec3aed3` |
| 27 | `lemma` | [ideal_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/ideal-map.md) | 155 | `result-track:7ecb30e965910738e8f9240579be5d07bb81c9be39af9ab2fe58ed51e8dd0c3b` |
| 28 | `lemma` | [ideal_map_of_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/ideal-map-of-isaffinehom.md) | 163 | `result-track:28457e6e1ddc433100785aaf19b2ade7b85454363db456842a82ea5d56dfcba8` |
| 29 | `lemma` | [ideal_comap_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/ideal-comap-of-isopenimmersion.md) | 168 | `result-track:58c92be798a060ce744d9d215b5809f3be95e95c6395d8fc1ee8a86d4be49ede` |
| 30 | `def` | [subschemeMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/subschememap.md) | 177 | `declaration-track:4273bcbb32dd3cf18cfc6e1b602219171419dfc969a5f47444a8e1ff5d40ead3` |
| 31 | `lemma` | [subschemeMap_subschemeι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/subschememap-subscheme.md) | 182 | `result-track:210cb374e1eaf9dcd518b36c247dc4f180b2dae19257b3b935abc8c44c6215ae` |
| 32 | `lemma` | [comapIso_hom_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Functorial.lean/declarations/comapiso-hom-snd.md) | 187 | `result-track:869924949ffb87deb03405a0ff958c354690924047de5e3d18336de5d5eada28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9ee6486c30e9cca879eda767c138e9101167785132baa0b4c47199d32c37142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Functorial/Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Functorial/Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
