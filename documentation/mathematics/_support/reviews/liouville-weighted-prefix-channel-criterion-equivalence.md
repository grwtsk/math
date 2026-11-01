# The generalized channel certificate is exactly the discrete weighted-prefix target

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** The generalized finite-channel formalization is source-exact,
but the existence of a dynamic channel family with subpolynomial occupied count
and subpolynomial whole-channel energy is not a weaker arithmetic conjecture.
The one-channel specialization has count one and channel energy exactly equal
to the original discrete weighted Liouville-prefix square. Thus the generalized
certificate is equivalent to the discrete target. The continuous
`WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, and RH remain unproved.

Prepared from `grwtsk/math/main` at
`0bacd2cb10adfea5468adc79a191defc12b95857`.
Research scope: `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

Compilation, expected-type checking, fresh-kernel replay, native execution and
transitive axiom audit are `NOT_RUN`.

## 1. Existing exact channel return

For each cutoff `N`, the existing source retains the actual Liouville
coefficients, the complete prefix inventory `1..N`, the activation `n<=k`, and
the terminal weight `1/[k(k+1)]`. For any source-to-frequency and
frequency-to-channel maps it defines

\[
 E_N(c)=\sum_{k=1}^N\frac1{k(k+1)}
          \sum_{\gamma} B_{\gamma,k}^2,
\]

where

\[
 B_{\gamma,k}=\sum_{\substack{n\le k\\c(n)=\gamma}}\lambda(n).
\]

If `K_N` channels are occupied, finite Cauchy gives

\[
 J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}\le K_NE_N(c).
\tag{1}
\]

For a family of channelizations depending on `N`, the already published theorem
`subpolynomialDiscrete_of_dynamicChannelEstimates` pays half the requested
exponent to `K_N` and half to `E_N(c)`.

## 2. One channel gives exact equality

Send every source index to the unique element of `Unit`. Then there is at most
one occupied channel and

\[
 B_{*,k}=\sum_{n\le k}\lambda(n)=L(k).
\]

Therefore

\[
\boxed{E_N(*)=J_N.}
\tag{2}
\]

The cross-channel residual is identically zero. The occupied count is at most
one, hence has an all-positive-rate bound with constant one.

It follows that

\[
\boxed{
\begin{aligned}
&\text{one-channel count and channel energy are subpolynomial}\\
&\qquad\Longleftrightarrow\quad
J_N=O_\eta((N+1)^\eta)\text{ for every }\eta>0.
\end{aligned}}
\tag{3}
\]

Since the one-channel assignment is a permitted instance of the arbitrary
framework, the existential statement

> there is some dynamic channelization with subpolynomial occupied count and
> subpolynomial channel energy

is equivalent to the original discrete weighted-prefix target. It is not a
new weaker route.

## 3. Consequence for randomization and frequency maps

Pairwise-orthogonal random multipliers replace the deterministic channel
reconstruction by the expectation of `E_N(c)`. They do not estimate `E_N(c)`.
Equation (2) shows that even the most degenerate allowed channelization already
contains the full target exactly.

Conversely, splitting into more channels can destroy useful negative
cross-channel covariance. The existing parity fixture with alternating source
signs has bounded original weighted-prefix energy while its parity-channel
energy grows linearly. Therefore no source-independent monotonicity under
channel refinement is available.

A frequency layer changes only the factorization of the address map. The
mathematical obligation remains an independent estimate of the whole signed
channel-prefix squares for the actual Liouville coefficients.

## 4. Exact remaining frontier

The new equivalence is discrete. To reach the continuous target one must still
qualify the existing source propositions:

1. the continuous/discrete weighted-prefix identity;
2. dyadic block control implies the continuous all-rate moment;
3. the Abel--Hardy transfer to `UniformEnergySupplier`.

The missing arithmetic estimate can be presented either as the original
`SubpolynomialDiscreteWeightedPrefix` or as a channel-energy theorem for one
specific source-matched family. The latter is useful only if its proof exploits
additional arithmetic structure; generic channel covariance and random-choice
identities alone are reversible bookkeeping.

## 5. Formalization boundary

The new source proves:

- zero cross-channel energy for the singleton assignment;
- exact equality of singleton channel energy and the discrete weighted-prefix
  square;
- the singleton all-rate channel-count bound;
- transfer from the discrete target to singleton channel energy;
- equivalence of the singleton dynamic certificate and the discrete target.

These are source proof candidates until compilation and kernel qualification.
No weighted-prefix cancellation estimate, continuous supplier, uniform energy,
endpoint estimate, or RH theorem is asserted.
