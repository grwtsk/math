# Verification target: Axioms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8da75bf80b27f2a71ad2312653b105442c5f5992",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8da75bf80b27f2a71ad2312653b105442c5f5992`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Comparator.Util` — import line 6; external provider; requires a separately pinned dependency.
- `Export.Parse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/declarations/context.md) | 13 | `declaration-track:f842e734acbd6a1c2a38c55ce97286fe6faab19cfda19154e7594ce3928d7ba7` |
| 2 | `structure` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/declarations/state.md) | 17 | `declaration-track:66d91e0b1b11921c21112bb2773753ab9d2dd63341b285c632d2bb0fa58dba63` |
| 3 | `abbrev` | [AxiomsM](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/declarations/axiomsm.md) | 21 | `declaration-track:7862c3e7c9de896190ac46a7fc85b430c7bd914325fd11e35b88896dd60dcba9` |
| 4 | `def` | [loop](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/declarations/loop.md) | 23 | `declaration-track:fae20c499543ba0b72262dcf5e330ea6e4d5800ae86a67a730fe595ef2c7def0` |
| 5 | `def` | [checkAxioms](../../../../../ComputerScience/AlgorithmsInComputerScience/Axioms.lean/declarations/checkaxioms.md) | 52 | `declaration-track:a3d60b80b78e0c2a41f6421e226f00107c3c3b12ced3beeb6c2f3ce2f6a1f3c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a61b4d5d04d8a694db756adec73f6b7fb6dbc82336de329ffc29deaef9120b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
