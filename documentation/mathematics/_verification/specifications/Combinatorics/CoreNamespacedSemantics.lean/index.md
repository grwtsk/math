# Verification target: Core Namespaced Semantics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8642d5c4f10a83f2050c052d6768ea9363972fce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant5b3d67418174c04d837bf9cf40587029d5d7e82605a54946c4c1d92fd7d594e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CoreNamespacedSemantics.lean/index.md) · [Full source](../../../../Combinatorics/CoreNamespacedSemantics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8642d5c4f10a83f2050c052d6768ea9363972fce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant5b3d67418174c04d837bf9cf40587029d5d7e82605a54946c4c1d92fd7d594e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variant5b3d67418174c04d837bf9cf40587029d5d7e82605a54946c4c1d92fd7d594e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Semantics](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics.md) | 23 | `declaration-track:b035617370397f64ef0a6e760cf59004300df3c9d7ecf6763064559ad29db44c` |
| 2 | `def` | [Semantics.SatisfiesAll](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-satisfiesall.md) | 39 | `declaration-track:23edb791c58c2f4beae5be2e9cfd1158c3c4856751fce38a8d6458ac5b67848a` |
| 3 | `def` | [Semantics.Feasible](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-feasible.md) | 50 | `declaration-track:f906cd6fdb74e2f909f2247d7b17d1054987e8b66ce7118390184981e4fcb8c8` |
| 4 | `def` | [Semantics.Infeasible](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-infeasible.md) | 63 | `declaration-track:30e810f7967ff0d002ab6c9ea57e10dc39a6fe2ba86898091914f56b9bd7a53f` |
| 5 | `theorem` | [Semantics.infeasible_iff_not_feasible](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-infeasible-iff-not-feasible.md) | 76 | `result-track:efd7793e8e1b0d356a56bb23acd43ff557ce4cbff6ffb5e99c5caa0d2094ef44` |
| 6 | `structure` | [CompletionCertificate](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/completioncertificate.md) | 97 | `declaration-track:245251febf78e4a280aebf62708c5c4b4fc35d3666df362c96c87e7214bad646` |
| 7 | `structure` | [NoCompletionCertificate](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/nocompletioncertificate.md) | 112 | `declaration-track:5ece13826fb701b47e8ed3b4818fe7457315ffb5aff5d49e7daace072701a4f8` |
| 8 | `theorem` | [Semantics.infeasible_of_refinement](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-infeasible-of-refinement.md) | 123 | `result-track:554c483bf38aef5322fbd9dd32d2458458e4a6f7bdc89df8b56d4c91e12a022e` |
| 9 | `theorem` | [Semantics.infeasibility_downward_closed](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-infeasibility-downward-closed.md) | 142 | `result-track:765791f606f52c1967853a6a3eb5e6bf4e886b68fb60ba143087197d863c87d5` |
| 10 | `theorem` | [Semantics.infeasible_mono_constraints](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-infeasible-mono-constraints.md) | 158 | `result-track:31e739f70d2dc4fe78ab348db9d50d49a3a686fe3028bce7276199c1e748c9d8` |
| 11 | `theorem` | [Semantics.feasible_anti_constraints](../../../../Combinatorics/CoreNamespacedSemantics.lean/declarations/semantics-feasible-anti-constraints.md) | 176 | `result-track:dab4e00863a739c2c5b70f83a6ba2acf32d0c423f14cf699eee2eabf7f353772` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c51ae0c70c86702e5f2e74bd7af17b1eee5b621e0e73d92f2165f5dae78f8d7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant5b3d67418174c04d837bf9cf40587029d5d7e82605a54946c4c1d92fd7d594e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Core/Variant5b3d67418174c04d837bf9cf40587029d5d7e82605a54946c4c1d92fd7d594e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
