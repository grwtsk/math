# Samplewise transport from congruent elliptic residue fibers

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** Commit `4ecb4e571664b05e4b5f032dc71e22dd668cdcee` constructs an actual equivalence of the affine `F_p` solution fibers of two integral Weierstrass models whose five coefficients agree modulo `p`. This increment derives the consumer-facing transport that was still missing: discriminant and good-reduction transport, reconstruction of the target `GoodPointCountCertificate`, occurrencewise routing of a finite bounded sample, preservation of complete signed trace packets and local Euler coefficients, and an exact signed defect for any changed kernel.

The same construction also yields a hostile finite-local-data test. Changing `a₆` by a multiple of the product of finitely many selected primes gives a genuinely different integral model with exactly the same reduced coefficient data, point counts, good-reduction status and finite local Euler window at every selected prime. Thus finite local fiber agreement cannot identify a global elliptic curve, isogeny class, global `L`-function or zero set.

The Lean file is a source proof candidate. Compilation, exact-type checking, fresh-kernel replay and transitive axiom auditing are `NOT_RUN`.

## 1. Local coefficient agreement

For integral Weierstrass models

\[
W=(a_1,a_2,a_3,a_4,a_6),\qquad
V=(a'_1,a'_2,a'_3,a'_4,a'_6)
\]

and an actual prime \(p\), define `CoefficientsModPrime W V p` by

\[
a_i\equiv a_i'\pmod p
\qquad(i=1,2,3,4,6).
\]

The reduced curves are the actual Mathlib maps

\[
\overline W=W.map(\mathbb Z\to\mathbb Z/p\mathbb Z),
\qquad
\overline V=V.map(\mathbb Z\to\mathbb Z/p\mathbb Z).
\]

Componentwise coefficient equality gives

\[
\boxed{\overline W=\overline V.}
\tag{1}
\]

The predecessor commit already used the identity on residue coordinate pairs to construct

\[
\operatorname{AffinePointFiber}(W,p)
\simeq
\operatorname{AffinePointFiber}(V,p),
\]

and therefore equality of the full finite model counts, including the unique point at infinity:

\[
\boxed{
\operatorname{integralModelCount}(W,p)
=
\operatorname{integralModelCount}(V,p).
}
\tag{2}
\]

The new source packages (1) as `reducedCurve_eq` and reuses the predecessor geometric port for (2).

## 2. Discriminant and good reduction

Mathlib proves that discriminant commutes with a ring map:

\[
(\overline W).\Delta=\overline{W.\Delta}.
\]

Applying discriminant to (1) gives

\[
\boxed{
(W.\Delta\bmod p)=(V.\Delta\bmod p).
}
\tag{3}
\]

Consequently,

\[
\boxed{
(W.\Delta\bmod p)\ne0
\iff
(V.\Delta\bmod p)\ne0.
}
\tag{4}
\]

This closes a real certificate seam. A source `ChannelAt W p` already contains a proof that its certified model has good reduction and a proof that the certified model is exactly \(W\). Equation (4) therefore constructs good reduction of \(V\); it is not another free premise.

Declarations:

```text
CoefficientsModPrime.reducedCurve_eq
CoefficientsModPrime.discriminant_mod_eq
CoefficientsModPrime.good_iff
channelAt_source_good
```

## 3. Target certificate transport

Let \(x\) be a genuine source channel at \(p\). It carries:

- a `GoodPointCountCertificate p`;
- source model equality with \(W\);
- the exact point count;
- one residue in `ZMod p`;
- a prime-power exponent.

Under `CoefficientsModPrime W V p`, define a target certificate with:

- model \(V\);
- the same prime proof;
- good reduction from (4);
- the same count;
- count correctness from the source count identity followed by (2).

This gives

\[
\boxed{
\operatorname{transportChannelAt}_{W\to V,p}:
\operatorname{ChannelAt}(W,p)\to\operatorname{ChannelAt}(V,p).
}
\tag{5}
\]

The residue and exponent are copied exactly. Hence the transported complete dependent channel preserves

\[
p,\quad N_p,\quad \text{residue},\quad \text{exponent},
\]

and therefore also preserves the source Frobenius trace, local reciprocal polynomial and every coefficient of the complete direct local Euler recurrence.

Declarations:

```text
transportCertificate
transportChannelAt
transportFiber
trace_transportFiber
localReciprocal_transportFiber
localDirectCoeff_transportFiber
```

## 4. Global and samplewise ports

If coefficient agreement is supplied at every prime, the new file constructs an ordinary existing `ChannelPort`:

```text
channelPort_of_all_prime_coefficients
```

The more useful result is finite and occurrencewise. Let

\[
F:\iota\to\operatorname{CurveFiber}(W)
\]

be a `BoundedSample`. It is enough to prove coefficient congruence at the actual prime of each occurrence \(F(i)\). The target sample is

\[
F_V(i)=\operatorname{transportFiber}(F(i)).
\]

No congruence is required at unobserved primes. Repeated source occurrences stay repeated, and the original prime bound is unchanged.

The samplewise route preserves:

\[
\sum_{i\in S} a_{p_i},
\]

every fixed-degree direct coefficient sum,

\[
\sum_{i\in S} c_{p_i,n},
\]

the complete ordered signed trace packet,

\[
\sum_{\substack{i,j\in S\\i\ne j}}a_{p_i}a_{p_j},
\]

and every finite product of the actual local reciprocal factors.

It also preserves the exact set of same-prime/same-residue occurrence pairs. This is stronger than equality of compressed color counts: the original index multiplicities remain.

Declarations:

```text
BoundedSample.routeByCoefficients
BoundedSample.sameResiduePairs_routeByCoefficients
BoundedSample.routeByCoefficients_sum_trace
BoundedSample.routeByCoefficients_sum_directCoeff
BoundedSample.tracePacket_routeByCoefficients
BoundedSample.finite_good_euler_window_routeByCoefficients
```

## 5. Exact defect for a changed kernel

A geometric route preserves the listed local observations; it does not automatically identify an unrelated source kernel \(K\) with a target kernel \(L\).

For a finite occurrence set \(S\), define

\[
\mathcal D_{K,L}
=
\sum_{\substack{i,j\in S\\i\ne j}}
\left[
K(F_i,F_j)-L((F_V)_i,(F_V)_j)
\right].
\]

Finite algebra gives the exact identity

\[
\boxed{
\operatorname{orderedPacket}(F,S,K)
=
\operatorname{orderedPacket}(F_V,S,L)
+
\mathcal D_{K,L}.
}
\tag{6}
\]

No sign, pair orientation or repeated occurrence is removed. This is the required boundary for any attempted transport to the Möbius endpoint kernel: the elliptic trace packet and the RH pickup packet are different objects, so a separate source-exact kernel comparison or signed defect estimate remains necessary.

Declarations:

```text
BoundedSample.samplewiseTransportDefect
BoundedSample.orderedPacket_eq_routeByCoefficients_add_defect
```

## 6. Finite-prime deformation obstruction

Let \(S\) be a finite set of actual primes and put

\[
P_S=\prod_{p\in S}p.
\]

For \(t\in\mathbb Z\), define

\[
W_t:
\quad
a_1,a_2,a_3,a_4\text{ unchanged},
\qquad
a_6(W_t)=a_6(W)+P_St.
\]

For every \(p\in S\),

\[
P_St\equiv0\pmod p,
\]

so

\[
\boxed{
\operatorname{CoefficientsModPrime}(W,W_t,p).
}
\tag{7}
\]

Equations (2)–(4) imply, for each selected prime,

\[
\#W(\mathbb F_p)=\#W_t(\mathbb F_p),
\]

and the good-reduction condition is identical. Therefore every selected reciprocal local factor is identical, and for every rational parameter \(T\),

\[
\boxed{
\prod_{p\in S}
P_{W_t,p}(T)
=
\prod_{p\in S}
P_{W,p}(T).
}
\tag{8}
\]

The finite product \(P_S\) is nonzero, including when \(S\) is empty. Hence \(t\ne0\) gives \(W_t\ne W\).

This is a rigorous hostile check against an incorrect global inference:

> A finite family of exact affine fibers, point counts, traces, prime-power coefficients or local Euler factors does not determine the global integral model, its isogeny class, its global `L`-function, or its zero set.

The result does not assert that the deformed curve is nonsingular globally, that it is nonisogenous to \(W\), or that its global `L`-function has different zeros. It proves only that the selected local observations cannot establish those global identifications.

Declarations:

```text
primeProduct
finitePrimeA6Shift
finitePrimeA6Shift_coefficients
finitePrimeA6Shift_pointCount_eq
finitePrimeA6Shift_good_iff
finitePrimeA6Shift_euler_window
finitePrimeA6Shift_ne
```

## 7. Comparison with the predecessor

The predecessor commit `4ecb4e571664b05e4b5f032dc71e22dd668cdcee` made the decisive local geometric move: coefficient congruence constructs an actual affine-fiber equivalence. It stopped at point-count equality.

This increment is not another representation of that equality. It supplies the missing consumers:

1. discriminant and target-good transport;
2. a rebuilt target `GoodPointCountCertificate`;
3. a complete dependent channel map;
4. finite occurrencewise routing without all-prime hypotheses;
5. preservation of complete local coefficient packets and signed trace sums;
6. an exact changed-kernel residual;
7. a finite-prime deformation obstruction to global overinterpretation.

The underlying algebra is elementary and local. No originality claim is made for the observation that congruent integral equations have identical reductions, or for modifying a coefficient by a multiple of a finite prime product. The programme-specific contribution is the exact integration with the repository's source-bound certificate, dependent port, ordered packet and finite Euler-window consumers.

## 8. Impact on the RH campaign

The result improves robustness but does not supply RH cancellation.

It permits finite elliptic observations to be moved to coefficient-congruent target models without changing their source traces or local Euler factors. This can simplify finite local computations and preserve exact signed packets.

However, the canonical RH endpoint target remains the all-positive-rate one-sided bound for the complete signed Möbius endpoint quantity. The elliptic trace kernel is not that kernel. Equation (6) makes the missing bridge explicit rather than hiding it in a port.

The finite-prime deformation theorem also blocks an invalid route from a finite elliptic window to equality of global `L`-function zero sets.

## 9. Verification and next obligation

Status:

- mathematical derivation: `WRITTEN`;
- source proof candidate: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected declaration types: `NOT_RUN`;
- fresh kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- global elliptic `L`-function comparison: `NOT_PROVED`;
- Möbius endpoint kernel comparison: `NOT_PROVED`;
- all-positive-rate endpoint estimate: `UNPROVED`;
- RH: `UNPROVED`.

The next bounded geometric obligation is to construct the affine-fiber equivalence induced by a genuine integral Weierstrass variable change whose scaling parameter is a unit modulo \(p\). Coefficient equality gives the identity-coordinate case only. A variable-change port would connect arbitrary integral minimal models at a good prime and would directly address the remaining model-transport seam in the native local-power-series work, while still stopping short of global isogeny or zero-set claims.
