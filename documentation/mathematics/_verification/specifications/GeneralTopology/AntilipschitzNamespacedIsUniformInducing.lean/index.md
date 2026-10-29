# Verification target: Antilipschitz Namespaced Is Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bcccb07943207b13e0b65971b630235f515a97e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bcccb07943207b13e0b65971b630235f515a97e`.

Source path: `GRWTSK/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Lipschitz` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntilipschitzWith](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/antilipschitzwith.md) | 40 | `declaration-track:a50c64059f9568f8e25f654f5d86ade4df45df59536c6c18e2c808c3b1f406ec` |
| 2 | `lemma` | [AntilipschitzWith.edist_lt_top](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/antilipschitzwith-edist-lt-top.md) | 43 | `result-track:c3cf5e8e04a4b56dc79767c7c0e8642ab0a84e6cc264911a2eaf8c486ec48735` |
| 3 | `theorem` | [AntilipschitzWith.edist_ne_top](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/antilipschitzwith-edist-ne-top.md) | 47 | `result-track:f025fab3e11884ff1e62ad508631e92338a317fab261e82fa7ce66385bb42451` |
| 4 | `theorem` | [antilipschitzWith_iff_le_mul_nndist](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-nndist.md) | 55 | `result-track:7582bad748078ca6cde7fe704662806167a16440173fe366027f5cc03cb71479` |
| 5 | `theorem` | [antilipschitzWith_iff_le_mul_dist](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-dist.md) | 63 | `result-track:65bd1f7230ec5a01b2cba0e17b649989572b766011071f3f358bace724392065` |
| 6 | `theorem` | [mul_le_nndist](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/mul-le-nndist.md) | 73 | `result-track:450b5f04c5dbd982473ae2b00c3c9caf682d8f6b3afe7318da49d4587eb68f14` |
| 7 | `theorem` | [mul_le_dist](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/mul-le-dist.md) | 77 | `result-track:3e9f4fbbb8ace0c9a240c5414c608dd92453a89d23dd6a12c6d9f35f00f6b58f` |
| 8 | `def` | [k](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/k.md) | 95 | `declaration-track:4b9957884756873f4760762fdc15c13fc178c5a09a6bb8e01f9116bcf3e1c9b6` |
| 9 | `theorem` | [injective](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/injective.md) | 97 | `result-track:88350084dcdda748823156d1e0f515c2544ca3879fff3656dd7f43d210208c0f` |
| 10 | `theorem` | [mul_le_edist](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/mul-le-edist.md) | 101 | `result-track:7c2d34f8188e7b1a774aaa99109e1728d085b1f9dba816691e1cbcd0d6df7b1e` |
| 11 | `theorem` | [ediam_preimage_le](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/ediam-preimage-le.md) | 106 | `result-track:6a7853e2e97b497faf0114395f5582a9d897652929741caa90eb801fd8eb1474` |
| 12 | `theorem` | [le_mul_ediam_image](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/le-mul-ediam-image.md) | 110 | `result-track:1784c6c86f97479d160c0d4a2618639d56d3a08a34b6d383af4907b7b5c2d34d` |
| 13 | `theorem` | [id](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/id.md) | 113 | `result-track:c7562af53de298dc3a709f7d9e2fa0a6184ddc435a576145f4845e9aebd4d263` |
| 14 | `theorem` | [comp](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/comp.md) | 116 | `result-track:87bccc9ea91c5959aad57834db819b7714175d986fdb8c28e8b12d2176e22e98` |
| 15 | `theorem` | [restrict](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/restrict.md) | 123 | `result-track:a53c1cf60d0dd4194b474581989861efa60865ae62f54eae738ecc9ed7df4823` |
| 16 | `theorem` | [codRestrict](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/codrestrict.md) | 126 | `result-track:fbe4be66e193c5fe1cd25b4d16e2e685127512368de7b6cc6b2b0f6c50973941` |
| 17 | `theorem` | [to_rightInvOn'](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/to-rightinvon-source-edition-2.md) | 129 | `result-track:aaf90438ea2345440a4576e51a81baae3a24ea82be9b19c2b5b429e9671a5e17` |
| 18 | `theorem` | [to_rightInvOn](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/to-rightinvon.md) | 135 | `result-track:7d0ea12d1875e95fd38d6cd402063000430259898df8ed4826052bfce78ba7c0` |
| 19 | `theorem` | [to_rightInverse](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/to-rightinverse.md) | 139 | `result-track:a600412df31019adaf361bddc84cd24fcf6a3200a3a2598a7edba84babee734d` |
| 20 | `theorem` | [comap_uniformity_le](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/comap-uniformity-le.md) | 145 | `result-track:b462d29e89c81ba0f55b98d8fcd271659fe8d3224db5e19a72c4c1fe5bbd3c27` |
| 21 | `theorem` | [isUniformInducing](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isuniforminducing.md) | 153 | `result-track:401357c1c08bdf1d9afcb6af2e0be5d17043482fb7e241305559016be46da12c` |
| 22 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isuniformembedding.md) | 157 | `result-track:ec61fae7a91acbda19638dc9548da48c8b8d719ba32521472bff3d1d83deaabb` |
| 23 | `theorem` | [isComplete_range](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/iscomplete-range.md) | 161 | `result-track:46a57ae4d75d64e71c056cd2c0cfef1c6750debb67bdfa75f7860cec579ab505` |
| 24 | `theorem` | [isClosed_range](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isclosed-range.md) | 165 | `result-track:9679da96c013d8cc05030fe94122964d94125a3aa8ece696f1f49cd9aec84679` |
| 25 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isclosedembedding.md) | 170 | `result-track:687f03f1c8713904f6257c26c49609c2130be4f804e91fcfee5a6dd45311ae4f` |
| 26 | `theorem` | [subtype_coe](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/subtype-coe.md) | 175 | `result-track:c280f924ee878be505cc4ff051b48d6aa4bc12bef3628b00701e3d66379c50aa` |
| 27 | `theorem` | [of_subsingleton](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/of-subsingleton.md) | 179 | `result-track:b4434fb7be80d895467f08c9a38fa4bf6af208a4c1e9d28223e7d610c9c2cb42` |
| 28 | `theorem` | [subsingleton](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/subsingleton.md) | 183 | `result-track:8db734c566fed660a01287fdc66b7b78fd00b8eceb9d5f3fb62ebcaa9c2acd0c` |
| 29 | `theorem` | [isBounded_preimage](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isbounded-preimage.md) | 196 | `result-track:1618910e44c28048d2409a6111793c15693efe1f167b39144e141f3314a7f4fa` |
| 30 | `theorem` | [tendsto_cobounded](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/tendsto-cobounded.md) | 201 | `result-track:f6b55283e02f146460e61d2e56b8c6f8776cf8d206250a9cdb38b11f6ced5c1b` |
| 31 | `theorem` | [properSpace](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/properspace.md) | 205 | `result-track:2f651f2984b565c225bf49edd62045b2d571f71cb482b3a71e6d7af53133247e` |
| 32 | `theorem` | [isBounded_of_image2_left](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isbounded-of-image2-left.md) | 216 | `result-track:5aaebb3769e54f1e43985e874deb750cf1933be572928967d5dea64b4e15865f` |
| 33 | `theorem` | [isBounded_of_image2_right](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/isbounded-of-image2-right.md) | 229 | `result-track:4a57cfc0115c2b3f4d70a7c7fc38dfb4e421637a2d4cae3fd5ba4212e08d044e` |
| 34 | `theorem` | [LipschitzWith.to_rightInverse](../../../../GeneralTopology/AntilipschitzNamespacedIsUniformInducing.lean/declarations/lipschitzwith-to-rightinverse.md) | 235 | `result-track:ef802ed51bd3508918c35f32cb2ce06cacea1bf93756c48457cd58328398f000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f481e675d1fde39d0f7584a642627b37857bd4a9cf35d061eb88f206041812d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Antilipschitz/Variant0fce8a28be1651c7b7cafbdf3a3e8c54da15087199c6f5805d5ac17e8d297188.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
