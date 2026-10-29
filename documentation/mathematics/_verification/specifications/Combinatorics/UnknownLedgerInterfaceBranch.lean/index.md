# Verification target: Unknown Ledger Interface Branch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355367bf254bd10676bad4b70380aa5703831c9d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/index.md) · [Full source](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355367bf254bd10676bad4b70380aa5703831c9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InterfaceBranch](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/interfacebranch.md) | 14 | `declaration-track:95437fe46e1835f41abd95b208b153ce21308fcfdbfefd90640d45ecf7ecf216` |
| 2 | `inductive` | [TerminalInterface](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/terminalinterface.md) | 21 | `declaration-track:ee31e3614758312997da800969a571e4ff1a1701149ebf5d541efd4a3ea2988b` |
| 3 | `def` | [TerminalInterface.branch](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/terminalinterface-branch.md) | 53 | `declaration-track:d844f519f89baa94ad079b75ddf9efc63e7656f8499b8edbb348e051905b4eef` |
| 4 | `def` | [TerminalInterface.requiredInTraceObservableMode](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/terminalinterface-requiredintraceobservablemode.md) | 86 | `declaration-track:c5b4f5d604ab116f7d1eab14eb2571617451d8b2de628a6d03366a8b269bd351` |
| 5 | `inductive` | [InterfaceStatus](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/interfacestatus.md) | 92 | `declaration-track:c601fd0f4ef3924056d3da021ee3b722804a75d8d77eb89a5cda3c2f94d91f2c` |
| 6 | `abbrev` | [InterfaceLedger](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/interfaceledger.md) | 99 | `declaration-track:2c5d92fc5181785d16dd5d6219b24bb36a57f3356605088c0560c6e7b3776f92` |
| 7 | `def` | [initialLedger](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/initialledger.md) | 102 | `declaration-track:bf7fe3e68dd9d0a60d28f244cf7847c351141f629d0f5e2582f73c3893f0239d` |
| 8 | `def` | [terminalInterfaces](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/terminalinterfaces.md) | 105 | `declaration-track:135c7dee8a025e1c9929d1e79f6c8eb7d19df3aed8cdd085bf3bf881106f410c` |
| 9 | `def` | [traceObservableTerminalInterfaces](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/traceobservableterminalinterfaces.md) | 109 | `declaration-track:ae49963edafedd9a2d31b3c21780a110f5e606ebf0759c5b21d2e864524d51ca` |
| 10 | `def` | [unresolvedInterfaces](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/unresolvedinterfaces.md) | 114 | `declaration-track:0968348a2e88ba18823873d3e3ec4e91367f27b0c82fe204c3420899c8338f06` |
| 11 | `def` | [unresolvedTraceObservableInterfaces](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/unresolvedtraceobservableinterfaces.md) | 121 | `declaration-track:01b44b6309335377f2dfc17133568fc6116ed0bf56fade4ae8aa365be0d80479` |
| 12 | `theorem` | [initial_interface_is_unresolved](../../../../Combinatorics/UnknownLedgerInterfaceBranch.lean/declarations/initial-interface-is-unresolved.md) | 128 | `result-track:1eae05059ed118380047b74bf02b6d95e9e54c157f0dcb533f68b5ffbdd64a33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bd549ee3391c26ddd984a564fa7d74efee278bd51a548c987b436a524915bc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/UnknownLedger/Variant95da333e5b52992ac5eb5ced8c75d6fc627b206858c2fc7452371f1c72942670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
