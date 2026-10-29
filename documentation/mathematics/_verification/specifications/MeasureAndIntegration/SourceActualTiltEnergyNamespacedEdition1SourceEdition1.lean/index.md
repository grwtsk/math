# Verification target: Source Actual Tilt Energy Namespaced Edition1 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237509b43f5916ca3e958f82ff565305c7343b79",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantaf2460f771e9ba138606104fc04b053c61d4bc45df8aa2e79d5709759b233303.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237509b43f5916ca3e958f82ff565305c7343b79`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantaf2460f771e9ba138606104fc04b053c61d4bc45df8aa2e79d5709759b233303.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantaf2460f771e9ba138606104fc04b053c61d4bc45df8aa2e79d5709759b233303.lean.json)

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
| 1 | `def` | [actualUnitTilt](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittilt.md) | 29 | `declaration-track:ec40f572eb0b3d573ea5a7c9529341b8ee91ea3b2595bfb09da83a284ad85f8c` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittiltenergy.md) | 33 | `declaration-track:d092844ffc2432375070fcf901d31ab75f6c38b416df10e8c78380586da3ea72` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittilt-sq-integrable.md) | 37 | `result-track:551a64f005872541568203c62d65118873eea7914a518e715af0e46e284f025b` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittiltenergy-eq-integral.md) | 48 | `result-track:87cd822aa30017c2b1b1c1da53fa7cb453719ab97c4b70d7af86e3063c2ce93f` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittilt-transform.md) | 58 | `result-track:e5c32aec0e0005c519647f730f963762370fdb81c90480c64be8244aa38293f1` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittilt-integral-sq-le.md) | 66 | `result-track:351330bdd781b6186ecef22f2964a880fb5a78e7f3938eebf801c9193e9d3048` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittiltenergy-eventually-ge.md) | 96 | `result-track:e3b90726a3d7264ec3bcb9adca1816f439bd7f3db684bb4f4d195b47685a21d7` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../MeasureAndIntegration/SourceActualTiltEnergyNamespacedEdition1SourceEdition1.lean/declarations/actualunittiltenergy-tendsto-attop.md) | 146 | `result-track:2609c78fd8a2ad9e1e1f99efc6d66c7e8bfc292842cab69b2284d439c2b37e97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb9f08a9389fe714e88d3c3d18372fda08d066956f769a3240c96d2f2e2dfdb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantaf2460f771e9ba138606104fc04b053c61d4bc45df8aa2e79d5709759b233303.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantaf2460f771e9ba138606104fc04b053c61d4bc45df8aa2e79d5709759b233303.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
