# Verification target: Exact Scale Comparison For The Seven Eighths Envelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe3335e858c242fa3ff0ab801a82489d830aa171",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe3335e858c242fa3ff0ab801a82489d830aa171`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sevenEighthsEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/seveneighthsenvelope.md) | 22 | `declaration-track:78f22829d53340f351343bdba272b2a97ba5beac415058960802c6909e99b8d2` |
| 2 | `def` | [nativeBoundaryScale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/nativeboundaryscale.md) | 25 | `declaration-track:924ef45b107fbfc8ade12c631c2d81ff078a0845c4e2a3de2708ae85a4ed3ef3` |
| 3 | `theorem` | [nativeBoundaryScale_physical_endpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/nativeboundaryscale-physical-endpoint.md) | 28 | `result-track:91a17e6f2641fddc4ae1beef5ffa025b48a7135eb879f7fd370cad47df449de5` |
| 4 | `theorem` | [envelope_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/envelope-ratio.md) | 38 | `result-track:c2c729e635726156dc8523c16bfcab4e9de3d30fb1e3427b7c4279cddd072400` |
| 5 | `theorem` | [envelope_ratio_tendsto](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/envelope-ratio-tendsto.md) | 51 | `result-track:6fdac82a75737d65e8337a67fab5c7fb45f5de7bd302fe61e819b4ff033c09ba` |
| 6 | `theorem` | [mesh_decay_positive_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/mesh-decay-positive-iff.md) | 61 | `result-track:6b97546392320f5ea4cf06ce3c886780363b079d1f029c094fd389c7b858ef1e` |
| 7 | `theorem` | [bhp_mesh_decay](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/bhp-mesh-decay.md) | 66 | `result-track:d15c41ef2e6c58f3827c6912b533006dcff2aaba48708b37f326027a26f90f29` |
| 8 | `theorem` | [sevenEighths_mesh_decay_negative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactScaleComparisonForTheSevenEighthsEnvelope.lean/declarations/seveneighths-mesh-decay-negative.md) | 70 | `result-track:5d8a5b1d9b014fa4ed2db2e8742d1fa5865d72bbec71873ed2ee04e1ba05c83d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1b091ef3a55118861728bc28c16d04878aa2fc21bae4671d2e80e13f6f7b221 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantc2f7e5b794ce527446e05b4edc8f2273fe667594f00d803117536ccbe4234077.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
