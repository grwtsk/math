# Literature ledger sidecar: Liouville prime-delay obstruction

This is the exact pending entry for
`paper-to-formalization-references.md`. The reviewed central ledger blob at
source base `4a0a4223f6af5933ae8689bf33d59adb76e269fb` was
`bfcae896d079606ddb1ec472483d4caf060d60d7`. The available publication
interface has whole-file replacement but no safe append/patch operation, so
that blob was neither reconstructed from partial output nor overwritten.

## Local formalization

- Title/byline: *Prime-delay obstructions for the original Liouville causal
  energy*, grwtsk contributors.
- Lean source:
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayObstruction.lean`.
- Lean blob: `0f4b1fa7f5fa69b3d8fa8b2ab2bef4abeec7c574`.
- Review:
  `documentation/mathematics/_support/reviews/liouville-method-comparison-and-prime-delay-obstructions.md`.
- Review blob: `0add9dd09cc9a6588e010179079498cec4393196`.
- Verification target:
  `documentation/mathematics/_verification/targets/liouville-prime-delay-obstruction.json`.
- Target blob: `7fa2128e53fe3e4653289d918cb460d763622b0b`.
- Toolchain: Lean `v4.34.1`; Mathlib
  `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The Lean candidate proves, subject to later verification, the prime-two
coefficient algebra: multiplicativity away from zero, exact negative doubling
delay, unit-square coefficients, and perfect negative coefficient correlation
on every doubling edge. It records the causal lower bound and infinite
sparse-prime obstruction as propositions, not theorems or axioms.

The companion review proves on paper, using the unchanged causal response and
all signed terms, that for any infinite prime set `S` with
`sum_{p in S} p^(-rho) < infinity`, `0 < rho < 1/2`, the completely
multiplicative sign equal to `-1` on `S` and `+1` off `S` obeys every selected
prime delay but has

`|sum_{n<=x} f_S(n) - c_S x| <= 2 B_(S,rho) x^rho`,

where `B_(S,rho)=product_{p in S}(1+2/(p^rho-1))` and
`c_S=product_{p in S}(p-1)/(p+1)>0`. Hence its original causal energy has a
positive exponential lower bound. At `S={2}` the explicit bound is

`H_(f_2)(T) >= ((sqrt 2-1)^2/16)(exp T-8)` for `T>=log 8`,

although `f_2(n)f_2(2n)=-1` on every doubling edge. This is an obstruction to
finite-prime and sparse-unbounded-prime delay-only bootstraps, not a
counterexample to Liouville cancellation or RH.

## Primary literature and use boundaries

- Kaisa Matomaki and Maksym Radziwill, *Multiplicative functions in short
  intervals*, Annals of Mathematics 183 (2016), DOI
  `10.4007/annals.2016.183.3.6`: imported almost-all short-interval
  cancellation; not the all-`N` cyclic variance supplier.
- Terence Tao, *The logarithmically averaged Chowla and Elliott conjectures for
  two-point correlations*, arXiv:`1509.05422` (2015): imported entropy
  decrement and fixed-form logarithmic averages; not the growing-prime-band
  physical-time signed covariance.
- Kaisa Matomaki, Maksym Radziwill, Terence Tao, Joni Teravainen and Tamar
  Ziegler, *Higher uniformity of bounded multiplicative functions in short
  intervals on average*, Annals of Mathematics 197 (2023), DOI
  `10.4007/annals.2023.197.2.3`: imported averaged higher uniformity; not an
  all-horizon second-moment bridge.
- Siddarth Menon, *Improved bounds for multiplicative functions in almost all
  short intervals*, arXiv:`2607.15574` (2026): imported sharper almost-all
  bounds; still not an all-`N` zero-mode estimate.
- Hubert Delange, *Sur les fonctions arithmetiques multiplicatives*, DOI
  `10.24033/asens.1103`, and Gabor Halasz, *Uber die Mittelwerte
  multiplikativer zahlentheoretischer Funktionen*, DOI
  `10.1007/BF01894515`: historical mean-value context only. The explicit
  convolution constants and causal-energy lower bounds are locally rederived.

Classification: imported mathematics, source proof candidates, and a
programme-specific obstruction are separated. No kernel-verified literature
bridge, actual-Liouville cancellation theorem, or RH proof is claimed.

## Verification and missing bridges

Compilation, expected types, fresh-kernel replay, and transitive axiom audit
are all `NOT_RUN`; native verification is `NOT_DISPATCHED`. The central-ledger
merge is `BLOCKED_BY_NO_SAFE_APPEND_OR_PATCH_ACTION`.

The next bridge is the actual Liouville growing-prime-band signed covariance,
with omitted-prime, repeated-prime, unsifted, zero-birth collar, and
exceptional-set costs, carried through the complete signed Omega-weighted
rectangle average without replacing it by a supremum.
