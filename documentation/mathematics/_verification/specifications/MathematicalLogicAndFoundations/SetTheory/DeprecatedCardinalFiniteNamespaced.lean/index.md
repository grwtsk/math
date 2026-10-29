# Verification target: Deprecated Cardinal Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4d0eaff5f97138566bd26253d9d1ed69bede696",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4d0eaff5f97138566bd26253d9d1ed69bede696`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Deprecated.Cardinal.PartENat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card.md) | 34 | `declaration-track:be746c2584de4556979e4ffda958e90f1bfab59aa1c856aeabe843d78dc00acc` |
| 2 | `theorem` | [card_eq_coe_fintype_card](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-eq-coe-fintype-card.md) | 41 | `result-track:02c77efdf7ade50c0338301d70f02998da8eec2de690968ceaaddfbf3d6210d4` |
| 3 | `theorem` | [card_eq_top_of_infinite](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-eq-top-of-infinite.md) | 45 | `result-track:c871ec8ed6d9b784d6f15a3797a9e8f5ead7f3cd8ae21232557de4ea2a59167c` |
| 4 | `theorem` | [card_sum](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-sum.md) | 49 | `result-track:e7b3740e5ebcaeec0dfa568d5fa37881701eb126d57c836a2d6a64cb699d3e4f` |
| 5 | `theorem` | [card_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-congr.md) | 53 | `result-track:5cf6c0e8e94da122c70f0c78e4668802213b23160c7a6410b805e655443d9546` |
| 6 | `lemma` | [card_ulift](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-ulift.md) | 56 | `result-track:6a9aa79ecf49e10d3684500c34748688389457f6f90d020b50e18fba1a50021e` |
| 7 | `lemma` | [card_plift](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-plift.md) | 58 | `result-track:1ea0a6ccc400d428f00023155165fb6c39cadf31587487117edb105f0d139103` |
| 8 | `theorem` | [card_image_of_injOn](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-image-of-injon.md) | 60 | `result-track:2f21dcb45e30016721d7ea9e6b049c947a231016fc96387b0cfe52384b5b2349` |
| 9 | `theorem` | [card_image_of_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-image-of-injective.md) | 64 | `result-track:dfab9216e14537a8d2beaafbd6739f0f2ce003b4e78417d3b848216b352b5a5f` |
| 10 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/natcast-le-topartenat-iff.md) | 70 | `result-track:c29ed97c3fb0affb74a28640931dbb3543c98ec8acca3b5c7da8182f448b4a0d` |
| 11 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/topartenat-le-natcast-iff.md) | 75 | `result-track:6e19277102f8574b482c0d32f660e69e2729f11bc8e0c1d1595289ce7134ccab` |
| 12 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/natcast-eq-topartenat-iff.md) | 80 | `result-track:bd2860180ab29ed086eb9bae76f565ae12c98e237c51167156c7a556f8347eba` |
| 13 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/topartenat-eq-natcast-iff.md) | 86 | `result-track:d6dcf5036d74c38f384f5f4c2c87d4b37f23bd0963e4907ef61d14dc4fa0704a` |
| 14 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/natcast-lt-topartenat-iff.md) | 91 | `result-track:8bec539d3d09c0f513533e2ed41195d103671ca4df7e0e8e3134b8014db54644` |
| 15 | `theorem` | [Deprecated Cardinal Finite Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/topartenat-lt-natcast-iff.md) | 96 | `result-track:ff306f31c89201dd04bc245d6a5df11e1493dca01b0159c093b763924dfd04eb` |
| 16 | `theorem` | [card_eq_zero_iff_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-eq-zero-iff-empty.md) | 100 | `result-track:b578256ec14fac879bcd9afdaae15c11ae23f61380c45b3057e553d560d70b80` |
| 17 | `theorem` | [card_le_one_iff_subsingleton](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-le-one-iff-subsingleton.md) | 106 | `result-track:ab82e375a6d03a33bb8ef513e303addcfc55341e8d985b882be2172dc6d1483a` |
| 18 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/one-lt-card-iff-nontrivial.md) | 112 | `result-track:44da6fadaa871ccb67faf71d6584d9de03ef13853c8007b9f6121561b4be3237` |
| 19 | `theorem` | [card_eq_coe_natCard](../../../../../MathematicalLogicAndFoundations/SetTheory/DeprecatedCardinalFiniteNamespaced.lean/declarations/card-eq-coe-natcard.md) | 120 | `result-track:bef0187816e58e50fff150c56fcee7065c61e44584ad6734e4b03c8b429b5e82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5372db02ea1cb7e3b89fdb5cd6f89ff1bce8f55529cb107b21044083b0e107b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
