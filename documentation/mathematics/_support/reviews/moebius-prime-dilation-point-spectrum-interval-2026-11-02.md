# Prime dilation and a complete real point-spectrum interval

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-02.
Formalization assistance: OpenAI ChatGPT. Source proof candidate only.

## 1. The source distinction

The maintained arithmetic prime-dilation result concerns original Möbius
indices

\[
  q\longmapsto p q,
\]

with `p` prime and `p ∤ q`.  It proves the exact coefficient identity

\[
  \mu(q)\mu(pq)=-\mu(q)^2
\]

and hence a nonpositive signed causal-Gram contribution.  This is a genuine
arithmetic upper credit inside the reduced-ratio endpoint core.

It is not, by itself, a spectral construction.  The finite prime-window Wilson
graded Hamiltonian has vacuum eigenvalues `log p_r`, and the previously
published two-vacuum state fills the real interval between two such values only
in the numerical range.  Its exact residual identity is

\[
  \|(H-E)\Psi_E\|^2=(E-\lambda)(\mu-E),
\]

so every strict interior value has nonzero residual on that state.  Prime
multiplication does not alter this calculation.

There is also a general structural boundary: on a separable Hilbert space, a
self-adjoint operator cannot have a nontrivial real interval of point
eigenvalues.  Eigenspaces for distinct real eigenvalues are orthogonal, while a
separable Hilbert space admits only countably many mutually orthogonal nonzero
vectors.  Therefore a literal interval of point spectrum requires either:

1. a family of operators indexed by the interval; or
2. a single nonseparable direct-sum operator with one orthogonal coordinate per
   real point.

The source formalizes both valid meanings and does not promote the old finite
graded Hamiltonian to an impossible conclusion.

## 2. Logarithmic completion of prime dilation

For positive `q` and prime `p`, define

\[
  \lambda_{p,q}=\log q,
  \qquad
  \mu_{p,q}=\log(pq).
\]

The real logarithm converts multiplication into translation:

\[
  \mu_{p,q}-\lambda_{p,q}=\log p.
\]

Since `p>1`, this width is positive.  Thus one arithmetic prime dilation marks
a nontrivial real interval

\[
  I_{p,q}=[\log q,\log(pq)].
\]

The same dilation simultaneously supplies the arithmetic identity

\[
  \mu(q)\mu(pq)=-\mu(q)^2.
\]

These are two different consequences of one source relation: one is a signed
Möbius statement, the other is a real Hamiltonian-coordinate statement.
Neither implies the other.

## 3. Family point spectrum on the existing Wilson line

The maintained real operator line is

\[
  H(s)=H+sI,
  \qquad s\in\mathbb R,
\]

on the unchanged maximal logarithmic domain.  Its normalized vacuum `Omega`
satisfies

\[
  H(s)\Omega=s\Omega.
\]

Therefore, for any set `I ⊆ R`, the union of the point spectra of the family
`{H(s):s∈I}` contains `I`.  In particular every point of
`I_{p,q}` is a vacuum eigenvalue of the corresponding member of the family.

This is a family statement.  The operator varies with `s`; it is not a claim
that the old fixed finite graded operator has interval point spectrum.

## 4. Single-operator realization

For real `a,b`, put

\[
  \mathscr K_{a,b}=\ell^2([a,b];\mathbb R)
\]

with counting measure.  When `a<b`, the index set is uncountable and
`\mathscr K_{a,b}` is nonseparable.  Define the maximal diagonal multiplier

\[
  (M_{a,b}x)(s)=s x(s)
\]

on the domain

\[
  D(M_{a,b})=
  \left\{x:\sum_{s\in[a,b]}s^2|x(s)|^2<\infty\right\}.
\]

The repository's existing `DiagonalHilbertDomain` construction supplies this
maximal domain, the operator, density, closed graph and exact graph
self-adjointness.

For every `s∈[a,b]`, the coordinate vector `delta_s` lies in the domain and
satisfies

\[
  M_{a,b}\delta_s=s\delta_s.
\]

Thus

\[
  [a,b]\subseteq\sigma_p(M_{a,b}).
\]

Conversely, suppose

\[
  M_{a,b}x=E x,
  \qquad x\ne0.
\]

Some coordinate `s` has `x(s)≠0`.  Evaluating the eigenvalue equation there
gives

\[
  s x(s)=E x(s),
\]

and hence `E=s∈[a,b]`.  Therefore

\[
  \boxed{\sigma_p(M_{a,b})=[a,b].}
\]

The Lean theorem is named

```lean
complete_point_spectrum_interval
```

and proves equality, not merely interval inclusion.

## 5. Prime-dilation specialization

Specializing the diagonal operator to

\[
  a=\log q,
  \qquad b=\log(pq)
\]

gives

\[
  \boxed{
  \sigma_p(M_{p,q})=[\log q,\log(pq)]
  }
\]

with interval width `log p`.  This is formalized by

```lean
primeDilation_complete_point_spectrum_interval
```

and the paired arithmetic/spectral source theorem is

```lean
primeDilation_signed_source_and_real_width
```

which retains both the exact Möbius coefficient identity and the exact
logarithmic width.

## 6. Why the carrier change is essential

A nontrivial interval is uncountable.  The single-operator theorem therefore
uses the nonseparable counting-measure Hilbert sum over the entire interval.
Replacing this by any of the following would invalidate the conclusion:

- the existing finite `PiLp 2` residue sum;
- a countable direct sum over primes or integers;
- a separable direct integral over Lebesgue measure.

A countable sum can have at most countably many marked coordinate
eigenvalues.  A Lebesgue direct integral with multiplication by the coordinate
normally has the interval as continuous spectrum, not point spectrum, because
single points have measure zero.  Counting measure on the full real interval
is the exact construction that produces one nonzero coordinate eigenvector for
every real point.

Accordingly, the result is not a continuum-limit statement for the physical
Wilson Hamiltonian.  It is a mathematically complete point-spectrum interval
on an explicitly stated nonseparable real-indexed Hamiltonian.

## 7. Relation to the RH programme

The prime-dilation Möbius packet remains useful because it has unconditional
upper cost zero.  The new spectral interval does not enlarge that cancellation
or control the complementary dense packet.  It provides a real spectral
organization of one prime dilation, not the missing all-positive-rate endpoint
estimate.

The RH-facing source still requires a one-sided subexponential bound for the
complete remaining signed endpoint quantity on an adequately covering scale
set.  The point-spectrum interval cannot substitute for that arithmetic
estimate.

## 8. Verification status

The published declarations are source proof candidates.  The following remain
`NOT_RUN`:

- Lean parsing/elaboration and compilation;
- exact expected-type checks;
- fresh independent kernel replay;
- transitive axiom audit;
- native execution.

The source introduces no intended `sorry`, `admit`, `native_decide` or new
axiom declaration.  Publication does not establish Lean acceptance, a point
spectrum interval for the old finite Wilson grading, a continuum physical mass
gap, the endpoint arithmetic supplier, or RH.
