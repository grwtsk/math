# Verification target: Successor Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c64901819091f0ddb57a1d7d94ae505e2cd8fd7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SuccessorTrace/Variantbed6c208b7c73498bbea7d39c2c4a0ad4aad9668781f6e8c322213ec7955eff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c64901819091f0ddb57a1d7d94ae505e2cd8fd7`.

Source path: `GRWTSK/Algebra/SuccessorTrace/Variantbed6c208b7c73498bbea7d39c2c4a0ad4aad9668781f6e8c322213ec7955eff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SuccessorTrace/Variantbed6c208b7c73498bbea7d39c2c4a0ad4aad9668781f6e8c322213ec7955eff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Trace.CrossedProductConnector` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SuccessorTraceConnector](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/successortraceconnector.md) | 18 | `declaration-track:0cae8d86fc86fcaa713234d6bc5f7974e5db9b968c7f8754c29216667f67f3fb` |
| 2 | `def` | [pullback](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/pullback.md) | 42 | `declaration-track:2035412cedbeef1ce8dba7acb5890e0dbc22057f8e3deb684f245ef255197dca` |
| 3 | `theorem` | [successor_trace_compatible](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/successor-trace-compatible.md) | 59 | `result-track:2983e3aa21a424072fd2e14588b2487b831a562a991b234ed6f89b79eccd1ab2` |
| 4 | `structure` | [ProjectiveTraceSystem](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/projectivetracesystem.md) | 79 | `declaration-track:ec94ce155fd4ea541d599f3cd253e2461121267748cd4b454b1b848ffe661b21` |
| 5 | `def` | [pullback](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/pullback-source-edition-2.md) | 158 | `declaration-track:32142666b840793191ad40b0a0a26bd0bdc4d8f712a9bcbae96b592be9b0baf9` |
| 6 | `theorem` | [pullback_injective](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/pullback-injective.md) | 173 | `result-track:b1090968803dfb0d7bd2ca2bf778752cb360513fc91cca1f5aee031e836702f2` |
| 7 | `theorem` | [traceCompatible](../../../../AssociativeRingsAndAlgebras/SuccessorTrace.lean/declarations/tracecompatible.md) | 187 | `result-track:7428a7c56fdff037851193f66a45eb18bb3765a6991d74714fe78090e45b130f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8b18d6ac83314e822a2cb7fc41cabfbe21061174398ce582eeaf109a47c4a59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SuccessorTrace/Variantbed6c208b7c73498bbea7d39c2c4a0ad4aad9668781f6e8c322213ec7955eff6.lean","GRWTSK/_verification/specifications/Algebra/SuccessorTrace/Variantbed6c208b7c73498bbea7d39c2c4a0ad4aad9668781f6e8c322213ec7955eff6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
