# Proof disposition: mathematical comparison before scale

Local attribution: grwtsk contributors.

**Applies to every newly authored, revised, imported, or publicly promoted proof claim in GRWTSK mathematics.** This is a repository-wide research and communication standard, not a claim that every historical source has already undergone this review. Maintain the original provenance, evidence and hypotheses of previously published work. Unreviewed legacy material remains *unreviewed for this disposition*, not automatically false or unverified in the Lean sense.

## The epistemic distinction

**Typechecking at scale establishes facts about formal derivations. Comparing mathematical objects is what qualifies those facts as mathematical knowledge that can be explained, challenged, transferred, and used. Without comparison, mass typechecking is vacuous as a programme of discovery. Without typechecking, mathematics remains mathematics.**

This is a claim about *discovery and mathematical understanding*, not the false claim that successful Lean checking is logically worthless. A checked proof can establish a nontrivial implication relative to a specified environment and axioms. It does not establish that its hypotheses hold, that its objects are the intended ones, that a different representation preserves the source, that its conclusion transfers to a broader problem, or that an argument is independent of another argument. Formal proof acceptance and analytic knowledge assessment are **orthogonal**; neither can be inferred from the other.

Analytical proof is not shorthand for analogy, numerical agreement, or a plausible picture. It requires a complete mathematical argument with explicit hypotheses and quantifiers, valid inference, correct objects, and an independently inspectable path from source to conclusion. Formalization is optional for mathematics to exist, valuable for auditing exact derivations, and insufficient by itself to make a new comparative claim.

## Universal proof disposition

Every proof claim should carry a readable *analytical comparison disposition* in authored mathematical prose or an attached reviewed record. Do not silently add unapproved fields to `grwtsk.result-article/1` or retroactively relabel a large corpus.

1. **Statement and actual objects.** Identify the exact conclusion, quantified hypotheses, parameter dependencies, definitions, source identities, and whether the theorem is finite, conditional, asymptotic, analytic, algorithmic or source-exact. Distinguish an implication from a proof of its premises.
2. **Primary analytic argument.** Explain the mechanism of the proof in mathematical terms. Show the operative identity, estimate, reduction, obstruction or construction, including its assumptions and genuine reasoning—not just a declaration name, compiler transcript or formal proof term.
3. **Comparison that qualifies the claim.** Compare actual objects or representations: an exact map and inverse, a common invariant, a boundary/limiting case, a signed residual comparison, a counterexample or an alternative construction. State what is preserved, what changes, and what cannot be transported. A citation, similarity edge or name match is not a comparison theorem.
4. **Distinct routes and noncircularity.** Seek a second *analytical* route or hostile independent check whenever one could materially challenge the conclusion. Record its independent starting objects, premises and mathematical mechanism. Identify shared lemmas and detect whether both routes merely assume the missing result. Two Lean wrappers, two tactic scripts or two parameterizations of the same hypothesis are **not** independent proofs. When only one analytic route exists, record that honestly; do not manufacture a second or demote valid established mathematics solely for lacking one.
5. **Hostile boundary.** Test degenerate, extremal, zero, singular, nonunit, repeated, high–high-to-low, aliasing, sign, dimension, quantifier and limiting cases as applicable. Record an actual counterexample or explain why each attempted obstruction does not apply. Finite experiments are diagnostics, not global proofs.
6. **Consumer and return.** Identify what original statement or downstream theorem uses the result. Prove any required source-preserving return, including the whole remainder, mixed terms and explicit numerical allowances. For an open-problem programme, an elegant representation or verified conditional implication does not replace the missing analytic witness.
7. **Formal and source evidence—separate.** Record the Lean source commit/blob, actual compilation, fresh kernel acceptance, transitive axiom/hypothesis audit, and the exact applicable dependency/toolchain scope, with `NOT_RUN` where appropriate. A successful check says only what it covers. Conversely, an analytically complete argument must not be described as Lean-verified without its own receipts.

Use explicit, non-exclusive descriptions such as **analytically argued**, **independently compared**, **analytically proved at stated scope**, **refuted at stated scope**, **conditional on unresolved premise**, **source proof candidate**, **kernel verified at pinned scope**, and **not assessed**. The first family describes mathematical assessment; the second describes formal evidence. A theorem can legitimately be analytically proved and `NOT_RUN` in Lean, or kernel checked while lacking a useful source comparison. Do not convert either status to the other.

## Distinctness tests for multiple routes

Alternative routes qualify independently only when the second argument can be checked without treating the first route's contested estimate or conclusion as a premise. Shared proved foundations—e.g. the same exact source definition—are permitted and must be disclosed. The reviewer asks:

- If the primary result's key inequality were removed, could the second route still derive its conclusion from separately established premises?
- Does the second route directly address a different obstruction or provide a genuinely different calculation (e.g. quadratic polarization versus spectral diagonalization versus infinitesimal generator)?
- Would the strongest known counterexample challenge the routes differently? If not, compare the shared dependence explicitly.
- Does each proof reach the *same* original observation and quantifier scope? Otherwise record a conditional bridge, not an independent verification of the same theorem.

A numerical or finite symbolic check can disprove a universal claim with one exact counterexample, but cannot generally prove a universal theorem. It can corroborate an independent analytic derivation, and should be labelled as such.

## Concrete exemplar: finite residual symmetry and its open transfer

The [three-phase residual analytic closure](../reviews/three-phase-residual-analytic-closure.md) gives direct positive-Gram/Weil polarization, an independent orthonormal spectral calculation and an infinitesimal torsion argument for the finite residual symmetry. Its source object is (E(a,b)=(a,b,-a-b)), with positive Gram matrix (G=\begin{pmatrix}2&1\\1&2\end{pmatrix}). Its actual complex-linear residual isometry group is conjugate to (U(2)), while positive-time heat compatibility restricts coherent/residual mixing.

The same record contains the wrong-metric fixture and a source-labelled divergence-free high–high-to-low Fourier triad. These tests prevent promotion of the finite symmetry result to Navier–Stokes regularity, a PDE moment-gap estimate, or (SU(3)) / quantum chromodynamics. The remaining operator comparison (‖P_\theta-J‖<\gamma) has **not** been analytically discharged. See [analytic completion issue #1498](https://github.com/grwtsk/math/issues/1498) and [source/verification issue #1493](https://github.com/grwtsk/math/issues/1493).

## Corpus-wide adoption without retrospective overclaiming

Apply this disposition to **all proof families** as a publication and review obligation. For existing results, introduce reviewed comparison prose when a source is actually inspected, preserving prior theorem statements, historical acceptance and evidence identities. Mark the review population as reviewed, unreviewed or blocked; do not claim that all historical proofs have acquired independent analytic checks by adding this document.

The maintained result-article form remains authoritative for article metadata; this disposition belongs in the article's authored **Proof**, **Composition**, **Verification and trust boundary**, and **Sources and missing bridges** sections. Preserve the same source identities and one canonical article. Do not create per-proof placeholder certifications or inflate completion counts.

The operational extraction, mass inventory, runnable audit and review receipts belong to [grwtsk/noeaaeue](https://github.com/grwtsk/noeaaeue); mathematical arguments, source links and static specifications remain here. No skill installation, task queue or policy text authorizes execution or asserts that an audit has occurred.

**Acceptance of mathematical understanding is not a throughput statistic.** Prefer a source-exact comparison that exposes why one argument works, where another fails and what remains unknown over an enormous collection of identically checked derivations whose mathematical relations have not been established.
