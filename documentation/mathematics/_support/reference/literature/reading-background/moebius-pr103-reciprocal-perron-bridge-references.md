# PR103 reciprocal-zeta / Perron bridge source ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## Local repository sources

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ModOneAdapter.lean`
  - blob `050b4f77a7a22acf89268599cbee178f7748f198`
  - exact lossless specialization of the external Dirichlet-family theorem to zeta at modulus one.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerCalculusClosure.lean`
  - blob `c1ba0aabd513e6e2f3955d787ae1e3dbbf8d4ca7`
  - proved source candidates for the velocity-to-energy double integration and complete strong-packet fixed-rate return.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`
  - blob `10f2fba05c105c3e80b58ed9632901b5550444d9`
  - `MertensExponentialEnvelopeAt`, `ZetaZeroFreeRightOf`, the still-visible `ZeroFreeToMertensPowerBridge`, fixed-rate consumers and the scalar exponent round-trip obstruction.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean`
  - blob `9a4ed819c1bb43e016f831d1f159fe1fd2a595eb`
  - exact strict-above-boundary weighted-energy and causal-energy-abscissa consumers.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`
  - blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`
  - unchanged actual Mertens prefix and causal objects.

## External PR103 source

- repository `GTimG/QuasiRiemannTracker`;
- merge `8b1a0167c8e324099884152181e3fb2206510e88`;
- path `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- blob `808d04cec892449707d23e81f94179e2738fdf1a`;
- theorem `Candidate.bound`.

The external theorem supplies nonvanishing of every complex Dirichlet-character L-function strictly to the right of the exact PR103 rational boundary, except the principal pole pair. Its local replay remains separate from this bridge factorization.

## OpenAI complex-analysis source

Repository `openai/math`, revision `4eaee87548250b2682affda7d05d947c05554bae`:

- `lean/OAI/NumberTheory/DirichletL/LogarithmicControl.lean`
  - blob `dd75b86f7fa6ebf6b7bfa5c603dfda67e3e41373`;
  - theorem `SevenEighths.LogarithmicControl.logarithmic_control`;
  - role: generic zero-free holomorphic-log / Borel--Caratheodory mechanism producing arbitrarily small reciprocal power bounds from polynomial outer growth and bounded inner Euler logarithm.
- `lean/OAI/NumberTheory/TwoPoint/ShortIntervals/MRTRieszContour.lean`
  - blob `57d112ed2485a88ca260bfff22d2374db69d540d`;
  - role: source-specific finite rectangle residue identity demonstrating available formal contour infrastructure.
- `lean/OAI/NumberTheory/DirichletL/Mellin/InverseContour.lean`
  - blob `7a3a90f5076faba3a309ca636fd37cff0e2926f1`;
  - role: generic inverse-contour infrastructure in the external source tree.

These sources are Apache-2.0. They are cited as comparison and prospective providers; they are not imported into the local Lake dependency closure by the new module.

## Pinned Mathlib source

Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`:

- `Mathlib/NumberTheory/LSeries/SumCoeff.lean`
  - blob `13dd829fa36d658b96bb84a96f721b30c9ce6ecf`;
  - role: forward Abel direction from coefficient-prefix bounds to L-series convergence and integral representation; it does not provide the inverse truncated Perron theorem used here.
- `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean`
  - blob `89c72580697983d86706cff17ccbea2cee6475a3`;
  - role: exact modulus-one identity for Dirichlet L-functions and zeta.

## New local source

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ReciprocalPerronBridge.lean`
- purpose:
  1. separate reciprocal-zeta subpower control from the truncated Perron rectangle;
  2. prove the exact scalar absorption of the three Perron terms into any requested Mertens exponent;
  3. prove a parameter choice valid for the full existing zero-free-to-Mertens proposition;
  4. prove that a fixed polynomial reciprocal exponent cannot close the plain Perron ledger arbitrarily near the zero-free boundary;
  5. route existing PR103 causal consumers through the factored bridge.

## Formalization boundary

The new source does not prove the zeta-specific reciprocal subpower estimate or the truncated Perron formula. It does not import or replay the external PR103 theorem, and it contributes no new signed Möbius endpoint cancellation. Compilation, expected-type checking, fresh-kernel replay, transitive axiom auditing, native execution, the all-positive-rate endpoint supplier and RH remain separate obligations.
