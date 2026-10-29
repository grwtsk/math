# Verification target: Source Bump Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b6d6820963d885a5f9835b2fe67cc438b283e2f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b6d6820963d885a5f9835b2fe67cc438b283e2f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment.md) | 22 | `declaration-track:54f6d90928a59891827b879bd93ed44458bf9ad14ed7eca597f12ab0af96780b` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment-intervalintegrable.md) | 27 | `result-track:b9cfefb83923962c1c42cb1a27890044ad3feaced9e328a2bd799098e5d903ca` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment-zero-eq-source.md) | 34 | `result-track:ef6cfff317bffe5e5b5af151bba9155d89a263605e97dc300e18b0391a323488` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment-zero-zero.md) | 47 | `result-track:0fd8bdcc41152949cb38ab62d0e305922f5ea5ef6afffa8af31291a262eae2ce` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpflux-hasderivat.md) | 57 | `result-track:949ba00048e5932275ca69825d42a4cb070ed47a787c5a8336a82007f4fd31ac` |
| 6 | `theorem` | [bumpMoment_equation](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment-equation.md) | 68 | `result-track:026ede51830b0a83edc633ce1443e7e89c1de4dd295cd5a95b91189d1b7dfa58` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/re-eq-zero-of-weighted-energy.md) | 103 | `result-track:73dec2f13bbe34ed71c016624b3adcad4e768cf54e567f4debaeb1d04a22f1a7` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpprimitive-hasderivat.md) | 132 | `result-track:381aa212f2cfaad74533956a3658bd91db486b89324026b86d92100eb8a00832` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/bumpmoment-closedformula.md) | 147 | `result-track:6ba43b03323a139d2fa6329f8c53619240ed7352a8b83a724e8c63cf35660e6a` |
| 10 | `theorem` | [V_zero](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/v-zero.md) | 172 | `result-track:15a7d74c62d7030c5fbcf8f7e227c2c7c880a43ca5890dbbf63db6a5d0d1f455` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/v-eq-bumpmoment.md) | 181 | `result-track:68b2fb2c2e8cba8b0530174cb6b639843478bc376ebeff72036640a9d78987b1` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../MeasureAndIntegration/SourceBumpAdapter.lean/declarations/w-eq-bumpmoment.md) | 194 | `result-track:939635a3186f1f21e8a890454da3056f9fd42ee4f56f20b245d62ffc8c55dc4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26accabfcd583ac4a8df970d9871aeec642a7a10f9e45cdbd8223e05cb71f0d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapter/Variantbf38e7f8a19f306d634bc03104bad3bb4e51fa65bfaed0a4415fc13a40640122.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
