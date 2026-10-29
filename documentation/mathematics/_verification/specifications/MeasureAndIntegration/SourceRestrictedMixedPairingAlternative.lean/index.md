# Verification target: Source Restricted Mixed Pairing Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e359857a2f9b2330a5c0012001ec5cc409397275",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e359857a2f9b2330a5c0012001ec5cc409397275`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictedSourcePairing](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedsourcepairing.md) | 36 | `declaration-track:c14418605f5d2e160496d5542b591be0b1e9a9e885fe3376051a1c8ad910e4bd` |
| 2 | `def` | [restrictedDerivativePairing](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedderivativepairing.md) | 41 | `declaration-track:65f6e6e15fcbc6418d7ad96f03e8ed6af843386bb1b8bbafa9fabcb2acff7f76` |
| 3 | `def` | [restrictedMixedSourceForm](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform.md) | 46 | `declaration-track:9b18ae8920439d51cfed220b9b3bbf650c4fdd1c3caf15ba308715c92e6ae32d` |
| 4 | `theorem` | [shifted_source_product_integrable](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/shifted-source-product-integrable.md) | 49 | `result-track:64ac911fd9c5807a4a906d91f30fa3b3075bab2e64ed3dc9bad46da7f6e1b84d` |
| 5 | `theorem` | [shifted_derivative_product_integrable](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/shifted-derivative-product-integrable.md) | 56 | `result-track:068a283e5a3ef59db1c4ba297dd81bba35232df795a0be507046533826ecf271` |
| 6 | `theorem` | [restricted_products_integrable](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restricted-products-integrable.md) | 65 | `result-track:ea2a0c320abb3ca00b40c5944c2acb550e8aa31dae567fe759fc3c605a30c463` |
| 7 | `theorem` | [restricted_shifted_product_abs_le_energy](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restricted-shifted-product-abs-le-energy.md) | 73 | `result-track:f089221a1e43f247a687f02a560cc44a69366404353e744dbd8e01b19e2a25dc` |
| 8 | `theorem` | [restrictedSourcePairing_abs_le_one](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedsourcepairing-abs-le-one.md) | 100 | `result-track:2385d0323c409fce7c001735d5f4749b4038a055999dbf6d874fd86bc912be49` |
| 9 | `theorem` | [restrictedDerivativePairing_abs_le_energy](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedderivativepairing-abs-le-energy.md) | 108 | `result-track:7aa8a37a0aae9882e17f5f9e1b6606982d71bab3b74c76a0e1eee71b88cd8c24` |
| 10 | `theorem` | [restrictedDerivativePairing_abs_le_coefficient](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedderivativepairing-abs-le-coefficient.md) | 116 | `result-track:6faf43fde5f219b39bbaa396a0cba8e3fa51865b927877995fa67f3f1f7956b4` |
| 11 | `theorem` | [restrictedMixedSourceForm_abs_le_coefficient](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform-abs-le-coefficient.md) | 126 | `result-track:2e9de198ac79e4e120dc7266b3a285444097ce8157bd6cde4efd3dffb2ec3ec7` |
| 12 | `theorem` | [restrictedMixedSourceForm_abs_mul_le_coefficient](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform-abs-mul-le-coefficient.md) | 141 | `result-track:fbe7e6b49e40363c5e759d0ec07f27a97fd1d4b66e8f90d6ba2b8674d96774d1` |
| 13 | `theorem` | [restrictedMixedSourceForm_empty](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform-empty.md) | 150 | `result-track:f224e47b06bdd08521d0c675198d07e29f0c9abaa815293a673dc31971f55b34` |
| 14 | `theorem` | [whole_shifted_source_pairing](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/whole-shifted-source-pairing.md) | 154 | `result-track:fc5d945c0018b84135bb702eb07bd38500ac47a5ffc204b35af25e94fc1230f2` |
| 15 | `theorem` | [whole_shifted_derivative_pairing](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/whole-shifted-derivative-pairing.md) | 169 | `result-track:d33ec7e06ff3afbb09ac253173f76c9ac5feda39b4dab43eca5f74123f50d212` |
| 16 | `theorem` | [restrictedMixedSourceForm_univ](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform-univ.md) | 185 | `result-track:f365c54a6afe9afe1b46fe6863918f6088957183677d4ada08ff278391888ebe` |
| 17 | `theorem` | [restrictedMixedSourceForm_univ_same_shift](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/restrictedmixedsourceform-univ-same-shift.md) | 195 | `result-track:cb21c5a41f85762f15762ac22b78c6ec6af5f539ed826b9b8808ecf7cc699c2e` |
| 18 | `theorem` | [source_sectors_zero_after_spatial_edge](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/source-sectors-zero-after-spatial-edge.md) | 207 | `result-track:c3405553ff3693601246b2649fcb03c46d232a6886bf86fe72852bea831173c3` |
| 19 | `theorem` | [nonzero_left_spatial_atom_implies_time_lt](../../../../MeasureAndIntegration/SourceRestrictedMixedPairingAlternative.lean/declarations/nonzero-left-spatial-atom-implies-time-lt.md) | 220 | `result-track:ba2203af7537a704c7056cacf2f77b898cf73ed1f04b4dc110d960f5df2b4db4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ca2dd4af63a84ce035023bf2744b09e5f1071bc4c8ccf141e7cb25fa0afbed5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
