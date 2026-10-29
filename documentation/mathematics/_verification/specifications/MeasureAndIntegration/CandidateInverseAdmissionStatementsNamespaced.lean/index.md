# Verification target: Candidate Inverse Admission Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc84d32aaf7b71e1ec2d6999b789348f98cdff1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc84d32aaf7b71e1ec2d6999b789348f98cdff1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFrequency](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/angularfrequency.md) | 25 | `declaration-track:8457c9992c35f1428394daded29da9989e4915693529e28b1747db6d81342dbd` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/boundaryinverse-eq-fourierinv.md) | 29 | `result-track:d733e573bc8f7c55f498196a5a415dda68949a164e59c3080dc689e59b1f71b1` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-frequency-admission.md) | 48 | `result-track:59897fbfcb1cb54f5146047cbbcbe2c470795fe511c5a78fc7e807d18eda95e9` |
| 4 | `def` | [fullBoundaryVector](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/fullboundaryvector.md) | 71 | `declaration-track:23fc6113f67f54044eade927146c7b02959f29fb1c8f0579585c3c1646c17266` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/fullboundaryvector-ae.md) | 77 | `result-track:39ec0b0ee0c75d9ffc967ec3357b38f56acf3ccbed4d1fe09cca54898b961c53` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-memlp.md) | 88 | `result-track:c2104d6e514e5a8f7781edf4c512e7af34a46ad8021e258319cf82c3b2e407e0` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-continuous.md) | 94 | `result-track:3c6e3c2b84bd129d397cbaf21e1b3c0869703c002c4f8c2612e6dd86544afe3e` |
| 8 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/norm-sq-tolp.md) | 102 | `result-track:8eae70806ce4836b3aeb15e302b9d9a77ed215ebd5df9fa4ce93ad548dc0792a` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/fullboundaryvector-norm-sq.md) | 113 | `result-track:01334e128259abdba8a1d98026516ecec6f1ecf7660921099b173adccc7d6fc3` |
| 10 | `def` | [controller](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/controller.md) | 131 | `declaration-track:7545e38c674639eab41ce967c4fbec8b769d3b4cc5e1dbe9228cd3929420b9e5` |
| 11 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/controller-ae.md) | 136 | `result-track:bfa11db23922eedaa3f79749fb3fcaff7caaafba04ae5f49d0b006ab422061d2` |
| 12 | `theorem` | [zeroExtension_controller](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/zeroextension-controller.md) | 143 | `result-track:8a094d743d37b670814641383d3d809aa3ec56d271d52e25a2833bb6705a54a8` |
| 13 | `theorem` | [controller_norm_sq](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/controller-norm-sq.md) | 160 | `result-track:0ce45a6138ae6c77a1525591f942e2256eb1627bf2bddb42864af5c9269ba370` |
| 14 | `theorem` | [boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/boundaryinverse-shift.md) | 179 | `result-track:10b0b91c9868c0f4f23a6ecafa79837fc7849763629e3bb7809407e7d6f68a8f` |
| 15 | `theorem` | [candidate_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-shift.md) | 223 | `result-track:ff8229eab477d0f3f7423f0c358a965b087ff6c3770d83c88a2a17b01648bb7e` |
| 16 | `theorem` | [candidate_boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-shift.md) | 229 | `result-track:5d2e4f27eff92cac7c17facb8062e490ea578822782485d2c14734f8f897ef3a` |
| 17 | `theorem` | [candidate_boundaryInverse_bounded](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-bounded.md) | 250 | `result-track:ccd4a62e78f0cd6fd35d2fa29128e454f6e9f8af2efde01126259f9b94a403e1` |
| 18 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-half-shift.md) | 270 | `result-track:45712e5e8a3947316e44a36840abe08b72854e6c46c84ecf21710bd78a26a650` |
| 19 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-exp-bound.md) | 286 | `result-track:05a6f333ef0f9b38572837bf5d4f8954c7ffc1bad5ad89291d6b54d05b8a5994` |
| 20 | `theorem` | [candidate_boundaryInverse_integrable](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-integrable.md) | 298 | `result-track:ec76927b98a1e078ab0d25ca714e32411a1dbbbf36abcbcc0c450d9456bd9042` |
| 21 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/candidate-boundaryinverse-laplace-integrable.md) | 317 | `result-track:391b2b09ede644991c5c3040983d12a49db4b5a9b4a22b396f86ab51fb72d181` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 342 | `declaration-track:63767326355976905efeed37b1761b98337bd78d2348bf980fec69f26aaba14e` |
| 23 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/example.md) | 346 | `declaration-track:03d866c046e7a3278eadcf010a86850cd370a2b80b60e762ad99fa9483433c17` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 351 | `declaration-track:4d0e23c28336175afc3f707b5ab66a0fa176d4428c58a559b9dc42943baa4144` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 356 | `declaration-track:ef5e2e48e55649eb00b9c54ce12d383279b691a470c71064b9663582632d14ea` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 360 | `declaration-track:fd67b3eca700430f3e8929e804775228c142dd092d6db35077967cffe84b9f6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d16cdd5c0a86b30de0bece83dd2b051ce6bf3f9939628257fa2d3285e58686b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
