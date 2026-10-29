# Verification target: Phase Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2424d9fc295732b2401b292b7e8c50cfd01bf3f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2424d9fc295732b2401b292b7e8c50cfd01bf3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhaseId](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/phaseid.md) | 10 | `declaration-track:11bcd3ccea97d563de4d7c6b69845e1cbdb1b87dab0f04c6f13fd86bb4220c6a` |
| 2 | `abbrev` | [PhaseRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/phaserecord.md) | 11 | `declaration-track:8090aac5fc7c86934f2f7b1c6575751f9a723954b1dc1e46d964c7f630de1a91` |
| 3 | `abbrev` | [SpineStep](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/spinestep.md) | 12 | `declaration-track:e4d8d83d475581173f0b25b240c9bde5004ab95e7a3a60d7caa8c24a83d6fdf5` |
| 4 | `def` | [allPhaseIds](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/allphaseids.md) | 14 | `declaration-track:fe5dfb04c8b63242d990fe89ac984c186ac05463f829aa0040bf6347541e8dc3` |
| 5 | `theorem` | [allPhaseIds_count](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/allphaseids-count.md) | 17 | `result-track:701528a994c2de93cb7a1f02e06a3756930f1e74e0c8dcec0161432e7f80effd` |
| 6 | `theorem` | [allPhaseIds_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/allphaseids-complete.md) | 21 | `result-track:4aee77b545a620d6c707485834f3079c284a264f251bca5332a667a7221a592f` |
| 7 | `theorem` | [allPhaseIds_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/PhaseId.lean/declarations/allphaseids-nodup.md) | 25 | `result-track:1cf57560b02668551da76ff93b5de186f4af69151ff21585dbb2d1b7d43bbd75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1984be7938eaa2c87786f0b7c2a7e5af698edddc1e1192a8d84c15c235d0672 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
