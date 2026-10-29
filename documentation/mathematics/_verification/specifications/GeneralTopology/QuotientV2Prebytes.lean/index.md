# Verification target: Quotient V2 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcaf2e6e5a83cb627a00ed4a544a894739ea6e84",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/QuotientV2Prebytes.lean/index.md) · [Full source](../../../../GeneralTopology/QuotientV2Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcaf2e6e5a83cb627a00ed4a544a894739ea6e84`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfdenominator.md) | 27 | `declaration-track:0719049fc735f0edaf33938327b4ce053d0d87201d07a9f772a45b37f58ec73f` |
| 2 | `def` | [continuousHalfRational](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfrational.md) | 30 | `declaration-track:f0ebedc6fbc1bec0dde594da34a4434a0fffccf81e3d13ff37dc2de5a9beedc8` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfscalederivative.md) | 34 | `declaration-track:cb03fdc583c7993a2dbdbaa039fdaf5f1fb0400bac4844aa92e2185f16bbd543` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfdenominator-pos.md) | 38 | `result-track:529e4f2dca0454a4735aa752300013f1faa478db40b72eab8a41d4d02e0fad9e` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfrational-hasderivat.md) | 43 | `result-track:c2a202d3b354a740bf7e4bb9d6861bbe05d69bf44d035098429084af6c2196e6` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfrational-contdiff.md) | 55 | `result-track:602f3c38600dd62818870a298715093433500419d99f36a28bf4ebd87ec1d1cc` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfscalederivative-continuous.md) | 63 | `result-track:8fe566ae6244a5915b6fd1761f3e2f1880eb0382ede0de71293c685901d092b4` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../GeneralTopology/QuotientV2Prebytes.lean/declarations/continuoushalfscalederivative-lt-zero.md) | 72 | `result-track:e01fe3f9e1bd3044ff822f8c2f8a20d24176ba9d4c37ab6266cbd7b87f62b2c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f62fb4221c178116a6dbe52c26d58e732baeb296d7cb3426da993d429fa9bb05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuotientV2Prebytes/Variantd7d2d80390a97c0be596f7eb2c7a3725eade462ccb66557d4719916fb30129ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
