# Verification target: Finite Positive Storage Variation Has An Exact Upcrossing Coarea Ledger Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d956bf845a33d3d326d0078ce6792605f9b73613",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d956bf845a33d3d326d0078ce6792605f9b73613`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.AtomicSuperlevels` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.NativeSuperlevelConsumer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveStorage](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/positivestorage.md) | 27 | `declaration-track:596f1f7de9288260dc5c521e944402dc15f0d79eaeb318bf9f5e8735e96d5146` |
| 2 | `def` | [step](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/step.md) | 32 | `declaration-track:1332a9389c7e4317838776ccd5cc4b147aca0506675fb4088d7d3e9ce096173d` |
| 3 | `def` | [upwardVariation](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/upwardvariation.md) | 37 | `declaration-track:f4316bb072ecc707a744a46be75df8312a981737859e7ff675a9a1a18798c31b` |
| 4 | `def` | [totalVariation](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/totalvariation.md) | 42 | `declaration-track:6d1572105025073a359161a470e2bd5474c210f3d2ccd676c8d47ef8596e294d` |
| 5 | `def` | [crossing](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/crossing.md) | 49 | `declaration-track:1782442099047402d0334d7f0cbabc71ec461c51784e6deff95bbd6c562ba701` |
| 6 | `def` | [crossingCount](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/crossingcount.md) | 56 | `declaration-track:8701a7bd1892f6f6cb31a3a55f4edb7f95abe012ab36e408883d3fe91085c0c1` |
| 7 | `theorem` | [scalar_variation](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/scalar-variation.md) | 59 | `result-track:f929c2812f186c4ad71e587e137d58a404e034944800355af777ab0778b28184` |
| 8 | `theorem` | [signed_steps_telescope](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/signed-steps-telescope.md) | 66 | `result-track:74caf04705d39eddc22dfc85ab0f297def28ab377b41259f7844e043be125eb4` |
| 9 | `theorem` | [positive_variation_exact](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/positive-variation-exact.md) | 72 | `result-track:ef49857b5411d2148a104d2050638191d3c4914cf1a4ee703b70b296f4fa9d6e` |
| 10 | `theorem` | [nonpositive_endpoints_twice_upward](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/nonpositive-endpoints-twice-upward.md) | 79 | `result-track:21a7785317eac1c68151da4b71d36cf143ef13b0ffbf7aea1799afee9c2f6ba4` |
| 11 | `theorem` | [crossing_measurable](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/crossing-measurable.md) | 85 | `result-track:2ba3b29f284d17de25ec198af628964d43fa961df7739fc9876215db493cc5aa` |
| 12 | `theorem` | [crossing_integral](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/crossing-integral.md) | 88 | `result-track:5c82d1b70dd2c0b6e02194851e282a34f548095deb340b397a3e59b621b90422` |
| 13 | `theorem` | [exact_upcrossing_integral](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/exact-upcrossing-integral.md) | 101 | `result-track:440d70e37ce7c45f50888805339f891b1ca1cd23543d8c46fda7cf898842811c` |
| 14 | `theorem` | [finite_coarea_nonpositive_endpoints](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/finite-coarea-nonpositive-endpoints.md) | 108 | `result-track:ee3cc62a77fe291b54a09b4af84bcd61bd10da550a4ded001508960889f97b86` |
| 15 | `theorem` | [crossingCount_zero_outside_height](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/crossingcount-zero-outside-height.md) | 115 | `result-track:a04ba028a346b7639a2685cc02ef65d651a7119654284ae5c9fd3f3fe3a80421` |
| 16 | `theorem` | [exact_height_truncation](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/exact-height-truncation.md) | 127 | `result-track:1ea63ba2e8a87fa8f2a061c82bea9b306600b72c5db8ae67e29264a970457eda` |
| 17 | `theorem` | [finite_height_coarea](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/finite-height-coarea.md) | 137 | `result-track:ed025a85724cca304a4498956b99a03689fb153b5a0782cfa7fd58eb62d16d7e` |
| 18 | `theorem` | [actual_native_storage_crossing_coarea](../../../../MeasureAndIntegration/FinitePositiveStorageVariationHasAnExactUpcrossingCoareaLedgerEdition1.lean/declarations/actual-native-storage-crossing-coarea.md) | 145 | `result-track:7db04b81159e5c13316f8042c5b085c3ab3df5dc4bbbba50fab15181ba34ebb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25025ffd8906150a81fd3216270c81e8442f3bd6a79fb42e7db096f926aeb5f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
