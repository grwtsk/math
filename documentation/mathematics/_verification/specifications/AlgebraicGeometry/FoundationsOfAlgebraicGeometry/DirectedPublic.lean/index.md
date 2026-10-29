# Verification target: Directed Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd4cfb063daa86c8271de6f6d6cff27ea478211b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd4cfb063daa86c8271de6f6d6cff27ea478211b`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/locallydirected.md) | 44 | `declaration-track:3151fd3c554dc8e2594a43d8c1dd2b9d6da68d2030ce1e93f7cc73d68549ce8b` |
| 2 | `def` | [trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/trans.md) | 59 | `declaration-track:95bb4bec91840248a6dae589b804cd5b94afe35f29a3a25ecc9ec83d9eced2fd` |
| 3 | `lemma` | [trans_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/trans-map.md) | 62 | `result-track:273345efa2bc8c2a13b2d649d9721a10bbe1faca8297c764a5e0c04e5e25d91a` |
| 4 | `lemma` | [trans_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/trans-id.md) | 66 | `result-track:f89bcd83b9eb47540c10aee9729866a839966b0ec11bcd2bd48f0b9eb7fa3bf0` |
| 5 | `lemma` | [trans_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/trans-comp.md) | 69 | `result-track:be84f90ed71fba077698c4eec4fabe626e516573a2a4f099267fbf6f482729ad` |
| 6 | `lemma` | [exists_lift_trans_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/exists-lift-trans-eq.md) | 72 | `result-track:459139d6c94dff8ecc79960b18503c817b79b085316f69fcddb67453e2967896` |
| 7 | `lemma` | [exists_of_f_eq_f](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/exists-of-f-eq-f.md) | 78 | `result-track:f3f55655d5b04fcb088c537a1a76f6c01eebcaa70710045ff19035ba8a7cbb29` |
| 8 | `lemma` | [exists_of_trans_eq_trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/exists-of-trans-eq-trans.md) | 86 | `result-track:ca439900cbcb945c3530aafcf4f8232c265607defcad11d46df203cc639e5849` |
| 9 | `lemma` | [property_trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/property-trans.md) | 93 | `result-track:20017cdd999b1d81b5c15845a7f07f38da7e2ccc4ea2c83574c036e6c772a476` |
| 10 | `def` | [intersectionOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/intersectionoflocallydirected.md) | 99 | `declaration-track:503cb274319ba597749919f49cfa10b73f52599bc3cd60450092208dfec50f95` |
| 11 | `def` | [functorOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/functoroflocallydirected.md) | 116 | `declaration-track:b6ec569c642cbdc653137c5f93786f970000f8feac24768f798ed99816263c6d` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance-source-edition-5.md) | 122 | `declaration-track:c59da59096c0a17f417a6d5ca89333af3498c6801d7017ddcc2eb613d990d932` |
| 13 | `def` | [functorOfLocallyDirectedHomBase](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/functoroflocallydirectedhombase.md) | 137 | `declaration-track:11ef9906690e0dca9a23d13c83b40e181e82b9d6f4bda87d79e15ba618fbf0f0` |
| 14 | `def` | [coconeOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/coconeoflocallydirected.md) | 146 | `declaration-track:74bc862530e5e59c8ae7eb9473711f1901984bc3e918331b631983bc1cf7bd47` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance.md) | 155 | `declaration-track:0132b9c0c400531e5fbd544c009499420f7216ffbd3cafe3039dc3b015b4f211` |
| 16 | `instance` | [locallyDirectedPullbackCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/locallydirectedpullbackcover.md) | 159 | `declaration-track:76e705e8ebf14ae1a3d7f1462e5b5dcd6d00c7760a656aa03acf3d64e4de42b7` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance-source-edition-4.md) | 203 | `declaration-track:aae993baea073c32adf8eb3f27a49899c8efad2f0bb483f30075134e4c454cbd` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance-source-edition-2.md) | 206 | `declaration-track:0e0cace1c1c921f2c1edf2dc4e548fe2de4e07bf4ccf0cb0686e1aec2b55a001` |
| 19 | `def` | [glueMorphismsOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/gluemorphismsoflocallydirected.md) | 216 | `declaration-track:300c691d7e9397ab2f389b4176d5b5d527aeaf949cab1076208a7d2cfc18e03e` |
| 20 | `lemma` | [map_glueMorphismsOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/map-gluemorphismsoflocallydirected.md) | 226 | `result-track:44fadfed4fd6ecd8b9b41aa3dcbdd418626f2051c0e477375807c0279653f28d` |
| 21 | `def` | [isColimitCoconeOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/iscolimitcoconeoflocallydirected.md) | 235 | `declaration-track:061d35658cd76aaa7009804cb23811698741510f3d436d5404fe853fade200d2` |
| 22 | `def` | [glueMorphismsOverOfLocallyDirected](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/gluemorphismsoveroflocallydirected.md) | 241 | `declaration-track:6145ffcabeeee0e9fcf01f1f0b7db7bfe2829ae248f2d75a69c2f97e1b14f62b` |
| 23 | `lemma` | [map_glueMorphismsOverOfLocallyDirected_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/map-gluemorphismsoveroflocallydirected-left.md) | 253 | `result-track:720f3d61e0355ecbb02d08af98cccb171794781544c0cd3e0171df6570ba7f88` |
| 24 | `def` | [Cover.LocallyDirected.ofIsBasisOpensRange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/cover-locallydirected-ofisbasisopensrange.md) | 266 | `declaration-track:6a40e5664a2e953868a463f679fa0c097def0e0ba4a823255c48ebf5b601fbd2` |
| 25 | `lemma` | [Cover.LocallyDirected.ofIsBasisOpensRange_le_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/cover-locallydirected-ofisbasisopensrange-le-iff.md) | 294 | `result-track:17c393e69741e7dd7f3303a8dfc5c41b0e2b82eaededd1d1fe23fc0135fd5fbe` |
| 26 | `lemma` | [Cover.LocallyDirected.ofIsBasisOpensRange_trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/cover-locallydirected-ofisbasisopensrange-trans.md) | 298 | `result-track:08ebb38f6b0e597fc390e3d3ff7e0af35bbad373054ae0964f059f3fbb49fccc` |
| 27 | `def` | [directedAffineCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/directedaffinecover.md) | 309 | `declaration-track:d9ea7c469f0ae0a8bd30c51e1cf38f4222e2e1f63c6f23b1cefaa8d0793252d2` |
| 28 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance-source-edition-3.md) | 320 | `declaration-track:4e484c11c13b90542d5d088b342ce398cbf884a8741066ccea214c099c9ccfda` |
| 29 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/instance-source-edition-6.md) | 324 | `declaration-track:c90c6877a30c9a3f32c5c1389429620cb849563396d849c98b8fc5b432fd4b18` |
| 30 | `lemma` | [directedAffineCover_trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DirectedPublic.lean/declarations/directedaffinecover-trans.md) | 330 | `result-track:479c0582222c70aeac5a042ad002ce62421d31d0042f90815bdb1a63c712cbe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=658878c6d2fdb9a001e66a4349d79c24595e15b9e253e05eba3f1d07473b10d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
