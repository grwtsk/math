# Verification target: Arithmetic Security Bridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d81de309672f17af91b202022eb9f0b4b83d667",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityBridge/Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ArithmeticSecurityBridge.lean/index.md) · [Full source](../../../../Combinatorics/ArithmeticSecurityBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d81de309672f17af91b202022eb9f0b4b83d667`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityBridge/Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityBridge/Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.AnalyticComplexityBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticSecurityMacro` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticSecurityBridgeStatus](../../../../Combinatorics/ArithmeticSecurityBridge.lean/declarations/arithmeticsecuritybridgestatus.md) | 15 | `declaration-track:884415b1498a18cd61fe83640f270aa84027b5083bdac7a00643e15383e7d937` |
| 2 | `def` | [unknowns](../../../../Combinatorics/ArithmeticSecurityBridge.lean/declarations/unknowns.md) | 29 | `declaration-track:f23ed36a9ba2bdc4acbc9d6d6a0badee76f6a66db952e55a304b33d536349884` |
| 3 | `def` | [terminalArithmeticSecurityBridgeStatus](../../../../Combinatorics/ArithmeticSecurityBridge.lean/declarations/terminalarithmeticsecuritybridgestatus.md) | 42 | `declaration-track:090035cfed4e60776686eede6f8f0876c36fb9aea700f2bceab47f1662993405` |
| 4 | `theorem` | [terminalArithmeticSecurityBridgeStatus_unknowns](../../../../Combinatorics/ArithmeticSecurityBridge.lean/declarations/terminalarithmeticsecuritybridgestatus-unknowns.md) | 49 | `result-track:8c768c8cb2ccf72e580ec126def8175bcfb74b1779a0ef9672274622c8857630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d422195d4a7bd90bbc6bb121625b19c315dd352b1b28f74b2ba21957e02f17aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityBridge/Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityBridge/Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
