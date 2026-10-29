# Verification target: GRWTSK.Interfaces.PortFiberMultiplierRepresentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86376220002dcdf501aae27a3ebd1fd8245a85fb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/index.md) · [Full source](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86376220002dcdf501aae27a3ebd1fd8245a85fb`.

Source path: `GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberMultiplierRepresentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionMultiplier`](../../../../OperatorTheory/PortFiberSectionMultiplier.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation`](../../../../GeneralTopology/HolomorphicMultiplierRepresentation.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/schemaversion.md) | 34 | `declaration-track:72f00853f6b06bc832ccbf509cf2bea95cf8527013ec4774652c2d8ecd720ecc` |
| 2 | `inductive` | [AddedIndex](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/addedindex.md) | 36 | `declaration-track:d909b5cc1578562fcbf70cb641c799a7be83844cd90920a66dcd86e4b87e80ae` |
| 3 | `def` | [AddedClaim](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/addedclaim.md) | 47 | `declaration-track:39e4762ec3f0709d210cd34cbddc931a695e98b30085c4ec46e785bd3cccf296` |
| 4 | `theorem` | [addedClaim_proof](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/addedclaim-proof.md) | 108 | `result-track:78353645c1a6625292ab4dfcefca649450cd474257627ef262df44ba6ab64e9f` |
| 5 | `def` | [portfolio](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/portfolio.md) | 138 | `declaration-track:28875fafe3f87c3305aedeb2c4cc0a03eecf0b487f2a9efc2daca6cb6ec753f1` |
| 6 | `def` | [architecture](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/architecture.md) | 141 | `declaration-track:b8661df799e4328b764b0b9bf9652c9a09e6615add0a3b0018a2b28d4a37289b` |
| 7 | `abbrev` | [PreviousIndex](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/previousindex.md) | 145 | `declaration-track:134bc8d693a888dca33d4677bca83ddd0cc8c2581e25a0628d6028f121116e6f` |
| 8 | `theorem` | [original_branch_unchanged](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/original-branch-unchanged.md) | 149 | `result-track:c81d267c4ee3534c31471c86547f530ba454a28f69c65210a554ba961695b7c8` |
| 9 | `theorem` | [new_branch_proved](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/new-branch-proved.md) | 155 | `result-track:8eb064aec9ce947e71657bfe024e0dd49eb57d80fb63fbdfb04dee31183cd243` |
| 10 | `theorem` | [target_unchanged](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/target-unchanged.md) | 160 | `result-track:143fa5c52a4ae9a0d59c51e4c8da6bf17defe1712cec081fba32bb56a1b6a9b0` |
| 11 | `theorem` | [retarget_preserves_new](../../../../OperatorTheory/PortFiberMultiplierRepresentation.lean/declarations/retarget-preserves-new.md) | 165 | `result-track:d41e8e07bb440798503f03a51ae2d53149e43884f6578c28ce996ea5381404ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bee024d2293795059aef4d398b434a9b86e5eb38107ebee16b181adeeef1d8a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/PortFiberMultiplierRepresentation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
