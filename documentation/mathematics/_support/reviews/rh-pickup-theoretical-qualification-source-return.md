# Theoretical qualification at the original Möbius pickup source

Local attribution: grwtsk contributors.

**Reviewed mathematical scope:** source-exact comparison of the canonical RH-facing pickup cross energy with the prescribed endpoint quadrature and its actual observed samples. **Analytical conclusion:** two complete signed comparison identities and source-bound one-sided approximation estimates. **Not claimed:** a new arithmetic cancellation estimate, construction of good scales, a proof of RH, or fresh Lean kernel checking.

**Inspected sources:** \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean\`, blob \`2606536c56bdcb33d120aeddfbcbeef793e31ba1\`; \`GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean\`, blob \`301228a02fca2352ad7a55f23784f39d42210be8\`; and the new \`PickupTheoreticalQualification.lean\`, blob \`40d71dd5125a50ded72a9ac21cd65dc42ed25eff\` at commit \`b67643bbc309cc7cd15aab94e64213b868f9086d\`.

## 1. Actual objects and source identity

For every nonnegative time \(T\), let
\[
X(T)=\mathrm{pickupCross}(T),\quad
E(T)=\mathrm{endpointSum}(T),\quad
C(T)=\sum_{k<\lfloor e^T\rfloor}c_{2,k+1}
  K(\mathrm{eventCut}(T,k),\mathrm{eventCut}(T,k+1)).
\]
The second factor uses the precise coefficient \(\mathrm{coefficient2}(k+1)\) and \(\mathrm{curvatureMass}\) of the original source cells. No new source, fitted coefficient, adjustable negative slack or output-frequency quotient has been introduced.

The previously published source theorem \`endpointSum_signed_defect\` states
\[
E(T)-X(T)=C(T).
\]
The mathematical qualification instance \`endpointSourceComparison\` records **exactly**
\[
\boxed{X(T)=E(T)-C(T).}
\tag{1}
\]
This is a theorem about the original complete signed arithmetic quantity, not an analogy with another zeta-facing model. Its signed residual is \(-C(T)\), fixed by the source identity.

## 2. One-sided source return

If an analytic method proves
\[
E(T)-C(T)\le U(T)\qquad(T\ge0)
\tag{2}
\]
for a prescribed upper certificate \(U\), the new \`pickupCross_upper_of_signed_endpoint_bound\` returns
\[
X(T)\le U(T).
\tag{3}
\]
The proof explicitly instantiates the general \`SignedComparison.source_upper_of_signed_bound\` consumer. The nonnegative time assumption is carried in the index type and remains visible. Equation (2) is a substantive mathematical premise; writing it into a binder does **not** prove the missing estimate.

The existing absolute curvature allowance \(|E-X|\le1/4\) gives the unconditional, but weaker, source upper bound
\[
\boxed{X(T)\le E(T)+\tfrac14}.
\tag{4}
\]
The declaration \`pickupCross_le_endpoint_plus_quarter\` derives (4) through the actual generic comparison consumer and the existing \`endpointSum_error\`. The quarter unit is **approximation cost**, not arithmetic cancellation.

## 3. Comparison composition reaches independently observed endpoints

Suppose the original endpoint observations are replaced by separately supplied left/right samples \(l_k,r_k\) at exactly the same birth-cell horizon. Put \(O(T)=\mathrm{observedEndpointSum}(T,l,r)\). A second signed comparison is
\[
E(T)=O(T)+(E(T)-O(T)).
\]
The generalized \`SignedComparison.comp\` requires equality of the first model and second source. Its constructed residual is the **sum** of the actual stage residuals:
\[
\boxed{X(T)=O(T)+\underbrace{(E(T)-O(T))}_{\text{sampling}}
              -\underbrace{C(T)}_{\text{curvature}}}.
\tag{5}
\]
These two errors remain distinguishable, signed and fixed. The composed source \`sampledSourceComparison\` cannot change the arithmetic object by selecting a convenient remainder.

If every actual sample has absolute error at most \(\varepsilon\) compared with its prescribed polynomial value, the original \`observedEndpointSum_vs_chord\` proves
\[
|O(T)-E(T)|\le T\varepsilon.
\]
Combining with \(-C(T)\le1/4\) gives
\[
(E(T)-O(T))-C(T)\le T\varepsilon+\tfrac14
\]
and hence
\[
\boxed{X(T)\le O(T)+T\varepsilon+\tfrac14.}
\tag{6}
\]
The new \`sampledSourceComparison_residual_le\` and
\`pickupCross_le_observed_plus_paid_errors\` use (5), not an independently postulated sampling budget.

## 4. Distinct analytic calculations and hostile tests

**Route A — complete signed construction.** Start from the original cell identity, form the exact signed curvature sum, then compose with the actual observed endpoint error. The output is (5); the inequality (6) follows only after separately paying the absolute sample and curvature allowances.

**Route B — direct absolute comparison.** The existing \`observedEndpointSum_error\` applies the triangle inequality directly to \((O-E)+(E-X)\) and gives \(|O-X|\le T\varepsilon+1/4\), which implies (6). It does not use the new abstract comparison structure. These are two different **comparison derivations**, but both rely on the same upstream arithmetic endpoint and sample estimates. They **do not** constitute independent proofs of the unresolved arithmetic growth bound or of RH.

**Hostile cases:**
- **Wrong source:** replacing \(X\) with an arbitrary model destroys (1); a typechecked theorem about \(E\) alone does not restore it.
- **Signed cancellation:** \((E-O)-C\) can be small despite large positive/negative components; bounding them separately may pay unnecessary costs.
- **No uniform sample hypothesis:** if one endpoint violates the stated error bound, the \(T\varepsilon\) cost is unjustified.
- **Clipped terminal cell:** the original \(\mathrm{eventCut}\) and floor cutoff are preserved. Extending to negative physical times is unsupported.
- **Vacuous RH implication:** (3) with a freely assumed \(U\) is not an arithmetic witness. A bound at one fixed positive exponential rate does not imply subexponential control for every positive rate, and a sparse unbounded sequence does not establish affine coverage.

## 5. Genuine consumer and still-open analytic conclusion

The existing \`riemannHypothesis_of_endpoint_good_scales\` consumes \`AffineFrequent G\` and \`SubexponentialOn endpointSum G\`, then returns canonical \`_root_.RiemannHypothesis\` conditionally. The exact comparison and its paid errors explain *why* a sufficiently strong endpoint estimate transfers to the complete arithmetic source. **They do not construct either required witness.**

The smallest concrete arithmetic task remains a source-derived all-positive-rate upper bound for the actual signed endpoint sum on a set with controlled affine coverage. The symbolic signed residual is not a substitute for new cancellation.

This example also distinguishes the qualification of a **theorem about a source comparison** from the promotion of the **larger open-problem claim**. The former is analytically supported at its precise hypotheses; the latter remains open.

## 6. Formal evidence

The new Lean declarations are source proof candidates, not kernel-accepted theorems. At the reviewed head, compilation, fresh kernel replay, transitive axiom audit and downstream closed-form verification are \`NOT_RUN\`. Exact Lean toolchain currently recorded by the repository is \`leanprover/lean4:v4.34.1\` with Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`; these pins are environment description only. A later repair changes the evidence pin. No source file here creates a Noe proof-capsule admission gate.
