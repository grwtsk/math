# Quantitative progression coloring

Local attribution: grwtsk contributors.

This opt-in subject package ports the proof sources for Erdős Problem #138 from
OpenAI, *Quantitative Superexponential Bounds for van der Waerden Numbers*
(September 23, 2026), commit `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`.
OpenAI retains upstream authorship and the Apache 2.0 license in `LICENSE`.

The 115 source modules preserve every definition, theorem hypothesis and proof
body under a reversible enclosing-namespace and module-import renaming. Model
imports `Mathlib.Order.Lattice.Nat` for the natural-number infimum instead of the
aggregate `Mathlib` module. Basic explicitly imports `Mathlib.Tactic.NormNum`
for its existing `norm_num` proof. The static source map is
`documentation/mathematics/_verification/targets/Combinatorics/ProgressionColoring/openai-source-port-v1.json`
in the repository root. No new conjecture is introduced by this port.

The positive-interval theorem remains
`GRWTSK.Combinatorics.OpenAIMath.Erdos138.erdos_138`: the kth root of the two-color
van der Waerden number tends to infinity. It asserts no ratio-growth variant.
The interval-equivalence and infimum-equality bridges have explicit proofs.

Compilation, fresh source-bound kernel replay, exact-statement consumer and
transitive axiom audit are **NOT_RUN** for these bytes. Source correspondence
alone does not establish theorem acceptance. This package is separate from
the root build and the original opt-in OpenAI adapter package.
