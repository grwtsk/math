# Verification target: Uniform Space Compact Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ea704eaaf900563c2d15d5eeab3ecd298c90cc5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ea704eaaf900563c2d15d5eeab3ecd298c90cc5`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lebesgue_number_lemma](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma.md) | 43 | `result-track:d88fa10ffeec1dccfa9e7a2f90c4f60351532ea4eb742f35548f23e652a87225` |
| 2 | `theorem` | [lebesgue_number_lemma_nhds'](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma-nhds.md) | 57 | `result-track:a64a802266e45cec6abb7927ba3c2d71d7f27f912bfbfd1f9e62b876c4975036` |
| 3 | `theorem` | [lebesgue_number_lemma_nhds](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma-nhds-source-edition-2.md) | 63 | `result-track:fe0f2ac988ae8e249d3f9596b0c3fa8ecefcc9a7531dea4e2151a20ceab607ce` |
| 4 | `theorem` | [lebesgue_number_lemma_nhdsWithin'](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma-nhdswithin.md) | 69 | `result-track:04f466263ee013dde683d52a90b70abe068483b182e9565c7712c1243cc356c5` |
| 5 | `theorem` | [lebesgue_number_lemma_nhdsWithin](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma-nhdswithin-source-edition-2.md) | 74 | `result-track:7724887d9b653ce815ab368da617037d6bc4e557e0e0bc26b6be87e9561ba2e8` |
| 6 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/filter-hasbasis-lebesgue-number-lemma.md) | 84 | `result-track:17ffa3a9ef073c41061c0fb5f760a8d79c3fbd8a067d4d64106389fdc2f00fee` |
| 7 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds'](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds.md) | 91 | `result-track:0f4a2786def404cb7a7fcd617ccd366ea215c9b49b140b95ac25802d4c56ad16` |
| 8 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds-source-edition-2.md) | 98 | `result-track:6999d16981883bee6288aa6f1af78d8bbc35c7bff9254a12114b3a4e14040ffd` |
| 9 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin'](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin-source-edition-2.md) | 104 | `result-track:3ad400e60d8614092c73ec228889281d6c8d53ed3b12e1f2f5df523d17ef0567` |
| 10 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin.md) | 112 | `result-track:3a340992d44f889fd7da74d2fa59696aca573629ff45a80737deb834117e0783` |
| 11 | `theorem` | [lebesgue_number_lemma_sUnion](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-lemma-sunion.md) | 121 | `result-track:a9f79aef8339665d735cfcb52d7b35fd3295ef387aaffda6b8dcc982d859dc5d` |
| 12 | `theorem` | [IsCompact.nhdsSet_basis_uniformity](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/iscompact-nhdsset-basis-uniformity.md) | 131 | `result-track:12ce37d509f9c9c82b11e760678ee0eaa86205d640806044135e71f2acde291b` |
| 13 | `theorem` | [Disjoint.exists_uniform_thickening](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/disjoint-exists-uniform-thickening.md) | 147 | `result-track:815579ce60109865b67a7eccc74c9d0a386f0d2f8547beb662789fbf1a626335` |
| 14 | `theorem` | [Disjoint.exists_uniform_thickening_of_basis](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/disjoint-exists-uniform-thickening-of-basis.md) | 159 | `result-track:ba0ad0e633a6a144fcfd17dc1a55d79bc2aa9fc5a4b6ae4b889fcdf74590101b` |
| 15 | `theorem` | [lebesgue_number_of_compact_open](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/lebesgue-number-of-compact-open.md) | 170 | `result-track:3a163b7567da4dbf9b4fe856a0c4a7b6eef0dcda2c6eb0f48343f23c80083a56` |
| 16 | `theorem` | [nhdsSet_diagonal_eq_uniformity](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/nhdsset-diagonal-eq-uniformity.md) | 179 | `result-track:25bde5d3a568bf2d9bf6f0f8c4fd22a09f25391cda809c0fe999a9233728f4a6` |
| 17 | `theorem` | [compactSpace_uniformity](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/compactspace-uniformity.md) | 192 | `result-track:46dd6703942944cfa058eb8083a5b804547a52d0dd502ca0e453f932418ebeee` |
| 18 | `theorem` | [unique_uniformity_of_compact](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/unique-uniformity-of-compact.md) | 195 | `result-track:e0b7561cf0188f9443dc2d8c56d7aa107d6215d2fb9f84ad59a9ec52d74f412c` |
| 19 | `theorem` | [IsClosed.relPreimage_of_isCompact](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/isclosed-relpreimage-of-iscompact.md) | 205 | `result-track:458279b76d44b259c373075c18e3d2b6a57ceb9afa610aed5626da7c7e3087d6` |
| 20 | `theorem` | [IsClosed.relImage_of_isCompact](../../../../GeneralTopology/UniformSpaceCompactNamespacedPublic.lean/declarations/isclosed-relimage-of-iscompact.md) | 212 | `result-track:cd3de79a73ca54770c9841edba3207a6a1a64b6b8a55ea18632f8140a5d6b95f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd1cdba6d2740e67bab0cbf3164b3486bf5746916b7a7805de7c44704eec83b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
