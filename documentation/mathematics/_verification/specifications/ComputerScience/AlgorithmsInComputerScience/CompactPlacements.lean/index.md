# Verification target: Compact Placements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e65d538d925bc6c1d4d7a580f4fc1b77ada3dac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compact/Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e65d538d925bc6c1d4d7a580f4fc1b77ada3dac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compact/Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compact/Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.PoleAssignment` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [placements](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/placements.md) | 7 | `declaration-track:01749187482eb2641a8d7e86d14ac059b442bd98241c9252cbdf80b07dc27961` |
| 2 | `theorem` | [placements_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/placements-count.md) | 10 | `result-track:d1d4fdf45586c0094624570e3241eb5aec3840026f7024ce2d0152ce796c4a4f` |
| 3 | `theorem` | [placements_centerControlled](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/placements-centercontrolled.md) | 14 | `result-track:a1e0f51a7e5244a73a55cd14214cf6230ca8cb025593173cb50af86fc483c583` |
| 4 | `inductive` | [SrcLibSurfaceClass](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibsurfaceclass.md) | 19 | `declaration-track:99cb7b483bdc58dee4ffd18ddebcb2c76072e727e63be170b40946e565047cba` |
| 5 | `inductive` | [SrcLibBoundaryStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibboundarystatus.md) | 25 | `declaration-track:40f93c8d59da38d190c0540d01ad4471232a26d8426fa49c78593ca54724ea7b` |
| 6 | `structure` | [SrcLibCompactShell](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibcompactshell.md) | 31 | `declaration-track:f8e3e899a7548f3cd24e0b6e966f2d961b23ed60ccf11aea9e784f82503bfde5` |
| 7 | `def` | [SrcLibCompactShell.hasFiniteBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibcompactshell-hasfiniteboundary.md) | 37 | `declaration-track:b6b3e7223a3583852210f3e5f4b870852b30fd3114c88a7bba60b2e216e2dc5e` |
| 8 | `def` | [srcLibDefaultCompactShell](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibdefaultcompactshell.md) | 40 | `declaration-track:8ea9e9948d7bd58a37e76b686624f40bf0706b69ecef5f688091120b480b2c58` |
| 9 | `theorem` | [srcLibDefaultCompactShell_frameCount](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibdefaultcompactshell-framecount.md) | 45 | `result-track:e5d906168bbad7e220d0495ae693577da9229104dd6ca891adac3b44b8ebfef2` |
| 10 | `theorem` | [srcLibDefaultCompactShell_hasFiniteBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/CompactPlacements.lean/declarations/srclibdefaultcompactshell-hasfiniteboundary.md) | 49 | `result-track:4b530ba9bdd3b59e1df05ec8fcfddf77f58389b1416d199dffbf73d4839d1fe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=068e02011f2c53d16ca6d8bbc985df684606bf6a2ef41e0fcdf5f030a167ed54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compact/Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compact/Variant6876306268ebcd342b15f45897849126c9de7cbf98f88f62835e98d89d92ded5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
