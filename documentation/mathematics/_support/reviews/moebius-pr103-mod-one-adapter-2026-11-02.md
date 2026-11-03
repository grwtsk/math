# Exact modulus-one adapter for the external PR103 Dirichlet theorem

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: ordinary mathematical specialization proved; Lean source proof candidate. The external PR103 theorem itself has not been imported or replayed under the pinned `grwtsk/math` toolchain. The zero-free-to-Mertens contour bridge remains open. No all-positive-rate endpoint estimate or Riemann Hypothesis conclusion is claimed.

## 1. External theorem and local interface

The merged external source `Candidate.bound` has the exact statement

\[
\forall q\ge1\;\forall\chi\pmod q\;\forall s\in\mathbf C,
\qquad
\theta_0<\Re s,
\quad
\neg(\chi=1\land s=1)
\Longrightarrow
L(s,\chi)\ne0,
\]

where

\[
\theta_0=
\frac{
2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341
}{
3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271
}.
\]

The new local definition

```lean
DirichletFamilyZeroFreeRightOf theta
```

retains the same positive-modulus typeclass, the same complex Dirichlet character, the same strict real-part boundary, the same principal-character pole exclusion, and the same Mathlib `DirichletCharacter.LFunction` conclusion.

The PR103 specialization is

```lean
ExternalPR103DirichletNonvanishing :=
  DirichletFamilyZeroFreeRightOf externalPR103Theta
```

and is deliberately not proved in the local source. Supplying it means importing or replaying the external theorem.

## 2. Exact modulus-one identity

Pinned Mathlib proves

```lean
DirichletCharacter.LFunction_modOne_eq
```

which states that for every complex Dirichlet character modulo one,

\[
L(s,\chi)=\zeta(s)
\]

as functions of `s`. There is only one such character. In particular,

\[
L(s,1_{\bmod 1})=\zeta(s).
\]

The new theorem

```lean
principal_modOne_LFunction_eq_riemannZeta
```

is the pointwise specialization of that exact function equality.

The external pole guard also specializes without loss. For the principal character modulo one,

\[
\neg(1=1\land s=1)
\iff s\ne1.
\]

This is recorded by

```lean
principal_modOne_pole_condition
```

and is a propositional simplification, not a new analytic exception.

## 3. Lossless family-to-zeta specialization

Assume `DirichletFamilyZeroFreeRightOf theta`. Fix `s` with

\[
\theta<\Re s,
\qquad
s\ne1.
\]

Apply the family theorem at

\[
q=1,
\qquad
\chi=1_{\bmod1}.
\]

The pole condition follows from `s != 1`, and the conclusion is

\[
L(s,1_{\bmod1})\ne0.
\]

Using the exact modulus-one identity gives

\[
\zeta(s)\ne0.
\]

Thus

\[
\boxed{
\text{DirichletFamilyZeroFreeRightOf}(\theta)
\Longrightarrow
\text{ZetaZeroFreeRightOf}(\theta).
}
\]

There is no change of boundary, no epsilon loss, no conductor loss, and no additional exceptional point. The theorem is

```lean
zetaZeroFreeRightOf_of_dirichletFamily
```

and its PR103 wrapper is

```lean
externalPR103ZetaNonvanishing_of_dirichlet
```

## 4. Consumers now use the exact external theorem signature

The earlier PR103 chain exposed a zeta-only proposition. The new wrappers consume the exact family proposition and route it through the proved modulus-one adapter:

```lean
pr103_pickupEnergy_clean_rate_of_dirichlet
pr103_endpointSum_clean_rate_of_dirichlet
pr103_strongPacket_clean_rate_of_dirichlet
pr103_weighted_energy_integrable_above_exact_of_dirichlet
pr103_exact_Ioi_subset_pickupEnergyConvergenceSet_of_dirichlet
pickupEnergyAbscissa_le_exactPR103_of_dirichlet
```

After also supplying the still-open standard contour theorem `ZeroFreeToMertensPowerBridge`, they give the already-established conditional consequences:

- the clean fixed causal-energy rate `747/1000`;
- the same rate for the literal endpoint quadrature;
- the same rate for the complete signed strong packet;
- weighted square-energy integrability at every damping strictly above `2*externalPR103Theta - 1`;
- the exact causal-energy abscissa upper bound
  \[
  \operatorname{pickupEnergyAbscissa}
  \le2\theta_0-1.
  \]

The adapter introduces no arithmetic estimate. It removes a source/API seam and makes the remaining external obligation match the theorem that was actually published.

## 5. Remaining boundary

The external theorem is not part of the local Lake dependency closure. Therefore the following remain open:

1. import or independently replay `Candidate.bound` under the pinned local theorem types;
2. establish the standard zero-free-to-Mertens Perron/contour bridge;
3. compile the adapter and its complete dependency closure;
4. run expected-type checks, fresh-kernel replay, and a transitive axiom audit;
5. prove a one-sided all-positive-rate bound for the complete signed endpoint source on one fixed affinely covering scale set.

A fixed positive PR103 boundary is not RH strength. The exact terminal arithmetic requirement remains the all-positive-rate signed endpoint estimate, with the complete source formed before any outer inequality.

## 6. Verification disposition

- ordinary mathematical specialization: **PROVED**;
- source publication: **PENDING** at the time of this review;
- Lean compilation: **NOT_RUN**;
- expected-type checks: **NOT_RUN**;
- fresh-kernel replay: **NOT_RUN**;
- transitive axiom audit: **NOT_RUN**;
- native execution: **NOT_RUN**;
- external PR103 theorem replay: **NOT_RUN**;
- zero-free-to-Mertens bridge: **NOT_FORMALIZED**;
- all-positive-rate endpoint supplier: **UNPROVED**;
- Riemann Hypothesis: **UNPROVED**.
