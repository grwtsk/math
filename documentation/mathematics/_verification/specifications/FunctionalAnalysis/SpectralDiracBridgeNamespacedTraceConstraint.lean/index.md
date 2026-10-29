# Verification target: Spectral Dirac Bridge Namespaced Trace Constraint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c548964f5b92db2c5614da53142bc520c77fc7e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant7b45d132721324ec69a36cb1dba914b97dfd21d5908fa749193992dbd4af8db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c548964f5b92db2c5614da53142bc520c77fc7e5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant7b45d132721324ec69a36cb1dba914b97dfd21d5908fa749193992dbd4af8db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant7b45d132721324ec69a36cb1dba914b97dfd21d5908fa749193992dbd4af8db5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ZetaTraceZKP` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TraceConstraint](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/traceconstraint.md) | 21 | `declaration-track:629ded0dbeeabc5f9d1eede378f81f66ec37545b8c932cca05ba4d0d481145df` |
| 2 | `abbrev` | [DiracSymbol](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/diracsymbol.md) | 24 | `declaration-track:907028e3c6a23d730e40f8c2c2e7411ee62edcfbb54cc7e6e1651a33babc3f99` |
| 3 | `abbrev` | [PrismaticDifferenceSymbol](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/prismaticdifferencesymbol.md) | 27 | `declaration-track:c12010d9ca2661c281312ef869c977dd6756305c538d67cb8e1dfbc3e864184b` |
| 4 | `abbrev` | [SpectralBridgeNode](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/spectralbridgenode.md) | 30 | `declaration-track:6380e5bdc1035cc980db2aae03c6e0248ac170447d3f12d7ecb92bc262d66922` |
| 5 | `abbrev` | [ConnesStyleBridge](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/connesstylebridge.md) | 33 | `declaration-track:b0fc5b39516dc88a320acde3dd39e0d594827df57945241160d8b88ccf7742b7` |
| 6 | `abbrev` | [PrismaticLimitCertificate](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/prismaticlimitcertificate.md) | 36 | `declaration-track:6dfc406293fe21119378f059af52a3f4feb7382395cf04ec1ca4bd60bc36f944` |
| 7 | `theorem` | [connes_bridge_has_matrix_tree_lowering](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/connes-bridge-has-matrix-tree-lowering.md) | 39 | `result-track:0709fa941214e354ec5b50de4fbe7ee515043e17501b3f3b93a62c8088bd95ea` |
| 8 | `theorem` | [prismatic_limit_aligns_with_functional_equation](../../../../FunctionalAnalysis/SpectralDiracBridgeNamespacedTraceConstraint.lean/declarations/prismatic-limit-aligns-with-functional-equation.md) | 44 | `result-track:2c88bb9e6b8d46218624c062697f016a428edff88279ad6d65863509e52ba681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=594ec52d97dd037dd6480eb1c90152c6c5c60698d738759e2160551ee9965d59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant7b45d132721324ec69a36cb1dba914b97dfd21d5908fa749193992dbd4af8db5.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant7b45d132721324ec69a36cb1dba914b97dfd21d5908fa749193992dbd4af8db5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
