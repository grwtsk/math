# Exact owner-and-ordinal keys to finite original source-occurrence slots

Review date: 2026-11-02. Mathematical source direction: grwtsk contributors; formalization/source-review assistance: OpenAI ChatGPT.

**Evidence:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. This is not an accepted Lean theorem or an accepted Python/Lean refinement.

## Actual source supplier

New Lean source: `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceKeyRefinement.lean`, blob `cec5dc7cc4cef60e6a789a00c45385eb4f138360`.

Imports and retains the existing `SourceOccurrenceSoficBridge.lean` exact source blob `b2e0cb4919a5e73246c29c7f7769fe459949e73c`, in turn importing `DirectedGraphPathOccurrences`, `SearchSoficLanguage`, `SoficPeriodicMatrixTrace`, and `CertifiedTransversal`. None of their types is replaced.

## Mathematical construction

For the original `FiniteSourceOccurrenceTable State Owner Payload n`, define

```
key(slot) = (table.owner slot, table.ordinal slot)
ObservedKey = {key : Owner × ℕ // key ∈ Set.range key}
```

The pre-existing premise `owner_ordinal_injective` proves that this real source key is injective on `Fin n`. The exact equivalence

```
observedKeyEquiv : ObservedKey ≃ Fin n
```

is its inverse on the **image of actual recorded keys**. Unlike the previous identity-only `Fin n ≃ Fin n`, the new raw domain is the original owner-and-ordinal pair. The new `observedKey_decode` and `observedKey_slot_roundtrip` establish key and slot recovery in both directions. Literal source text, line number, and edge endpoints may still coincide without identifying distinct occurrences. Empty inventories are supported.

`observedKeyRefinement` constructs the earlier `ExactSourceRefinement ObservedKey (Fin n) State` using the original table's source and target functions. `observedKey_edge_iff` and `observedKey_wordPath_exact` preserve incidence and complete finite occurrence words; `observedKey_wordPath_search` reaches the repository's separate SearchSoficLanguage.WordPath interface. `observedKey_walkCounts_eq_matrixRowSum` reuses the original natural-number matrix recurrence with all parallel occurrences counted.

This is a finite *conditional* mathematical construction. It makes no claim that arbitrary original import text is a proof implication, or that source-index records have been checked in Lean.

## Boundary still open

Noe's `lean_occurrence_slot_table` currently yields a bounded, induced set of visited source-to-source import observations, plus explicit unindexed, self-import and unvisited-target residuals. Instantiating the new observed-key type on that exact table additionally requires independently checked extraction from pinned Git bytes, SQL schema/producer, unique owner/ordinal identity, correct target resolution, proof that no eligible occurrence was omitted, and source revision identity. A code path returning `owner_ordinal_unique=true` is **not** a Lean proof.

Even with those requirements met, relative completeness of a selected induced graph is not completeness of all original repository or Mathlib imports. The certified relation in `CertifiedTransversal` is fixed to equality plus endpoint transport; unrelated semantic theorem or periodic factor-label transports require their own proof hypotheses.

## Diagnostic controls, not mathematical acceptance

An independent local Python reference oracle ran 5/5 groups successfully, including 3,000 seeded randomized tables of 0..30 edges with exact owner/ordinal key roundtrips, endpoint preservation, and equality of raw-slot and original-key walk counts, plus empty inventory, duplicate-key refusal, invalid-key and same-payload parallel-edge tests.

The existing local source-slot reference suites also passed 14/14 tests. These tests cannot establish Lean elaboration, a kernel-verified proof, an actual host index replay, or the correct import/axiom closure. The selected pinned Lean toolchain is 4.34.1, Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. No such native checks ran in this environment.

**Acceptance to close:** (1) run native Lean over the exact new blob and actual pinned import closure, (2) inspect expected declarations and transitive axioms, (3) prove source-extractor correspondence for the actual Noe index and its residual policy, (4) test the complete installed Noe corpus and terminals, (5) independently qualify the publication receipts.
