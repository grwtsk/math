# Verification target: Backfill Spinor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3322c58f5fa4780bc44ae04ee55d7ec3c791108",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3322c58f5fa4780bc44ae04ee55d7ec3c791108`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Kernel.Core` — import line 5; external provider; requires a separately pinned dependency.
- `Kernel.Spinor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [backfill_limit](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/declarations/backfill-limit.md) | 14 | `declaration-track:fd226aa0371db6814b406871296753525c074f19b57cc44242a5000fe993934a` |
| 2 | `structure` | [BackfillResult](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/declarations/backfillresult.md) | 17 | `declaration-track:6cfebff31c4fd8071cf034c3ea735474c227578dcb66d96168a8e3f008418bad` |
| 3 | `def` | [homotopyWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/declarations/homotopywitness.md) | 24 | `declaration-track:1f8ecd717534f206846b05430ecacd9cf9a7f1ad963353e11759bab5c75364ce` |
| 4 | `def` | [backfill](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/declarations/backfill.md) | 30 | `declaration-track:c7e05eec70431fb3d3e20b0fe8c8eb133879d9430fa9ad48688175ff93fa52a9` |
| 5 | `theorem` | [dense_reduction](../../../../../ComputerScience/AlgorithmsInComputerScience/BackfillSpinor.lean/declarations/dense-reduction.md) | 67 | `result-track:88124498aa40b78c16fa47ee0b2bd15a7a84475e194662e35d5ab36411a9450c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65928a2b5e2340f59a348994794747520a172556a0196f5ab8dd9a057b5bdbed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
