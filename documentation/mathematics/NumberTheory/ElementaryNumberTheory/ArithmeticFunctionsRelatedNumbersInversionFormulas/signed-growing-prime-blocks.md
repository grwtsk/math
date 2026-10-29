# Signed growing prime blocks and the first negative-channel localization

Local mathematical attribution: grwtsk contributors.

## Source and publication status

Initial inspection: grwtsk/math@059c2324f0ef90dd165e95e26afed4bcbdcc9797.
Updated integration base: 5f13aa3d5f71acba2cc4f2f8c34ac50ba275f777.
The concurrent additions in the intervening five commits are preserved. In particular,
FiniteDivisorFloorDiscrepancy (blob 35f10f1a34844b03a84a0a24c0dea48962c2ecc7)
and its finite-prime-block-cancellation note are reused rather than overwritten.
The seven complete new Lean files accompany this note. They are source proof
candidates, with no sorry/admit bodies and no new research axioms. This is not
an elaborated or kernel-accepted inventory: compilation, fresh kernel replay,
and the complete transitive axiom audit are NOT_RUN.

The seven Lean files are integrated unchanged from the exact GitHub blobs
identified in issue #1419. The mathematical note and passive manifest have
editorial integration updates; original transfer pins do not certify these
edited documentation bytes. The containing main commit identifies this source
revision. Compilation, fresh kernel replay and transitive axiom audit remain
NOT_RUN. External diagnostics, operational receipts and controller state remain
outside this repository.

No new paper theorem is imported. The arithmetic and finite analytic derivations
here use the existing GRWTSK source and pinned Mathlib. The attached old
radical-logarithm task is not reopened; the new period keeps the prime SQUARES,
not merely their support. Historical acceptance remains attached to its own pins.

## 1. Literal source and cutoff-separated step

Keep the original pickupResponse, wholePickup, pickupEnergy and pickupCross.
For a nodup list P of primes representing a finite set, define

    K_[](../../Moebius/m,u)=r_m(u),
    K_(p::P)(m,u)=K_P(m,u)-K_P(p*m,u).

block_perm proves independence of the chosen presentation order. Repeated-prime
lists are not used in the arithmetic extraction theorem. Rough(P,m) means
p does not divide m for every p in P, equivalently gcd(m,prod P)=1 here.
Let N=floor(exp u). The exact source identity is

    F(u)=sum_(1<=m<=N, Rough(P,m)) mu(m) K_P(m,u),       u>=0.

For a new prime p not in P, first split the literal old cofactor sum:

    F(u)= sum_(m<=N, Rough(p::P,m)) mu(m) K_P(m,u)
          -sum_(m<=floor(N/p), Rough(p::P,m)) mu(m) K_P(pm,u).

The second interval is an ordinary positive cofactor interval. Numbers with
p squared dividing the old cofactor vanish by the existing exact Mobius prime
multiplication theorem. They are not discarded from a nonzero surrogate.
The dilated cutoff may be extended to N only after block_support proves
K_P(pm,u)=0 when pm>N. These steps are implemented, not source-identity fields.

A list P(T) can change with the outer horizon. For each fixed T the same list
is used for all inner times 0<=u<=T. The identity remains valid with its moving
inner inventory N(u); old and new stages return exactly the same F(u). A changing
representation has no unrecorded jump in the original waveform. No derivative
of P(T), prime density, or number-of-stages allowance is introduced.

## 2. The signed channels and the exact negative budget

At the new stage set

    A_m=max(K_P(m,u)-K_P(pm,u),0),
    D_m=max(K_P(pm,u)-K_P(m,u),0).

On the actual new rough support define

    C_+(u)=sum mu(m) A_m,
    C_-(u)=sum mu(m) D_m,
    B_-(u)=sum D_m.

Then

    F=C_+-C_-,
    F^2=C_+^2-2 C_+ C_-+C_-^2.

The signed correlation C_- need not be positive, despite D_m>=0. The mixed
term is kept. An OPTIONAL, coarser absolute certificate is

    |F| <= W_(p::P)+2 B_-,
    W_Q=sum_(Rough(Q,m),m<=N) K_Q(m,u).

There is an important cutoff correction. For pm>N,

    D_m=max(-K_P(m,u),0),

not generally zero. Thus the exact budget is

    B_- = sum_(m<=N/p, Rough(p::P,m)) max(K_P(pm)-K_P(m),0)
          +sum_(N/p<m<=N, Rough(p::P,m)) max(-K_P(m),0).

The same equation with the factor mu(m) gives C_-. The second term vanishes
at the initial P=[2,3] stage by the proved two-prime positivity. It must remain
at later stages. Budgets of successive complete stages are NOT added as if
independent approximation losses; the source does not change between them.

## 3. Completed two-prime result

With a=1/sqrt(p), b=1/sqrt(q), p<=q, and t=sqrt(m) exp(-u/2),

    K_[p,q](../../Moebius/m,u)=(2/sqrt(m))*Psi(a,b,t),
    Psi=(1-t)_+-(a-t)_+-(b-t)_++(ab-t)_+.

The five exact pieces, with all boundary values, are

    (1-a)(1-b)  for t<=ab,
    1-a-b+t     for ab<=t<=b,
    1-a         for b<=t<=a,
    1-t         for a<=t<=1,
    0           for 1<=t.

They prove nonnegativity from the source formula, not from Hermitian symmetry.
For [2,3], expansion of the four rough-cofactor channels gives

    W_[2,3](../../Moebius/u)=sum_(n<=exp u) gamma(n) r_n(u),

where gamma is zero on multiples of 4 or 9, is +1 on the remaining multiples
of 6, is -1 on the remaining multiples of 2 or 3, and is +1 otherwise.
It has period 36 and period sum 4. The exact finite table establishes

    9 sum_(n=1..r) gamma(n)-r <=14,       0<=r<36,

with equality at r=13 and r=31. The periodic prefix theorem extends this to
all integers, without an asymptotic or prime-counting hypothesis. Exact finite
Abel summation then uses the monotone nonnegative causal weights. The terminal
weight r_(floor(exp u)+1)(u) is proved zero, not silently removed.

The source candidates prove, for all u,T>=0,

    |F(u)| <= (2/9)exp(u/2)+26/9-(28/9)exp(-u/2),
    H(T) <= (4/81)(exp T-1)+(208/81)(exp(T/2)-1)+(676/81)T.

The old endpoint target is at most this energy upper allowance plus 1/4.
The energy proof integrates the explicit squared majorant using its proved
antiderivative. Its upper exponential rate is still ONE. Neither a smaller
constant nor removal of the old T^2 multiplier supplies an all-positive-rate
bound. The new and old valid upper bounds can be combined by minimum.

## 4. Exact third-prime counterexample and a new localization

At m=1,u=log(10), adding prime 5 gives

    K_[5,2,3](../../Moebius/1,log 10)
      =2(1-1/sqrt 2-1/sqrt 3-1/sqrt 5+1/sqrt 6+1/sqrt 10)
      < -899/62500 <0.

The proof uses rational inverse-square-root enclosures, justified by squaring
positive quantities. It is not a floating-point sign test.

A new source-specific result localizes this entire negative channel. Expanding
the eight hinges and checking their ordered affine pieces gives

    D_m=0 unless exp(u)/16 < m < exp(u)/9,       m>=1.

This is a coarse certified enclosure of the true negative support, not a fitted
interval. All seven inverse-square-root enclosures used in its proof are exact
rational inequalities. The same support equation applies to B_- and C_-; both
retain Rough([5,2,3],m), hence the actual coprimality to 30.

For x=exp u>=16 set

    M_30(n)=sum_(1<=m<=n, gcd(m,30)=1) mu(m),
    a=floor(x/16),
    D(n)=max(K_[2,3](../../Moebius/5n,u)-K_[2,3](../../Moebius/n,u),0).

Here D(1)=D(floor(x)+1)=0 are proved causal/support facts. Centered Abel summation
therefore gives the EXACT signed return

    C_-(u)=sum_(n=1..floor x)
             [M_30(n)-M_30(a)] [D(n)-D(n+1)].

Consequently

    |C_-(u)| <= sum_n |M_30(n)-M_30(a)| |D(n)-D(n+1)|.

Only indices with n+1>x/16 and n<x/9 can contribute. This pays the one-index
Abel boundary, preserves every mu coefficient, and removes the unrelated prefix
before the negative annulus by a proved zero-boundary telescope. For x<16 the
initial center boundary is not erased; the general centered Abel identity retains
center*D(1). The finite initial range can be treated directly.

This is the next concrete quantitative supplier. It does not prove that these
local prefix correlations have a power saving. A small unweighted negative-kernel
constant does not establish such a saving either.

## 5. Growing periods and discrepancy are fully explicit

For any finite prime list P, define the ACTUAL periodic coefficient

    gamma_P(n)=prod_(p in P) [0 if p^2|n; -1 if p|n but p^2 does not divide n; 1 otherwise].

The source proves

    W_P(u)=sum_(n<=exp u) gamma_P(n) r_n(u),
    L_P=(prod P)^2,
    gamma_P(n+L_P)=gamma_P(n).

The first equality follows from exact finite dilation reindexing and the fact
that a local p-factor is invariant under multiplication by a distinct prime q.
It is not asserted merely from a matching name or normalization.

The formal mean and discrepancy price are the literal one-period quantities

    alpha_P=(1/L_P) sum_(n=1..L_P) gamma_P(n),
    V_P=sum_(n=1..L_P) |gamma_P(n)-alpha_P|.

The exact prefix residue formula is

    G_P(N)=alpha_P*N + G_P(N mod L_P)-alpha_P*(N mod L_P),
    |G_P(N)-alpha_P*N|<=V_P,       V_P<=2L_P.

The formal source-weighted consequence is

    |W_P(u)-alpha_P*sum_(n<=exp u)r_n(u)|<=V_P*r_1(u).

This remains literal for P=P(T). In particular L_(p::P)=p^2 L_P, so the crude
discrepancy price grows by that factor. No O_P(1) is used as a scale-independent
constant. The complete absolute certificate retains

    |F(u)| <= alpha_(p::P)*sum r_n(u) + V_(p::P)*r_1(u) + 2B_-(u).

For comparison, elementary CRT multiplication of the local period sums gives
alpha_P=prod_(p in P)(1-1/p)^2 when the primes are distinct. This CLOSED PRODUCT
EVALUATION is a written derivation, not an additional implemented Lean theorem
in these files: each local sum is (p-1)^2 over p^2 residues, and CRT gives the
bijection to the product residue space. The formal discrepancy theorem already
uses the fully specified finite mean and does not need that evaluation as a
hypothesis. Exact finite diagnostics check the product formula in several cases.

A fixed P has alpha_P>0. Replacing the remaining Mobius coefficients by 1
therefore leaves order exp(u/2), and an order exp(T) energy bound. Growing P(T)
does not automatically improve this: both V_(P(T)) and B_- remain payable.
No all-scale exponent strictly below one is proved in this increment.

## 6. Coordination with the secondary forcing and source-only mass

Read source aa338898c69ed0b233ea3bb5c28a04cd11e229e1 and the note at
5ae226e6f7f4d7c718bac53160b7db2529858640. Its obstruction concerns the SECOND
coefficient source (1+Omega(n))*mu(n), not the original mu source. Its complete
Euler-product/Laplace obstruction remains written mathematics, not a checked
Lean theorem. The finite source proofs also remain NOT_RUN at their own scopes.

At main 059c2324, issue #1415 supplies SourceMassComparison,
SourceInverseMassSubexponential, and
layer_bound_of_source_mass_inverse_subexponential. The new signedStageEnergy
is proved equal to pickupEnergy at the original horizon. This gives the exact
source-only comparison

    mass(j)*integral_0^Tj (C_+-C_-)^2 <= E_j(e_0),

not a coercivity statement for every vector. The new consumer calls the existing
#1415 theorem with ONE positive mass sequence and its reciprocal bound at EVERY
positive rate. It constructs no mass witness and cannot be reapplied to the
secondary vector. No old accepted result is relabeled unverified by this note.

## 7. Verification and integration

See the companion passive TOML for every declaration, import, content hash,
command, and evidence category. The exact finite preflight checks arithmetic
reindexing, repeated-prime guards, signed channels, inherited negative cutoff,
period tables, rational hinge positivity, Abel identities, and rational root
certificates. Floating actual-source checks are labeled separately and are not
rigorous interval enclosures. No Lean process, kernel checker, remote runner,
new zeta-zero computation, or all-scale arithmetic estimate was executed.

The controller should copy ONLY the GRWTSK and docs payloads into a clean workspace
at the current main, reconcile path collisions rather than overwrite them, preserve
concurrent work and dependency pins, and use the canonical Git identity. The
external-evidence directory and audit driver stay outside grwtsk/math. New compiler
repairs need new hashes and fresh affected verification.

## Next mathematical execution

Prove a uniform power-saving bound for the centered rough-Mobius prefix/variation
sum in negativeCorrelation_prefix_budget, keeping its exact moving annulus and
the source mixed term, rather than replacing the remaining mu(m) by one.

## 8. Concurrent floor discrepancy is returned to the actual growing stage

The concurrent `FiniteDivisorFloorDiscrepancy` proves a bound for the literal
double-divisor floor sum. Its gamma/source identification is still written
mathematics in that note. The new `PickupPrimeBlockFloorReturn` does not assume
that missing identification. It constructs an independent source-matched prime
insertion proof, applying the existing unit weighted-floor-error lemma at the
base and retaining both quotient cutoffs at every induction step.

For the ACTUAL periodicCoefficient already identified with the unweighted
signed block sum, set

    G_P(x)=sum_(1<=n<=floor(x)) gamma_P(n),
    alpha_[] = 1,
    alpha_(p::P) = (1-1/p)^2 alpha_P.

The proved candidate recurrences are

    gamma_(p::P)(n) = gamma_P(n)
      -2 1_(p|n) gamma_P(n/p) + 1_(p²|n) gamma_P(n/p²),
    G_(p::P)(x) = G_P(x)-2G_P(x/p)+G_P(x/p²).

The p² term is not removed. All real-cutoff floors commute with integer
quotients by an explicit pinned-Mathlib floor lemma. Subtracting alpha*x
and using the complete 1, -2, 1 combination gives the uniform bound

    |G_P(x)-alpha_P*x| <= 4^|P|       (x>=0).

It is valid even when Q(P)^2 greatly exceeds x. Applying the finite Abel
identity with the actual causal response and its zero terminal coefficient
gives the completed source comparison

    |W_P(u)-alpha_P*sum_(n<=exp u)r_n(u)| <= 4^|P| r_1(u).

This replaces the available crude 2Q(P)^2 discrepancy allowance with a cost
controlled by the NUMBER of selected primes. It preserves the exact signed
negative correlation and its optional absolute budget:

    |F(u)| <= alpha_(p::P)*sum r_n(u)
              +4^(|P|+1) r_1(u)+2 B^-_(P,p)(u).

No claim that the last two terms can be omitted is made. The true source
remains C^+ - C^- and its energy includes the complete mixed term.

For a scheduled TOTAL stage P(T) satisfying |P(T)|^2<=T, the explicit elementary
exponent comparison is

    4^|P(T)| <= exp((log4)^2/(4 delta))*exp(delta T), delta>0.

Since r_1(u)<=2, the entire displayed discrepancy is bounded by
2 exp((log4)^2/(4 delta)) exp(delta T), uniformly in the inner u. This supplies
an every-positive-rate estimate for the DISCREPANCY channel, independently
of the enormous period. It is not an every-rate bound for F or H: the arithmetic
main coefficient and the mu-weighted positive/negative correlations remain.
The schedule is a sufficient cardinality condition, not a prime-density premise.

The exact double-divisor/gamma identity has also been checked in finite rational
diagnostics. The new Lean consumer does not depend on those diagnostics or on
an unimplemented identification with that alternate double-divisor presentation.

## 9. Acceptance, publication and exponent status

All seven files have complete proof scripts and no new research axioms or holes.
They remain SOURCE_PROOF_CANDIDATE: there was no Lean executable and no native
build/replay/audit. Possible elaboration/API/tactic repairs remain. Static source
review corrected the natural interval-cardinality namespace against pinned
Mathlib; that is not compiler acceptance. The accompanying manifest distinguishes
all source hashes and passive verification requests. Any repair requires
fresh source-bound verification; publication alone is not acceptance.

This increment does NOT prove H(T)<=C exp((1-eta)T) for any fixed eta>0, and
therefore does not supply RH or SourceInverseMassSubexponential. The unchanged
source-only mass comparison is instantiated on the exact signed stage energy;
the secondary-forcing all-vector obstruction is neither applied to that source
nor promoted from its written proof to an accepted Lean theorem.

The specific next arithmetic estimate is a power saving for the signed rough
prefix/variation pairing of the first negative channel, uniformly in the moving
annulus, followed by its use together with C^+ and the mixed energy term.

## Complete signed arithmetic frontier after integration

The negative-channel-only continuation above is superseded by the complete
source obligation. On the separate schedule P_j={primes p<=j}, N_j=2^j,
L_j=floor(sqrt(N_j)), the proposed sufficient supplier is one constant B>=0
such that, for every j and every 0<=X<=N_j,

    |sum_(L_j<n<=X, P_j-rough(n)) mu(n)/sqrt(n)| <= B N_j^(3/8).

This signed estimate is UNPROVED. The existing rough-bilinear-distinct-core
note records the rectangular correlation and written variation return. Its
proper thin-strip bound does not bound the full interaction. A conditional
fixed 7/8 energy rate would still not discharge the every-positive-rate RH
target. Paying 4^|P| discrepancy under |P|^2<=T does not supply cancellation
of the arithmetic main term; do not conflate these two stage schedules.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0cdc6860ab3e92fcfeeebc9de563ae95363d4eb4252b12706fbae9370c2394f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
