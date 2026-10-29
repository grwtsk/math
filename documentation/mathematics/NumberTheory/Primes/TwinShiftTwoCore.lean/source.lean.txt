/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT
import GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion
import GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary
import GRWTSK.NumberTheory.Primes.Checks.TwinShiftTwoControls

set_option autoImplicit false

/-!
# Isolated twin-prime shift-two arithmetic root

This source-only root collects the exact CRT compatibility and cutoff count,
the finite Möbius-log divisor expansion of the shift-two Mangoldt correlation,
the small-divisor/signed-residual split, and the complete proper-prime-power
correction boundary.

It is intentionally not imported by `GRWTSK.lean`.

No parity-breaking estimate, prime-progression theorem, bilinear residual
bound, finite-exception result, or twin-prime theorem is supplied.
-/
