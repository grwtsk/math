# Prime-smooth orbit weak/strong reduction and the aligned-Gram obstruction

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Lean source proof candidate only.

## 1. Source reconciliation

This note combines three already source-bound constructions without changing
any arithmetic coefficient or causal kernel.

1. `MoebiusPrimeSmoothOrbitEnergy.lean` groups every selected-prime dilation
   above one rough core into a complete signed waveform `G_q`, with
   `pickupEnergy = internalOrbitEnergy + betweenCoreCrossEnergy`.
2. `MoebiusCausalGramCauchy.lean` proves the real two-by-two determinant
   inequality for actual causal response vectors by integrating a square.
3. `FiniteWeakGramPairs.lean` converts a diagonal-energy threshold and the
   Gram determinant inequality into a complete ordered weak-pair estimate.

The selected-prime orbit source and its prime-star precursor were retained as
exact unpublished bytes in the preceding research turns. This publication
places those source candidates and their reviews in the repository before the
present extension. All source files remain `COMPILATION_NOT_RUN`,
`EXPECTED_TYPES_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, and
`TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.

## 2. Complete orbit Gram

Fix a finite prime bank `B`, a nonnegative horizon `T`, and write

\[
 N=\lfloor e^T\rfloor.
\]

For each rough core `q`, let

\[
 G_q(u)=\rho_B(q)\sum_{d\le N/q}\kappa_B(d)r_{dq}(u)
\]

be the complete selected-prime orbit waveform. Its diagonal energy and mutual
Gram are

\[
 d_q=\int_0^T G_q(u)^2\,du,
 \qquad
 k_{q,r}=\int_0^T G_q(u)G_r(u)\,du.
\]

The complete same-core payment and net between-core packet are

\[
 I_B(T)=\sum_q d_q,
 \qquad
 C_B(T)=\sum_{q\ne r}k_{q,r}.
\]

The exact source identity is

\[
 \mathcal H(T)=I_B(T)+C_B(T).
\]

For every real `t`, positivity of the literal square integral gives

\[
 0\le\int_0^T(tG_q+G_r)^2
   =d_qt^2+2k_{q,r}t+d_r.
\]

The scalar discriminant argument therefore yields

\[
 \boxed{k_{q,r}^2\le d_qd_r.}
\]

No sign assumption on `k_{q,r}` is used.

## 3. Weak orbit packet

Choose the fixed threshold

\[
 \tau_T=(N+1)^{-6}.
\]

Define the complete ordered weak packet by

\[
 W_B(T)=
 \sum_{q\ne r\atop \min(d_q,d_r)<\tau_T}k_{q,r},
\]

and define the complementary strong packet

\[
 S_B(T)=
 \sum_{q\ne r\atop \min(d_q,d_r)\ge\tau_T}k_{q,r}.
\]

Then

\[
 C_B(T)=W_B(T)+S_B(T).
\]

Each diagonal satisfies `0<=d_q<=I_B(T)`. Hence every selected weak pair
obeys

\[
 |k_{q,r}|\le\sqrt{\tau_T I_B(T)}.
\]

There are at most `N^2` ordered pairs, so

\[
 \boxed{
 |W_B(T)|\le N^2\sqrt{\tau_T I_B(T)}.
 }
\]

Since

\[
 \frac{N^2}{(N+1)^3}\le1,
\]

we obtain the simpler bound

\[
 \boxed{|W_B(T)|\le\sqrt{I_B(T)}.}
\]

For every subcritical near-critical bank in the predecessor source,
`I_B(T)` is all-positive-rate. Splitting the requested exponent in half shows
that `sqrt(I_B(T))`, and therefore `W_B(T)`, is also all-positive-rate.

This is stronger than the integer-level weak-tube estimate only in its source
organization: every selected-prime orbit has already been formed before the
threshold is applied. No parent-child or child-child compensation is separated.

## 4. Strong packet is the exact remaining supplier

Because `W_B` is globally all-positive-rate,

\[
 S_B\text{ is subexponential on }G
 \quad\Longleftrightarrow\quad
 C_B\text{ is subexponential on }G
\]

for every fixed scale set `G`. The transfer uses

\[
 S_B=C_B-W_B,
 \qquad C_B=S_B+W_B,
\]

and the absolute global allowance for `W_B`.

The negative side of the strong packet is already paid. Since
`0<=H=I_B+C_B`,

\[
 -C_B\le I_B.
\]

Using `C_B=W_B+S_B`,

\[
 -S_B\le I_B+|W_B|.
\]

Thus the negative part of `S_B` is all-positive-rate. Consequently, on any
fixed scale set,

\[
 \boxed{
 S_B\text{ has a one-sided all-positive-rate upper bound}
 \iff
 |S_B|\text{ has an all-positive-rate bound}.
 }
\]

The absolute value is outside the one complete signed strong packet. It does
not permit absolute values on prime-dilation credit, child Type-II
compensation, mixed tags, or individual rough-core blocks.

Combined with affinely frequent coverage and the existing good-scale energy
consumer, this strong-packet estimate is source-equivalent to the current RH
completion target.

## 5. Sharp generic obstruction to threshold-only closure

The preceding reduction cannot close the problem by energy thresholds and
Gram Cauchy alone. The obstruction is elementary and exact.

Fix `N>=1` and take `N` identical real Hilbert vectors

\[
 v_i=N^{-1/2}v,
 \qquad \|v\|=1.
\]

Then

\[
 d_i=\|v_i\|^2=\frac1N,
 \qquad
 k_{ij}=\langle v_i,v_j\rangle=\frac1N,
\]

so

\[
 \sum_i d_i=1,
 \qquad
 k_{ij}^2=d_id_j.
\]

The complete ordered off-diagonal cross is

\[
 \sum_{i\ne j}k_{ij}
 =\frac{N(N-1)}N=N-1.
\]

For any threshold `tau` there are only two possibilities.

* If `tau>1/N`, every off-diagonal pair is weak and the weak packet is `N-1`.
* If `tau<=1/N`, every off-diagonal pair is strong and the strong packet is
  `N-1`.

Therefore

\[
 \boxed{
 \max\{|W_\tau|,|S_\tau|\}=N-1
 }
\]

for every threshold, despite total diagonal energy one and exact saturation of
Gram Cauchy. With `N` comparable to `e^T`, this is exponential in physical
time.

This is not a counterexample to the actual Möbius orbit waveforms. It proves a
method boundary: energy-matched geometry, total diagonal payment, threshold
selection, and two-vector Gram Cauchy cannot by themselves establish the
all-positive-rate strong-packet estimate. The next theorem must use actual
arithmetic structure inside the complete strong packet.

## 6. Revised bounded target

For a fixed `0<=alpha<2`, let `B_T` be the predecessor near-critical bank and
let `S_alpha(T)` be the complete strong packet at threshold `(floor(exp T)+1)^-6`.
The remaining theorem is

\[
 \exists G\subseteq[0,\infty),\quad G\text{ AffineFrequent},
\]

and for every `epsilon>0`, constants `C_epsilon,R_epsilon>=0` such that

\[
 T\in G,\ T\ge R_\epsilon
 \Longrightarrow
 |S_\alpha(T)|\le C_\epsilon e^{\epsilon T}.
\]

A proof supplies the old between-core bound, the complete pickup-energy bound,
and the existing conditional return to the canonical Riemann Hypothesis.

The aligned example proves that this target cannot follow from the visible
energy/Gram hypotheses alone. Candidate next arithmetic inputs are a genuine
least-prime Type-II estimate for the complete strong packet, a source-specific
operator norm that beats the initial `e^T` scale, or an exact cancellation
identity coupling distinct rough cores before any outer absolute value.

## 7. Verification boundary

The new Lean module contains exact finite definitions, partition identities,
conditional transfers, and the formal obstruction proposition. The scalar
threshold decay and complete orbit Gram-Cauchy bridge remain visible source
qualification gates. The ordinary finite derivations above are complete.

No Lean compilation, expected-type check, fresh-kernel replay, transitive axiom
audit, native execution, endpoint supplier, or RH proof is claimed.
