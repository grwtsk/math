# Verification target: Correlation Flow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1ce0e56662f34347586ba7f01c40a6342a58cee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1ce0e56662f34347586ba7f01c40a6342a58cee`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compatibleIncidenceDerivative](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/compatibleincidencederivative.md) | 39 | `declaration-track:99f8e26a57d3a57c57d77436228f61d3cc9898ad60c88d3a10ec141acb8465bc` |
| 2 | `structure` | [CorrelationCompatibleFlow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/correlationcompatibleflow.md) | 51 | `declaration-track:3668b659c6f3e1e3e070a8512b494a2cc7d818aa1e3b02138d207b6b2e62e3a3` |
| 3 | `structure` | [IncidenceCurvatureFlow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/incidencecurvatureflow.md) | 90 | `declaration-track:57724a84efe926f52b04a930f6456344c6838b4a9c2b7789ef283c6582953fef` |
| 4 | `theorem` | [correlation_derivative_eq_defect](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/correlation-derivative-eq-defect.md) | 111 | `result-track:cd2824cefba7273c8c0990145d8276b7993a94c3d4b872036913b11125bbe728` |
| 5 | `structure` | [ResidualAwareCorrelationFlow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/residualawarecorrelationflow.md) | 137 | `declaration-track:a6f153f135d9289497be47181cbed6af7c05e6216ccbf8c950d9ebb04792e196` |
| 6 | `def` | [ResidualAwareCorrelationFlow.fullSignedCorrelation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/residualawarecorrelationflow-fullsignedcorrelation.md) | 148 | `declaration-track:049ad5c5dfee674e2bdaebe71fa00f41ff1f75be22451f1db54e1978fd5ec98f` |
| 7 | `def` | [ResidualAwareCorrelationFlow.fullSignedDerivative](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/residualawarecorrelationflow-fullsignedderivative.md) | 159 | `declaration-track:4ae17bb6e876737702abb256e3d95cdeffe91acc98fa83245ab5ce412f40eee9` |
| 8 | `theorem` | [fullSignedCorrelation_derivative](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/fullsignedcorrelation-derivative.md) | 171 | `result-track:e2e67a1bde35bffee4e281b2b45841ca883dd3db8633ad512077c51b673ee0e1` |
| 9 | `def` | [FullSignedDefectBudget](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/fullsigneddefectbudget.md) | 201 | `declaration-track:bd376ddff4e914f92a85c1f9db02848ca5c410fc2c7482e175f4dd7163ff3443` |
| 10 | `theorem` | [ResidualAwareCorrelationFlow.endpoint_change_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/residualawarecorrelationflow-endpoint-change-norm-le.md) | 210 | `result-track:9cb4fc88282aec6db38aa19930ab65d8aa54daed0a746ceaba5799bc8044ece3` |
| 11 | `def` | [FlowDefectBudget](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/CorrelationFlowPublic.lean/declarations/flowdefectbudget.md) | 229 | `declaration-track:be23b4d367ba0e0871ab09d3e0d7f2807f852bbaecc81a95e39c4f65dc35135b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0640afc046c54fe4e4c07e6e22484098d9c5794d17574bb3824097c27915eac7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
