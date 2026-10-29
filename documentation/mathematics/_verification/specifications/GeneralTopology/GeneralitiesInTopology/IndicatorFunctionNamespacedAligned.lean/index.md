# Verification target: Indicator Function Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cbac3249e230c09f88083e0ac9a293285801151",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantacea87bbc9dd97d6662d961e7125575fcb8dc872d770c5cbdb5436c95b512a9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cbac3249e230c09f88083e0ac9a293285801151`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantacea87bbc9dd97d6662d961e7125575fcb8dc872d770c5cbdb5436c95b512a9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variantacea87bbc9dd97d6662d961e7125575fcb8dc872d770c5cbdb5436c95b512a9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IndicatorFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/mulindicator-eventuallyeq.md) | 37 | `result-track:74818cbdeba7f39090ecb63fedad37a4c172b6c43871404b237f0e614d1560ac` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/mulindicator-union-eventuallyeq.md) | 52 | `result-track:ff6eabfab83a578aff92c4568a25a6f6a3cfbcf06a7fe7a39027fafc4c773351` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/mulindicator-eventuallyle-mulindicator.md) | 64 | `result-track:adc1ab851dde4a7a29538826ad9c843715a8dd6f43ad07d5299a747d27bd7eb9` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/monotone-mulindicator-eventuallyeq-iunion.md) | 72 | `result-track:f63c665ffc9b01b25e22ca82812c9ca0a6210e5534083214a6caddea2f647cd0` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/monotone-tendsto-mulindicator.md) | 78 | `result-track:e1cfcf0871bcdeb3163700696bca58432f53953f34c13675f0d41e70465b78aa` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/antitone-mulindicator-eventuallyeq-iinter.md) | 85 | `result-track:fe52e13231f28531212cb79543e4c2e1fa4fb68d2e5e1215bf5ee49fc4f62306` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/antitone-tendsto-mulindicator.md) | 91 | `result-track:80dcc985d0e0c7148ab779d8c6dc8d221c451c1fedde84a96ca68bf7aed46c12` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/mulindicator-biunion-finset-eventuallyeq.md) | 98 | `result-track:7214c80468012e3c389441c854663fbd14c214b778a6dee008e2faf52d970896` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/tendsto-mulindicator-biunion-finset.md) | 106 | `result-track:3ec6ac78bc1587c863e6bf2226a66c1c2ac234e8276b26b12c0f62e1f293e97e` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/filter-eventuallyeq-mulsupport.md) | 113 | `result-track:d04955c4c8a09d9619387337a78987d33ad9cb6ceef20de0d9c0fb9f497ea387` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/filter-eventuallyeq-mulindicator.md) | 120 | `result-track:2626556920a6bc53b70d56147b8e549864c1197678c9471f3a9d98fcfe1a6688` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/filter-eventuallyeq-mulindicator-one.md) | 126 | `result-track:c1df508334ea5f5cd68ce3748a54eef61724f40254c467d47677f6b4ec88fb60` |
| 13 | `theorem` | [Filter.EventuallyEq.of_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/filter-eventuallyeq-of-mulindicator.md) | 132 | `result-track:7a0d4c4d774e47d69ce6068295d233207fa151416c68cfc0682673bd2f347c1e` |
| 14 | `theorem` | [Filter.EventuallyEq.of_mulIndicator_const](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionNamespacedAligned.lean/declarations/filter-eventuallyeq-of-mulindicator-const.md) | 141 | `result-track:e537baedfad2560b30363e58a7720eea4df8effcbc19c2d4345142fe44b0da06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a135c98c0f0b9a4fc3c92b778444567d741be4fb07fd60d9e61d96d56fd73bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantacea87bbc9dd97d6662d961e7125575fcb8dc872d770c5cbdb5436c95b512a9b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IndicatorFunction/Variantacea87bbc9dd97d6662d961e7125575fcb8dc872d770c5cbdb5436c95b512a9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
