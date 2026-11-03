# Exact source-occurrence shift conjugacy and graph-admitted periodic traces

Review date: 2026-11-02. Mathematical direction: grwtsk contributors. Source formalization assistance: OpenAI ChatGPT.

**Disposition:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NO_EXTRACTOR_REFINEMENT. No native Lean/kernel or installed Noe acceptance was executed in this publication.

## New original-source connection

New Lean module: `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceShiftConjugacy.lean`, Git blob `23956354b4226bc3d0b614ad13ab208a3bd70762`. The module imports the **unchanged existing** providers `SourceOccurrenceInfiniteTraceBridge.lean` (blob `7fc81a90c4ed0ed45dbd01aaf18cce4fca23ad4a`) and `SoficShiftPeriodicPointBridge.lean` (blob `cdf129caaa474c65f9245f142d35fde2611117e2`). Other reviewed source identities at the inspected Math commit `2e864e3514ba43426d80b245933a31508dbe4c3d` include:

| Existing source | Git blob | Distinct mathematical obligation |
|---|---|---|
| `SourceOccurrenceKeyRefinement.lean` | `cec5dc7cc4cef60e6a789a00c45385eb4f138360` | `ObservedKey ≃ Fin n`, checked *conditional finite* original owner/ordinal source keys |
| `SourceOccurrenceSoficBridge.lean` | `b2e0cb4919a5e73246c29c7f7769fe459949e73c` | Existing `ExactSourceRefinement`, raw/occurrence edge equivalence and two `WordPath` carriers |
| `SourceOccurrenceInfiniteTraceBridge.lean` | `7fc81a90c4ed0ed45dbd01aaf18cce4fca23ad4a` | Source graph all-prefix compactness, including the finite terminal-edge nonextension |
| `SoficShiftPeriodicPointBridge.lean` | `cdf129caaa474c65f9245f142d35fde2611117e2` | The **original** Nat-indexed `oneSidedShift` and `Function.IsPeriodicPt` at each period |
| `SoficFiniteTraceCompactness.lean` | `325cc0ae7185215e0d95285c97f4455a698e0f19` | Finite state compactness, not a theorem of bounded Noe source traversal |
| `ExactSoficLanguageCover.lean` | `f50489eaf6c7277993a08925a58b7765f9e10ec9` | `LabeledGraph` and `RunsOnGraph` on actual infinite state sequences |
| `SoficTopologicalLanguageBoundary.lean` | `516f991a66ff7f5f0599261b14f78fecf769e21a` | Realized infinite factors can be stricter than finite graph word language |
| `SoficExactPeriodicTraceLedger.lean` | `b3f5b7ce5e0b7eb0a4c1081dce166815824b6bac` | Missing/surplus original graph-cycle lifts, retained separately |
| `SoficPeriodicSourceIntegration.lean` | `21c602ba8f6b8f1611e2c90d45d9aed3e70f7454` | Original corrected graph/label-periodic word count, conditional premises |

The **direct imports** of the new source are the first two named above. Other rows describe transitive or separately relevant mathematical relations, not fabricated direct imports. None of these source identities represents fresh kernel acceptance.

## Exact theorem candidates and quantifiers

Let `bridge : ExactSourceRefinement Raw Occurrence State` be an **explicit proof-carrying input**: `encoding : Raw ≃ Occurrence`, plus both original source/target endpoint agreements. In particular this does not follow from a Noe search hit, a Git commit, a SQLite `owner_ordinal_unique` field, a complete finite walk enumeration, or an FTS match.

1. `rawOccurrenceTraceEquiv` is a genuine bijection
   `(ℕ → Raw) ≃ (ℕ → Occurrence)`, applying the **original encoding pointwise** and using its actual inverse pointwise. Every original label is retained, even when text and endpoints coincide.
2. `rawOccurrenceTraceEquiv_shift` states that this bijection commutes *exactly* with the repository's original `SoficShiftPeriodicPointBridge.oneSidedShift`. No alternative shift map is invented.
3. `runsOnRaw_iff_runsOnOccurrence` reuses `encoded_edge_iff` to prove the original `ExactSoficLanguageCover.RunsOnGraph` condition equivalent under that encoding. The same infinite state sequence witnesses both directions, with every original edge incidence unchanged. `runsOnGraph_shift` reuses the same unchanged graph and drops the initial state of the witness.
4. `rawOccurrenceShift_periodic_iff` applies the **existing** `oneSidedShift_isPeriodicPt_iff` lemma and encoding injectivity to reflect `Function.IsPeriodicPt` at **each original natural period**, including periods that are not minimal. This is periodicity of a **label stream**, not of its graph states.
5. `observedKeyTraceEquiv`, `observedKey_runsOnGraph_iff` and `observedKey_shiftPeriodic_iff` specialize the exact relation to the subtype of original observed `(source owner, source ordinal)` keys and the actual `Fin n` occurrence labels.
6. `rawAdmittedPeriodicEquiv` and `observedKeyAdmittedPeriodicEquiv` restrict that bijection to the **two simultaneous conditions**: the original `RunsOnGraph` condition **and** the original `Function.IsPeriodicPt` period-n condition. This is a typed equivalence of admitted *occurrence-labeled* periodic streams, **not** an equality of the distinct factor-language periodic point count, a same-period based-cycle lift, or a completed surplus/missing-lift ledger.

A single periodic label word may have several graph-state lifts, an original graph-state lift of a multiple of the label period, or none with the same period. The existing periodic correction and topological realization sources, plus any bounded original-cycle hypotheses, remain separate; the new source does not erase either signed correction term.

## Tested finite oracle and unrun verification gates

A new independent local Python reference suite `test_source_shift_conjugacy_reference.py` ran five groups: 1,500 randomized bijective original key/slot inventories; 1,800 tests for shift commuting and all tested period predicates; 1,900 finite automaton original-key/slot admitted periodic-run comparisons; exhaustive period 1–3 admitted-word subtype comparisons for 45 random small original-edge graphs; and hostile identical-payload parallel edges plus terminal-edge nonextension. **Five of five passed**.

Those finite Python tests are diagnostic analogues only. They cannot establish Lean elaboration, full infinite-state theorem correctness, actual Noe source-extractor refinement, graph origin authentication, mathematical factor-language periodic point equivalence, or current application/production acceptance.

Before mathematical promotion, compile this new module in a fresh pinned checkout with `leanprover/lean4:v4.34.1` and original `lake-manifest.json` Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspect all actual expected fully qualified types, fresh kernel replay and transitive axioms. Separately run the installed Noe registered regression and `audit`/`audit-git`/PW3 FTS storage acceptance suites in an authenticated two-repository checkout. No proof of the actual Python/Git/SQLite index extractor inhabiting `ExactSourceRefinement` is supplied in this source increment.

**Release scope:** exact finite original source-occurrence labels and a fixed one-sided shift under an **explicit** equivalence. It proves no special infinite trace has the universal all-prefix property, no factor-language equality, no same-period original cycle lifting, no RH, no zeta-zero or full source-corpus correctness.
