# Elliptic curve fibers as inherited typed ports for prime-residue and Putnam comparisons

Local attribution: grwtsk contributors.
Research date: 2026-11-01.
Classification: complete elementary mathematics and Lean source proof candidates; source-specific RH transfer and zero–prime analytic correspondence OPEN.

## Abstract

An existing integral Mathlib \`WeierstrassCurve ℤ\` provides a base object. Each *actual* prime-indexed fiber consists of a \`GoodPointCountCertificate p\` for that same model, its \`ZMod p\` residue class and a prime-power exponent. Curve properties are inherited as *dependent propositions*, not invented status flags. A typed port from one curve to another must map full dependent fiber states, preserve the exact prime, point count, residue key and exponent, and furnish a separately justified arrow on every curve-level predicate it claims to preserve. The port system is the **existing** \`GRWTSK.Topology.PortFiber\`; its \`SourceBoundPort\` and \`SameSource\` retain pinned repository/revision identity.

The new source establishes a real geometric producer: a bijection of the actual affine solution fibers modulo a prime implies equality of the corresponding finite elliptic point counts (including the point at infinity). It also proves exact invariance of all local direct Euler coefficients, the complete signed trace-kernel packet, and every finite product of certified good Euler factors under an observation-preserving port. A many-prime bounded sample stores an index *of occurrences*, so duplicate prime/residue occurrences remain counted. Each complete ordered off-diagonal pair is routed into one of three disjoint sectors: same prime and residue, same prime with different residue, or different primes. Every signed kernel term is retained; changing a kernel requires a proved signed transport defect.

The result makes counting comparisons durable, but **does not** supply cancellation for the unchanged Möbius endpoint source, an all-positive-rate RH bound, a global elliptic BSD consequence or a prime–zero bijection.

## 1. Original repository producers and precise domain

The preexisting source objects, which the new files import rather than replace, are:

- \`GRWTSK.Topology.PortFiber\` in \`GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PortFiberBasic.lean\`, blob \`e51c1b52fede0d883b147ffd196c0efe184a87d8\`. Its \`SourceIdentity\`, \`SourceBoundPort\` and \`SameSource\` already require the same repository and revision to compose pinned ports.
- \`GRWTSK.NumberTheory.OrderedPrimeGroupAddress.PrimeIndex\` and \`ZMod p\` in \`GRWTSK/NumberTheory/OrderedPrimeGroupAddress.lean\`, blob \`88023e2c4940d4572561a564f7c73fc8271aa31f\`. This source distinguishes atomic prime occurrences, residue digits and compressed CRT addresses.
- \`GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport\` in \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimeFiberFiniteTestTransport.lean\`, blob \`53efabe82d6a3bca895e125072c7efba65add1d1\`. Dependent \`Sigma Fiber\` state and exact finite-family square-tent comparison are already available, but its test selector is not an elliptic prime–zero bridge.
- \`GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting\`, \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean\`, blob \`e04dc68d2ca268d88d43725d0963c5414d216c6d\`. Original signed endpoint source, exact ordered gap-sector and terminal-birth decomposition, bounded-degree Gram estimate, and dense-core obstruction. The new typed counting does **not** import this heavy RH proof closure; it has an independent exact finite-double-counting core that can only become an RH consumer after a source-exact adapter.
- The prior elliptic finite-count and real local Euler producers: \`EllipticFiniteEulerWindow.lean\` blob \`48e14ca731bd9b13f8373eea7521e746cb3eab93\`, \`EllipticLocalEulerCoefficientInversion.lean\` blob \`ccb52cf5c8a419200e785d1a41e3fd8aaa0b348d\`, and \`EllipticPowerSeriesLocalFactor.lean\` blob \`61ba3e2fb70554bb42b194f287d2822f2be92433\`. Their prior Lean acceptance status is not changed.

The integral-model certificate must have actual primehood, nonzero discriminant, exact count = \`integralModelCount W p\`, and model equality with the selected base \`W\`. In particular, \`CurveFiber W = Σ p : PrimeIndex, ChannelAt W p\` is not a free residue tag. A generic genus-one torsor with no chosen origin is NOT coerced into an elliptic group. Number-field prime places, bad reduction, CM/non-CM, Selmer and ramification require separate genuine source carriers before extending this *integral rational-model good-prime* implementation.

## 2. Inheritance by fibers, not by matching labels

The source-level data are

\[
W:\mathrm{WeierstrassCurve}(\mathbb Z),\qquad
p:\mathrm{PrimeIndex},\qquad
x:\mathrm{ChannelAt}(W,p).
\]

A channel consists of
\[
(\text{count certificate for } W\bmod p,\ \text{residue}\in\mathbb Z/p\mathbb Z,\ \text{exponent}\in\mathbb N).
\]

Its good-reduction predicate is derivable from its stored certificate and model identity. A curve-level property \(\mathcal C(W)\) becomes \(\mathrm{Inherits}(\mathcal C,x)\equiv\mathcal C(W)\), but this equivalence does *not* assert \(\mathcal C(W)\) without independent mathematical evidence. In particular, labeling a fiber "CM" does not prove complex multiplication or identify a Tate module.

A \`ChannelPort C W V\` has a genuine map of total dependent fibers and proof obligations

\[
p(fx)=p(x),\quad N(fx)=N(x),\quad
\mathrm{residueKey}(fx)=\mathrm{residueKey}(x),\quad
e(fx)=e(x),\quad
\mathcal C(W)\Rightarrow\mathcal C(V).
\]

Identity and composition preserve all five properties and instantiate the existing \`PortFiber\`. A \`sourceBound\` adapter uses the existing immutable \`SourceIdentity\` and invalidation key, with the existing \`SameSource\` composition restriction. This is an observation port, **not automatically an elliptic isogeny, a map of Galois representations or a curve isomorphism**.

The genuine geometric-fiber producer is not a visual resemblance: \`AffinePointFiber W p\` is the subtype of pairs \((x,y)\in(\mathbb Z/p\mathbb Z)^2\) satisfying the actual five-coefficient Weierstrass equation. The total source point count includes one point at infinity:
\[
\#E_W(\mathbb F_p)=1+\#\mathrm{AffinePointFiber}(W,p)
\]
at a good reduction. An *actual* equivalence
\[
\mathrm{AffinePointFiber}(W,p)\simeq
\mathrm{AffinePointFiber}(V,p)
\]
therefore proves equality of the original two integer point counts. A count coincidence alone is **not** that equivalence.

There is now an **explicit cross-curve geometric construction** rather than merely a requested equivalence. If the five integral Weierstrass coefficients of `W` and `V` are equal after reduction in `ZMod p`, the identity on residue-coordinate pairs maps solutions of the equation for `W` bijectively to solutions for `V`. The new `geometricPort_of_coefficients_mod_prime` constructs its forward and inverse maps and proves both inverse laws. Thus `integralModelCount_eq_of_coefficients_mod_prime` follows via the actual affine-fiber cardinality theorem. In particular, changing an integral coefficient by a multiple of p preserves this one special fiber, without by itself proving that the generic elliptic curves are isomorphic or their global L-functions have matching zeros. This is the precise sense in which curves can be related *through the fibers themselves*. To construct a port from such a geometric equivalence at multiple primes, one must still prove good reduction of the target, define the compatible residue channels, carry selected model changes and demonstrate any class inheritance beyond point-count preservation.

A precise hostile counterexample to overcompression is built into the source: for any one channel \(x\), the two states \(\mathrm{withExponent}(x,0)\) and \(\mathrm{withExponent}(x,1)\) have exactly the same prime and residue key but different prime-power exponents. Thus \`residueKey\` is not injective whenever the channel family is inhabited. An address based only on colored residues cannot recover the prime-power terms of an Euler product.

## 3. Bounded many-prime occurrences and exact Putnam partition

\`BoundedSample W ι\` stores

- a finite/indexable occurrence population \(\iota\);
- a full channel observation for every occurrence;
- a bound \(B\) with \(p_i\le B\) for every occurrence.

The original positions \(i\), not a set of \((p,r)\) keys, are the counting grain. Repeated identical primes/residues remain distinct. For any finite \(S\subseteq\iota\) and *arbitrary signed* kernel \(K\), let

\[
P_K(S)=\sum_{\substack{i,j\in S\\i\ne j}}
K(x_i,x_j).
\]

Define three sector sums:

\[
P_{=}=\sum_{i\ne j;\ (p_i,r_i)=(p_j,r_j)}K(x_i,x_j),
\]
\[
P_{\rm intra}=
\sum_{i\ne j;\ p_i=p_j,\ r_i\ne r_j}K(x_i,x_j),
\qquad
P_{\rm inter}=
\sum_{i\ne j;\ p_i\ne p_j}K(x_i,x_j).
\]

The new source proves the exact **three-sector identity**

\[
\boxed{P_K(S)=P_{=}(S)+P_{\rm intra}(S)+P_{\rm inter}(S).}
\]

**Proof:** for each original ordered pair \((i,j)\), either \(i=j\) and all terms are zero, or \(i\ne j\). In the latter case prime indices agree or differ; if they agree, the residue keys agree or differ. A key equality implies prime equality because the prime is the first coordinate of the key. Exactly one of the three indicators holds. Summing the pointwise identity over the original index product proves the equation. Neither sign symmetry nor Gram positivity is used, and there is no division by 2 or deleted orientation.

A separate finite incidence theorem proves
\[
\#\{(i,j)\in S^2:i\ne j,\ (p_i,r_i)=(p_j,r_j)\}
\le |S|^2.
\]
It is deliberately a **coarse counting ceiling**. A sharpened Putnam degree/energy bound requires additional source-specific neighbor/Gram assumptions. This generic inequality cannot imply the analytic RH bound by itself.

For source and target kernels \(K,L\), and a real typed port \(f\), define the **actual defect**
\[
D_f(S;K,L)=
\sum_{\substack{i,j\in S\\i\ne j}}
\left[K(x_i,x_j)-L(fx_i,fx_j)\right].
\]
The new proof gives
\[
\boxed{P_K(S)=P_L(fS)+D_f(S;K,L).}
\]

The defect is not an arbitrarily supplied nonnegative allowance; it is the signed difference of the original two kernels on the same complete occurrence pairs. The trace kernel \(K_{\rm tr}(x,y)=a_xa_y\) is preserved exactly by these certified observation ports, hence its defect is zero. A different analytic or Möbius kernel is **not** thereby controlled.

### Independent finite diagnostic, including collisions

The existing record model source provides good counts \(\#E(\mathbb F_7)=13\), \(\#E(\mathbb F_{19})=27\), so the source traces are \(-5,-7\). For a four-occurrence *routing diagnostic* using residue keys \((7,0),(7,0),(7,1),(19,0)\), and weights \((-5,-5,-5,-7)\), all 12 ordered off-diagonal pairs divide exactly as follows.

| Sector | Ordered pair count | Signed trace-product sum |
|---|---:|---:|
| Same prime, same residue | 2 | 50 |
| Same prime, different residue | 4 | 100 |
| Different primes | 6 | 210 |
| **Complete source packet** | **12** | **360** |

Independently,
\[
(-5-5-5-7)^2-(25+25+25+49)=484-124=360.
\]
This is an exact finite integer diagnostic for the counting algebra, not a kernel-checked Lean fixture or a proof that those residue channels encode actual elliptic rational points. It tests duplicate occurrence retention, both ordered orientations, and the signed/diagonal bookkeeping.

## 4. Real Euler consumer and boundary with the RH source

Each channel also exposes the actual finite good local reciprocal factor
\[
P_{p,x}(T)=1-a_pT+pT^2
\]
and the complete source-dependent direct recurrence \(c_0=1,c_1=a_p,c_{n+2}=a_pc_{n+1}-pc_n\). A certified port preserves these values at every exponent. The new finite Euler-window theorem proves

\[
\boxed{
\prod_{i\in S}P_{p_i,x_i}(1/p_i)
  =\prod_{i\in S}\frac{\#E_{x_i}(\mathbb F_{p_i})}{p_i}.
}
\]

The products **retain every occurrence**, including repeated primes. To call one such product a standard truncated Hasse–Weil Euler product, additionally prove distinct prime coverage and the correct bad-prime exclusion; otherwise it is an indexed repeated-factor packet.

For the canonical Riemann Hypothesis programme the target remains the original Möbius endpoint source, with complete signed pair kernel

\[
K_{\mu,T}(m,n)
=\mu(m)\mu(n)\int_0^T r_m(u)r_n(u)\,du,
\]
for every original ordered off-diagonal pair \(1\le m,n\le\lfloor e^T\rfloor\). The existing Putnam source partitions actual indices by additive gap, terminal birth, and residual dense core. Its degree-based count does not prove an all-positive-rate bound for that core. An elliptic trace kernel \(a_{p_i}a_{p_j}\) is a DIFFERENT arithmetic source. Type grouping, prime color correspondence, finite field count equality or local Euler identity does not identify these kernels.

To use elliptic fibers toward RH, the next source-bound supplier must construct an exact index-to-channel observation map (including coverage and multiplicities) and prove either the identity of the complete Möbius kernel with its pulled-back elliptic kernel or a one-sided comparison with **all** source-dependent defects, omitted indices, bad-prime and repeated-prime terms retained. Then, separately, prove the all-positive-rate signed upper bound on adequately covering scales consumed by the existing \`PickupEndpointQuadrature.riemannHypothesis_of_endpoint_good_scales\`.

For a good elliptic curve, the local logarithmic Euler coefficients are the Frobenius traces \(\alpha_p^k+\beta_p^k\), whereas the zeta logarithmic derivative has prime-power weights \(\log p\). Their analytic explicit formulas are related in form but not equal termwise. Local roots of \(P_p\) are not globally the nontrivial zeros of \(\zeta\) or \(L(E,s)\). The required analytic prime–zero transfer must specify its precise \(L\)-function, gamma/conductor factors, prime-power weights, test function, zeros and multiplicities. None is supplied by routing alone.

## 5. Source declarations and verification

New additive modules (full SHA pins recorded after publication):
- \`GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberPorts.lean\`;
- \`GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberCounting.lean\`.

Notable declarations:
\`ChannelAt\`, \`CurveFiber\`, \`AffinePointFiber\`, \`affineFiber_card_add_one\`, \`GeometricFiberPort.pointCount_eq\`, \`Inherits\`, \`ChannelPort\`, \`ChannelPort.identity\`, \`ChannelPort.comp\`, \`system\`, \`sourceBound\`, \`BoundedSample.route\`, \`residueKey_not_injective\`, \`sameResiduePairs_card_le\`, \`orderedPacket_eq_three_sectors\`, \`tracePacket_route\`, \`orderedPacket_eq_route_add_defect\`, \`finite_good_euler_window\`.

Source-publishing and proof-acceptance facets are separate. These are **Lean SOURCE_PROOF_CANDIDATES**, not a claim of successful compilation, fresh kernel replay or transitive axiom audit. All those acceptance facets remain \`NOT_RUN\`. The mathematical elementary finite identities and partition arguments are complete on paper. The affine fiber count equivalence uses ordinary finite-type counting. The finite routing example is exact arithmetic but not Lean proof evidence. No new hypothesis asserting the RH cancellation estimate or elliptic BSD result has been inserted.

Related repository issues: #1550 and #1551 (elliptic direct local coefficients and genuine native Euler factor), #1049 (record-curve good prime counts and unresolved rank-32 descent), #230/#227 (existing port/atlas arithmetic compatibility), #1530/#1548 (genuine signed arithmetic residues), and the original Möbius Putnam endpoint source.

## 6. Next theorem

The next nontrivial analytic supplier, distinct from the type infrastructure, is **a source-exact comparison of the complete Möbius endpoint ordered kernel with a finite (possibly multi-prime, multi-curve) routed observation packet, with a proved upper bound on all residuals that is strong enough for the original good-scale criterion**.

This is not proved here; it is an explicit missing mathematical comparison. In particular, a finite collection of elliptic local Euler factors is insufficient to determine the full nontrivial zero set. The port structure now records exactly what an attempted comparison must preserve so that this issue is visible rather than hidden by a color or curve-family label.

No foreign repository was edited, no historical source replaced, and no unauthorized native or scheduled execution was performed.
