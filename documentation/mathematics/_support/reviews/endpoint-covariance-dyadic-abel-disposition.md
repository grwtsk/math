# Source-exact finite Abel transfer, row exclusions and pickup covariance cover

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Source proof candidates, **NOT_RUN** for Lean elaboration, fresh kernel checking, exact-type checking and transitive axioms.

## The original mathematical observation

The object is the **unchanged** `GRWTSK.RiemannHypothesis.CCC.pickupCross T`, not a newly chosen positive Gram surrogate:

\[
X(T)=\sum_{1\le m,n\le N_T}\mathbf1_{m\ne n}\,\mu(m)\mu(n)
G_T(m,n),\quad N_T=\lfloor e^T\rfloor,\quad
G_T(m,n)=\int_0^T r_m(u)r_n(u)\,du.
\]

Both pair orientations survive. The diagonal is removed only by the actual `m ≠ n` test. This is precisely the source in `MertensPrimitive.lean`; `PickupEndpointQuadrature.endpointSum` has the already-written bound `|endpointSum T - pickupCross T| ≤ 1/4` for `T≥0`. The quarter is paid once, after the signed observation has been formed.

## Source-matched finite Abel and PNT transfer

For arbitrary real sequences `a,z`, write `A_n = sum_(k=0..n) a_k`. Induction on `N` gives the **exact** boundary-preserving identity

\[
\sum_{n=0}^{N} a_n z_n=A_N z_N+
\sum_{n=0}^{N-1} A_n(z_n-z_{n+1}).
\]

The imported repository already has its complex analogue at `FiniteAbelTransfer.sum_mul_eq_prefix_endpoint`; the new file specializes it to the genuine prime atom and includes a real version to transfer source-specific pointwise budgets without casting gaps.

The arithmetic atom is `thetaAtom(n)=log n` when `Nat.Prime n`, and zero otherwise. Its inclusive sum equals the already defined external PNT/Mathlib prime-log sum **for every N**, without dropping zero or the terminal term. Define the compensating atom `d(0)=0` and `d(n)=1` for `n>0`. Then

\[
\sum_{n=0}^N(\theta\mathrm{Atom}(n)-d(n))=\theta(N)-N.
\]

The PNT estimate used here is `ThetaPrimeNumberTheorem`, a **named proposition** in the local source, and is explicitly supplied as a hypothesis. The external PNT proof has not been ported into the pinned local proof closure; source equality is not proof-term transport. If a supplier proves `|theta(x)-x|≤εx` for `x≥B`, define

\[
E_{\varepsilon,B}(n)=\begin{cases}
\varepsilon n,&n\ge B,\\
|\theta(n)-n|,&n<B.
\end{cases}
\]

The actual weighted discrepancy therefore obeys

\[
\left|\sum_{n=0}^N(\theta\mathrm{Atom}(n)-d(n))z_n\right|
\le E_{\varepsilon,B}(N)+\sum_{n<N}E_{\varepsilon,B}(n)
|z_n-z_{n+1}|\qquad(|z_N|\le1).
\]

This **retains every initial prefix and the complete total variation**. There is no asserted smallness for rapidly varying `z`, or for Möbius pair-correlation weights, from PNT alone.

## Exact row count and row-level total

For finite `A⊂ℕ`, define the explicit row exclusion neighborhood

\[
R_A(m)=([m-2,m+2]\cap\mathbb N)\cup(m+A)\cup
\{\max(m-a,0):a\in A\}.
\]

The first set has at most five points. Each translated copy of `A` has at most `|A|` points, whether or not its translation is injective. Hence

\[
|R_A(m)|\le 2|A|+5.
\]

The actual source-specific bad row `B_m` may consume this bound only after proving **`B_m ⊆ R_A(m)`**. For `N` positive rows, the corresponding ordered pair count is at most

\[
\sum_{m=1}^N |R_A(m)\cap[1,N]|\le N(2|A|+5).
\]

This is a count, **not an unweighted bound on the Gram contribution**. A bound on every excluded edge's actual signed amplitude, with its original row normalization, would be required to turn count into covariance loss. In particular no number-theoretic exceptional condition is silently redefined as this generic neighborhood.

## Exhaustive dyadic partition of the unchanged Gram

For every `N≥0`, put `J=Nat.log 2 N+1` and

\[
I_j(N)=[2^j,2^{j+1})\cap[1,N],\qquad 0\le j<J.
\]

The blocks are pairwise disjoint and exactly cover `1,...,N` (including `N=0` as the empty inventory). Define actual signed blocks

\[
X_{jk}(T)=\sum_{m\in I_j(N_T)}\sum_{n\in I_k(N_T)}
\mathbf1_{m\ne n}\,\mu(m)\mu(n)G_T(m,n).
\]

Applying the one-index partition **twice** and exchanging two *finite* sums proves

\[
\boxed{X(T)=\sum_{j,k<J}X_{jk}(T)}.
\]

This is an equality for the original response Gram, not an estimate or a model substitution. Same-block terms with `m ≠ n` remain; cross-block terms retain both orientations. At exact dyadic time `T=\ell\log 2`, `N_T=2^\ell` and `J=\ell+1`. Unlike the zero-width **birth cell** in `endpointSum`, the terminal *index block* is not dropped by convention.

## Complete accumulation of losses

The first unconditional comparison is

\[
X(T)\le \sum_{j,k<J}|X_{jk}(T)|.
\]

If a future, independently established source-bound estimate proves `|X_{jk}(T)|≤B_T` for **every** ordered block, the finite counting identity implies

\[
\boxed{X(T)\le J^2 B_T,\qquad
\mathrm{endpointSum}(T)\le J^2 B_T+\tfrac14\quad(T\ge0).}
\]

Thus the block-summation loss is **exactly at most `J²`** under a uniform block allowance (on the dyadic grid, `(\ell+1)²`), and the separate endpoint-quadrature loss is **exactly `1/4`**. A finer nonuniform allowance retains `sum_(j,k) |X_jk|` instead of replacing it by `J² max |X_jk|`. The factor is a valid *worst-case cost*: no cross-block cancellation is credited. Its quadratic-logarithmic size is compatible with a subexponential target only **if** suitable block bounds at every positive exponent have already been proved from the source. Such bounds are **not** proved here.

It is incorrect to infer this missing analytic supplier from (i) PNT, which controls a one-point prime-log prefix, (ii) the row exclusion cardinality alone, or (iii) the identity of the dyadic cover. A constant `B_T` or an `O(e^T)` absolute allowance without a genuine signed saving would not meet the `DyadicBirthBound` requirement at all positive exponents. Existing `PickupDyadicAllowanceObstruction` already shows that the coarse count/Cauchy allowance has the wrong rate.

## Source comparison and hostile checks

1. **Boundary**: `thetaAtom(0)=thetaAtom(1)=0`, while the drift subtraction is one only at positive indices; otherwise Abel has a hidden unit error.
2. **Truncated subtraction**: the `m-a` branch may collapse to zero; this makes an upper count safer but does not characterize a source-specific exceptional set without an inclusion proof.
3. **Empty and terminal blocks**: `N=0` is empty. At `N=2^\ell`, the final block `I_\ell` exists and is included even if subsequent source analysis proves its contribution zero.
4. **Signed pairs**: the exact original pair includes the `m≠n` test. A positive semidefinite Gram or diagonal-only bound would be a different observation.
5. **Non-circularity**: the only analytic input is the explicitly typed PNT proposition, and the block budget is a hypothesis of a **conditional comparison**, not a theorem that asserts it exists.

Independent finite tests use exact rational arithmetic and actual finite Möbius signs with an **illustrative rational kernel** (not the integral Gram). They check algebraic partition, signed orientation, count and `J²` inequalities. They do not verify the analytic integral, the all-scale Mobius bound or the PNT itself. Their source and deterministic record are in the conversation artifact `preflight.py` and `preflight-result.json` rather than the mathematics repository.

## Formal acceptance and remaining supplier

The source is **SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED**. Before acceptance, compile at the exact current `lean-toolchain`/`lake-manifest` revisions, run fresh kernel replay on the complete import closure and inspect the transitive axiom list of every new declaration, including generated/private dependencies. Reject `sorryAx`, new project research axioms, unauthorized native trust, missing hypotheses, or a false bridge to the actual exceptional set. An executable acceptance record must be tied to the exact source commit and file blob; historical source receipts do not transfer.

The substantive unresolved arithmetic objective remains: construct a genuinely source-bound all-positive-rate **signed** block aggregate estimate (or an alternative complete signed `endpointSum` estimate) and prove any actual row-exception inclusion/weighted loss invoked. No unconditional RH conclusion is claimed.

## Closest existing sources, not independent proofs

- `GRWTSK/NumberTheory/MultiplicativeNumberTheory/FiniteAbelTransfer.lean`: finite complex Abel identity and variation norm bound.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExternalPNTAndChebyshevThetaPort.lean`: exact prime-log sum equality to Chebyshev theta, conditional external-asymptotic bridge.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean`: `ThetaPrimeNumberTheorem` is an explicit proposition, not an imported theorem term.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`: original `pickupCross`, actual two-response Gram, Möbius weights, and ordered diagonal removal.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean`: source-matched uniform quarter-unit approximation.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupDyadicEndpoint.lean`: target `DyadicBirthBound` and RH implication, both conditional on its missing arithmetic premise.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupDyadicAllowanceObstruction.lean`: explicit failure of the unsigned counting allowance at rate `1/2`.
