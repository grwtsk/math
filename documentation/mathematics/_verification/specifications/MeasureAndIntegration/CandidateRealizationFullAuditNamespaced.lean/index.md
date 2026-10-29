# Verification target: Candidate Realization Full Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e14d56ccfcbfb9689019fe5b8fd3148f97af5a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CandidateRealizationFullAudit/Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e14d56ccfcbfb9689019fe5b8fd3148f97af5a`.

Source path: `GRWTSK/Topology/GeneralTopology/CandidateRealizationFullAudit/Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CandidateRealizationFullAudit/Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFrequency](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/angularfrequency.md) | 24 | `declaration-track:b75c8f241ab8aee0a02145fc6f3ead82b3ac508d73f5098cd0f2536c62c2f5bf` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/boundaryinverse-eq-fourierinv.md) | 28 | `result-track:6ba7d6b6ea22c2bcd4afa0a7a1ac55640213447e38e6a8fb878e96e03637c0d4` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/candidate-frequency-admission.md) | 47 | `result-track:d63a1a3b314bd25f6e0920dd0b39ef8788fff424f04b7e87c8a18a05ae61bd36` |
| 4 | `def` | [fullBoundaryVector](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/fullboundaryvector.md) | 70 | `declaration-track:d025f33160375f269c3c294ddd89ec208bdc316e2eb18e209fb00668403487e8` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/fullboundaryvector-ae.md) | 76 | `result-track:5af74b6041bd7b98319021ab3262d1299663d08bd6123c81015002175c7f9bc1` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/candidate-boundaryinverse-memlp.md) | 87 | `result-track:5a4bbce72865c48baca49284b8b203886cd4484373a3793a9539fb8931e5552d` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/candidate-boundaryinverse-continuous.md) | 93 | `result-track:b359cfd5f2d2a9428af619a695bf48dc397654e7246d6923b357004d194d3818` |
| 8 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/norm-sq-tolp.md) | 101 | `result-track:03968d1ecea85f3b271038eb2f053f500008d552e896c4e8da95af87cbb4bf75` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/fullboundaryvector-norm-sq.md) | 112 | `result-track:80d2f2aebdd54f3c1d5022a3fa49fd4245d4846753a794aa4a12e1a6399b24ec` |
| 10 | `def` | [controller](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/controller.md) | 130 | `declaration-track:117c4429978ac789991133bc1d5964ecfc229dac1bb53beeddf7ef0f7fc15114` |
| 11 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/controller-ae.md) | 135 | `result-track:45ff0603b995a17ae3ec62ccf7b3439f5ea9f6b82843f52ab14f300345870182` |
| 12 | `theorem` | [zeroExtension_controller](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/zeroextension-controller.md) | 142 | `result-track:fbf6325da520dae8e144755922a51827775d60a463bfa37fc59c5944f0f52047` |
| 13 | `theorem` | [controller_norm_sq](../../../../MeasureAndIntegration/CandidateRealizationFullAuditNamespaced.lean/declarations/controller-norm-sq.md) | 159 | `result-track:6f28d32b3fe5a6d79128a8cb74a8bc736924f00356e55d0f1489b0f89b58885e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ac3d6b04fd334309fd9d5c59b95b904466c2b7382e3749d685833cc770bc52e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CandidateRealizationFullAudit/Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CandidateRealizationFullAudit/Variante935126aa64ae53b39a785c2cc6f7d7f99271714562c98a80990ae4100714926.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
