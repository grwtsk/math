# Verification target: Resources Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b1792be922dc3e09e6a968e29506f0f8a7f3808",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b1792be922dc3e09e6a968e29506f0f8a7f3808`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coordinate](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/coordinate.md) | 26 | `declaration-track:28dea6ff4f1725581fbdb917c5ebf3164c89d36a737ef17f1e230a0103e3c350` |
| 2 | `instance` | [coordinateFintype](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/coordinatefintype.md) | 58 | `declaration-track:80120a1053c3e51a4b345532ae7930774117be135c8f9f9de0d913eaf5693b66` |
| 3 | `abbrev` | [Vector](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/vector.md) | 66 | `declaration-track:19cd1fdc73604acd55f507443d74ea5e2a0f0d4c1eb3ebff64cfb283f2f0ab68` |
| 4 | `abbrev` | [ResourceVector](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/resourcevector.md) | 69 | `declaration-track:a8f842ad43dfac121a92cc44b88bafe1f4eb7b4426d0edb73f5857378ebdcacc` |
| 5 | `def` | [ComponentwiseLE](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwisele.md) | 72 | `declaration-track:c0434250030856d826416b71139d7313bd25477bd030e52951bd7cbf662cfd19` |
| 6 | `def` | [StrictPareto](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/strictpareto.md) | 76 | `declaration-track:c70b9488df17c5ce343734dd001fe7f7e4f190f0ad9192c5d850520e28d3afa1` |
| 7 | `def` | [Incomparable](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable.md) | 80 | `declaration-track:eba96347691571d54b575634d5aa846fed6327f9607862d831393785fd7324cf` |
| 8 | `theorem` | [componentwise_refl](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-refl.md) | 84 | `result-track:9ec652196743ac1641d55aac94911a53b78fefca9c088a7a6a1c52f69dd611da` |
| 9 | `theorem` | [componentwise_trans](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-trans.md) | 89 | `result-track:5b4893eba9fd9801d254ebda78797da7da2198cda84189cb5b965c48319304b5` |
| 10 | `theorem` | [componentwise_antisymm](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-antisymm.md) | 95 | `result-track:1171735ca92297127befe421b0ca0e6a60902dcee3cfa402b7eedd1fa4be7fe0` |
| 11 | `theorem` | [componentwise_iff_product_le](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-iff-product-le.md) | 101 | `result-track:d01f51e04bff69a1d0b95d7bdc88b4a03d4bbcf4181c2990c1bb9e9712358c97` |
| 12 | `theorem` | [strictPareto_irrefl](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/strictpareto-irrefl.md) | 105 | `result-track:3ef55f324b7647b365fe19782002bde3178d25073eac8d955552be7d30840465` |
| 13 | `theorem` | [strictPareto_trans](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/strictpareto-trans.md) | 111 | `result-track:b6a258461dd7a32b7b2391fc85bd971923b4c749544f0f513d3b9649b193d561` |
| 14 | `theorem` | [strictPareto_not_reverse](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/strictpareto-not-reverse.md) | 119 | `result-track:0a13337b3f5d83b0999e5c145209a1f6e9067c0d9c725ae7bb28a8643c9ce8c0` |
| 15 | `theorem` | [incomparable_symm](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable-symm.md) | 126 | `result-track:706b9b61002103e0f36a8c613e351f6faf7acacced307a1aab8d0b417e39165e` |
| 16 | `theorem` | [incomparable_no_pareto](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable-no-pareto.md) | 131 | `result-track:72befa29abbbf19f8a24e8229098953246c79bbf07f6bda2290d75e8ec877e69` |
| 17 | `theorem` | [componentwise_reindex_iff](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-reindex-iff.md) | 137 | `result-track:e1ff64be30be8a5ffb5df0a9c468aa069e68b3ba441b72b157b47184fc4bfb78` |
| 18 | `theorem` | [incomparable_reindex_iff](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable-reindex-iff.md) | 148 | `result-track:2dbc2c2ad3c3f62d239978f7740d98a47434bc54b5254b3de3ee410dab5d554c` |
| 19 | `theorem` | [componentwise_add_common_iff](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/componentwise-add-common-iff.md) | 155 | `result-track:8b21a932427e2226e33378bffd393bacaf68c44a02d602bf167eac77a2f12dfd` |
| 20 | `theorem` | [incomparable_add_common_iff](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable-add-common-iff.md) | 163 | `result-track:b52e085e1a27175ea9f0451573a2e210166282c5bdc8fb935d1bd1f4b78b8170` |
| 21 | `def` | [ParetoMember](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/paretomember.md) | 171 | `declaration-track:be9fd6c97c4ce181d68cc3443e8259c465b3bf7def03b665187b27faf0eef61e` |
| 22 | `theorem` | [incomparable_pair_retained](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/incomparable-pair-retained.md) | 175 | `result-track:8abd24b70da4102e662758760b1aedcc21cc860aeaa168bfd96b48224656dae2` |
| 23 | `structure` | [ScalarProjection](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/scalarprojection.md) | 193 | `declaration-track:bfe30163f2589515a6439963cc8aeb0263fd96dcbd402a023f327805f37fc829` |
| 24 | `def` | [ScalarProjection.value](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/scalarprojection-value.md) | 202 | `declaration-track:cc36d40334de2cdb5c86b7f468039e7283272413049155a9ec44de47c51c85ad` |
| 25 | `theorem` | [ScalarProjection.monotone](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/scalarprojection-monotone.md) | 207 | `result-track:58b9a2ec2b6f396f45165cdf704b1f76230a64b7e2cacd2a205412e04c730b6e` |
| 26 | `structure` | [FrozenObjective](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/frozenobjective.md) | 216 | `declaration-track:c1dc150844560511562a3ce90862ed5094f304a2e0c088e78000d6f618d08f8f` |
| 27 | `def` | [FrozenObjective.Admissible](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/frozenobjective-admissible.md) | 231 | `declaration-track:b4658554a25b87448e8dd615a1cb74fdf95f5c102e3dafe085bea92d1c46ba9b` |
| 28 | `theorem` | [FrozenObjective.admissible_of_le](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/frozenobjective-admissible-of-le.md) | 236 | `result-track:c0b4e481f6be71b92ac1f8a22a8fc0c2387d602778aaffe2825e0b159dd8ab24` |
| 29 | `inductive` | [Measurement](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/measurement.md) | 242 | `declaration-track:32560aa6f25ea024b96d651011c25bb797f87dda57b023192b1add04dc11f025` |
| 30 | `def` | [FullyMeasured](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/fullymeasured.md) | 252 | `declaration-track:b8a4f8b07dc0c14b27b717b8050e087d8a93a202b7f69dfe66d5631a1d096925` |
| 31 | `theorem` | [notMeasured_blocks_completion](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/notmeasured-blocks-completion.md) | 256 | `result-track:bdc5c92adf61a61d0ba346652d06826e03a281beb45bed2522268c0f5b03af1e` |
| 32 | `theorem` | [unsupported_ne_measured_zero](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/unsupported-ne-measured-zero.md) | 265 | `result-track:494f8e4fc0981cc30332568e935e9039076d15cda9509921972be94dabb75a46` |
| 33 | `theorem` | [notMeasured_ne_measured_zero](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/notmeasured-ne-measured-zero.md) | 269 | `result-track:e7ec4b9d32b5a8519318264cfc24dc3e3644519729d1a0ed546cc64e9c9ad5f0` |
| 34 | `structure` | [ResourceReport](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/resourcereport.md) | 273 | `declaration-track:a0df2ec4e2a0f25df037c84793bafc1b2d6b53537d8b72da90aafc022c6f003f` |
| 35 | `def` | [lowDimensionProfile](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/lowdimensionprofile.md) | 282 | `declaration-track:18df0d421f3d8461fc7eae6c703182fd1e0ef15f8ef6f16bdaabaf5887a66ffe` |
| 36 | `def` | [lowDepthProfile](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/lowdepthprofile.md) | 288 | `declaration-track:11e53ca563b51332496ca8b2e1d2abe226371aa4efc8b21c09142715914a6b3e` |
| 37 | `theorem` | [dimension_depth_incomparable](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/dimension-depth-incomparable.md) | 294 | `result-track:9af206944cf308fa109e1215669e55ea24d50d3643a54c20d0d813c21b7b4c63` |
| 38 | `theorem` | [depth_objective_preserves_tradeoff](../../../../Combinatorics/ResourcesNamespacedEdition2.lean/declarations/depth-objective-preserves-tradeoff.md) | 304 | `result-track:42d672aa893255c9f8fdb3f29ba41aa8bb20f88f4adbf379d1faaa924b7a23b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46a379b407fcf5a254f7513018e8dc490f8006e44b7c4cab0282a0a9041be57a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Resources/Variant7c47182ecb88d3eb4f95ac6b39a1646ab9d7cec124e45459eead1eced9c4fe59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
