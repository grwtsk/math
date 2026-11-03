# RH source continuation: inverse-root Gaussian heat radius, critical smoothing schedule, and zero obstruction

Research date 2026-11-02. Mathematical source attribution: grwtsk contributors; assistance on derivation and Lean source by OpenAI ChatGPT.
Status: independent unconditional ordinary mathematical error estimate; related zero-free/zero-spike deductions strictly conditional. The new Lean files are SOURCE_PROOF_CANDIDATES and are NOT compiled or kernel accepted. Canonical RH remains OPEN.

## 1. What was examined on current main

The current pinned scan used grwtsk/math/main commit 4bb1633f3b8c0741fd97c4b796678b6b27ecc0a2, root Git tree 69cf58f8c300c1c51902045a79f69ab1577ba137 and analytic-theory subtree 36043bb3cfd80c656626bc50a03e45b950232a50. Its immediate zeta analytic-theory directory has 191 files with names Moebius*.lean. The previous v4 graph pinned 174, every prior Git blob unchanged. Seventeen additional committed sources were inspected at least by exact tree identity. The new Gaussian sources, original adaptive decoder, finite physical faults, complex L-family prefix and full Hermitian gcd branches were individually read.

Relevant unchanged source pins:
- MoebiusGaussianLogHeatSource.lean: e7443337b95b8491492acfa120809f6873f77ef1; actual sourceHeatCoeff, sourceHeatRadius, original-index coefficient error.
- MoebiusGaussianHeatStabilityReturn.lean: 6ada761844e06d099811f06fea89db897ca1290e; actual full original pickupEnergy <=2 heated observed energy+2 positive radiusEnergy and reverse inequality; weightedErrorMass and true causal response.
- MoebiusGaussianHeatVanishingSchedule.lean: 47291584104530cfdf59475a50c494a821de44a9; previous artificial s(T)=exp(-2T) with radius energy<=16T from crude 1/sqrt(n)<=1.
- MoebiusOriginalSingleRateZeroFreeReturn.lean: ab3511f8ff0366757942c7480fc89860c548424a; true positive energy on fixed dyadic J->weighted original L2->zero-free Re(s)>(1+r)/2 at one rate r, with explicit standard unported analytic gates.
- MoebiusOriginalLaplaceZeroBarrier.lean: 1a66b83553886e96fc227fa9eeb8b92f4bc8a6a8; hypothetical offcritical zero yields exact original energy-growth obstruction after standard Laplace proofs.
- MoebiusFarCompleteUpperTransfer.lean: 11b3913a25626bbd4e1a593b50c31e82bac6abee; exact original source cross=collar+short+reduced-close+full signed FAR.
- MoebiusFixedCoreFarCommonEnergy.lean: 077bb08259d4f8090a4881441be8e0a60dc66b4f; original fixed compensated core vs FAR, one true diagonal cancellation and distinct exact signed masks.

The attached v5 source graph retains every one of 191 pinned current Möbius module identifiers, 105 carefully curated nodes and 134 explicitly typed relations, including new physical fault, Gaussian cache, complex L-family, and certified/physical/gauge relationships. This is a SOURCE-BOUNDED graph, not a complete proof acceptance over 191 modules.

## 2. Recover the ACTUAL inverse-root response weighting

The original physical response is the exact causal birth-gated
r_n(u)=2(n^(-1/2)-exp(-u/2)) for u>=log n, zero beforehand.
The logarithmic Gaussian source introduces a separate artificial heat time s>=0 and EXACT original-index coefficient
  mu_s(n)=mu(n)*exp(-s*(log n)^2).
The source-minus-heat coefficient error radius is
  eta_s(n)=|mu(n)|*(1-exp(-s*(log n)^2)).
Every original integer n, squareful zero coefficient, sign, birth, endpoint and both ordered signed Gram orientations are retained through the heat/error ledger.

For 0<=T, N=floor(exp T)>=1 and n in the actual endpointIndex T={1,...,N}, log n lies in [0,T].
By 1-exp(-x)<=x for x>=0 and |mu(n)|<=1,
  0<=eta_s(n)<=s*(log n)^2<=s*T^2.                   (1)
The ACTUAL source weighted radius mass in DecoderPositiveResponse is
  A_s(T)=sum_(n=1)^N eta_s(n)/sqrt(n).               (2)
Do NOT replace the original reciprocal-square-root weight by 1 unless needed. Ordinary monotone integral comparison gives, without PNT, squarefree-density information, or any cancellation,
  sum_(n=1)^N n^(-1/2)
    <=1+int_1^N x^(-1/2) dx
    =2sqrt(N)-1<=2sqrt(N)<=2exp(T/2).              (3)
The N=1 endpoint case is included, and T=0 gives zero radius because log 1=0.

Equations (1)-(3) give the unconditionally correct source-specific stronger payment
  A_s(T)<=2s*T^2*exp(T/2), s,T>=0.                 (4)
The only new unported PINNED Lean lemma is OriginalInverseRootInventoryTarget, the finite sum inequality (3). This is a standard monotone finite series comparison; it carries NO Möbius signed cancellation and NO RH premise. Source theorem bodies deducing (4) and the subsequent energy bounds from it are added without axioms.

## 3. The COMPLETE positive physical-radius energy

The previously published genuine positive response-wave theorem is
  R_s(T)=sourceHeatRadiusEnergy(s,T)
         <=4*T*(weightedErrorMass(sourceHeatRadius(s),T))^2.
It is the actual nonnegative square interval integral of the complete positive source error wave (all diagonal and ordered cross terms). Using (4),
  R_s(T)<=4*T*(2s*T^2*exp(T/2))^2
         =16*T^5*s^2*exp T.                         (5)

For ANY fixed real a choose artificial heat time
  s_a(T)=exp(-a*T)>0.
Then (5) yields the exact family
  R_a(T):=R_{s_a(T)}(T)
       <=16*T^5*exp((1-2a)*T), T>=0.               (6)

Consequences, each unconditional in ORDINARY mathematics:
- At a=1/2: s(T)=exp(-T/2), radius<=16*T^5. This is a *more active* Gaussian log-frequency smoothing schedule than old exp(-2T), yet the full source error has only polynomial growth, hence is payable at every positive exponential rate.
- At a=1: s(T)=exp(-T), radius<=16*T^5*exp(-T), exponentially decaying for large T, stronger heat than old a=2.
- At old a=2: s(T)=exp(-2T), radius<=16*T^5*exp(-3T), exponentially decaying and sharper asymptotically than the previous source estimate 16*T. This follows directly from actual 1/sqrt(n) weights, not any cancellation.
- For a>1/2, error radius has exponential decay with polynomial factor; for a=1/2 it is polynomial. For a<1/2, this PARTICULAR absolute-weight argument gives an exponentially growing envelope and by itself cannot certify all-positive-rate error. This is a sufficiency threshold of the method, not a lower bound on actual arithmetic errors.

The signed HEATED square energy H_a(T)=sourceHeatEnergy(s_a(T),T) is NOT known to be contractive. SourceHeatLogHeatSource already includes an explicit scalar counterexample to signed energy contraction. We never infer H_a(T) is small from coefficientwise damping.

The exact old source comparison remains:
  E(T)=pickupEnergy(T)<=2H_a(T)+2R_a(T),    T>=0,
and conversely H_a(T)<=2E(T)+2R_a(T).
For a=1/2, this gives
  E(T)<=2H_(1/2)(T)+32*T^5,                (7)
  H_(1/2)(T)<=2E(T)+32*T^5.                (8)
These are source-exact, nonsynthetic, noncircular, and preserve the physical time T.

## 4. One fixed rate and hypothetical-zero test, with all assumptions visible

The original dyadic grid is T_J=J*log 2, J>=1, independent of the desired exponential rate. Suppose, ONLY AS A HYPOTHESIS, the actual Gaussian HEATED signed physical square energy at a=1/2 obeys
  H_(1/2)(T_J)<=C_r exp(r*T_J)
for all J>=1 with some fixed r>0, C_r>=0.

The elementary exponential series yields
  T^5<=5!*r^(-5)*exp(r*T)
      =120/r^5*exp(r*T), T>=0.
Equation (7) then gives for every original dyadic J
  E(T_J)<=D_r exp(r*T_J),
  D_r=2*C_r+3840/r^5.                            (9)

The PREEXISTING source-level dyadic-to-Laplace theorem (still with explicit unported standard analytic supplier Props) gives the genuine ZERO-FREE half-plane
  zeta(s)!=0, s!=1, for Re(s)>(1+r)/2.          (10)
This is a concrete numerical source-specific conditional result, not proof of RH: the rate-r HEATED SIGNED square-energy hypothesis is not discharged by the Gaussian error lemma.

Conversely suppose HYPOTHETICALLY that a genuine nontrivial zeta zero rho exists with 1/2<beta=Re rho<1. For every 0<r<2beta-1 and every real K, there is a dyadic J>=1 such that
  H_(1/2)(T_J)>K exp(r*T_J).                    (11)
Indeed, if (11) failed for a particular K, cap it by max(K,0) to obtain an all-J observed heat energy bound. Then (9)-(10) would exclude the supposed rho, contradiction. This is a genuine conditional POSITIVE observation-growth obstruction on the ORIGINAL physically signed heat construction.

The new proof candidate source MoebiusGaussianHalfRootZeroFreeBridge.lean has bodies implementing (9), (10) and (11). It requires OriginalInverseRootInventoryTarget and the PREVIOUSLY explicit RH-INDEPENDENT standard analytic gates:
  OriginalLaplaceRightLineIdentityTarget,
  WeightedWholePickupLaplaceHolomorphyTarget,
  LaplaceProductIdentityTheoremTarget,
  DyadicOriginalEnergyCeilingTarget.
There is no imported RH, all-rate signed FAR, all-rate heated energy, or actual offcritical zero premise except in the clearly hypothetical-zero theorem.

## 5. Independent original-index finite diagnostic

An independent deterministic Möbius sieve evaluated the true finite positive error radius (2) for the ACTUAL original integer cutoff and Gaussian coefficient at sample T. These finite floats are NONCERTIFYING and are not used to prove (1)-(11). Representative output:

  T  N=floor(exp T)  a      actual A_s(T)     proved mass envelope
  2         7         0.5       1.163361             8
  2         7         2         0.088178             0.398297
  6       403         0.5      13.657412            72
  6       403         2         0.002943             0.008886
 10     22026         0.5      64.529317           200
 10     22026         2         0.000025             0.000061

The direct computed 4*T*A_s(T)^2 (still only an upper bound for actual physical radiusEnergy, not its direct quadrature) also stays below 16*T^5*exp((1-2a)*T). No numerical zeta-zero test or proof of a new RH estimate is claimed.

## 6. Source graph and strict verification boundary

The v5 typed JSON graph updates the exact maintained immediate Moebius-source inventory from 174 to 191 at pinned source commit 4bb1633f3b8c0741fd97c4b796678b6b27ecc0a2 (17 new, all 174 old exact blob identities retained). It has 105 curated nodes, 134 typed relations, no dangling IDs. New candidate Lean modules are listed separately rather than falsely included in the committed 191.

Related complex L-family sources preserve Hermitian coefficient conjugates and separate source birth/Abel identities. Gaussian logarithmic coefficient filtering here is not the Rodgers–Tao xi heat deformation nor the older CM adaptive Fourier kernel; without a source-exact identification their moment bounds do not transport. Finite physical-fault and decoder intersection modules only control reconstruction error; they cannot supply the missing all-rate signed HEATED waveform energy. A topological or chart-shift exact return does not imply signed arithmetic cancellation. No original μ(n), physical response, birth, cutoff, root import or toolchain pin is changed.

The new source files are additive, static-scanned for no authored axiom/sorry/admit/unsafe/native_decide, and comment delimiters. The original positive inverse-root finite sum inequality is fully justified in ORDINARY math, but its Lean implementation remains the explicit UNPROVED elementary OriginalInverseRootInventoryTarget. Every theorem body and inherited Lean proof remains subject to parser/elaboration/expected-type/kernel and full transitive axiom verification. Compilation remains DEFERRED per user, all those facets NOT_RUN. No CI/Noe worker/native verification/automation is initiated.

The global all-positive-rate bound for the ORIGINAL complete signed FAR or fixed compensated source, equivalent to RH under existing elementary packets, remains OPEN. This advance improves genuine source-error transport and strengthens which Gaussian observations would suffice; it does not itself establish the signed arithmetic cancellation.

Background: original repository source modules above (Git pinned), elementary integral comparison for 1/sqrt(n), and standard Laplace conditional zero-free return. No external mathematical heat/xi theorem is imported.
