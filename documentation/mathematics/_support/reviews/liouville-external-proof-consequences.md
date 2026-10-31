# External-proof consequences for the Liouville causal-energy programme

**Disposition:** source-bound equivalence theorem, external-certificate reduction,
and proportional-cutoff certificate obstruction; no new arithmetic cancellation
estimate and no claim of Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`12575a445f0d4623eebdf604bb6e628aa9189b28`, tree
`5a3981880f67ffb4d89b0bf4aabc6f1487ab3d97`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleExternalProofConsequences.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection and analytical derivation only. Compilation,
expected-type checking, fresh-kernel replay, native execution, external
Comparator replay, and transitive axiom auditing are all `NOT_RUN`.

## 1. Fixed source and inherited identities

For a rough cutoff `Y`, retain the actual Liouville waveform

\[
F_Y(u)
=
\sum_{\substack{n\le e^u\\q\mid n\Rightarrow q>Y}}
\lambda(n)r_n(u),
\qquad
E_Y(T)=\int_0^T |F_Y(u)|^2\,du,
\]

the harmless unit-response energy

\[
E_1(T)=\int_0^T |r_1(u)|^2\,du,
\]

and the complete signed least-prime covariance

\[
\mathcal C_Y(T)
=
\sum_{Y<p\le e^T}p^{-1/2}
\int_0^T
F_Y(u)F_{\ge p}(u-\log p)\,du.
\]

Write

\[
R_Y(T)=\max\{-\mathcal C_Y(T),0\}
\]

and

\[
\kappa(Y)
=
\prod_{p\le Y}(1-p^{-1/2})^{-2}.
\]

The predecessor module proves at source level the abstract sandwich

\[
\frac{E_Y(T)-E_1(T)}2
\le R_Y(T)
\le
\frac{3E_Y(T)+E_1(T)}2
\tag{1.1}
\]

from the terminal Buchstab identity, the integrated energy identity,
nonnegativity, and the integral Young bound.

The current increment exploits (1.1) completely.

## 2. Paid covariance and paid rough energy are equivalent

For a horizon-dependent cutoff family \(Y(T)\), define:

\[
\operatorname{Cond}(Y):
\quad
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0,
\qquad
\kappa(Y(T))E_1(T)
\le
C_\varepsilon e^{\varepsilon T},
\]

\[
\operatorname{Cov}(Y):
\quad
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0,
\qquad
\kappa(Y(T))R_{Y(T)}(T)
\le
C_\varepsilon e^{\varepsilon T},
\]

and

\[
\operatorname{Rough}(Y):
\quad
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0,
\qquad
\kappa(Y(T))E_{Y(T)}(T)
\le
C_\varepsilon e^{\varepsilon T}.
\]

Assume the source hypotheses used in (1.1), and assume
\(\operatorname{Cond}(Y)\).

### Forward direction

The lower half of (1.1) gives

\[
E_Y(T)\le E_1(T)+2R_Y(T).
\]

Multiplying by \(\kappa(Y(T))\ge0\) and using the two supplied estimates at the
same positive rate gives

\[
\kappa E_Y
\le
\kappa E_1+2\kappa R_Y
\le
(C_{\mathrm{unit}}+2C_{\mathrm{cov}})e^{\varepsilon T}.
\tag{2.1}
\]

Thus `Cov(Y)` implies `Rough(Y)` with no exponent loss.

### Reverse direction

The upper half of (1.1) gives

\[
R_Y(T)
\le
\frac{3E_Y(T)+E_1(T)}2.
\]

Therefore

\[
\kappa R_Y
\le
\frac{3\kappa E_Y+\kappa E_1}{2}
\le
\frac{3C_{\mathrm{rough}}+C_{\mathrm{unit}}}{2}
e^{\varepsilon T}.
\tag{2.2}
\]

Thus `Rough(Y)` implies `Cov(Y)`, again with no exponent loss.

The new Lean theorem

```lean
paidCovarianceRoughEnergyEquivalence_proof
```

proves the previously open proposition
`PaidCovarianceRoughEnergyEquivalence`.

The source introduces

```lean
PaidRoughEnergyBridge
```

and proves

```lean
typeIIBuchstabBridge_iff_paidRoughEnergyBridge
```

under the exact source and integral Gram premises.

This is the main mathematical conclusion of the increment:

\[
\boxed{
\text{paid complete negative-covariance control}
\iff
\text{paid rough-energy control}
}
\]

once the unit response is paid.

The covariance formulation is still useful because it exposes where Type-II,
entropy-decrement, or signed average information must enter. It is not a weaker
growth target.

## 3. Consequence for ordinary-correlation exploitation

The predecessor source defines a
`GrowingCorrelationEnvelopeCertificate`. It requires:

1. one cutoff family;
2. paid subexponential unit conditioning;
3. a source comparison
   \[
   |\mathcal C_{Y(T)}(T)|\le M(T);
   \]
4. an all-positive-rate paid bound
   \[
   \kappa(Y(T))M(T)
   \le C_\varepsilon e^{\varepsilon T}.
   \]

The new theorem

```lean
GrowingCorrelationEnvelopeCertificate.toPaidRoughEnergyBridge
```

shows that every such envelope supplies paid rough-energy control.

This sharpens the use boundary for the external ordinary two-point theorem.
A fixed-form logarithmic saving cannot be inserted merely because every
individual affine correlation is small. The application must construct the
entire growing-family envelope, including:

- the exact expansion of the physical-time covariance;
- the rough-support indicators and closed descendants;
- weighted partial summation through the causal response;
- all repeated-prime and birth-collar terms;
- explicit dependence on the growing form and shift parameters;
- the complete paid aggregate estimate.

Once that envelope exists, the downstream transfer is complete. Until then,
the external fixed-form theorem does not supply the missing arithmetic witness.

## 4. Consequence for a PFR-style global potential

The predecessor source defines a
`BuchstabGlobalPotentialCertificate`. Such a certificate must satisfy

\[
\kappa(Y(T))R_{Y(T)}(T)\le\Phi(T)
\]

and

\[
\Phi(T)\le C_\varepsilon e^{\varepsilon T}
\]

at every positive rate.

The new theorem

```lean
BuchstabGlobalPotentialCertificate.toPaidRoughEnergyBridge
```

shows that every valid potential also supplies paid rough-energy control.

This is the exact exploitation of the PFR method pattern. A global potential
may avoid multiplying local inverse losses in its proof, but its terminal
magnitude must still dominate the paid rough energy up to the absolute
constants in (1.1). Measuring only support size, radical entropy, representation
complexity, or the number of sieve steps does not suffice.

The theorem

```lean
externalProofPortfolio_to_paidRoughEnergyBridge
```

performs the same reduction for either external-proof branch.

## 5. Composition with the existing return

The new theorem

```lean
externalProofPortfolio_to_uniformEnergy_of_paidReturn
```

shows the complete logical composition:

\[
\text{external certificate}
\Longrightarrow
\text{paid Buchstab supplier}
\Longrightarrow
\text{uniform Liouville causal energy},
\]

provided the inherited proposition
`PaidBuchstabSupplierImpliesUniformEnergy` and its exact rough/sieve/covariance
premises are supplied.

The return proposition is deliberately retained as an explicit premise. This
increment does not transfer unverified source candidates into theorem
acceptance.

## 6. Proportional-cutoff obstruction for both certificate classes

The preceding arithmetic review gives, for

\[
Y_T=\lfloor e^{2T/5}\rfloor,
\]

an eventual lower bound

\[
R_{Y_T}(T)
\ge
c_R\frac{e^T}{T^2},
\qquad
c_R=
\frac{(1-\log(3/2))^2}{16}(1-e^{-1})
>0.
\tag{6.1}
\]

The new source defines

```lean
UsesProportionalCutoff
InitialInverseSieveCostAtLeastOne
```

and proves the following exact finite consequences.

### Growing-correlation envelope

If a correlation envelope uses the proportional cutoff, then

\[
c_R e^T
\le
T^2 M(T)
\tag{6.2}
\]

eventually. This is proved by

```lean
GrowingCorrelationEnvelopeCertificate.proportional_majorant_lower
```

using only

\[
R_Y\le|\mathcal C_Y|\le M.
\]

Thus any majorant at that cutoff is exponentially large before conditioning.

### Global potential

If the elementary fact

\[
1\le\kappa(Y)
\tag{6.3}
\]

is supplied, then every PFR-style potential using the proportional cutoff
satisfies

\[
c_R e^T
\le
T^2\Phi(T)
\tag{6.4}
\]

eventually. This is proved by

```lean
BuchstabGlobalPotentialCertificate.proportional_potential_lower
```

from

\[
R_Y\le\kappa(Y)R_Y\le\Phi.
\]

Equations (6.2)--(6.4) are incompatible with the all-positive-rate certificate
requirements: choosing, for example, \(\varepsilon=1/2\) would force
\(e^{T/2}/T^2\) to remain bounded.

The final exponential-dominance step and the elementary product proof of
(6.3) are preserved as explicit remaining formalization obligations in:

```lean
NoProportionalGrowingCorrelationEnvelope
NoProportionalGlobalPotential
```

No claim is made that polynomial or more slowly growing cutoffs are eliminated.

## 7. What the external proofs can still contribute

### Selberg sieve

The formalized upper-bound sieve remains useful for exact support and positive
diagonal estimates. It cannot replace the signed rough-energy or covariance
bound because the equivalence above is parity-sensitive.

### Ford--Maynard Type II

A Type-II estimate can still provide the missing envelope. The required object
is now exact: a paid, source-derived aggregate bound for the complete covariance,
not a collection of separate positive sieve estimates.

### Ordinary two-point correlations

The external fixed-form theorem can populate the growing-correlation
certificate only after explicit parameter dependence and the complete
weighted expansion are proved. A separate constant for every fixed form is
insufficient.

### Erdős discrepancy

Entropy decrement may help locate favorable arithmetic structure, but its
existential consumer must be strengthened to all-scale or controlled-coverage
information before it can enter this causal-energy return.

### Zeta23

The rank--trace lesson is fully exploited by the signed sandwich. It shows both
why the correction must be preserved and why, in this source, the correction
cannot be treated as an independently small favorable term.

### Quasi-RH

One fixed exponent remains a fixed-rate result. Nothing in the equivalence
bootstraps it to rates cofinal at zero.

### PFR

The global-potential model remains viable only at a cutoff where the paid rough
energy might itself be subexponential. The proportional cutoff is now excluded
for every potential satisfying the exact domination requirement.

### Radical logarithm

The identity

\[
\sum_{p\mid q}\log p=\log\operatorname{rad}(q)
\]

may parameterize distinct-prime support or a candidate potential. It does not
bound the parity-sensitive rough energy and therefore cannot bypass the
equivalence proved here.

## 8. Formalization inventory

The new source declarations are:

- `PaidRoughEnergyBridge`;
- `paidCovarianceRoughEnergyEquivalence_proof`;
- `typeIIBuchstabBridge_iff_paidRoughEnergyBridge`;
- `GrowingCorrelationEnvelopeCertificate.toPaidRoughEnergyBridge`;
- `BuchstabGlobalPotentialCertificate.toPaidRoughEnergyBridge`;
- `externalProofPortfolio_to_paidRoughEnergyBridge`;
- `externalProofPortfolio_to_uniformEnergy_of_paidReturn`;
- `UsesProportionalCutoff`;
- `InitialInverseSieveCostAtLeastOne`;
- `GrowingCorrelationEnvelopeCertificate.proportional_majorant_lower`;
- `BuchstabGlobalPotentialCertificate.proportional_potential_lower`;
- `NoProportionalGrowingCorrelationEnvelope`;
- `NoProportionalGlobalPotential`.

The last two remain open propositions. The product lower bound for
`inverseSieveCost`, the exponential-dominance contradiction, and all inherited
integral/source identities remain explicit prerequisites.

## 9. Verification boundary

Current status:

- source inspection: `DONE`;
- analytical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- external Comparator replay: `NOT_RUN`;
- new actual-Liouville cancellation: `UNPROVED`;
- uniform energy: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.

The source proofs in this increment do not change the status of imported open
propositions. Publication is not theorem acceptance.

## 10. Next bounded mathematical step

The remaining arithmetic target is no longer ambiguous between covariance and
rough energy. At a subexponentially conditioned cutoff, such as

\[
Y(T)=T^A,\qquad 0<A<2,
\]

one must prove either:

1. a source-exact growing correlation envelope; or
2. a global potential dominating the paid rough energy/covariance.

The next useful derivation should expand the complete Buchstab covariance into
its growing-shift or Type-II bilinear family and calculate the exact aggregate
constant budget. Applying fixed-form estimates term by term without an averaged
shift gain cannot close the all-positive-rate target.
