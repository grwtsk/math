# Paper-to-formalization: PR103 exact causal-energy abscissa

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## External theorem

The source theorem is the merged QuasiRiemannTracker PR103 Dirichlet-L nonvanishing result:

- repository `GTimG/QuasiRiemannTracker`;
- merge commit `8b1a0167c8e324099884152181e3fb2206510e88`;
- `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- Git blob `808d04cec892449707d23e81f94179e2738fdf1a`.

The external statement is not silently promoted to a theorem in the local pinned kernel. Its modulus-one zeta specialization remains the proposition `ExternalPR103ZetaNonvanishing`.

## Local mathematical transfer

The source-exact causal normalization is

`pickupVelocity(u) = exp(-u/2) * mertensPrefix(exp u)`.

A strict zeta zero-free boundary `theta0`, together with the classical Perron/contour bridge, gives actual Mertens envelopes at every `theta>theta0`. The maintained velocity-to-energy gate maps such a theta to cumulative energy rate `2*theta-1`.

For any damping `sigma>2*theta0-1`, the formalization chooses a strict intermediate exponent

`theta0 < theta < (sigma+1)/2`,

so that `2*theta-1<sigma`. The existing exponential-energy theorem then gives weighted square-energy integrability at damping sigma.

Applied to the exact PR103 rational boundary, this yields the conditional source statement

`pickupEnergyAbscissa <= 2*externalPR103Theta-1`.

The exact boundary is approximately `0.746763933226415`, strictly below `747/1000` and `3/4`.

## Published local source

- Source merge: `d1f71f08bc0b794bcfae8f45e85358d604a389a9` through PR #1578.
- Lean source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean`.
- Source Git blob: `9a4ed819c1bb43e016f831d1f159fe1fd2a595eb`.
- Mathematical review Git blob: `40d36b6db1151622c8b149b5a48cc5b48ad579a8`.
- Literature/source ledger Git blob: `51254f423860d16cfa9103a79b79b787964dfb5d`.

## Scope boundary

This result does not establish weighted integrability at the exact boundary, a zero energy abscissa, an all-positive-rate endpoint estimate, or RH. The external adapter, contour theorem, and velocity-to-energy calculus remain visible proof obligations. Lean compilation, expected-type checks, fresh-kernel replay, transitive axiom audit, and native execution remain `NOT_RUN`.
