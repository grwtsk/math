# PR103 fixed-power transfer to the original causal Möbius energy and strong packet

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: complete ordinary mathematical transfer at the stated conditional scope; Lean source proof candidate with the external PR103-to-zeta adapter, the classical zero-free-to-Mertens contour theorem, and one real interval-calculus bridge kept as named visible propositions. No RH proof. Compilation, expected-type checks, fresh-kernel replay, transitive axiom audit, and native execution were not run.

## 1. Exact sources

The arithmetic and physical source is unchanged:

\[
M(x)=\sum_{n\le x}\mu(n),\qquad
V(u)=e^{-u/2}M(e^u),
\]

\[
F(T)=\int_0^T V(u)\,du,
\qquad
H(T)=\int_0^T F(u)^2\,du.
\]

These are `mertensPrefix`, `pickupVelocity`, `wholePickup`, and `pickupEnergy` from `MertensPrimitive.lean`. The complete ordered signed cross Gram, diagonal, endpoint quadrature, and quarter-unit endpoint error are likewise retained. No response, cutoff, coefficient, squareful zero, orientation, or endpoint is changed.

The current repository already gives an exact PNT-level strong-packet return. From the actual Mertens tail `|M(n)|<=delta*n` after a cutoff, it proves

\[
H(T)\le 2(2K+1)^2T+32\delta^2(e^T-1),
\]

and consequently `|Strong_epsilon(T)|=o(e^T)` using classical PNT. That is a genuine source-specific cancellation theorem but still has leading physical-time rate one.

The new advance uses a fixed zero-free half-plane to obtain a fixed exponent strictly below one.

## 2. External PR103 theorem and the zeta adapter

The immutable external source is:

- repository `GTimG/QuasiRiemannTracker`;
- merge commit `8b1a0167c8e324099884152181e3fb2206510e88`;
- file `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- Git blob `808d04cec892449707d23e81f94179e2738fdf1a`.

Its theorem `Candidate.bound` states that every Dirichlet `LFunction` is nonzero for

\[
\Re s>\theta_0,
\]

where

\[
\theta_0=
\frac{2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341}
{3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271}.
\]

The principal-character pole is excluded. Pinned Mathlib contains `DirichletCharacter.LFunction_modOne_eq`, so the modulus-one character specializes this theorem to actual Riemann zeta nonvanishing in the same half-plane, away from the pole.

This adapter has not been copied into the pinned `grwtsk/math` dependency closure. The new source therefore names the proposition `ExternalPR103ZetaNonvanishing`; it is not an axiom and not claimed locally checked.

For comparison, OpenAI's published quasi-RH formalization gives the weaker zero-free half-plane `Re s>7/8`. That would lead through the same calculation to every fixed energy rate strictly larger than `3/4`. PR103 improves the frontier below `3/4`.

## 3. Standard zero-free-to-Mertens transfer

A standard Perron/contour theorem gives the following implication. If zeta is zero-free in `Re s>theta0`, then for every fixed `theta>theta0`,

\[
M(x)=O_\theta(x^\theta),\qquad x\ge1.
\]

The strict margin is essential. It pays vertical-line bounds for `1/zeta(s)`, contour truncation, and the finite initial segment. There is no exceptional set and the constant depends only on the selected exponent and the external analytic data.

The repository already defines

\[
\theta_*=
0.87338196661320751992903\ldots
\]

as `newWorkingTheta` and proves exactly

\[
\theta_0<\theta_*<1.
\]

It also defines

\[
r_* = 2\theta_*-1
=0.74676393322641503985806\ldots
\]

as `newWorkingEnergyPower`.

The new source names the classical analytic bridge `ZeroFreeToMertensPowerBridge` and the resulting source-specific proposition `PR103MertensPowerSupplier`. Neither is hidden inside an unrestricted certificate.

## 4. Exact physical-time exponent transfer

Assume for some `theta>1/2` and `C>=0` that

\[
|M(e^u)|\le C e^{\theta u}
\qquad(u\ge0).
\]

Put

\[
\rho=\theta-\frac12>0.
\]

The actual velocity satisfies

\[
|V(u)|
=e^{-u/2}|M(e^u)|
\le C e^{\rho u}.
\]

This first step is formalized with a proof body as `pickupVelocity_abs_le_of_mertens_envelope`.

For `t>=0`, ordinary interval integration gives

\[
|F(t)|
\le C\int_0^t e^{\rho u}\,du
=\frac C\rho(e^{\rho t}-1)
\le\frac C\rho e^{\rho t}.
\]

Squaring and integrating once more,

\[
\begin{aligned}
H(T)
&\le \frac{C^2}{\rho^2}
     \int_0^T e^{2\rho t}\,dt\\
&=\frac{C^2}{2\rho^3}(e^{2\rho T}-1)\\
&\le\frac{C^2}{2\rho^3}e^{2\rho T}.
\end{aligned}
\]

Thus the exact energy exponent is

\[
\boxed{2\theta-1.}
\]

There is no polynomial-in-`T` loss and no extra epsilon. The one remaining local formalization gate is `PickupVelocityPowerEnergyTransfer`, which packages only this real-calculus argument. It contains no arithmetic premise.

## 5. Endpoint and complete strong-packet consequences

The existing exact source identities give

\[
H(T)=D(T)+X(T),\qquad D(T)\ge0,
\]

and

\[
|E(T)-X(T)|\le\frac14.
\]

Therefore

\[
\boxed{E(T)\le H(T)+\frac14.}
\]

The new source proves this inequality directly as `endpointSum_le_pickupEnergy_add_quarter`, and proves generic fixed-rate transport from energy to the literal endpoint sum.

At the exact PR103 working exponent, the energy and endpoint rate is

\[
r_*=0.74676393322641503985806\ldots.
\]

For a clean rational statement, define

\[
r_{\rm clean}=\frac{747}{1000}.
\]

Exact rational arithmetic proves

\[
r_*<r_{\rm clean}<\frac34<1.
\]

Hence, conditional only on the explicitly named external adapter, contour theorem, and local calculus gate,

\[
H(T)\ll e^{0.747T},
\qquad
E(T)\ll e^{0.747T}.
\]

The existing complete strong-packet source identity additionally gives the same rate after paying the diagonal, rate-`0.747` Putnam gap, and exponentially decaying weak-overlap packet. The new source leaves this purely scalar absorption visible as `StrongPacketFixedRateReturn` and derives the conditional theorem `pr103_strongPacket_clean_rate`.

This is a strict quantitative improvement over the current classical-PNT result `o(e^T)`. It is not an all-positive-rate estimate and therefore does not imply RH.

## 6. Precise no-bootstrap obstruction

The existing fifth-power Mertens-spike argument gives the reverse fixed-rate exponent map

\[
\rho\longmapsto \frac{4+\rho}{5}.
\]

The forward source transfer proved above is

\[
\theta\longmapsto2\theta-1.
\]

Composing them on an endpoint energy rate gives

\[
R(\rho)
=2\left(\frac{4+\rho}{5}\right)-1
=\frac{3+2\rho}{5}.
\]

For every `rho<1`,

\[
R(\rho)-\rho
=\frac{3(1-\rho)}5>0.
\]

Thus the two valid bridges make every strict rate worse. Repetition converges upward to one, not downward to zero. At the clean PR103 rate,

\[
R(747/1000)=2247/2500=0.8988.
\]

This is a rigorous programme obstruction:

> fixed-rate Mertens-to-energy and fifth-power energy-to-Mertens transfers cannot be iterated into an RH-strength all-positive-rate estimate.

Stable obstruction ID: `rh-fixed-rate-mertens-energy-roundtrip-worsens-v1`.

This does not refute RH or any stronger source-specific cancellation theorem. It eliminates a proposed scalar bootstrap.

## 7. Novelty and comparison

Nothing here is claimed as a new general theorem about zeta or Mertens. The zero-free theorem and zero-free-to-summatory transfer are external/classical. The programme-specific contribution is:

1. the exact exponent map into the unchanged causal Möbius energy;
2. transfer to the literal endpoint and complete strong packet;
3. the first explicit PR103 physical-time rate below `3/4` for this source;
4. the rigorous round-trip obstruction.

The result is stronger than the repository's current PNT/Korobov--Vinogradov rate-one envelope but much weaker than Problem P, which requires every positive rate on one adequately covering scale set.

## 8. Verification boundary

Published source candidate: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`.

Proof bodies include:

- fixed-rate monotonicity;
- exact velocity exponent transfer;
- endpoint `energy+1/4` comparison;
- endpoint fixed-rate transport;
- all rational PR103 comparisons;
- conditional PR103 energy/endpoint/strong wrappers;
- exact round-trip formulas and obstruction.

Visible gates:

- `ExternalPR103ZetaNonvanishing`;
- `ZeroFreeToMertensPowerBridge`;
- `PickupVelocityPowerEnergyTransfer`;
- `StrongPacketFixedRateReturn`.

Status remains:

- Lean compilation: NOT_RUN;
- exact expected types: NOT_RUN;
- fresh kernel replay: NOT_RUN;
- transitive axiom audit: NOT_RUN;
- native execution: NOT_RUN;
- external PR103 adapter: NOT_REPLAYED_LOCALLY;
- classical contour bridge: NOT_FORMALIZED;
- all-positive-rate endpoint/strong supplier: UNPROVED;
- Riemann Hypothesis: UNPROVED.
