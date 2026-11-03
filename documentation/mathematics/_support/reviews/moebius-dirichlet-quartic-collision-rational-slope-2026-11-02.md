# Exact original Möbius fourth-order ratio collision and rational-slope source connection

Research date: 2026-11-02 (America/Los_Angeles).
Baseline main inspected: grwtsk/math `e79c8ca76ee44b69987872c603d8ab6f61c5005d`.
Local mathematical attribution: grwtsk contributors. External pinned Mathlib contributors retain their own attribution.
Lean pin: leanprover/lean4:v4.34.1. Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
**Status:** mathematical finite identities and new Lean SOURCE PROOF CANDIDATES. Parsing, expected-types, complete import compilation, fresh kernel replay and transitive axiom audit **NOT_RUN**. Canonical RH and fixed-character Dirichlet GRH **OPEN**.

## 1. Actual retained original source

The previous family campaign published `MoebiusDirichletSignedCrossRatioMoment.lean` at immutable blob `6dbfa55e99e7d54b7ac5c3e0a94db8efaf9b0caf`, and the real-character cross result `MoebiusDirichletSignedCrossReality.lean` at blob `082806186c6af9661c1c98844517e9e0da0baab8`. They contain source proof candidates for

  sum_(chi mod q) familyCross_chi(T)^2
    =phi(q)*sum_(a unit)|B_(q,a)(T)|^2.

The full ordered source inventory consists of pairs 1<=m,n<=N(T)=floor(exp T), with the original if m!=n mask. The TRUE source is

  H_T(m,n)=mu(m)*mu(n)*pickupResponseGram(T,m,n),

with mu from `MertensPrimitive.lean` (blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`), real birth-gated pickupResponse and literal time-integrated Gram K_T. The second Dirichlet-character coefficient is conjugated. No masks, Hilbert dimensions, sign randomizations, replacements or time supports have been changed.

The authentic ratio packet is

  B_(q,a)(T) =
    sum_(1<=m,n<=N, m!=n, IsUnit(n mod q), m*n^(-1)=a mod q)
       mu(m)*mu(n)*K_T(m,n),

where the denominator-unit guard is part of the *source*, while the unit-ratio selection occurs separately in Parseval. The former is NOT equivalent to requiring all four quartet indices to be units before the ratio-class square is formed. In the final complete second moment, nonzero selected unit-ratio terms do force numerator and denominator unit conditions for both pairs.

The preceding repository has an independently authored gcd-time-shift at `MoebiusCausalGcdTimeShift.lean` (blob `db0052901eca3050ed0ce812d3e0e7675c8fab05`) and a guarded Möbius multiplicativity theorem in `MoebiusStrongOddCoprimeDilation.lean` (blob `6164a4de724f2a29ef4304304f87b48d3ec78b41`). They are consumed unchanged in the new final bridge.

## 2. Generic finite square-to-collision formula

For ANY finite inventory S, finite key space β, real signed weights w(x), and ratio classification key(x), define fiber mass B(a)=sum_(x in S,key(x)=a) w(x).

The exact elementary identity is

  sum_(a:β) B(a)^2
    =sum_(x,y in S,key(x)=key(y))w(x)w(y).            (1)

The selected-key variant for a finite U subset β is

  sum_(a in U) B(a)^2
    =sum_(x,y in S,key(x)=key(y),key(x) in U) w(x)w(y). (2)

The entire RHS is nonnegative as a sum of squares, but its individually signed terms need not be. The new Mathlib-only modules `MoebiusRatioCollisionFinite.lean` and `MoebiusRatioCollisionFiniteOn.lean` contain real finite proof candidates and explicit whole-sum nonnegativity. Neither imports RH, GRWTSK analytic continuation or original arithmetic assumptions.

## 3. Actual original fourth-order Möbius source

Let S(T)={1,...,N}². For p=(m,n) define

  key_q(p)=(m mod q)*(n mod q)^(-1),
  w_(q,T)(p)=
     if m!=n and IsUnit(n mod q)
     then mu(m)*mu(n)*K_T(m,n)
     else 0.

The fully signed four-index ORIGINAL collision is

  Q_q(T)=sum_(p,t in S(T),
              key_q(p)=key_q(t),
              IsUnit(key_q(p)))
             w_(q,T)(p)*w_(q,T)(t).                  (3)

Each nonzero quartet contains four literal mu factors and two original pickupResponseGram factors, with exactly the prior born-wave support.

The new `MoebiusDirichletOriginalQuarticCollision.lean` authors an explicit source proof body `originalRatioPacket_eq_realCast` (the preceding complex ratio packet is the complex cast of a genuine REAL signed packet for every ratio, including nonunit ratios), followed by the exact `allCharactersRealCross_secondMoment_eq_quartic`:

  sum_(chi mod q) familyCross_chi(T)^2 = phi(q)*Q_q(T). (4)

No covariance, independence, zero-free analytic claim or outside bilinear estimate enters (4). It is an identity, not an upper bound of Q_q(T).

## 4. Large modulus removes MODULAR aliases, including q=N²

For any 1<=m,n,r,s<=N, products m*s and n*r lie in [1,N²]. If q>=N² and

  m*s == n*r (mod q),

then m*s=n*r as NATURAL numbers. Even at equality q=N² there is no ambiguity between product 0 and product q, because all products are positive. The standalone module `MoebiusDirichletRatioCollisionModulus.lean` provides explicit candidate proofs for this boundary-sensitive statement and for the equivalence

  (m*n^(-1) == r*s^(-1) mod q)  IFF (m*s=n*r),

under **unit denominator guards** and q>=N². No prime hypothesis is required for the equivalence itself: composite q retains its actual unit selection.

Define Q_exact(q,T) by the exact same original four-index weighted sum (3), replacing equality of two ZMod ratio keys with the integer equality m*s=n*r, while retaining the unit-ratio selector, true denominators and offdiagonal weights.

The source candidate `originalQuarticCollision_eq_exactSlope_of_large_modulus` gives

  Q_q(T)=Q_exact(q,T) if q>=N(T)².                   (5)

Thus the genuinely signed Dirichlet SECOND MOMENT becomes

  sum_chi familyCross_chi(T)^2 = phi(q)*Q_exact(q,T), (6)

at every sufficiently large q. No loss of original signs or diagonal conventions occurs.

The new pure `MoebiusReducedRationalSlopeUnique.lean` uses `Nat.Coprime.dvd_of_dvd_mul_left` and `Nat.dvd_antisymm` to show two coprime reduced fractions with equal integer cross products are identical. It then combines this fact with the pinned ZMod ratio collision result to make reduced rational slope labels INJECTIVE when q>=N² and denominator residues are units. For q a prime greater than N², ALL original indices <=N are units. Each modular ratio class then corresponds to one primitive rational slope, including multiple pairs (kr,ks) on that slope.

**Crucial time-uniformity warning:** q>=exp(2T) is a growing-modulus regime. It CANNOT be used as a fixed-q identity on all T and does not prove `FixedModulusRatioMomentEveryRate`.

## 5. Actual Möbius and physical-time common-dilation identity

At a rational slope represented by (r,s), its original multiples are (kr,ks). The maintained source has exact coprime-guarded multiplicativity

  mu(kr)=mu(k)*mu(r), mu(ks)=mu(k)*mu(s),

when gcd(k,r)=gcd(k,s)=1. It also has the genuine physical time-shift

  K_T(kr,ks) = (1/k)*K_(T-log k)(r,s).

Therefore the new source candidate `MoebiusRationalSlopeCausalDilation.lean` has

  mu(kr)mu(ks)K_T(kr,ks)
   =mu(k)^2*mu(r)mu(s)*(1/k)*K_(T-log k)(r,s).       (7)

This is an exact **signed** arithmetic and causal identity for the COPRIME multiplier sector. It shows common coprime squarefree dilations have a fixed primitive-slope sign. It does NOT yet assert all non-coprime k terms vanish; that needs the squareful-source proof to cover the ENTIRE ratio packet, and the further rational-slope grouping into finite k sums.

Mathematical implication: in a prime modulus larger than N², the ratio-class square does not access modular alias cancellation. After the missing squareful factorization case, one can organize each exact reduced slope as a nonnegative common-dilation magnitude squared, but no quantitative fixed-modulus all-rate estimate follows from that organization alone.

## 6. Finite diagnostics genuinely performed in this continuation

Independent arbitrary integer-signed pair-weight exact collision tests:
  (q,N)=(1,5),(5,8),(8,8),(25,5),(29,5),(64,8),
        (67,8),(103,10),(17,12).
Every test gave EXACT integer identity (1)/(2) and the corresponding expanded modular collision sum, zero mismatches. At q=N² even when q is composite (25,5) and (64,8), there were ZERO modular ratio aliases among unit-index pair collisions.

Original real causal Gram, actual integer Möbius and birth-gated K_T, with 55-digit mpmath T=log(N+0.4), original complex/real ratio packets and the quadruple sum compared for five cases:
| q | N | original ratio moment | alias quartets (nonzero weighted pairs) | abs residual |
|--:|--:|----------------------:|-----------------------------------------:|-------------:|
| 5 | 8 | 1.99678716249708059 | 76 | 8.157e-56 |
| 8 | 8 | 0.38376270314574529 | 36 | 3.059e-56 |
| 29 | 5 | 0.18819061848519918 | 0 | 0 |
| 67 | 8 | 1.10131235286026543 | 0 | 0 |
| 103 | 10 | 2.21499183788126852 | 0 | 8.157e-56 |

The nonzero alias counts at q<N² demonstrate why rational-slope equality cannot be substituted for the modular collision at FIXED small q. The q>N² rows match the exact rational-slope correlation. These are finite numerical diagnostics, not interval-certified estimates or Lean acceptance.

A separate 55-digit check of the actual signed causal common-dilation identity (7) for T=5.2 and 23 multiplier/slope samples with gcd(k,r)=gcd(k,s)=1 gave maximum absolute residual ≈4.59e-56. The numerator/source was never replaced by a random-sign proxy.

## 7. What is proved on paper, what remains open and the exact acceptance boundary

New additive Lean proof-candidate modules:
1. `MoebiusRatioCollisionFinite.lean`: arbitrary real finite ratio-collision quadratic.
2. `MoebiusRatioCollisionFiniteOn.lean`: selected ratio keys, full character unit-scope handling.
3. `MoebiusDirichletRatioCollisionModulus.lean`: exact modular↔integer slope equivalence for q>=N², INCLUDING equality boundary.
4. `MoebiusReducedRationalSlopeUnique.lean`: uniqueness of reduced coprime rational slopes.
5. `MoebiusDirichletOriginalQuarticCollision.lean`: true original Möbius four-index Gram identity, ratio-packet real cast, q>=N² exact rational-slope return.
6. `MoebiusRationalSlopeCausalDilation.lean`: original signed Möbius factorization and reciprocal k time-shift with BOTH coprimality premises.
7. `MoebiusDirichletQuarticCollisionAcceptance.lean`: passive #check/#print axioms, UNEXECUTED.

No old source, original physical kernel, fixed signed low-gcd target, root imports or pins are changed. No axiom/sorry/admit/unsafe declaration prefix has been added, but this lexical check is NOT a transitive proof audit.

**All formal verification facets are NOT_RUN:** pinned Lean parser/elaboration, exact expected types, full imported closure, independent fresh kernel replay and transitive axioms. The canonical Noe proof-automation skill from `grwtsk/noeaaeue` main has blob `5292446e4ef1398ba928d8ad339b662415166f19` and does not confer new host execution or queue authority. No native dispatch was performed.

**Open mathematical frontier:** `FixedModulusRatioMomentEveryRate` asks for a genuine fourth-order all-rate bound at FIXED q and is not supplied by the q>=N² exact slope identity. The full common-dilation packet (including non-coprime/squareful indices) is not yet an accepted Lean theorem. The actual `PrimitiveDirichletFamilyLowGcdEveryRate`, causal energy-to-prefix, Mellin/explicit-formula/conductor/gamma/pole/zero correspondence, canonical RH and Dirichlet GRH remain OPEN.

A useful next arithmetic problem is to prove the COMPLETE primitive-slope expansion with the necessary squarefree/coprimality selector and then investigate fixed-q modular alias collisions WITHOUT using a growing-modulus shortcut. That is a genuinely different quantitative problem from these exact finite reorganizations.
