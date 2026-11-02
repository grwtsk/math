# Prime-dilation point-spectrum interval source ledger

Local mathematical attribution: grwtsk contributors.

## grwtsk/math source chain

- `MoebiusDenseReducedPrimeDilationCancellation.lean`, blob
  `50f9ee06b3deea0321982c7e8cb8ba41bf9fc7e9`: actual source relation
  `q ↦ p*q`, exact identity `mu(q)mu(pq)=-mu(q)^2`, nonpositive causal-Gram
  packet, and literal complementary reduced core.
- `WilsonRealHamiltonianLine.lean`, blob
  `cadf98cd4ea4cc16057f36690c94d98d8034d9c1`: universal real operator line
  `H(q)=H+qI`, maximal-domain graph self-adjointness, vacuum eigenvalue `q`,
  and real decay character.
- `WilsonPrimeWindowVacuumRayleighSegment.lean`, blob
  `8b571e7f7dbd7968255cd7408af4aeecb3607082`: finite graded two-vacuum
  interpolation and exact interior residual
  `(E-lambda)(mu-E)`, establishing the numerical-range/point-spectrum
  distinction on the original finite carrier.
- `DiagonalHilbertDomain.lean`, blob
  `0abba75587a2c8873a45a17876b1b0f1a6fe65ee`: arbitrary-index Hilbert-sum
  multiplier, maximal weighted-square-summability domain, coordinate action,
  dense domain, closed graph, graph self-adjointness, single-coordinate
  domain vectors, and quadratic series.
- `MoebiusPrimeDilationPointSpectrumInterval.lean`, local source: exact
  point spectrum of the real interval multiplier, Wilson family interval,
  logarithmic prime-dilation width, and paired arithmetic/spectral source
  theorem.

## Pinned Mathlib interfaces

Toolchain target:

- Lean `v4.34.1`;
- Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Relevant upstream APIs:

- `Mathlib/Analysis/InnerProductSpace/l2Space.lean`: arbitrary-index `lp`
  Hilbert sums, coordinate evaluation, `lp.single`, and extensionality;
- `Mathlib/Analysis/SpecialFunctions/Log/Basic.lean`: `Real.log_mul` and
  `Real.log_pos`;
- `Mathlib/Analysis/InnerProductSpace/PiL2.lean`: finite `PiLp 2` geometry
  used by the predecessor prime-window grading, retained only for comparison.

All upstream attribution and licenses remain attached to their source files.

## Mathematical correspondence

For real `a,b`, define

\[
  K_{a,b}=\ell^2([a,b];\mathbb R),
  \qquad
  (M_{a,b}x)(s)=s x(s)
\]

on the maximal domain

\[
  \sum_{s\in[a,b]}s^2|x(s)|^2<\infty.
\]

Each coordinate vector `delta_s` satisfies

\[
  M_{a,b}\delta_s=s\delta_s.
\]

Conversely, any nonzero eigenvector has a nonzero coordinate `s`, and the
coordinate eigen-equation forces its eigenvalue to equal `s`.  Hence

\[
  \sigma_p(M_{a,b})=[a,b].
\]

For prime `p` and positive integer `q`,

\[
  \log(pq)-\log q=\log p>0,
\]

so the source dilation produces the interval

\[
  [\log q,\log(pq)].
\]

The same source relation retains

\[
  \mu(q)\mu(pq)=-\mu(q)^2
\]

when `p∤q`.

## Essential carrier boundary

A nontrivial real interval is uncountable.  A single self-adjoint operator on
a separable Hilbert space cannot have that interval as point spectrum, because
nonzero eigenspaces at distinct real eigenvalues are orthogonal.  The local
single-operator theorem therefore uses the nonseparable counting-measure
Hilbert sum indexed by every point of the interval.

This must not be confused with:

- the original finite prime-window `PiLp 2` graded Hamiltonian;
- a countable sum indexed by primes or integers;
- a Lebesgue direct integral, whose coordinate multiplier has continuous rather
  than point spectrum on an interval.

## Nonclaims

- No point-spectrum interval is claimed for the existing finite Wilson graded
  Hamiltonian.
- No continuum or infinite-volume physical mass gap is proved.
- No arithmetic residue class is assigned to every real interval point.
- No estimate is obtained for the complementary Möbius dense packet.
- No endpoint all-positive-rate supplier or RH conclusion is obtained.
- Source publication is not Lean compilation, kernel checking, native replay,
  or a transitive axiom audit.
