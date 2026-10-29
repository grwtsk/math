# Verification target: Bridge Range Diagnostic Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9abd4dae1c1f145563c0e63a6d86e23a64e4157",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9abd4dae1c1f145563c0e63a6d86e23a64e4157`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BridgeEnvelope` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearRangeProfile](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile.md) | 11 | `declaration-track:3ce7d5826cfd2011a34c4ad8163a76a9dcee9a55f28b1cce5f0ca4eb0b64f4a2` |
| 2 | `theorem` | [linearRangeProfile_continuous](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile-continuous.md) | 13 | `result-track:4181c9d1989ac688d6ac62acf7254d5e953f6739d13fa40c15cda426d6deb120` |
| 3 | `theorem` | [linearRangeProfile_bounds](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile-bounds.md) | 16 | `result-track:f5b3c2873d3e5800abe7f823d3902d83ea0d9a72446c749fe9474d8ad975310b` |
| 4 | `theorem` | [linearRangeProfile_integral](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile-integral.md) | 21 | `result-track:b166bd4c87b6c2d923a70637d78b8d94501d516e90f5211397504c3dc008fa17` |
| 5 | `theorem` | [linearRangeProfile_bridge](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile-bridge.md) | 33 | `result-track:a95b77c29bd041ede3989e63876f4f958ac46f76e74c2c78a7d506b622fbea30` |
| 6 | `theorem` | [linearRangeProfile_midpoint](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/linearrangeprofile-midpoint.md) | 40 | `result-track:c2764f52703e91b4ca7ac6ae4d2016b5fa699b800ffb761bf05b221d5733510b` |
| 7 | `theorem` | [no_uniform_bridge_budget](../../../../MeasureAndIntegration/BridgeRangeDiagnosticAttempt02.lean/declarations/no-uniform-bridge-budget.md) | 47 | `result-track:72623f09fd00f3b553697ba9e600b824daf513f6985a9e3b74dc4a282230b288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31c7baf565b63e2fa37ac608a4345605d8b2caecbf1857495ca3487f1e664c33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
