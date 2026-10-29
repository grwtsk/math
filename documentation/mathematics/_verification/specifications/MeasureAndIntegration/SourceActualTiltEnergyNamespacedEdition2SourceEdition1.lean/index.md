# Verification target: Source Actual Tilt Energy Namespaced Edition2 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31dc0f484562b4891fb9516a8e92201de24ad7b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31dc0f484562b4891fb9516a8e92201de24ad7b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittilt.md) | 29 | `declaration-track:68f0a36ee34745087b5865cd8ed360a75b4779c1e374426e4ac7df2c3f937a6f` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittiltenergy.md) | 33 | `declaration-track:6a31bbcfd84119983150a058ddb7505db12af6b7c95a4d3b8f41374bf4dd74fc` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittilt-sq-integrable.md) | 37 | `result-track:6cb09b30a1dd43259ac46f690aaf95792fdfdd69709a49ef58474804a65ff5cd` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittiltenergy-eq-integral.md) | 52 | `result-track:61af826b2d4a56f43fac12a52a4f5b84b6c74818f4d253aadbb3e09a4b082f38` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittilt-transform.md) | 62 | `result-track:0873b85ce2e4f8ccfea31629fb89b3ec6cfd6f776574cad5208db7cca97e398c` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittilt-integral-sq-le.md) | 70 | `result-track:9b6fbebddbc38c9d0827810ba0936b6e5d0dcbecedaf552fb5110c237610e47b` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittiltenergy-eventually-ge.md) | 100 | `result-track:6fd8d0b7b6391eede9770d0c9c33d29848fb303ecf97798c932185f7e13d9cf1` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition2SourceEdition1.lean/declarations/actualunittiltenergy-tendsto-attop.md) | 150 | `result-track:40aecb56caa955b5794ea164ff047e38dea3b7a41255e184776665e7664f03f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88ed2cdb0271ab8a04ff47c24c0c28a0af083a759671766bbce27dd7205e4726 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
