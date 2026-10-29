# Verification target: AA119db56 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd33d475a0e56759e0a60adb635c7aca6a111ef9",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/A28323154a119db56/Variant4cba5aaa9dbaabb508b17d8c237977d5827476aa4ccf79e8d2faa477a39a73e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AA119db56Namespaced.lean/index.md) · [Full source](../../../../RealFunctions/AA119db56Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd33d475a0e56759e0a60adb635c7aca6a111ef9`.

Source path: `GRWTSK/Analysis/A28323154a119db56/Variant4cba5aaa9dbaabb508b17d8c237977d5827476aa4ccf79e8d2faa477a39a73e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/A28323154a119db56/Variant4cba5aaa9dbaabb508b17d8c237977d5827476aa4ccf79e8d2faa477a39a73e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Channel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.A_c3f2603f41e4fb24` — import line 14; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.RegularizationElements.A_650b20a3092c60d7` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [regularizedKernel_apply](../../../../RealFunctions/AA119db56Namespaced.lean/declarations/regularizedkernel-apply.md) | 35 | `result-track:e3480d57c07109af5c922b9a4b61dd2b668b6a3c75102bee392b198dfc5c1484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=213bde252b0c8c6eb29e1647c4e8f21790ba6e3949c4cd4ab0ba68e3497b08fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/A28323154a119db56/Variant4cba5aaa9dbaabb508b17d8c237977d5827476aa4ccf79e8d2faa477a39a73e6.lean","GRWTSK/_verification/specifications/Analysis/A28323154a119db56/Variant4cba5aaa9dbaabb508b17d8c237977d5827476aa4ccf79e8d2faa477a39a73e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
