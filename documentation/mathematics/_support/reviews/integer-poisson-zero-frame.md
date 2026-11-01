# Nearest-integer Poisson lower frame for the cofinal two-unit programme

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** The finite zero-side lower frame is proved as a Lean source candidate. The source-to-prime comparison, centered p-adic upper estimate, cofinal numerical witness, and RH remain open. Compilation, expected-type checking, fresh-kernel replay, and transitive axiom auditing are `NOT_RUN`.

## Source organization

The retained monolithic candidate had SHA-256
`ef72a9c98350103af8fb902aabb5c8e9526a86359fdcae363a5dfd7c6e086070`.
For connector-safe publication it is split into declaration-equivalent modules under
`.../IntegerPoissonZeroFrame/`, with the original public path retained as an umbrella import.
All 42 definitions/theorems keep the original namespace and names.

## Canonical zero source

For integer `Z >= 0`, let `known` be a certified on-line subset of the canonical positive-height zeta zeros through height `Z`. Put

- `U_Z = positiveHeightHead Z \ known`;
- `D_Z = sum_{rho in U_Z} multiplicity rho`.

For `rho = beta + i gamma` and integer `k`, define

```text
K_rho(k) = (2-beta) / ((2-beta)^2 + (k-gamma)^2),
P_k = sum_{rho in U_Z} multiplicity(rho) * K_rho(k),
E_Z = sum_{k=0}^Z P_k^2.
```

The canonical source supplies `0 < beta < 1`, `0 < gamma <= Z`, and positive finite analytic multiplicities.

## Nearest-integer pointwise bound

Assign

```text
b(rho) = floor(gamma + 1/2).
```

Then `0 <= b(rho) <= Z` and `|b(rho)-gamma| <= 1/2`. Writing
`a = 2-beta` and `d = b(rho)-gamma`, one has `1 < a < 2` and `d^2 <= 1/4`. Hence

```text
17*a - 8*(a^2+d^2)
  >= 17*a - 8*a^2 - 2
  = (8*a-1)*(2-a)
  >= 0,
```

so

```text
K_rho(b(rho)) >= 8/17.
```

## Fixed lower frame

Let `M_k` be the total analytic multiplicity assigned to bin `k`. Positivity gives

```text
P_k >= (8/17) M_k.
```

Since `M_k` is a nonnegative integer, `M_k^2 >= M_k`; therefore

```text
P_k^2 >= (64/289) M_k.
```

The bins partition the unknown zero inventory, including multiplicity. Summing gives

```text
64 * D_Z <= 289 * E_Z.
```

There is no `Z+1` cardinality loss: collisions in one bin increase the square. The older floor assignment is retained and proves the weaker frame

```text
4 * D_Z <= 25 * E_Z.
```

## One-zero threshold

If an arithmetic sample family on the same grid has energy `E_A` with

```text
E_Z <= E_A < 128/289,
```

then `D_Z < 2`, hence `D_Z <= 1`. This is the absolute one-unit residual consumed by the cofinal two-unit return.

For literal p-adic prime windows, the existing centered identity gives

```text
primeWindowFamilyEnergy = 4 * centeredPacketFamilyEnergy.
```

Therefore a source comparison

```text
E_Z <= primeWindowFamilyEnergy
```

and the centered arithmetic bound

```text
centeredPacketFamilyEnergy < 32/289
```

would produce the cofinal numerical witness.

## Remaining load-bearing statements

1. Prove a source-exact completed-explicit-formula comparison from the finite unknown-zero Poisson energy to the selected actual prime-window family, paying known-zero subtraction, negative heights, outer-zero tails, gamma/pole/trivial-zero terms, and endpoint conventions.
2. Prove the centered p-adic packet bound below `32/289` on a cofinal family while retaining all rough-prime subset signs and floor carries.
3. Compile and verify the complete imported closure; publication is not theorem acceptance.

The zero-side lower frame itself is unconditional finite algebra over the repository's canonical zero divisor and analytic multiplicities. It does not assume zero separation, simplicity, RH, random phases, or a computed zero list.
