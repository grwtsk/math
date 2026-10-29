# Verification target: Antilipschitz Namespaced Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe6af169b9315c13051834b06a4865e1fcde3981",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe6af169b9315c13051834b06a4865e1fcde3981`.

Source path: `GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntilipschitzWith](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/antilipschitzwith.md) | 41 | `declaration-track:8e054583b620b5189e6ed238bb8cdfea2a542b444fbeaf614c0697b3da03e833` |
| 2 | `theorem` | [AntilipschitzWith.edist_lt_top](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/antilipschitzwith-edist-lt-top.md) | 45 | `result-track:56e3508c687ec413262d947f51cf99cedd93804aa086ba1d1724e493fd65198d` |
| 3 | `theorem` | [AntilipschitzWith.edist_ne_top](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/antilipschitzwith-edist-ne-top.md) | 50 | `result-track:a01dbe39b609c4b7cbc587a52affcccd704bc2ccbca527bf8aabf09f7a4ea3f6` |
| 4 | `theorem` | [antilipschitzWith_iff_le_mul_nndist](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-nndist.md) | 59 | `result-track:4c3c8b941302e96078e906fcec086aa7189237592da774b94528f671e4590d88` |
| 5 | `theorem` | [antilipschitzWith_iff_le_mul_dist](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/antilipschitzwith-iff-le-mul-dist.md) | 70 | `result-track:22b0cd3178c353ae048bae93f60f5861382a00cbd0797b03674c3521e8e592c2` |
| 6 | `theorem` | [mul_le_nndist](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/mul-le-nndist.md) | 83 | `result-track:dd5d5f894c3bc80dfbad3018e5b7d24bce6aae5727d4a734f0c2ffbade0a8950` |
| 7 | `theorem` | [mul_le_dist](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/mul-le-dist.md) | 88 | `result-track:6d6d160af7d040ec390fe400da7081d2f7b9e61bfa4d5e4052e21ebc7c8a648c` |
| 8 | `def` | [k](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/k.md) | 108 | `declaration-track:27b1f8e266afdd6f170b1da6ea4e371e6c2760587effef5ca790011123790f2a` |
| 9 | `theorem` | [injective](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/injective.md) | 112 | `result-track:d950b68b851a069b6a6aa3b471a907e00af7a0acc2a1cf8b89548216f7027c9c` |
| 10 | `theorem` | [mul_le_edist](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/mul-le-edist.md) | 117 | `result-track:cabab7580106cd87f7a63b794cfd1c408576341cd23e52af46264dbea752633e` |
| 11 | `theorem` | [ediam_preimage_le](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/ediam-preimage-le.md) | 123 | `result-track:faf76b4d12faf966162fadcb4dc89986f03bfd13eda162d53de624095d70f5de` |
| 12 | `theorem` | [le_mul_ediam_image](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/le-mul-ediam-image.md) | 128 | `result-track:46e704abca879542de90ba389d8a328c2ce4a9e070a377b2b4de16e035c6a99a` |
| 13 | `theorem` | [id](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/id.md) | 132 | `result-track:b49ffee14785b9fdc8ae5395224843cf3f72c889724a45afe896653153c98177` |
| 14 | `theorem` | [comp](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/comp.md) | 136 | `result-track:0ecf8863ad3d631cf5dbf67302ed74d7871b06379e3e6f4c533fd11c4166db54` |
| 15 | `theorem` | [restrict](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/restrict.md) | 144 | `result-track:dbc7b58cad007b5af893f8084d501066cea65c2d6b967940be312a1ace0533f0` |
| 16 | `theorem` | [codRestrict](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/codrestrict.md) | 148 | `result-track:d75f2e840f9fd7d37a819b9d66ae4454ac99119e9d5e53574963fb50305980f9` |
| 17 | `theorem` | [to_rightInvOn'](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/to-rightinvon.md) | 152 | `result-track:48b15db08eb01afb6a4c433040221ce9d6277abd8b4bd4fee1f094003d2f0aab` |
| 18 | `theorem` | [to_rightInvOn](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/to-rightinvon-source-edition-2.md) | 159 | `result-track:9047a6a8a5e865cea2b4fb2b2f62617ac84594e3e07d4be7d1a2f69c0f6bfda8` |
| 19 | `theorem` | [to_rightInverse](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/to-rightinverse.md) | 164 | `result-track:e2424d74976ea0cc4e801d939b6d6438d19ec7d9ea95eb57957cd4bd37905f09` |
| 20 | `theorem` | [comap_uniformity_le](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/comap-uniformity-le.md) | 171 | `result-track:29f188bf858a89855a06eb2839de9774fbf8357265160060658f76b122e8f6a5` |
| 21 | `theorem` | [uniformInducing](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/uniforminducing.md) | 180 | `result-track:520c20b22a6063fa3baac6e2c4dfe2857b815b1cf8f26d65309eb0eb2842c2d0` |
| 22 | `theorem` | [uniformEmbedding](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/uniformembedding.md) | 185 | `result-track:e540a050d164441eb16b71194a075f0c5c46a8018538b73bdeec23aaf550b158` |
| 23 | `theorem` | [isComplete_range](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/iscomplete-range.md) | 191 | `result-track:4d9e85cf4d20ca1877110cf91264061fc797ba631cee5008e3b8eb9aa616652c` |
| 24 | `theorem` | [isClosed_range](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/isclosed-range.md) | 196 | `result-track:c5822e74d7e4f4c53f9ea9d13307ca537cecf388a804b578638371b56e75e63c` |
| 25 | `theorem` | [closedEmbedding](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/closedembedding.md) | 202 | `result-track:4bac270c27ff1d4fe56c9ba7d55644b6dd9c680f7fbe09ecc069b6d74c4b75d0` |
| 26 | `theorem` | [subtype_coe](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/subtype-coe.md) | 208 | `result-track:36eb696e67216549eca1fe49888c9732be538cab45c588353f59434757228fce` |
| 27 | `theorem` | [of_subsingleton](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/of-subsingleton.md) | 213 | `result-track:e74cce158fd91f5c763150961cf47616c1a8a2f59662f582033b19163968fef5` |
| 28 | `theorem` | [subsingleton](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/subsingleton.md) | 218 | `result-track:eb51d09c66c7ab730bb6738e1549480388fb7f05e60efcad1491af60108e8b48` |
| 29 | `theorem` | [bounded_preimage](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/bounded-preimage.md) | 231 | `result-track:4c57876885018db5cc8ce807eed1d428791bd25be775534745bb83d124e4587e` |
| 30 | `theorem` | [tendsto_cobounded](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/tendsto-cobounded.md) | 239 | `result-track:9d68f3f92c2e28b732c5e95dc9d8685e7082fb4431f043dcadb61451a25a12bd` |
| 31 | `theorem` | [properSpace](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/properspace.md) | 245 | `result-track:c4fbb13fe25f6fcf97d45d08c0b8cf510416dcd009e4d7a1db6c920dc5aa672c` |
| 32 | `theorem` | [LipschitzWith.to_rightInverse](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/lipschitzwith-to-rightinverse.md) | 259 | `result-track:797f95ae4f727ddb4b87adbcfdb63a459ab24fee3419da8bbb7fff3c888a501d` |
| 33 | `theorem` | [LipschitzWith.properSpace](../../../../GeneralTopology/AntilipschitzNamespacedUniformInducing.lean/declarations/lipschitzwith-properspace.md) | 265 | `result-track:f1f95ab12ecf8018f03465cc1a99ac759dfbf84f37a46c70e61c807bc95f7d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b94c243b948e66db9e20fb14e680a7106e1eee52114008a58f8609062ae7c631 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
