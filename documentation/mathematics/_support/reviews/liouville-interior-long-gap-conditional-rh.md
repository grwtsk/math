# The exact interior long-gap Liouville arithmetic theorem and its conditional return to canonical RH

Local mathematical attribution: grwtsk contributors. Date of investigation: 2026-10-31.

**Result:** A complete *mathematical conditional proof* of
\`InteriorLongGapAllRate => _root_.RiemannHypothesis\`, together with
the source-exact reverse direction using the classical RH Liouville summatory
equivalence. The arithmetic premise \`InteriorLongGapAllRate\` is NOT
proved. No proof of RH is claimed.

**Formal status:** The additive Lean module defines the EXACT unresolved
arithmetic statement and the intended RH return as named \`Prop\` targets,
and contains three small source-level proof candidates (time-mesh identity
and two paid signed real inequalities). Neither the arithmetic statement nor
the full conditional RH implication is claimed Lean-accepted. Existing
physical-time collar bounds, finite signed Gram return, Liouville
square-divisor and Laplace/holomorphic arguments have distinct source and
verification frontiers. Compilation, expected theorem interfaces, fresh
kernel replay and transitive axiom audit: NOT_RUN.

## 1. Pinned, unchanged mathematical objects

Actual positive-index causal response, from \`CCC.pickupResponse\` in
\`MertensPrimitive.lean\` blob
\`45e06c371d67bcf8c939d20a95fcbc63570546fa\`:

    r_n(u)=2*max(n^(-1/2)-exp(-u/2),0), n>=1.

Actual signed arithmetic coefficient \`lambda(n)\`, from
\`LiouvilleCausalEnergyTarget.lean\` blob
\`a00aaa07c067b4c88203372870b5d5d151de0de4\`.
For T>=0 define without any surrogate coefficients:

    F(u)=sum_(1<=n<=exp u) lambda(n)*r_n(u),
    H(T)=int_0^T |F(u)|²du,
    K_T(m,g)=int_0^T r_m(u)*r_(m+g)(u)du.

The exact positive-gap half Gram is
\`LiouvilleDoubleAbelCausalKernel.positiveGapAggregate\`, blob
\`b102b4af07b0a1001424b084101c2cc16077181a\`.
It includes only *positive* m,g and the strict source mask m+g<N.
At the equality m+g=N the kernel vanishes by the original birth rule,
so the strict mask discards no nonzero original-energy pair.
The original signed, zero-boundary, double-Abel source remains unchanged
and is still awaiting full Lean acceptance.

The source partition and scalar square inputs are in
\`LiouvilleCausalBirthCollar.lean\`, blob
\`f84ed4a5ae39da68d6403e1f7e0d55e484d6dc19\`,
and the adjacent mathematical proof
\`liouville-birth-collar-signed-interior-spectral-tail.md\`, blob
\`79907f446d14b66907df69426b190746905edfcf\`.
The current contribution does not change either original source.

## 2. Precise new arithmetic theorem P -- UNPROVED

For every integer j>=1 define the exact fifth-power dyadic scale

    N_j=2^(5*j),
    W_j=2^(4*j),
    R_j=N_j-W_j,
    G_j=j²,
    T_j=5*j*log 2.

Define the SINGLE complete signed source

    A_long(j)=sum_(m>=1,g>=1,m+g<=R_j,g>G_j)
                    lambda(m)*lambda(m+g)*K_(T_j)(m,g).

This is precisely the imported
\`interiorLongGapAggregate N_j R_j G_j\` and the additive Lean module
defines exactly the corresponding \`interiorLongGapAt j\`.
There is no separate bound on each rectangle or on individual shifts.

The missing theorem is

    P : forall eps : Real, 0<eps ->
          exists Ceps : Real, 0<=Ceps AND
             forall j : Nat, 1<=j ->
               A_long(j) <= Ceps*exp(eps*T_j).

The starting index, positive-rate quantification and independence of
Ceps from j are indispensable. The upper bound is ONE-SIDED and applies
AFTER the complete signed sum. No constant from a positive fixed
zero-free half-plane can discharge all eps>0.

At j=1, N=32, R=16, G=1, and (m,g)=(1,2) occurs in A_long.
Its exact coefficient lambda(1)*lambda(3)=-1 and the integrated
response kernel is positive. Hence P is not an empty-sum
artifact or a positive-coefficient bound dressed up as cancellation.
Neither N=0 nor N=1 is in the arithmetic statement.

## 3. Source-exact paid inequality at the selected heights

For j>=1, let B_j(u) be the complete signed original waveform
from indices 1<=n<=R_j and let C_j(u) be the complete signed
terminal collar from R_j<n<=N_j, on 0<=u<=T_j.

Because the original response is zero at and before birth, the
complete original waveform satisfies F=B_j+C_j throughout this
physical-time interval. The mathematical birth-collar bound gives

    H_C(j)=int_0^(T_j)|C_j(u)|²du <=16/3.

The *entire* signed mixed term is paid by
|B+C|²<=2|B|²+2|C|², so

    H(T_j)<=2 H_B(j)+32/3.                         (1)

The bulk Gram is exactly, including its diagonal and both ordered
off-diagonal orientations,

    H_B(j)=D_B(j)+2 A_short(j)+2 A_long(j).        (2)

Here
    D_B(j)>=0,  D_B(j)<=4*T_j*(1+T_j),
and elementary response-kernel/harmonic estimates yield
    |A_short(j)|<=4*j²*T_j*(1+T_j).

These inequalities require NO Liouville cancellation. They are
bounds for the original response with |lambda(n)|=1.
Substituting (2) into (1) and retaining the sign of A_long gives

    H(T_j)<=4 A_long(j)
      +(8+16*j²)*T_j*(1+T_j)+32/3.                (3)

The additive Lean module's \`paid_energy_return_scalar\` is a
source-level candidate for the pure real algebra of this
step; the actual real-integral source identifications remain
a separately named Lean formalization obligation.

Conversely, the same square inequality with B=(B+C)-C gives

    H_B(j)<=2 H(T_j)+32/3.

Using D_B>=0 in (2) and paying only the negative part of the
short-gap sector yields

    A_long(j)<= H(T_j)+16/3
                 +4*j²*T_j*(1+T_j).              (4)

The additive \`long_gap_upper_scalar\` is the corresponding
pure scalar source-level candidate. It assumes no positivity of
the signed long-gap aggregate.

## 4. P implies subexponential energy at ALL heights

Assume P, and fix an arbitrary epsilon>0. Apply P at this
strictly positive epsilon, obtain Ceps>=0. Because T_j=5j log 2,
the nonarithmetic allowance in (3) is a polynomial of degree
at most four in j, so there is K_eps>=0 satisfying

    (8+16*j²)*T_j*(1+T_j)+32/3
       <=K_eps*exp(eps*T_j) for EVERY j>=1.

Thus, by the ACTUAL source inequality (3),

    H(T_j)<=(4*Ceps+K_eps)*exp(eps*T_j).

The selected good-scale set {5j log 2 | j>=1} is fixed before eps.
The mesh identity T_(j+1)-T_j=5 log 2 is exact.
For every T>=T_1 there is j with T<=T_j<T+5 log 2.
Since H is a cumulative integral of a NONNEGATIVE physical
waveform square, H(T)<=H(T_j). Therefore

    H(T) <= (4*Ceps+K_eps)*exp(eps*5 log 2)*exp(eps*T).

The finite initial interval 0<=T<=T_1 is bounded by H(T_1)
and absorbed into the constant. No monotonicity of A_long or
of any signed cross term is used.

The conclusion is precisely the original definition

    LiouvilleCausalEnergy.UniformEnergySupplier

with the same all-positive-rate quantifiers. This proves the
mathematical implication P=>UniformEnergySupplier without adding
an arithmetic hypothesis. The corresponding Lean consumer
\`InteriorLongGapImpliesUniformEnergy\` remains a FORMALIZATION
TARGET, not a checked theorem.

## 5. Subexponential Liouville energy implies canonical RH

Let Q_sigma=int_0^infinity exp(-sigma*u)|F(u)|²du for sigma>0.
Apply the all-rate estimate at epsilon=sigma/2. Divide the
nonnegative energy measure dH over the unit time intervals [n,n+1]:

    Q_sigma
      <=sum_(n>=0) exp(-sigma*n)*H(n+1)
      <=C*exp(epsilon)*sum_(n>=0)exp(-(sigma-epsilon)*n)
      <infinity.

The first inequality uses only the original nonnegative
source square; no rate-zero integral is required.

Let for Re z>0,

    Phi(z)=int_0^infinity exp(-z*u)*F(u)du.

Cauchy-Schwarz with Q_sigma (and a locally smaller positive
sigma when derivatives are needed) establishes local absolute
convergence and holomorphy on the entire half-plane Re z>0.

For Re z>1/2, the literal pickup response has the elementary
Laplace transform

    int_0^infinity exp(-z*u)*r_n(u)du
      =n^(-z-1/2)/(z*(z+1/2)), n>=1.

Absolute summability of sum_n n^(-Re z-1/2) justifies exchanging
the complete original signed arithmetic series with the physical
time integral. Since lambda has the classical exact Dirichlet
series zeta(2s)/zeta(s), the ORIGINAL transform is

    Phi(z)=zeta(2z+1)/
          (z*(z+1/2)*zeta(z+1/2)), Re z>1/2.    (5)

There is no hidden positive Liouville coefficient model.
The ordinary zeta function has its standard meromorphic
continuation with the only pole at s=1.

On the CONNECTED open domain
    D={z in Complex | Re z>0 AND z != 1/2},
both sides of

    z*(z+1/2)*zeta(z+1/2)*Phi(z)=zeta(2z+1)    (6)

are holomorphic. Their equality for Re z>1/2 extends
to all D by the complex-analytic identity theorem.
The puncture z=1/2 explicitly handles the zeta pole
and is not removed by an illegitimate cancellation.

Now suppose zeta(rho)=0 with Re rho>1/2 and rho!=1.
Set z0=rho-1/2. Then z0 in D and the LEFT side of
(6) vanishes, but the RIGHT side zeta(2rho) is
nonzero by the absolutely convergent nonvanishing
Euler product because Re(2rho)>1. Contradiction.

Thus zeta has no nontrivial zeros to the right of
Re s=1/2. Its standard functional equation and
conjugation symmetry exclude nontrivial zeros on
the left. Therefore ALL nontrivial zeros lie
on Re s=1/2, which is the canonical Mathlib
\`_root_.RiemannHypothesis\`.

**This is a complete conditional mathematical argument**:
P=>UniformEnergySupplier=>canonical RH. It does NOT supply
the missing arithmetic proof of P or a local Lean
acceptance certificate for the analytic bridge.

## 6. The reverse direction: RH implies P

By the classical summatory Liouville characterization of RH,
for every eta>0,

    L(x)=sum_(1<=n<=x)lambda(n)=O_eta(x^(1/2+eta)).

The same original causal source also has the exact
finite-incidence primitive

    F(u)=int_1^(exp u) L(x)*x^(-3/2)dx.

This gives F(u)=O_eta(exp(eta*u)), and hence
H(T)=O_eta(exp(2*eta*T)).
For any desired positive epsilon, choose eta<epsilon/2
and absorb the finite initial interval. Thus the actual
energy is subexponential at every strictly positive rate.
Apply the converse source estimate (4) and absorb the
polynomial allowance; the precise upper bound P follows.

Consequently the completed MATHEMATICAL equivalence is

    P <=> original all-positive-rate Liouville energy <=> RH

using the standard RH/Liouville-summatory bridge. Equivalence
does NOT mean P has been proved, and the analytic use of
the classical summatory theorem is NOT a new Lean proof.

## 7. Independent hostile checks and noncircularity

* j=1 gives N=32, R=16 and G=1, with nonempty signed
  interior long-gap source.
* At m+g=N, the response kernel is zero at the original
  closed birth endpoint; the strict signedPair mask loses
  no nonzero source coefficient.
* Replacing the Liouville coefficients with all-positive
  coefficients causes exponentially growing causal energy.
  Hence the result cannot follow from sign-free kernel
  positivity, the fifth-power collar or harmonic bounds alone.
* Never take abs(A_long) before the full signed sum; P only
  requires the UPPER bound. No monotonicity of the signed
  aggregate has been assumed.
* The fixed zero-free half-plane Re s>0.8733819666133
  supplies only the strictly positive energy exponent
  0.7467639332266+eta and cannot prove all epsilon>0.
* The finite linear-grid proof uses ALL j>=1 and bounded
  gaps in logarithmic time; an arbitrary cofinal sequence
  would not provide the required global return.
* Both mixed energy terms are retained until Young's
  square inequality pays them. Neither is silently zeroed.
* No \`pickupResponse 0\` positive-part theorem is used.

A second mathematical route may instead use the original
square-divisor inverse Liouville-to-Moebius delay (reviewed in
\`liouville-square-divisor-reverse-counting.md\`) to transfer
uniform Liouville energy to the original full signed Möbius
energy with only polynomial loss. The repository's
\`SignedWaveformEnergyResidueBridge.riemannHypothesis_of_uniformSignedWaveformEnergyBudget\`
is an existing **conditional source proof candidate** for
the Möbius end. Its own source-closure verification and the
Lean square-divisor comparison remain separate NOT_RUN
obligations. This alternate comparison does not replace
the direct analytic proof in Section 5.

## 8. Source publication and exact verification boundary

Additive source:
\`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleInteriorLongGapRH.lean\`
under namespace
\`GRWTSK.NumberTheory.LiouvilleInteriorLongGapRH\`.

Named unproved arithmetic \`Prop\`:
\`InteriorLongGapAllRate\`.

Named, UNPROVED Lean return targets:
\`InteriorLongGapImpliesUniformEnergy\`,
\`UniformLiouvilleEnergyImpliesRiemannHypothesis\`, and
\`InteriorLongGapImpliesRiemannHypothesis\`.
These are not actual Lean theorems; having an implication
in \`Prop\` cannot discharge any antecedent.

Source-level proof candidates only:
\`longGapTime_succ\`, \`paid_energy_return_scalar\`,
\`long_gap_upper_scalar\`.

Remaining formalization obligations independent of arithmetic P:
(1) discharge and compile the prior original waveform/dynamic
cutoff and fifth-power collar energy gates;
(2) compile the complete signed finite Gram/short-gap bound
with actual original coefficients;
(3) compile the fixed logarithmic grid, polynomial absorption
and global energy monotonicity return;
(4) formalize either the original Liouville Laplace/identity
theorem argument to canonical RH or its exact Möbius square-
divisor transport and existing analytic return;
(5) obtain fresh exact-source kernel, expected-interface and
transitive-axiom evidence for every dependency.

Toolchain: Lean v4.34.1, Mathlib
\`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
For the newly published source and the unverified imported
research closure:
\`COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN\`.
No native verifier, background queue, controller, root import,
toolchain update, original mathematical-source edit, local
shared Git lock or user-local untracked file is touched.

The user's explicit limitation is retained: the remaining
arithmetic theorem P is not proved, and RH is not proved.
