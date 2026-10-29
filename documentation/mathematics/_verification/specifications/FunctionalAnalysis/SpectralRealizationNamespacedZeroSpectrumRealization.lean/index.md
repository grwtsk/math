# Verification target: Spectral Realization Namespaced Zero Spectrum Realization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87c1f50bc47ec9d327a8d7fb345364b0b277e41",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87c1f50bc47ec9d327a8d7fb345364b0b277e41`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralRealization/Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.OperatorData` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.RH.ZeroData` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroSpectrumRealization](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/zerospectrumrealization.md) | 36 | `declaration-track:6f4caa7f4365e27ca769b51d7b01eb7581bb56bdc3d536f5453f296012ae6955` |
| 2 | `theorem` | [D_selfAdjoint](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/d-selfadjoint.md) | 40 | `result-track:7cb2ee56d1aaecc750680143e38709043cab3512edfc332c76eec72ba6d7f12a` |
| 3 | `theorem` | [D_compactResolvent](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/d-compactresolvent.md) | 46 | `result-track:164f281351e2a79329232358b93430a12b3fa5436f928aeab6d040a1eb519aa7` |
| 4 | `theorem` | [spectrum_real_of_selfAdjoint](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/spectrum-real-of-selfadjoint.md) | 52 | `result-track:8c49824f841d4c32b96c555a4351b8113d76ce9080fafb05610f47e01b0f2acf` |
| 5 | `theorem` | [zero_spectrum_realization_has_parameter_map](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/zero-spectrum-realization-has-parameter-map.md) | 59 | `result-track:6c8c5fa1e6951459284ff1385e9705e40726e8941a2743968a15aa46d3cac789` |
| 6 | `theorem` | [h0_zero_iff_spectral_point](../../../../FunctionalAnalysis/SpectralRealizationNamespacedZeroSpectrumRealization.lean/declarations/h0-zero-iff-spectral-point.md) | 65 | `result-track:3ffda5ed21de94b819ae67feb37ee4f66c675e7d64e1a74da6a5325cffe98d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fbac1741c8b6b98483488af2bea5160502fd15f6786578102f272e1a1a7284f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SpectralRealization/Variant568d37079817c5c0f3d8bc46d3b362880dd8460f801447ffd1986e284aeb3ab6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
