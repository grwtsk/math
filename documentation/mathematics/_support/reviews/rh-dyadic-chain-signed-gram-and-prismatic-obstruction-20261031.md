# RH continuation: actual signed dyadic-chain Gram, full residual, and geometric/prismatic loss audit

Local attribution: grwtsk contributors. Investigation: 2026-10-31 PDT / 2026-11-01 UTC. Classification: independently inspectable finite arithmetic argument; Lean SOURCE_PROOF_CANDIDATE. No new proof of RH, no unconditionally improved zero-free region, no all-positive-rate supplier, and no cofinal certified zero-count gap.

## Source-bound dependency atlas

- Canonical target `math#15`: Mathlib `_root_.RiemannHypothesis`; the original zeta carrier and analytic order appear in `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalZeroDivisor.lean` (`68178fd4b3342993981858930aa4440f57bd4052`), with positive-height reflection and multiplicity budgets in `PositiveHeightCountDeficit.lean` (`e439289a4605b5c05f94286075477efea0b95473`) and cofinal two-unit gap in `CofinalTwoUnitNumericalReflectionGap.lean` (`b32437383f21a4d44f23b4f56f843c0e19725927`). Issues `#1231`, `#330`, `#106`, `#135` remain open; noncomputable finite sets are not numerical certificates.
- Original Liouville coefficient: `LiouvilleCausalEnergyTarget.lean` (`a00aaa07c067b4c88203372870b5d5d151de0de4`), with Mathlib's integer `ArithmeticFunction.liouville`, not a random sign source. Actual weighted-prefix integral and complete signed all-shift source: `LiouvilleWeightedPrefixSquareCriterion.lean` (`d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`). Ratio-two cancellation: `LiouvilleWeightedPrefixDoubling.lean` (`d3e65086541a95b27edf6faad3d47a956dce92c7`). Two-adic weighted chains: `LiouvilleWeightedPrefixTwoAdicChains.lean` (`64d18220eda5e09966c52cf222060652d878f431`). Issues `#1548`, `#1530` retain the unresolved all-positive-rate signed residual.
- Exact finite-prime valuations, squarefree and PNT seam: `PadicPrimeLogarithmicDensity.lean` (`7764823b46a9eb47422a2e9036d888ca818ac775`), `PadicMobiusPrimeWindowSeam.lean` (`027d24046d0563be5cd66e01d7ecf3235d99f801`), `MobiusWeightedPrefixPNTReturn.lean` (`84d9b0613e11335088936cf80d1f341749cdedad`), and `PadicMobiusHighPrimeFixedPower.lean` (`f92b660f347f832cf05474ffbf01fc48eab368e1`). Retain all prime powers before the squarefree filter, full signed `mu=U_y-2V_y`, exact floor carries and `mu*log=Lambda`.
- True Gödel metric/spatial projector/vorticity and source-index doubling: `GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean` (`f5d8a65fd1e4e59e97e139b3fc63829028c3c662`), `GodelObserverRootTransport.lean` (`5460b8845cdd1d4c713ebec250eeef0951437569`) and `GodelPickupDilationTransport.lean` (`8b6b9587a22e724e18062cc0f2ff4d89c8c9e470`). Vorticity is NOT Levi-Civita connection torsion. `#1542`, `#1543`, `#1547` remain source-candidate investigations.
- Mathematical complete 2-adic delta ring: `GRWTSK/CommutativeAlgebra/DyadicPadicDelta.lean` (`53d5f46e7613933bb3a946d540163b8588aedda5`). The complete `PadicInt 2` delta structure and a signed finite cochain are already present; a full prismatic complex and injective zeta-class return are NOT. `#132`, `#1524`, `#1525`.
- Three-phase positive ellipsoid: `GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/ThreePhaseEllipsoidQuadratic.lean` (`942cf33f238a7f4ff4776da19214049969c58aad`) and `ThreePhaseEllipsoidOrbit.lean` (`a931ffa2a8956663e01b01e5f8f6f3903cc230d3`); original `Q(z)=3||mean(z)||^2+residualEnergy(z)`, including the coupled residual metric `||a||^2+||b||^2+||a+b||^2`. `#1496`, `#1497`, `#1500`.
- External numerical/analytic inputs: `GTimG/QuasiRiemannTracker` PR #99 merged at `fc2f46afbfda62351055d3c12fcacd4f6916cc63`, all-moduli Dirichlet nonvanishing at theta0=`0.8733819666133`; PR #102 head `ad7b7edd47bee2fdff34165da5cc14cc0331db2c`, Candidate/Main.lean Git blob `ea52b389645935c66daa8416a29b20ac0555a3df`, externally reported successful verify/admission but STILL OPEN/UNMERGED at this inspection, theta1=`0.87338196661320751993`. Its finite rational reserve, Bernstein interval covers, five counting windows, conductor parameters and error budgets do not supply zero-count completeness or a source-preserving zeta arithmetic cancellation bound. `anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`, `zeta23` (Alpöge--Furman, arXiv:2608.13637), reports its own Comparator/axiom audit for asymptotic simple critical-line and distinct-zeta-zero proportions. This is independent of and not portable to the local Lean v4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` build.

## New finite source theorem and proof

Let `lambda(n)=(-1)^Omega(n)` for positive integers. For any positive `q` and integer `K>=0`, define `s_j=lambda(2^j q)`, `A_K=sum_(0<=j<K) s_j`, `D_K=sum_j s_j^2`, and the COMPLETE ordered Gram `G_K=sum_(i,j<K) s_i s_j`. From true complete multiplicativity and `lambda(2)=-1`, `s_j=(-1)^j lambda(q)`. Thus `A_K=lambda(q) * (1-(-1)^K)/2`, `D_K=K`, and

    G_K = A_K^2 = (1-(-1)^K)/2 in {0,1},
    G_K-D_K = (1-(-1)^K)/2 - K.

This identity includes both orientations of every off-diagonal pair, every prime power and `K=0`. At `q=1,K=2`, the diagonal is 2 and the ordered cross contribution is -2. The displayed bounded Gram is a new explicit Lean source candidate using the genuine Liouville coefficient, although the underlying alternating-chain mechanism was already identified in prior #1548/#1530 source reviews. It is not claimed as novel independent analytic number theory.

For two possibly different bases `q,r`, the complete mixed block is exactly

    G_(q,r)(K,L) = lambda(q)lambda(r) * alpha_K * alpha_L,
    alpha_K=(1-(-1)^K)/2.

Its sign may be positive or negative. The step from bounded single-core blocks to the FULL weighted prefix is invalid without controlling all distinct-core blocks. Classifying different cores requires odd `q` (otherwise the chains overlap). An unrestricted positive Gram is not a Weil positivity condition.

The source-weighted two-level theorem is more directly connected to the original consumer. For integers `1<=q` and `2q<=N`, put `w_N(m,n)=1/max(m,n)-1/(N+1)` and

    E_(q,2q)(N)=lambda(q)^2*w_N(q,q)
      +lambda(2q)^2*w_N(2q,2q)
      +2*lambda(q)*lambda(2q)*w_N(q,2q).

The actual sign identities give

    E_(q,2q)(N) = (1/q-b)+(1/(2q)-b)-2*(1/(2q)-b)
                 = 1/(2q),       b=1/(N+1).

The terminal terms cancel exactly, so no end-face error has been thrown away. This is a complete genuine signed two-level terminal-weighted inequality `0<E=1/(2q)`, independent of N in its stated domain. The unweighted all-level Gram O(1) should NOT be transported to the weighted all-level Gram without proving its separate kernel identity; the original two-adic chain closed form remains its own formalization gate.

Finite reference diagnostic: 15,025 integer/Fraction assertions on actual `lambda` for `1<=q<=100`, `0<=K<=20`, weighted `2q<=N<2q+35`, plus mixed-core controls. This checks only finite instances, not Lean parsing or a universal mathematical proof. The universal finite proof is the algebra above. The separate Lean module is not compiled, kernel checked or audited.

## Moving-prime signed remainder and quantitative consequence

For the actual finite-prime sign `a_y(n)=(-1)^(sum_(p<=y)v_p(n))`, set `U_y=mu^2*a_y` and `V_y=mu^2*a_y*1_[sum_(p>y)v_p(n) odd]`. Coefficientwise `mu=U_y-2V_y` exactly, including squareful zeros. At `y=log Y`, for every integer window `0<=X<Y`, the centered identity is

    sum_(X<n<=Y) V_y(n) - rho_y*(Y-X)/2
      = ((sum_(X<n<=Y) U_y(n)-rho_y*(Y-X)) - sum_(X<n<=Y)mu(n))/2,

with `rho_y=delta_y/zeta(2)` and `delta_y=prod_(p<=y)(p-1)/(p+1)`. The existing small-prime error is `sqrt(Y)*exp(O(sqrt(log Y)))` up to logarithms. Using the externally proposed theta1 AND a separately justified classical zeta zero-free-to-Mobius/Liouville summatory transfer gives the conditional fixed-power `O(Y^0.87338196661325)` on the complete centered V window, not the `O_epsilon(Y^(1/2+epsilon))` target.

The existing unique giant-prime factorization for `z^2>=Y` and `y<=z` expresses the giant-prime sector as signed cofactors times exact prime-count differences, but its complementary medium-prime multi-factor sector remains unbounded at square-root scale. For `z>=Y/2`, the giant-prime sector alone is positive `pi(Y)-pi(max(z,X))`; it cannot be hidden as an absolute-value-small remainder. The dyadic-chain theorem gives NO bound on this medium-prime or signed cross-core remainder, so the best justified fixed-energy exponent is unchanged by this increment. Under the separate external proposal/transfer the limiting alpha1 is `2 theta1-1=0.74676393322641503986`; the safe working exponent `0.7467639332265` is lower than the merged conditional limit `0.7467639332266`. Without external #102 and the classical transfer, the new chain theorem yields no improved global energy exponent. ALL_RATE is OPEN.

## Gödel / ellipsoid typed comparison and exact loss

Let `V=R^K`, choose the actual coefficient functional `F_q(a)=sum_(j<K)lambda(2^j q)*a_j`, and positive ambient Gram `Q_E(a)=sum_j a_j^2`. Both are typed finite real quadratic observations. The exact signed transport defect for the arithmetic rank-one observation is

    F_q(a)^2-Q_E(a) = sum_(i!=j)lambda(2^i q)lambda(2^j q)*a_i*a_j.

For unit weights `a_j=1` this equals `alpha_K-K`, precisely the finite theorem. A geometry-only isometry preserving `Q_E`, including a Gödel observer metric shift, does NOT preserve `F_q` without an independent intertwining equality on the arithmetic coefficient and time-window maps. A positive three-phase ellipsoid `Q(z)=3||mean(z)||^2+residualEnergy(z)` with coupled residual metric `||a||^2+||b||^2+||a+b||^2` similarly does not identify the mixed-sign Liouville quadratic source. Example: signed vector `(1,-1)` against positive uniform `(1,1)` has arithmetic sum zero but unsigned coherent sum two; squared readouts differ by four. This is a quantitative obstruction, not an RH-facing upper estimate.

A full operator return would require a bounded map from the ORIGINAL signed amplitude+terminal-kernel carrier into the Gödel observer tangent-space/ellipsoid chart, an exact readout equation `F_source = F_geometry + R_signed`, and a bound on the complete signed `R_signed` and all mixed terms. The present module constructs none of those typed maps. The actual Gödel source has torsion-free Levi-Civita connection and nonzero observer vorticity; conflating them would invalidate the comparison. Original phase, Gram rank, overlap, fourth-witness and Cěch defects are NOT paid by the scalar chain identity.

## Prismatic tube and injectivity obstruction

Use the ACTUAL complete 2-adic delta coefficient ring `A=Z_2` with Frobenius `phi(x)=x`, `delta(x)=(x-x^2)/2`, and ideal `I=(2)`. The source proves the algebraic delta structure/completeness and `delta(2)=-1` is a unit. This is the standard mathematical crystalline prism, but the repository has not constructed its derived-complete prism site or source-exact prismatic `RGamma` and a cohomological return to zeta multiplicities.

A concrete stage attempt uses the cochain `C_src^0=A^K`, differential zero, and residue stage `C_k^0=(A/2^k A)^K`, differential zero, coefficientwise reduction `r_k`. The chain map commutes with these zero differentials and compatible stage maps `C_(k+1)->C_k`; the induced H^0 map has exact kernel `(2^k A)^K`. At `k=1`, opposite signs `+1,-1` coincide and their difference 2 is lost; reduction is not injective. At all fixed finite k, its kernel is still nonzero. The complete inverse-limit map requires a separately established separated-completion comparison, and even its injectivity would not show that the target cohomology of an ACTUAL off-line zeta-zero class vanishes. This toy coefficient-stage comparison is NOT itself prismatic cohomology and is NOT promoted as one. No target group with proved vanishing and no injective zero-to-class map exists here. `#132/#1524/#1525` remain OPEN.

The loss ledger is therefore: `mod 2^k` kernel `2^k A` per coefficient, unsupplied chain-comparison defect, unsupplied torsion and denominator control, unsupplied filtration/completion exchange, unsupplied source-to-zeta multiplicity injection and unsupplied target vanishing. Setting any one loss to zero without proof would conceal the exact RH-strength supplier.

## Certified numerical counting and terminal status

A true cofinal set of heights with `U_H<C_H+2`, where `U_H` is an independent COMPLETE zeta-zero upper count and `C_H` an actual certified critical-line subset multiplicity credit, excludes each possible off-line reflected pair. The external Alpöge--Furman asymptotic two-thirds simple-line and five-sixths distinct-zero results admit infinitely many abstract two-unit deficits at unbounded total counts; no uniform strict two-unit gap is obtained. Finite-height verification is bounded by its terminal height. In `#135` the remaining quantitative supplier is a source-correct rational enclosure of three normalized contour edge integrals tightly isolating a total count; no cofinal such certificates were produced by this increment.

**New mathematical result:** finite exact signed dyadic chain Gram and original-kernel two-level packet, entirely unconditional by algebra; all K, positive q, N>=2q. **Not claimed:** improved zero-free threshold, bound on regular distinct-core covariance, `WeightedPrefixSquareAllRate`, prismatic vanishing, Gödel arithmetic cancellation, or RH. **Verification:** source candidate only; COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Passive issue updates do not authorize any native runner, CI, scheduler or external execution.
