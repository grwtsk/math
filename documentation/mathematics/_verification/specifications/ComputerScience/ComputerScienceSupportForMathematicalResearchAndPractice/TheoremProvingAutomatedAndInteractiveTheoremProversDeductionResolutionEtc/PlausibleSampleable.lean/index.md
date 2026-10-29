# Verification target: Plausible Sampleable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e94a64108de6b5a3b3704d4dd699ef994da8a83a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e94a64108de6b5a3b3704d4dd699ef994da8a83a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Rat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Monad` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Plausible.Sampleable` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.shrinkable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/declarations/rat-shrinkable.md) | 23 | `declaration-track:8ede4b07e9236dbe2674ce8257bfe3e8f4ed4100deafced072af62e4e949382c` |
| 2 | `instance` | [PNat.shrinkable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/declarations/pnat-shrinkable.md) | 27 | `declaration-track:c0fd15103cbb19729325f4c9d1c9b27e34c0b5bdec44f433fb5d6e55ea9cc789` |
| 3 | `instance` | [Rat.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/declarations/rat-sampleableext.md) | 36 | `declaration-track:e38fdc96b85935fd294876fd7e517da9e0d574b7c1a21a7b1a4fc36be8c5af6d` |
| 4 | `instance` | [PNat.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PlausibleSampleable.lean/declarations/pnat-sampleableext.md) | 44 | `declaration-track:c66f6056d5c54a497d0ef9d5772245605c8aebd5d43289d9c9cf7c65b8eec15f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f91ac1ad30f6717ddbe93866a37f6ceb01bee2acd7db3019562e129c7bd349f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant40247bed485004514932c7d459be245889f97d250c57d7251ad5042d7ca0c4cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
