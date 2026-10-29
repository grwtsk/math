# Verification target: Antilipschitz Is Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e226475bce0d82916e3848f9cc4d89ea2572bce1",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e226475bce0d82916e3848f9cc4d89ea2572bce1`.

Source path: `GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Lipschitz` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntilipschitzWith](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/antilipschitzwith.md) | 32 | `declaration-track:fc4c338127d8ebbcba7c716a9a376b69bd2e078b3539fbeea1529344835384c4` |
| 2 | `lemma` | [AntilipschitzWith.edist_lt_top](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/antilipschitzwith-edist-lt-top.md) | 35 | `result-track:7a2f5825eea582ba0c985cbc56eeee67c51ef3a6ab66057d768db3e725695dba` |
| 3 | `theorem` | [AntilipschitzWith.edist_ne_top](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/antilipschitzwith-edist-ne-top.md) | 39 | `result-track:1c4e868b4895186b591302169c870989c713cde2ca0c6021cb0bb19c6dc06d08` |
| 4 | `theorem` | [antilipschitzWith_iff_le_mul_nndist](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-nndist.md) | 47 | `result-track:88f7a7fd092a11c3125fe1c7cd153675b1f084fb3ef3a75ac955cdeef06fca3f` |
| 5 | `theorem` | [antilipschitzWith_iff_le_mul_dist](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-dist.md) | 55 | `result-track:176e1cd9b19702f2461604abfbd81f39f98173bcd438e577b35f75b4b5f3ee67` |
| 6 | `theorem` | [mul_le_nndist](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/mul-le-nndist.md) | 65 | `result-track:24dcf14b8aefdea2755ead9dc1742210f6a3deae53cc36f9abd527a84161ec85` |
| 7 | `theorem` | [mul_le_dist](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/mul-le-dist.md) | 69 | `result-track:73a4813bf59e9779862cfbfa8aa99fe75cc32d50c1ec2e61c7310f59703977ab` |
| 8 | `def` | [k](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/k.md) | 87 | `declaration-track:fb47779cef857d635c9791825a0d9d27af714722feea5f1a5674f38021895ba6` |
| 9 | `theorem` | [injective](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/injective.md) | 89 | `result-track:39c52fa53df248f7be0f9a1bd396f0a64ea714ea5d75a1cc55a244ff34b05c82` |
| 10 | `theorem` | [mul_le_edist](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/mul-le-edist.md) | 93 | `result-track:511077d6691545ac956747dc5bd460ca0ce5e20f6c675fc5a49c7eab6df82cee` |
| 11 | `theorem` | [ediam_preimage_le](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/ediam-preimage-le.md) | 98 | `result-track:feffc58347eee93a8b2388fb848d7c1e1cb8511f6ba8514d7613abab9937585c` |
| 12 | `theorem` | [le_mul_ediam_image](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/le-mul-ediam-image.md) | 102 | `result-track:09d42e3a33bf19bfe26ada55bd9d3f8358a494f23d1757c0c68e91d3a8e5da7a` |
| 13 | `theorem` | [id](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/id.md) | 105 | `result-track:b2e4fd7bc2f3d22024b447630d544bfbedc037e45623fe32c7e610da850eb7c6` |
| 14 | `theorem` | [comp](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/comp.md) | 108 | `result-track:91118c401a5082b74f2fe77846b436f33fcc9d06abdfc6a8f34f0399c607b2b7` |
| 15 | `theorem` | [restrict](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/restrict.md) | 115 | `result-track:1ea0ac9b86182e673dd0a21ddae0ba4578da77747a7ba5d3485633e9b563a11d` |
| 16 | `theorem` | [codRestrict](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/codrestrict.md) | 118 | `result-track:f71084ee91296c7031d96c96abf44c87dc86ed5f9319d625d3bca0ec4654956c` |
| 17 | `theorem` | [to_rightInvOn'](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/to-rightinvon.md) | 121 | `result-track:1ab6422538b5f7e57ce1c5453644a2e6f9e4e6dfc0fffd6a4e56c58b487fde3c` |
| 18 | `theorem` | [to_rightInvOn](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/to-rightinvon-source-edition-2.md) | 127 | `result-track:cb61c37e579536cb611a09e63d3f76ec59eaac2ffc8ed2c0c57322c99ff52641` |
| 19 | `theorem` | [to_rightInverse](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/to-rightinverse.md) | 131 | `result-track:073ff809b49fd277a7408380a878bba3cb02bda014d102d7f95e552262919700` |
| 20 | `theorem` | [comap_uniformity_le](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/comap-uniformity-le.md) | 137 | `result-track:af594b186498d57466566508262a0696edbecd372ac5235135fa696e37569e6f` |
| 21 | `theorem` | [isUniformInducing](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isuniforminducing.md) | 145 | `result-track:5264c3d880b16f0cc1c69bd25df724b2cfdcd3cae68e4112aa9af6d3db7f2dd6` |
| 22 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isuniformembedding.md) | 149 | `result-track:e5ac60bd67e80c88ceb59a275f149a39e54f62f43c3ee500ff00874c9105d521` |
| 23 | `theorem` | [isComplete_range](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/iscomplete-range.md) | 153 | `result-track:ff05926e74cc9496a2babed6e323c43f9713c2d6bd3ed48ef4b23a6cd5e31714` |
| 24 | `theorem` | [isClosed_range](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isclosed-range.md) | 157 | `result-track:74354bb4de31cfa45f5c570b20dbed75f88e524640a59523140a157267ef2c23` |
| 25 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isclosedembedding.md) | 162 | `result-track:7b0115eba0377b83542af0115acc3b2801e99eb1e28e6349950d72ec3c733642` |
| 26 | `theorem` | [subtype_coe](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/subtype-coe.md) | 167 | `result-track:4c5753e19d4c3754150c2899431d343dcc173730252cc34d7219dedf2e189ecb` |
| 27 | `theorem` | [of_subsingleton](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/of-subsingleton.md) | 171 | `result-track:c880b87872719f8e65784aa1fdcba1c2a7f3086206419d33b64cc40e83b49adb` |
| 28 | `theorem` | [subsingleton](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/subsingleton.md) | 175 | `result-track:e2af4a5962f4c6d5e333d4353f4c96ec986aa369ada987665269f2b8b0c8cced` |
| 29 | `theorem` | [isBounded_preimage](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isbounded-preimage.md) | 188 | `result-track:65fa4401f7f378a87d639a0758cb70f2e2c739be94fafdb9dbad8ac20618d906` |
| 30 | `theorem` | [tendsto_cobounded](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/tendsto-cobounded.md) | 193 | `result-track:730a47fb938eeb0d12281b7c775fef5128d20ee93806a1c87c56189d861e6b2e` |
| 31 | `theorem` | [properSpace](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/properspace.md) | 197 | `result-track:ed305a8d1a0414b4de94c7c793c064c896b8ecf813c2423704ca7b4f0c13b2f9` |
| 32 | `theorem` | [isBounded_of_image2_left](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isbounded-of-image2-left.md) | 208 | `result-track:6afbd9739175417e8badc0a093eb752909467c37eabdd92db1f68c12c34c975f` |
| 33 | `theorem` | [isBounded_of_image2_right](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/isbounded-of-image2-right.md) | 221 | `result-track:e51a20d84a57d6e46772cd4c51f580ae3418e4b2a2a06ba9df2c32e2d5aaefda` |
| 34 | `theorem` | [LipschitzWith.to_rightInverse](../../../../GeneralTopology/AntilipschitzIsUniformInducing.lean/declarations/lipschitzwith-to-rightinverse.md) | 227 | `result-track:640c9fee1b5781290aecc3b664c6c21c57a263818fc73448c06457fed6362c89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1739012279f025381bad09e9d614a0a34666a2c2d1f6f4cf8be5ce82c768050e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
