# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2995c85888a9cf9d3f126f2672c63cc73ce6d62",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2995c85888a9cf9d3f126f2672c63cc73ce6d62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/context--f47ba7dabed6b739cbe747ed.md) | 33 | `declaration-track:f47ba7dabed6b739cbe747ed8752d1bf6cbeae2efa2aa9d5440f0eb202f7e02b` |
| 2 | `structure` | [State](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/state--2957b7f41608969f63df07c3.md) | 36 | `declaration-track:2957b7f41608969f63df07c3a0fd75833feeecdeae379afcfc92de476d8bf19f` |
| 3 | `abbrev` | [M](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/m--b6e506b9c0bf097ebfecae6a.md) | 43 | `declaration-track:b6e506b9c0bf097ebfecae6a0138b439e897185b7e0f6a3f35f76d42218e1812` |
| 4 | `def` | [isTodo](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/istodo--6fae25079195e25dc74ffe7b.md) | 46 | `declaration-track:6fae25079195e25dc74ffe7b32fe077862a99e2666d06473805afd7fe5d63b31` |
| 5 | `def` | [throwKernelException](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/throwkernelexception--05416036b55246932d035fb2.md) | 55 | `declaration-track:05416036b55246932d035fb28f5905ef4f9ccdd6ed6c58254c62da263e03aa50` |
| 6 | `def` | [addDecl](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/adddecl--1746aceacc5e40928c4b6441.md) | 59 | `declaration-track:1746aceacc5e40928c4b64412410f619dff790e6cc13828934111dea93508cf4` |
| 7 | `def` | [replayConstant](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/replayconstant--8e132654775452be915dc1bb.md) | 74 | `declaration-track:8e132654775452be915dc1bbccaf9854a4a45ba079613d26f596722572207167` |
| 8 | `def` | [replayConstants](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/replayconstants--5363bd4c777e5887ade9b97b.md) | 139 | `declaration-track:5363bd4c777e5887ade9b97ba86858324c34067c52ec02394c3f0076905f0cd5` |
| 9 | `def` | [checkPostponedConstructors](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/checkpostponedconstructors--89753010e466c7caee0f5a58.md) | 148 | `declaration-track:89753010e466c7caee0f5a581d60eadfede98814dc8c731351156c60d2d930ce` |
| 10 | `def` | [checkPostponedRecursors](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/checkpostponedrecursors--a011cdf8ddef8d7e792ff581.md) | 159 | `declaration-track:a011cdf8ddef8d7e792ff581046194e17409c52a7cb11d6a482ced941ade362a` |
| 11 | `def` | [replay](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean/declarations/replay--33f78b611118c9cd6d040b24.md) | 176 | `declaration-track:33f78b611118c9cd6d040b24543469171f917ee740183be1a55ac09144899463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d71aedc318508218dd8fb0630388658fca399d569e25860733b9bb7a6c4fab43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant5ea88ea9b6c374ad74b8c6f5d36117cec00ec64202aff37f7cff0c6765fb746d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
