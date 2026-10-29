# Verification target: Perp Bisector Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cc554ec00dff89eaf2dc5d2331520907bf967d5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cc554ec00dff89eaf2dc5d2331520907bf967d5`.

Source path: `GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean.json)

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
| 1 | `def` | [perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector.md) | 49 | `declaration-track:425ceb2231e363592446839fa4c836c53b211db15a91bd42374770a974928bb4` |
| 2 | `theorem` | [mem_perpBisector_iff_inner_eq_zero'](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-inner-eq-zero.md) | 54 | `result-track:3054f891198632c719f7af9a214c4b121588dd3595fa1bdfa05cfa06a8af62be` |
| 3 | `theorem` | [mem_perpBisector_iff_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-inner-eq-zero-source-edition-2.md) | 60 | `result-track:72643dd2d539f71c145f74ecf224be407d96bcb87ff916adb9185480493b0167` |
| 4 | `theorem` | [mem_perpBisector_iff_inner_pointReflection_vsub_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-inner-pointreflection-vsub-eq-zero.md) | 64 | `result-track:92c642de1ee298a002b024c1036f5032349518482c811cedabd97b0c880370cf` |
| 5 | `theorem` | [mem_perpBisector_pointReflection_iff_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-pointreflection-iff-inner-eq-zero.md) | 70 | `result-track:74e7030f6c1da3fdfaf823aef00e0ce3feb91f5a5573f23ce6c01a6d5e92af72` |
| 6 | `theorem` | [midpoint_mem_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/midpoint-mem-perpbisector.md) | 76 | `result-track:4f6e6c5afef81a94c0b806262686a5891e9b0249b07582ca960822d735dc1250` |
| 7 | `theorem` | [perpBisector_nonempty](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector-nonempty.md) | 80 | `result-track:276fbbbd1426f11823f5b5b5c20b3579975e5396982aef867154a1ce5fafac80` |
| 8 | `theorem` | [direction_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/direction-perpbisector.md) | 84 | `result-track:8227c106dd3bcaff99942a4bcde08eeee5d121022d4b3e03e11cfc884ec8f045` |
| 9 | `theorem` | [mem_perpBisector_iff_inner_eq_inner](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-inner-eq-inner.md) | 90 | `result-track:0d62e4ba77ea690264eec8615944249b55fefd6f7889993dfdf0a9273b9eb283` |
| 10 | `theorem` | [mem_perpBisector_iff_inner_eq](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-inner-eq.md) | 96 | `result-track:b2babc2edc6c49ff67d5699ca9705ce28f671844d3d9736284248818d61c4a2b` |
| 11 | `theorem` | [mem_perpBisector_iff_dist_eq](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-dist-eq-source-edition-2.md) | 102 | `result-track:26d449fcfcb2e5587e6248bb3183f73094f755632013ff32cc73caba885c8a83` |
| 12 | `theorem` | [mem_perpBisector_iff_dist_eq'](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/mem-perpbisector-iff-dist-eq.md) | 107 | `result-track:0a0ffd80f893722da3079943f650b0c670fe0ff915dab722aaae24d8742ce3a8` |
| 13 | `theorem` | [perpBisector_comm](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector-comm.md) | 110 | `result-track:ba82f7af80538508327d5a8db2a0dd21f4415418a65e24ea85147c4344050da5` |
| 14 | `theorem` | [right_mem_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/right-mem-perpbisector.md) | 113 | `result-track:0324462fd8babfbe0ef2ab4737e18c9bd3c05b02c3a7eb21c17700289f01a796` |
| 15 | `theorem` | [left_mem_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/left-mem-perpbisector.md) | 116 | `result-track:aa03d2052f3290dfac3e55fa844c8abe75f434b15d9a1322313f867b99ca2f3d` |
| 16 | `theorem` | [perpBisector_self](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector-self.md) | 119 | `result-track:1ee5417624c72edc86c2027c743f25f671129846e447c1662ff33d67445d5ba8` |
| 17 | `theorem` | [perpBisector_eq_top](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector-eq-top.md) | 122 | `result-track:ce100e1ec11c726f00424b7c6e87b0b52f5a1e074bbe85a82b5126ef60b9471b` |
| 18 | `theorem` | [perpBisector_ne_bot](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/perpbisector-ne-bot.md) | 127 | `result-track:ae693c8d295636e0a21fc4d1249be7e512508538e0cd62cd034328d7fb4e0640` |
| 19 | `theorem` | [dist_lt_of_sbtw_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/dist-lt-of-sbtw-of-inner-eq-zero.md) | 138 | `result-track:6be76467a3ce40487f3798305be27b0062f7d8236fa654a89787bfef56b70e2a` |
| 20 | `theorem` | [dist_le_of_wbtw_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/dist-le-of-wbtw-of-inner-eq-zero.md) | 154 | `result-track:c0653d9dc6ec03c469d2990a384fbac8b4184042318e549248198ff3d1149160` |
| 21 | `theorem` | [dist_lt_of_sbtw_of_mem_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/dist-lt-of-sbtw-of-mem-perpbisector.md) | 167 | `result-track:efcae180ec7fa3cf45011e65df659ecc4ee7c070ce875421482d515cfe3fb36a` |
| 22 | `theorem` | [dist_le_of_wbtw_of_mem_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/dist-le-of-wbtw-of-mem-perpbisector.md) | 178 | `result-track:4f1fdd0f16eb8ee7f967a2b457db64ddc6a69f7342d167ded19aec78e867654e` |
| 23 | `theorem` | [inner_vsub_vsub_of_dist_eq_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/inner-vsub-vsub-of-dist-eq-of-dist-eq.md) | 193 | `result-track:ca8ec5206a899de51a8631e5ea32f975c8b25c8d4b2e957329b0af30141060b6` |
| 24 | `theorem` | [Isometry.preimage_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/isometry-preimage-perpbisector.md) | 203 | `result-track:f73af77d7312918876e3f6c72ef9b9a035be21afb6d53ab85dda17d38d61e603` |
| 25 | `theorem` | [Isometry.mapsTo_perpBisector](../../../../../Geometry/RealAndComplexGeometry/PerpBisectorNamespacedPublic.lean/declarations/isometry-mapsto-perpbisector.md) | 207 | `result-track:3feeadb576dcf7ce77a942a5cae534e1ecc5046ba0586aa6e616c2a110dcb0e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c23bffffa419b251c9df3336744223dd07e1d11047f330b2b9c77ab623a2a2fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
