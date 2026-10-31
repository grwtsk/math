# Formal obstruction analogues for the Liouville causal-energy programme

**Disposition:** source-bound formal comparison of obstruction mechanisms; exact
logical separations and current-source bridge interfaces; no imported external
proof, no new Liouville cancellation estimate, and no claim of Riemann
Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`1c09200e05209c39c4ac901faa817e1d21e38373`, tree `43eb1f33abcba5d351d3c0eda0de9e7a0ebee544`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleObstructionConnections.lean`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Verification:** source inspection only. Compilation, expected-type checking,
fresh-kernel replay, native execution, and transitive axiom auditing are all
`NOT_RUN`.

## 1. Fixed local source and exact destination

The imported local source chain is:

1. `LiouvilleCausalEnergyTarget.lean`, containing the actual Mathlib Liouville
   coefficient, original causal response, waveform, energy, and
   `UniformEnergySupplier`;
2. `LiouvilleGrowingPrimeBandIdentity.lean`, containing the complete finite
   delayed-prime identity;
3. `LiouvillePrimeBandNormEquivalence.lean`, containing the nonnegative
   prime-band norm barrier;
4. `LiouvilleFinitePrimeSieveOperator.lean`, containing the exact finite-prime
   product sieve and inverse-conditioning cost;
5. `LiouvilleRoughCausalBuchstab.lean`, containing the exact least-prime-factor
   decomposition, complete signed Buchstab covariance, and paid supplier.

The unchanged terminal arithmetic target is still

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0:
\qquad
H_\lambda(T)\le C_\varepsilon e^{\varepsilon T}.
\]

The new module does not restate this as a solved theorem. It formalizes why
several nearby successful methods do or do not discharge the missing supplier.

## 2. Lean declarations and what each connection formalizes

The module contains seven obstruction classes:

- `ObstructionKind.sieveParity`;
- `ObstructionKind.fixedFormUniformity`;
- `ObstructionKind.existentialConsumer`;
- `ObstructionKind.indefiniteCertificate`;
- `ObstructionKind.fixedExponentCeiling`;
- `ObstructionKind.globalPotential`;
- `ObstructionKind.verificationScope`.

The following exact logical statements are proved in the source candidate.

| Lean declaration | Formal separation | Mathematical connection |
|---|---|---|
| `unsignedObservation_does_not_determine_sign` | equal absolute values do not determine signed values | Selberg-sieve parity barrier; twin-prime/Goldbach obstruction |
| `pointwise_constants_do_not_imply_uniform_constants` | `∀ i, ∃ C_i` does not imply `∃ C, ∀ i` | fixed-form ordinary Chowla/Elliott versus a growing prime family |
| `some_scale_does_not_imply_every_scale` | one favorable scale does not imply all-scale control | Erdős discrepancy consumer versus the RH energy consumer |
| `IndefiniteCertificate.value_le_main` | a nonnegative correction retained with its sign improves an upper bound | Zeta23 rank--trace/inertia and complete Buchstab covariance |
| `one_positive_rate_does_not_imply_all_positive_rates` | a result at one positive exponent does not imply every positive exponent | quasi-RH `7/8` versus the all-positive-rate energy target |
| `GlobalPotentialCertificate.bound` | local additive costs telescope through one global potential | PFR entropy/Ruzsa-potential model versus multiplying prime inverses |
| `VerificationStatus`, `LocallyAccepted` | statement, source, upstream report, local build, kernel replay, and axiom audit are distinct | Formal Conjectures, Comparator projects, and the local `NOT_RUN` chain |

The source also introduces exact current-source bridge predicates:

\[
\operatorname{SubexponentialConditioning}(Y),
\]

\[
\operatorname{CompleteBuchstabNegativePartBound}(Y),
\]

and

\[
\operatorname{TypeIIBuchstabBridge}
:=
\exists Y,\;
\operatorname{SubexponentialConditioning}(Y)
\land
\operatorname{CompleteBuchstabNegativePartBound}(Y).
\]

For a horizon-dependent cutoff `Y`, the second predicate is exactly

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0:
\quad
\kappa(Y(T))
\max\{-\mathcal C_{Y(T)}(T),0\}
\le C_\varepsilon e^{\varepsilon T},
\]

where

\[
\kappa(Y)=\prod_{p\le Y}(1-p^{-1/2})^{-2}
\]

and the entire prime sum defining
\(\mathcal C_Y(T)\) is formed before the negative part is taken.

`TypeIIBuchstabBridgeImpliesPaidSupplier` and
`TypeIIBuchstabBridgeImpliesUniformEnergy` are intentionally open
propositions. They identify the next exact Lean transfers without pretending
that the missing arithmetic estimate has been obtained.

## 3. Selberg sieve, parity, twin primes, and binary Goldbach

### 3.1 Exact external formalized scope

At the pinned Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`,
`Mathlib/NumberTheory/SelbergSieve.lean`, blob
`29f3dc9e9e53e9e429df6c862714cf8327a2b554`, formalizes:

- nonnegative `BoundingSieve.weights`;
- upper-bound sieves;
- the \(\Lambda^2\) upper-bound sieve;
- diagonalization of its main term;
- an upper bound for a sifted sum.

This imported Mathlib work is genuine kernel source at its own revision. It
does not state a parity-breaking lower-bound theorem for primes.

### 3.2 Exact local connection

The local theorem

```lean
unsignedObservation_does_not_determine_sign
```

uses the fixture `1` and `-1`: their positive observations are equal, while
their signed values differ. Its role is to make the information loss explicit:

\[
|x|=|y|\not\Rightarrow x=y.
\]

For Liouville,

\[
\lambda(n)=(-1)^{\Omega(n)},
\]

so any supplier invariant under coefficientwise sign reversal cannot
distinguish the parity of the number of prime factors. The proportional rough
cutoff already exhibited the actual source manifestation:

\[
E_{\lfloor e^{2T/5}\rfloor}(T)
\gg \frac{e^T}{T^2},
\]

with a prime-versus-semiprime main term.

### 3.3 Ford--Maynard boundary

Kevin Ford and James Maynard, *On the theory of prime producing sieves*
(2024), arXiv:2407.14368, use modified Liouville functions on rough support to
describe Type-I/Type-II and parity limitations. This paper is not imported as
a Lean dependency.

The exact connection is not “their theorem proves the local target.” It is:

- positive Type-I/divisibility information is structurally insufficient;
- a viable local supplier must retain a bilinear or Type-II signed channel;
- in this programme that channel is the complete negative Buchstab covariance,
  after the prime sum and before absolute values.

Twin primes and binary Goldbach remain open; no closure is inferred from the
analogy.

## 4. Ordinary Chowla/Elliott and the growing-family uniformity gap

### 4.1 Pinned formalized result

At `openai/math@4eaee87548250b2682affda7d05d947c05554bae`:

- `lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean`, blob
  `8764f91cc16967f765b4f19c4378ff8fb5f29cd0`, states the comparator surface;
- `lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean`, blob
  `2bd48811e73bbdc80c1f738fa889a14189186408`, connects the three headline
  statements to the internal proof source;
- `lean/docs/007.md`, blob
  `dad638d19609ebbddc93a5594dfc2ecd2a26a7a6`, records the intended scope.

The Liouville theorem is a logarithmic saving for every fixed pair of
nonproportional affine forms, with an absolute exponent and an implied
constant that may depend on the forms.

This repository has not locally replayed OpenAI's comparator or kernel
closure. The status used here is `upstreamComparatorReported`, not
`locallyAxiomAudited`.

### 4.2 Formal obstruction

The local source proves:

\[
(\forall i\;\exists C_i\;R(i,C_i))
\not\Rightarrow
(\exists C\;\forall i\;R(i,C)).
\]

The witness is the unbounded family `i ≤ C`.

For the causal Buchstab covariance, the family index includes at least:

- the selected prime \(p\);
- the horizon \(T\);
- the rough cutoff \(Y(T)\);
- the closed descendant source \(F_{\ge p}\);
- the original physical-time weight and birth collar.

Therefore a fixed-form estimate is not yet summable over the required growing
family unless one proves explicit dependence on the affine parameters or a new
average that absorbs those constants.

The exact missing upgrade is represented by
`CompleteBuchstabNegativePartBound`.

## 5. Erdős discrepancy and consumer mismatch

### 5.1 Mathematical closure and formal statement status

Tao proved the Erdős discrepancy problem in 2015/2016. The relevant conclusion
is existential: for every discrepancy threshold, some homogeneous progression
has discrepancy above that threshold.

At
`google-deepmind/formal-conjectures@b6939a3a0d89e5f999fa8c6483a6ef646c1e2923`,
`FormalConjectures/ErdosProblems/67.lean`, blob
`1502ac6a160ce32dfb39f387dad02386df60d194`, contains the real and complex
statements, but both proof bodies are `sorry`.

The local status is therefore represented by
`erdosDiscrepancyStatementStatus = statementOnly`. This is not criticism of
the mathematical theorem; it is an exact formal-evidence classification.

### 5.2 Formal obstruction

The local theorem

```lean
some_scale_does_not_imply_every_scale
```

exhibits a property true at one scale and false as an all-scale statement.

That quantifier distinction is the relevant connection. The RH-facing energy
consumer needs an all-\(T\) bound, or a good-scale set with separately proved
controlled coverage. Merely producing arbitrarily large favorable scales does
not fill the gaps.

The positive lesson from Erdős discrepancy is consumer design: logarithmically
averaged multiplicative information can close a theorem when the terminal
quantifiers only require one witness. A similar input can close this RH route
only after an exact coverage theorem matches it to the all-scale consumer.

## 6. Zeta23, rank--trace/inertia, and an indefinite certificate

### 6.1 Pinned formalized work

At
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
the `zeta23/` project reports a complete Lean formalization of the theorem that
more than two thirds of the zeta zeros are simple and on the critical line,
together with explicit formula, zero-counting, Stirling, prime-sum, and
generalized Hilbert-inequality inputs.

The project README is blob
`302fa9094863279d0ec83fca012d2b7bf59d5ccd`. It also documents a
rank--trace tightness result and a bandwidth-one ceiling project. Its
Comparator and axiom claims are upstream reports until locally replayed.

### 6.2 Formal connection

The local structure

```lean
IndefiniteCertificate
```

records

\[
V=M-C,\qquad C\ge0,
\]

and proves

\[
V\le M.
\]

This is the common skeleton:

- Zeta23 keeps the indefinite zero-side information and uses rank/inertia
  instead of assuming all zeros lie on the line;
- the current Liouville programme keeps
  \(E_Y=\langle F_Y,r_1\rangle-\mathcal C_Y\) and asks only for the
  negative part of the complete covariance.

A positive majorant formed before the signed object would discard the
subtraction in both cases.

The limitation is equally important. Zeta23 proves a zero proportion, not
pointwise exclusion of every off-line zero. Its theorem cannot be promoted to
RH or to the all-positive-rate Liouville energy estimate.

## 7. Quasi-RH and the fixed-exponent ceiling

At `openai/math@4eaee87548250b2682affda7d05d947c05554bae`,
`lean/docs/003.md`, blob
`cf794e93da2e1a494434153f5b91f2990fe9fd60`, records the formalized scope of
the claimed zero-free half-plane \(\Re s>7/8\) for zeta and related
\(L\)-functions, as well as a logarithmic real-zero exclusion statement.

The local theorem

```lean
one_positive_rate_does_not_imply_all_positive_rates
```

uses the predicate `1 ≤ ε` to prove the pure quantifier separation

\[
\exists\varepsilon>0\;P(\varepsilon)
\not\Rightarrow
\forall\varepsilon>0\;P(\varepsilon).
\]

This is exactly the limitation relevant here. A fixed zero-free half-plane or
one fixed causal-energy exponent may be a strong theorem, but it is not the
all-positive-rate family consumed by the existing RH return. No iteration
principle is silently assumed.

## 8. Polynomial Freiman--Ruzsa and global-potential amortization

### 8.1 Pinned formalized work

At `teorth/pfr@7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f`:

- `PFRPalomar/Solution.lean`, blob
  `4d49574ba10382abfe9fdd319b70a857e8842e14`, proves the six compared
  headline statements from the PFR library;
- `PFR/RhoFunctional.lean`, blob
  `af3f89faaf4f12edd2ec9796b93ae77474a99c70`, develops the entropy/KL
  `rho` functional;
- `README.md`, blob
  `6ada80d876476dd76a29ea76b8334290dc50c660`, describes the completed
  characteristic-two proof, later exponent improvements, Comparator surface,
  and the continuing bounded-torsion work.

The PFR proof is not imported into `grwtsk/math`; it is method context.

### 8.2 Formal connection

The local source defines

```lean
GlobalPotentialCertificate
```

with a one-step inequality

\[
\Phi(k+1)\le\Phi(k)+c(k)
\]

and proves the telescoping bound

\[
\boxed{
\Phi(N)\le\Phi(0)+\sum_{k<N}c(k).
}
\]

This formalizes the proposed alternative to the product loss

\[
\prod_{p\le Y}(1-p^{-1/2})^{-2}.
\]

The analogy is not an imported theorem saying that a suitable Liouville
potential exists. The exact research question is whether the whole family

\[
\{F_Y,F_{\ge p}:p>Y\}
\]

admits one source-exact potential whose total drift controls the complete
negative covariance additively, rather than paying a separate norm inverse for
each prime.

## 9. Formalization-evidence taxonomy

The source defines the following statuses:

- `statementOnly`;
- `sourceCandidate`;
- `upstreamProofSource`;
- `upstreamComparatorReported`;
- `locallyCompiled`;
- `locallyKernelChecked`;
- `locallyAxiomAudited`.

Only `locallyAxiomAudited` is classified as `LocallyAccepted` for the complete
local dependency closure.

The classification prevents the following invalid transfers:

1. a solved informal theorem does not make a `sorry`-bearing formal statement
   kernel-checked;
2. a source candidate does not become accepted because it contains no explicit
   `sorry`;
3. an upstream repository's build or Comparator report is not a local replay;
4. local compilation alone is not a fresh-kernel or transitive-axiom audit;
5. acceptance of an external theorem does not prove the missing bridge to the
   current source.

### Radical-log API example

The separate radical-log target

\[
\sum_{p\mid q}\log p=\log(\operatorname{rad}q)
\]

illustrates an API/formalization obstruction rather than missing
number-theoretic cancellation. The earlier project note located
`Nat.radical_eq_prod_primeFactors` but left the natural-to-real product cast and
the exact `Real.log_prod` interface unconfirmed. This comparison module does
not claim that those API obligations were resolved, and it does not use the
identity as a cancellation estimate.

## 10. Exact remaining arithmetic junction

The formalized comparison narrows the viable route.

A sufficient source-exact strategy must provide a cutoff family `Y(T)` such
that:

1. the harmless unit response remains subexponential after paying
   `inverseSieveCost (initialPrimeBand (Y T))`;
2. the negative part of the complete signed covariance remains
   subexponential after paying the same cost.

This is `TypeIIBuchstabBridge`.

The bridge deliberately excludes the following invalid replacements:

- a positive sieve upper bound;
- a coefficientwise absolute-value estimate;
- a separate constant for each fixed prime with no summability;
- existence of isolated favorable scales with no coverage;
- one fixed positive exponent;
- an iterated norm inverse with its cost omitted;
- an external theorem accepted at a different statement surface.

The next bounded mathematical task is to construct or eliminate a global
potential/Type-II estimate for a subexponentially conditioned cutoff, initially
a polynomial family such as

\[
Y(T)=T^A,\qquad 0<A<2.
\]

The complete prime sum, closed descendants, repeated prime powers, rough
survivors, birth collars, and exact inverse-conditioning factor must remain
present.

## 11. Verification and publication boundary

The new Lean source proves only the elementary logical separations and the
global-potential telescoping lemma. The current-source Type-II-to-supplier
transfers remain named open propositions.

For the new module and inherited source closure:

- source inspection: `DONE`;
- analytical correspondence review: `WRITTEN`;
- compilation: `NOT_RUN`;
- exact expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- new Liouville cancellation: `NOT_PROVED`;
- uniform energy: `NOT_PROVED`;
- Riemann Hypothesis: `NOT_PROVED`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
