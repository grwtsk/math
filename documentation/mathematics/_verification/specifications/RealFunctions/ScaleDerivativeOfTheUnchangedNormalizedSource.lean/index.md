# Verification target: Scale Derivative Of The Unchanged Normalized Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776b72979a89b550e4599fd221cfaeea41f04f2e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantc621cfc1bf3afc46304f687c8b75753b0590baca8f9e46ceaaceae699c61668f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/index.md) · [Full source](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776b72979a89b550e4599fd221cfaeea41f04f2e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantc621cfc1bf3afc46304f687c8b75753b0590baca8f9e46ceaaceae699c61668f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantc621cfc1bf3afc46304f687c8b75753b0590baca8f9e46ceaaceae699c61668f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/normalizationderivative.md) | 26 | `declaration-track:bfe81769f5d211bd7c9c7b61b77a2cfe80319efb073f90938486efd168f999f5` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/sourcenormalization-hasderivat.md) | 30 | `result-track:27bbba125951cd587fae971a2a569ccb70d0886a0245c5f821986b76f96e2c72` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/sourcenormalization-deriv.md) | 46 | `result-track:a2e166e489d431300af1ee065baaf6517722924901a548c4e2d3caa65ae7e297` |
| 4 | `def` | [scaleAmplitude](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scaleamplitude.md) | 51 | `declaration-track:1f6d5ab4d9802330efe127dfd5ae04900ebc29cc6e7c61a93d6b4b747fa7f5be` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scaleamplitude-eq.md) | 54 | `result-track:54de575629fe0c0c467413cdce435d5563a17053b988913e81148fe77e58c755` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scaleprofile-eq-amplitude.md) | 59 | `result-track:ad6f6bbfdc19d7bebabb0d5f2b25ba80dfcadeb0fe2817d23204a677e4cb6097` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scaleamplitude-hasderivat.md) | 67 | `result-track:5920895aa8b1fafa0aa00eb0239e74bec13a28fe5300b501b08ecc190c426bed` |
| 8 | `def` | [scaleDerivative](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scalederivative.md) | 82 | `declaration-track:b4f45debc6c0bbc53d933bb01b317ce767774d6f654b54c4bca245615d341a14` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scalederivative-eq-actual.md) | 91 | `result-track:1dcb20f7840b1be013b1672ee3b8b013298ceb7a694bb0f6a1a1dee8c43b4c55` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/scaleprofile-hasderivat.md) | 103 | `result-track:0c4258eb09ea57b5ced072734e2b083d2d49eacd91f7d80dae11d74bf45a8c26` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../RealFunctions/ScaleDerivativeOfTheUnchangedNormalizedSource.lean/declarations/normalizedsource-hasderivat.md) | 127 | `result-track:4f2589a2a8046e0027b51e0be961c4163324fe8257eda07fbe6cd3a969f97bd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f312219471ae3088a67d6adf7e8693555740023c58567d2a6b2f1065b30036e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantc621cfc1bf3afc46304f687c8b75753b0590baca8f9e46ceaaceae699c61668f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantc621cfc1bf3afc46304f687c8b75753b0590baca8f9e46ceaaceae699c61668f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
