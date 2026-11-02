# Exact original-occurrence infinite-trace compactness bridge

Date: 2026-11-02. Mathematical direction: grwtsk contributors. Source formalization assistance: OpenAI ChatGPT.

**Disposition:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No typed source-extractor-to-Python refinement or entire-repository correctness claim is established.

## New source and mathematical statements

`GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceInfiniteTraceBridge.lean` (Git blob `7fc81a90c4ed0ed45dbd01aaf18cce4fca23ad4a`) imports the **original** source provider `SourceOccurrenceKeyRefinement.lean` and the **original** finite-state compactness theorem `SoficFiniteTraceCompactness.lean`. Both are original Math sources rather than replacements.

The new source retains the exact finite original edge-label type `Fin n` from `FiniteSourceOccurrenceTable`, including original parallel edge occurrences. With a finite original state space, it gives a source-level candidate theorem:

```text
[∀ length, ∃ start finish,
  SearchSoficLanguage.WordPath originalEdge
    start (List.ofFn (fun i : Fin length => trace i.val)) finish]
  ⇒ ExactSoficLanguageCover.RunsOnGraph originalGraph trace
```

`originalOccurrence_run_of_all_search_prefixes` transports the **existing** search-word witnesses through `SourceOccurrenceSoficBridge.search_language_iff_exact` to the **existing** `SoficFiniteTraceCompactness.runsOnGraph_of_all_graph_prefixes`. It introduces no new path type, compactness axiom, or vertex-only quotient. `originalOccurrence_run_of_all_search_factors` uses the stronger original finite-factor-language premise and the provider's separate `runsOnGraph_of_all_factors`.

`observedKeyFintype` derives the finite original owner-and-ordinal **observed key subtype** from the already explicit equivalence `ObservedKey ≃ Fin n`; it does **not** assume a finite universe of all possible owners and source references. `observedKey_run_of_all_original_prefixes` applies compactness to genuine raw-key graph paths for **all finite prefixes of the same fixed infinite raw-key trace**, then transports the actual state run to the original occurrence graph with `encoded_edge_iff`. All source and target endpoints and the chronological original key sequence are preserved.

The hostile `terminalOccurrenceTable` is a one-edge finite original slot table on Bool states: its actual edge is false → true. `terminalOccurrenceTable_accepts_one_edge` constructs a genuine original search-word witness, while `terminalOccurrenceTable_has_no_infinite_run` shows no infinite original occurrence stream can run on it. This demonstrates why a bounded source-prefix search cannot be silently promoted into the universal all-prefix premise.

## Direct source links and related boundaries

These original provider blobs were inspected at `grwtsk/math@ccf89ed3d966b527e9e4f6afa2ff6721fbad6059` (source-level imports, not a kernel replay):

| Provider | Git blob | Role |
|---|---|---|
| `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceKeyRefinement.lean` | `cec5dc7cc4cef60e6a789a00c45385eb4f138360` | Original owner/ordinal observed-key equivalence and source-key path transport |
| `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceSoficBridge.lean` | `b2e0cb4919a5e73246c29c7f7769fe459949e73c` | Original Search and Exact WordPath equivalence and finite source graph |
| `GRWTSK/Combinatorics/GraphTheory/DirectedGraphPathOccurrences.lean` | `65da6d5cbe73bb1e5263f5bb7c4e001c0d5d1ad3` | Source Quiver.Path occurrence identity and parallel-edge counterexample |
| `GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean` | `0408948886533c87debacc0e537c3234469ae702` | Separate original search-word path and bounded completeness obligations |
| `GRWTSK/Combinatorics/GraphTheory/GraphSandwichDiffusion.lean` | `be2a608b5037d4a4c448c7f332096af72588c00e` | Search diffusion source; NOT a source-to-proof implication |
| `GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean` | `f50489eaf6c7277993a08925a58b7765f9e10ec9` | Actual finite labeled graph, complete finite-word language and RunsOnGraph |
| `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteTraceCompactness.lean` | `325cc0ae7185215e0d95285c97f4455a698e0f19` | Compatible infinite state run from **every** finite original prefix |
| `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalLanguageBoundary.lean` | `516f991a66ff7f5f0599261b14f78fecf769e21a` | Distinction between realized infinite factors and finite graph language |
| `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficShiftPeriodicPointBridge.lean` | `cdf129caaa474c65f9245f142d35fde2611117e2` | Separate periodic dynamical-point interface, NOT supplied by a general run |
| `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean` | `b3f5b7ce5e0b7eb0a4c1081dce166815824b6bac` | Original missing/surplus periodic lift corrections, not identified with all paths |
| `GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean` | `df720cbb72c616938635c20477430f5f0ded4021` | Fixed-relation proof-carrying transversal, not inferred by import syntax |

The import graph into the new module is one-way. The listed source associations to the independent periodic, topological, and certification providers are **mathematical context**, not invented direct imports or theorem transfers.

## Noe runtime and verification boundary

The previous Noe source-index pipeline materializes **bounded** finite original source-reference walks and counts. Its `sofic_walks` depth is bounded, and `lean_original_key_refinement` covers only the selected indexed original forward-import occurrences, with explicit residuals. Consequently a source-index traversal, even if every displayed prefix is byte-verified and the source index passes both `audit` and `audit-git`, **does not establish** the all-prefix condition for every natural number. There is no claim that an arbitrary source link is a certified mathematical implication, and no transfer of an infinite run to an RH, zeta-zero, or distinct periodic factor-point statement.

Local independent *finite-horizon* Python reference checks passed 5/5 groups (1,200 graph/word tests, 800 factor-prefix cases, 1,000 observed owner/ordinal key cases, a terminal-edge counterexample, and 650 multigraph/matrix-count cases). This is **not** an infinite-horizon proof or a Lean compiler result.

Acceptance remains: native Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaboration, exact expected theorem types, fresh kernel and transitive axiom audit; separately, an independently checked full raw Git/SQLite source-extractor-to-Lean refinement; and a real Noe+Math indexed acceptance run with original registered tests. No production/release or mathematical source acceptance is inferred.
