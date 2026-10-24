# Verification target: GRWTSK.Topology.MetricTopology.Antilipschitz.Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4

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

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntilipschitzWith](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/antilipschitzwith--8e054583b620b5189e6ed238.md) | 41 | `declaration-track:8e054583b620b5189e6ed238bb8cdfea2a542b444fbeaf614c0697b3da03e833` |
| 2 | `theorem` | [AntilipschitzWith.edist_lt_top](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/antilipschitzwith-edist-lt-top--56e3508c687ec413262d947f.md) | 45 | `result-track:56e3508c687ec413262d947f51cf99cedd93804aa086ba1d1724e493fd65198d` |
| 3 | `theorem` | [AntilipschitzWith.edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/antilipschitzwith-edist-ne-top--a01dbe39b609c4b7cbc587a5.md) | 50 | `result-track:a01dbe39b609c4b7cbc587a52affcccd704bc2ccbca527bf8aabf09f7a4ea3f6` |
| 4 | `theorem` | [antilipschitzWith_iff_le_mul_nndist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/antilipschitzwith-iff-le-mul-nndist--4c3c8b941302e96078e906fc.md) | 59 | `result-track:4c3c8b941302e96078e906fcec086aa7189237592da774b94528f671e4590d88` |
| 5 | `theorem` | [antilipschitzWith_iff_le_mul_dist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/antilipschitzwith-iff-le-mul-dist--22b0cd3178c353ae048bae93.md) | 70 | `result-track:22b0cd3178c353ae048bae93f60f5861382a00cbd0797b03674c3521e8e592c2` |
| 6 | `theorem` | [mul_le_nndist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/mul-le-nndist--dd5d5f894c3bc80dfbad3018.md) | 83 | `result-track:dd5d5f894c3bc80dfbad3018e5b7d24bce6aae5727d4a734f0c2ffbade0a8950` |
| 7 | `theorem` | [mul_le_dist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/mul-le-dist--6d6d160af7d040ec390fe400.md) | 88 | `result-track:6d6d160af7d040ec390fe400da7081d2f7b9e61bfa4d5e4052e21ebc7c8a648c` |
| 8 | `def` | [k](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/k--27b1f8e266afdd6f170b1da6.md) | 108 | `declaration-track:27b1f8e266afdd6f170b1da6ea4e371e6c2760587effef5ca790011123790f2a` |
| 9 | `theorem` | [injective](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/injective--d950b68b851a069b6a6aa3b4.md) | 112 | `result-track:d950b68b851a069b6a6aa3b471a907e00af7a0acc2a1cf8b89548216f7027c9c` |
| 10 | `theorem` | [mul_le_edist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/mul-le-edist--cabab7580106cd87f7a63b79.md) | 117 | `result-track:cabab7580106cd87f7a63b794cfd1c408576341cd23e52af46264dbea752633e` |
| 11 | `theorem` | [ediam_preimage_le](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/ediam-preimage-le--faf76b4d12faf966162fadcb.md) | 123 | `result-track:faf76b4d12faf966162fadcb4dc89986f03bfd13eda162d53de624095d70f5de` |
| 12 | `theorem` | [le_mul_ediam_image](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/le-mul-ediam-image--46e704abca879542de90ba38.md) | 128 | `result-track:46e704abca879542de90ba389d8a328c2ce4a9e070a377b2b4de16e035c6a99a` |
| 13 | `theorem` | [id](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/id--b49ffee14785b9fdc8ae5395.md) | 132 | `result-track:b49ffee14785b9fdc8ae5395224843cf3f72c889724a45afe896653153c98177` |
| 14 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/comp--0ecf8863ad3d631cf5dbf673.md) | 136 | `result-track:0ecf8863ad3d631cf5dbf67302ed74d7871b06379e3e6f4c533fd11c4166db54` |
| 15 | `theorem` | [restrict](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/restrict--dbc7b58cad007b5af893f808.md) | 144 | `result-track:dbc7b58cad007b5af893f8084d501066cea65c2d6b967940be312a1ace0533f0` |
| 16 | `theorem` | [codRestrict](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/codrestrict--d75f2e840f9fd7d37a819b9d.md) | 148 | `result-track:d75f2e840f9fd7d37a819b9d66ae4454ac99119e9d5e53574963fb50305980f9` |
| 17 | `theorem` | [to_rightInvOn'](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/to-rightinvon--48b15db08eb01afb6a4c4330.md) | 152 | `result-track:48b15db08eb01afb6a4c433040221ce9d6277abd8b4bd4fee1f094003d2f0aab` |
| 18 | `theorem` | [to_rightInvOn](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/to-rightinvon--9047a6a8a5e865cea2b4fb2b.md) | 159 | `result-track:9047a6a8a5e865cea2b4fb2b2f62617ac84594e3e07d4be7d1a2f69c0f6bfda8` |
| 19 | `theorem` | [to_rightInverse](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/to-rightinverse--e2424d74976ea0cc4e801d93.md) | 164 | `result-track:e2424d74976ea0cc4e801d939b6d6438d19ec7d9ea95eb57957cd4bd37905f09` |
| 20 | `theorem` | [comap_uniformity_le](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/comap-uniformity-le--29f188bf858a89855a06eb28.md) | 171 | `result-track:29f188bf858a89855a06eb2839de9774fbf8357265160060658f76b122e8f6a5` |
| 21 | `theorem` | [uniformInducing](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/uniforminducing--520c20b22a6063fa3baac6e2.md) | 180 | `result-track:520c20b22a6063fa3baac6e2c4dfe2857b815b1cf8f26d65309eb0eb2842c2d0` |
| 22 | `theorem` | [uniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/uniformembedding--e540a050d164441eb16b7119.md) | 185 | `result-track:e540a050d164441eb16b71194a075f0c5c46a8018538b73bdeec23aaf550b158` |
| 23 | `theorem` | [isComplete_range](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/iscomplete-range--4d9e85cf4d20ca1877110cf9.md) | 191 | `result-track:4d9e85cf4d20ca1877110cf91264061fc797ba631cee5008e3b8eb9aa616652c` |
| 24 | `theorem` | [isClosed_range](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/isclosed-range--c5822e74d7e4f4c53f9ea9d1.md) | 196 | `result-track:c5822e74d7e4f4c53f9ea9d13307ca537cecf388a804b578638371b56e75e63c` |
| 25 | `theorem` | [closedEmbedding](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/closedembedding--4bac270c27ff1d4fe56c9ba7.md) | 202 | `result-track:4bac270c27ff1d4fe56c9ba7d55644b6dd9c680f7fbe09ecc069b6d74c4b75d0` |
| 26 | `theorem` | [subtype_coe](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/subtype-coe--36eb696e67216549eca1fe49.md) | 208 | `result-track:36eb696e67216549eca1fe49888c9732be538cab45c588353f59434757228fce` |
| 27 | `theorem` | [of_subsingleton](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/of-subsingleton--e74cce158fd91f5c76315096.md) | 213 | `result-track:e74cce158fd91f5c763150961cf47616c1a8a2f59662f582033b19163968fef5` |
| 28 | `theorem` | [subsingleton](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/subsingleton--eb51d09c66c7ab730bb6738e.md) | 218 | `result-track:eb51d09c66c7ab730bb6738e1549480388fb7f05e60efcad1491af60108e8b48` |
| 29 | `theorem` | [bounded_preimage](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/bounded-preimage--4c57876885018db5cc8ce807.md) | 231 | `result-track:4c57876885018db5cc8ce807eed1d428791bd25be775534745bb83d124e4587e` |
| 30 | `theorem` | [tendsto_cobounded](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/tendsto-cobounded--9d68f3f92c2e28b732c5e95d.md) | 239 | `result-track:9d68f3f92c2e28b732c5e95dc9d8685e7082fb4431f043dcadb61451a25a12bd` |
| 31 | `theorem` | [properSpace](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/properspace--c4fbb13fe25f6fcf97d45d08.md) | 245 | `result-track:c4fbb13fe25f6fcf97d45d08c0b8cf510416dcd009e4d7a1db6c920dc5aa672c` |
| 32 | `theorem` | [LipschitzWith.to_rightInverse](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/lipschitzwith-to-rightinverse--797f95ae4f727ddb4b87adbc.md) | 259 | `result-track:797f95ae4f727ddb4b87adbcfdb63a459ab24fee3419da8bbb7fff3c888a501d` |
| 33 | `theorem` | [LipschitzWith.properSpace](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/declarations/lipschitzwith-properspace--f1f95ab12ecf8018f03465cc.md) | 265 | `result-track:f1f95ab12ecf8018f03465cc1a99ac759dfbf84f37a46c70e61c807bc95f7d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
