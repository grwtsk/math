# Source ledger: PR103 refinement of the completed-residual frame

- Local attribution: grwtsk contributors.
- Research date: 2026-11-01.
- Classification: source proof candidate; no compilation or kernel acceptance.

## Repository sources

1. `IntegerPoissonZeroFrame/CompletedResidualDirichlet.lean`
   - completed residual on `Re s = 9/8`;
   - finite von Mangoldt truncation;
   - centered p-adic unit-window reassembly;
   - perturbation and one-unit transfer.

2. `IntegerPoissonZeroFrame/PR103RationalStripFrame.lean`
   - visible `RationalPR103SymmetricStrip` premise;
   - exact external threshold comparison;
   - stronger independent nearest-grid frame on a nearby rational line.

3. `PadicMobiusPrimeWindowSeam.lean`
   - literal `pntWindow` definition using `Finset.Ioc`;
   - exact Möbius--log window source.

4. `PadicMobiusCofinalTwoUnitBridge.lean`
   - centered large-prime packet and exact residual identity.

5. `CofinalTwoUnitEffectiveRateBridge.lean`
   - absolute one-unit residual return to the cofinal two-unit criterion.

## New source statements

- the PR103 strip is contained in `[1/8,7/8]`;
- on the unchanged line `9/8`, the nearest-grid kernel is at least
  `8007/10000`;
- the same-line frame is
  `64112049 * D_Z <= 100000000 * E_Z`;
- the finite completed-residual threshold improves from `3/5` to `631/1000`
  under the existing `1/100` tail budget;
- `pntWindow (n-1) 1 = vonMangoldt n` for every positive `n`;
- the finite centered packet reassembly no longer needs a separate
  singleton-window hypothesis.

## External source boundary

The exact merged PR103 threshold is recorded in
`LiouvillePR103FixedPower.lean`, sourced there to QuasiRiemannTracker PR 103,
merge commit `8b1a0167c8e324099884152181e3fb2206510e88`.
The local zeta/reflection transport remains `NOT_RUN` and unproved in this
module.  The new frame is conditional on the visible
`RationalPR103SymmetricStrip` proposition.

## Verification boundary

- source inspection: DONE;
- mathematical derivation: WRITTEN;
- compilation: NOT_RUN;
- expected types: NOT_RUN;
- fresh kernel: NOT_RUN;
- transitive axiom audit: NOT_RUN;
- external PR103 replay/transport: NOT_RUN;
- completed Hadamard domination: UNPROVED in Lean;
- scheduled tail budget: UNPROVED in Lean;
- finite energy below `631/1000`: UNPROVED;
- cofinal numerical witness: UNPROVED;
- RH: UNPROVED.
