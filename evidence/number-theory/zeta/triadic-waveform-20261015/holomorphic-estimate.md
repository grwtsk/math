# Holomorphic estimate and domain ledger

Version: `TWMK-HOL/0.1.0`

## Finite sources

For `X≥0`, define

\[
T_X(s_1,s_2;s_3)=\sum_{a,b\ge1,\ a+b\le X}a^{-s_1}b^{-s_2}(a+b)^{-s_3},
\]

and its primitive restriction `T_X°` by adding `(a,b)=1`. These are finite entire functions of the three complex variables once powers use the real logarithm of positive integers.

Every cutoff is natural. The identities

\[
T_X=\sum_{d\le X/2}d^{-S}T^\circ_{\lfloor X/d\rfloor},
\qquad
T_X^\circ=\sum_{d\le X/2}\mu(d)d^{-S}T_{\lfloor X/d\rfloor}
\]

retain every floor and endpoint.

## Infinite domain

The standard Mordell–Tornheim convergence criterion, with `Re s₁≤Re s₂`, is

\[
\Re(s_3+s_1)>1,\qquad
\Re(s_1+s_2+s_3)>2.
\]

On compact subsets of this domain the series is normally convergent. Grouping by the gcd is therefore legitimate and gives

\[
T=\zeta(S)T^\circ,
\quad S=s_1+s_2+s_3.
\]

Since `Re S>2`, the reciprocal is in the Euler-product half-plane. No critical-strip Euler product is inferred.

## Simple explicit tail

In the sufficient region

\[
\sigma_1>1,\quad\sigma_2>1,\quad\sigma_3\ge0,
\]

and for `X≥2`,

\[
|T-T_X|
\le
\zeta(\sigma_2)\frac{(X/2)^{1-\sigma_1}}{\sigma_1-1}
+\zeta(\sigma_1)\frac{(X/2)^{1-\sigma_2}}{\sigma_2-1}.
\]

Proof: `a+b>X` implies `a>X/2` or `b>X/2`; discard `(a+b)^{-σ₃}≤1`; use the integral bound for the two p-series tails. The primitive tail is bounded by the same expression after absolute values.

## Möbius–zeta chain

The repository and pinned Mathlib provide the finite arithmetic Möbius inverse and the zeta Dirichlet series only on their declared domains. The safe chain is

\[
\mu*1=\varepsilon,
\qquad
\sum_{n\ge1}\mu(n)n^{-s}=1/\zeta(s),
\quad\Re s>1.
\]

The new primitive Tornheim identity is a three-variable analogue of the same radial Möbius inversion. It does not identify `T` with the repository’s pickup transform. That adapter is open.

## Boundary debts retained

Any future critical-strip use must retain:

- completion/gamma factors;
- pole and trivial-zero exclusions;
- floors and partial cells;
- all prime powers;
- contour horizontals and verticals;
- endpoint terms and source cutoffs;
- the full error under operator transport;
- all three mixed channel interactions.

## Current claim

The package provides a literal, source-preserving estimate for the finite Tornheim/primitive channel in a safe absolute-convergence domain. It does not provide an all-height zeta nonvanishing estimate or a new RH consumer.
