# Verification target: Supplied Mean Averaging

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40218a9779b902da69805baaecd3bae540c11da7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/SuppliedMeanAveraging.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40218a9779b902da69805baaecd3bae540c11da7`.

Source path: `GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/SuppliedMeanAveraging.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/IntegrationTheorems/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/SuppliedMeanAveraging.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.GammaDirichlet` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Spectral.Capabilities` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [meanMixture](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/meanmixture.md) | 52 | `declaration-track:6616d2a9f31a5aee55c72f49fa0183cbe36430a0af299090d8f584f8f24d6494` |
| 2 | `theorem` | [meanMixture_normalized](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/meanmixture-normalized.md) | 58 | `result-track:f3864b47bb80135bcabdf5fc37e59e615da8bcac4f70d66cf5392afb4172edb8` |
| 3 | `def` | [randomSpectralExpectation](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/randomspectralexpectation.md) | 65 | `declaration-track:c5757c17486a3b2b24b876ee863969a8fa2e084cfa8777e48423d186d16032d9` |
| 4 | `theorem` | [randomSpectralExpectation_eq_sum](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/randomspectralexpectation-eq-sum.md) | 72 | `result-track:b098130165ec2f4db9871c3c39b473518ad307d7cf584afca46c71062ac39c49` |
| 5 | `theorem` | [integral_randomSpectralExpectation_eq_mean](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/integral-randomspectralexpectation-eq-mean.md) | 84 | `result-track:528d8cefdbd94b1cd4bba423ff76285c2037f3fe8f65f5177717284953ce11f3` |
| 6 | `theorem` | [integral_equalScaleMeanSpectralExpectation](../../../../MeasureAndIntegration/SuppliedMeanAveraging.lean/declarations/integral-equalscalemeanspectralexpectation.md) | 122 | `result-track:d62d31d868ff5b2215bd5362e3eab1f086f7321e06230eab7a2c729c271a89a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c03d0f354d49be967b0de81fa5b0448bf308e46257cc10fc796383660dbcf9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/SuppliedMeanAveraging.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/IntegrationTheorems/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/SuppliedMeanAveraging.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
