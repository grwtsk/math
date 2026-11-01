# Finite elliptic Euler windows and BSD source-comparison ledger

**Mathematical attribution:** grwtsk contributors. **Research date:** 2026-10-31.
**Status:** complete finite mathematical arguments, Lean source proof candidates, conditional adapters, and open analytical suppliers. No unconditional BSD theorem or new analytic zero-free estimate.

## Abstract

The genuine good-reduction finite-field count N_p=p+1-a_p determines the reciprocal local Euler polynomial P_p(T)=1-a_p T+p T². At T=1/p, P_p(1/p)=N_p/p exactly. We carry the complete prime-square term and bad-prime distinctions into finite Euler windows, show the resulting exact logarithmic prime-power obstruction to Goldfeld's asymptotic criterion, and bind the existing record rank-32 candidate's source counts at p=7 and p=19 to a two-prime rational window. We compare these results with existing elliptic reduction, Mordell–Weil, Selmer, geometric and prismatic sources, proving independent elementary obstructions to two proposed source transfers. No rank-32 certificate, degree-two zero-count theorem, prismatic elliptic comparison or BSD proof is asserted.

## 1. Main statements and finite mathematical proofs

### Theorem A. Local point-count Euler inversion

Let E be a smooth elliptic curve over Q with a specified integral Weierstrass model, and let p be a prime of *good reduction*. Define
\[
N_p=\#E(\mathbb F_p),\quad a_p=p+1-N_p,\quad
P_p(T)=1-a_pT+pT^2.
\]
Then
\[
\boxed{P_p(p^{-1})=N_p/p.}
\]
**Proof:** Substitution gives 1-(p+1-N_p)/p+1/p=N_p/p. This is rational algebra and uses no analytic continuation or BSD.

The complete reciprocal coefficients are c(0)=1, c(1)=-a_p, c(2)=p, c(k)=0 for k>=3. In the unitary normalization L(E,s+1/2), the polynomial is
\[
P_p(p^{-1/2}t)=1-(a_p/\sqrt p)t+t^2
\]
and thus b_E(p)=-a_p/sqrt(p), b_E(p²)=1, b_E(p^k)=0 for k>=3. These are coefficients of 1/L, *not* L. The square contribution does not vanish.

The corresponding source proof candidates in namespace
`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow` are `frobeniusTrace`, `reciprocalCoefficient`, `goodReciprocal`, `goodReciprocal_coefficients`, `goodReciprocal_at_inverse`, `normalizedGood_from_source`, and `normalized_coefficient_prime_square`.

### Theorem B. Finite windows and actual source counts

For a finite set S of distinct good primes,
\[
\boxed{\prod_{p\in S}P_p(1/p)=\prod_{p\in S}N_p/p.}
\]
This is the product of Theorem A, not an infinite Euler product theorem. The source Lean `finite_good_window` proves a more general indexed finite packet formula while *retaining repeated indices*. To interpret that index set as distinct primes, primehood and injectivity of the prime labels remain explicit proof obligations.

The existing model in `Record4239Curve.lean` is
\[
y^2+xy=x^3-Ax+B.
\]
It has source-level exact integer enumeration theorems N_7=13 and N_19=27 and model discriminant tests at both primes, with status SOURCE_ONLY/NOT_RUN. The new source uses Mathlib's actual five-coefficient `WeierstrassCurve ℤ`, with (a1,a2,a3,a4,a6)=(1,0,0,-A,B), and attempts proofs identifying the original equation, discriminant and complete finite model enumeration, *not* a competing group law.

Consequently a_7=-5 and a_19=-7; hence
\[
P_7(T)=1+5T+7T^2,\quad P_{19}(T)=1+7T+19T^2,
\]
\[
\boxed{P_7(1/7)P_{19}(1/19)=\frac{13\cdot27}{7\cdot19}=\frac{351}{133}.}
\]
All numbers come from the original source declarations, not an unverified new numerical run. The associated algebraic recurrence t_0=2,t_1=a_p,t_{n+2}=a_p t_{n+1}-p t_n has t_2=a_p²-2p=11 at *both* primes. This proves an identity of recurrence values; interpreting t_n as the trace of *actual* Frobenius on a Tate module, hence claiming N_(p^n)=p^n+1-t_n, requires the separate Frobenius characteristic-polynomial comparison.

The true finite torsion dividend is 13 and 27 coprime. For any natural m dividing both, m=1; this elementary implication appears in `joint_order_divisor_one`. With *separately proved* good-reduction prime-to-p specialization at two distinct good primes it would rule out all rational torsion primary components. The present source does not claim that specialization map has been constructed or that Mordell–Weil rank 32 follows.

### Theorem C. Exact Goldfeld logarithmic prime-power ledger

For every finite good-prime set S, with its actual positive N_p,
\[
\log\prod_{p\in S}N_p/p
=\sum_{p\in S}\log(1-a_p/p+1/p).
\]
Let α_p and β_p denote the actual Frobenius eigenvalues at a good prime. Hasse/Weil gives α_p+β_p=a_p, α_pβ_p=p and |α_p|=|β_p|=sqrt(p), which are **established external geometric theorems** not supplied by this finite algebra. Since 1/sqrt(p)<1, the convergent logarithm expansion gives
\[
\log(N_p/p)
=-\sum_{k\ge1}\frac{\alpha_p^k+\beta_p^k}{kp^k}
=-\frac{a_p}{p}-\frac{a_p^2-2p}{2p^2}+R_p.
\]
For the *actual remainder* R_p (not an adjustable sign), the exact bound
\[
|R_p|\le\frac{2}{3}\frac{p^{-3/2}}{1-p^{-1/2}}
\]
follows by |α_p^k+β_p^k|<=2p^(k/2) and 1/k<=1/3 for k>=3. Its prime sum is absolutely bounded. However the quadratic term -(a_p²-2p)/(2p²) can be order 1/p, and therefore its sum cannot simply be declared O(1) or discarded. The **first remaining arithmetic seam** is joint first/second Frobenius-trace prime correlation, even before an analytic central-zero comparison.

Bad primes use Mathlib's actual local branch: split multiplicative P=1-T, nonsplit multiplicative P=1+T, additive P=1. The corresponding N_p at a bad prime is the count of nonsingular points of the minimal special fiber, not the total number of points on a singular plane cubic. They need independent reduction-model certificates and remain a finite, explicitly retained correction set for a fixed curve E/Q.

Goldfeld's 1982 conditional Euler product criterion, as given by Arshay Sheth (IMRN 2025), requires the actual asymptotic product over primes
\[
\prod_{p\le x}N_p/p\sim C(\log x)^{\mathrm{rank}E(\mathbb Q)},
\]
where the period/analytic normalization is
\[
C=(r!/L^{(r)}(E,1))\sqrt2\,e^{r\gamma},
\quad r=\operatorname{ord}_{s=1}L(E,s).
\]
Under the cited original theorem's hypotheses, this implies elliptic RH and *rank equality*, not automatically the refined BSD formula. Sheth's converse outside a set of finite logarithmic measure assumes elliptic RH. The present finite identities do not prove the required asymptotic.

### Reciprocal Dirichlet series and signed source consumer

The genuine b_E(n) is multiplicative with good local values (1,-a_p/sqrt(p),1,0,...) at exponents 0,1,2,3,...; multiplicative bad prime values (1,-a_p/sqrt(p),0,...) with a_p=+1 or -1, and additive bad prime values (1,0,...). Expanding a **finite** product produces a finite Dirichlet polynomial with every cofactor, collision and prime-square coefficient retained. Passing to an infinite Euler inversion is valid initially at absolute convergence (for example Re(s)>1 in the unitary variable) and requires an analytic theorem outside it.

An honest weighted prefix is B_E(X)=sum_{n<=X}b_E(n), and its squared or Fejér-window energy must keep the full signed off-diagonal packet. The Liouville/Möbius sources in #1530 and #1548 are different functions: their positive-Gram or RH endpoint theorems do *not* apply to B_E until an exact map and signed residual inequality is proved. Positive rank predicts central vanishing: no central nonvanishing may be assumed.

## 2. Exactly separated BSD propositions and normalizations

For E/Q, rank BSD asserts ord_(s=1) L(E,s)=rank E(Q). The refined formula, with finite Sha, is
\[
L^{(r)}(E,1)/r!=\frac{\Omega_E \,\operatorname{Reg}_E\,|\Sha(E/\mathbb Q)|\prod_{\ell}c_\ell}{|E(\mathbb Q)_{\rm tors}|^2}.
\]
Choose a global minimal Weierstrass equation and the Néron differential, Ω_E=integral over all E(R) of |ω| (both components when applicable), and c_l=[E(Q_l):E_0(Q_l)]. The canonical height H(P)=lim 4^(-n) h_x([2^n]P) induces B(P,Q)=(H(P+Q)-H(P)-H(Q))/2; the regulator is the determinant on a basis of the **full free quotient**, with Reg=1 at rank zero. An index-d sublattice changes the determinant by d². An unrelated ellipsoid Gram has no implied arithmetic equality.

For the completed elliptic function use Λ(E,s)=N_E^(s/2)(2π)^(-s)Γ(s)L(E,s) and functional equation Λ(E,s)=w_E Λ(E,2-s), with center 1. In unitary variable L(E,s+1/2) the center is 1/2; the usual degree-two nontrivial-zero window corresponds to 1/2<Re(s)<3/2 before shift. A zero count must retain central multiplicity, the conductor and gamma factor. For number fields, distinguish prime ideals, local norms, all real/complex factors and continuation hypotheses. For function fields, distinguish constant field, geometric Jacobian versus torsor and normalized variable q^(-s). Neither field category coerces automatically to rational BSD.

## 3. Dependency atlas: fifteen mathematical connections

Evidence keys: E = established external mathematics within stated scope; S = Lean SOURCE_PROOF_CANDIDATE (new or historical), compiler/kernel NOT_RUN unless separately noted; F = exact finite arithmetic at its stated scope; C = conditional adapter with real missing hypotheses; O = open or obstructed transfer.

| # | Actual producer, domain and source | Consumer, exact missing theorem | Status |
|---|---|---|---|
| 1 | Good finite-field E/F_q, Hasse/Weil Frobenius trace, source #1049 count | Finite count -> degree-two trace recurrence -> **actual Tate Frobenius** characteristic polynomial | E, F/S, C |
| 2 | Pinned Mathlib `WeierstrassCurve.localPolynomial` with local reduction branches | Good trace/count -> actual local factor and finite product; prove chosen minimal-model identity | E, F/S, C |
| 3 | Goldfeld/Sheth fixed E/Q prime-product criterion | Complete finite windows -> **asymptotic with MW-rank exponent** -> rank equality and elliptic RH | E conditional, O |
| 4 | Genuine reciprocal Euler coefficients, Möbius convolution | Keep p² coefficient 1 and bad factors -> signed window and actual Mellin bridge, no source cancellation estimate | F/S, O |
| 5 | Kummer exact sequence, Sel_(p^n), Sha[p^n], local conditions | External Stoll 2-descent actual elliptic group -> MW rank bound; exact cohomology and all local maps needed | E, C |
| 6 | Prime-to-residue-characteristic good-reduction torsion | Counts 13,27 coprime -> primary rational torsion; genuine reduction group maps missing in module | E, F, C |
| 7 | Canonical Néron–Tate lattice and regulator | #221 adelic jets -> normalized arithmetic height determinant; true comparison absent | E, C/O |
| 8 | Functional equation root sign, twists, CM/non-CM | w=-1 forces odd analytic vanishing; algebraic parity requires a separate parity theorem | E, C |
| 9 | Gross–Zagier and Kolyvagin, analytic ranks zero/one | Actual Heegner/Euler system hypotheses -> MW rank and Sha finiteness; no higher rank transfer | E restricted, C |
| 10 | Ordinary/supersingular Iwasawa main conjectures, p-adic BSD | Characteristic ideal, p-adic L and exceptional zero data -> leading term; integral comparison missing | E restricted, O |
| 11 | Bhatt–Scholze genuine prism and selected elliptic model; #132, #1524 | δ structure -> elliptic prism site, complexes, Nygaard, crystalline/de Rham/étale comparison and losses | S/C, O |
| 12 | Elliptic H0(E,L^m), intrinsic jets, theta lifting; #202/#203/#226 | Čech compatibility, finite distinct torsion sites, rank-dependent kernel, exact node source relation | E, C/O |
| 13 | Gödel observer coordinate metric and nonzero vorticity #1543 | Actual tensor representation on elliptic observation or Tate module, source-bound signed return | S, O |
| 14 | CM prime splitting and Goldfeld twists #1105; Selmer family counting | Exact family, conductor, height ranges and densities; no density-to-all-curves inference | E restricted, C/O |
| 15 | Dirichlet PR #99/#102, Anthropic zeta23 multiplicities | Replacement completed **elliptic** L with conductor, gamma, root, center, all zero-count windows | E elsewhere, O |

A field or certificate named after a theorem does not prove it. Mathlib's LFunction is the actual number-field formal Dirichlet series; its existence alone is not a proof of modular analytic continuation or an elliptic zero-count estimate.

## 4. Fully typed elliptic curve coverage matrix

The mathematically admissible source is a noncoercible dependent collection with explicit model, fields, places, prime-to-characteristic restrictions and proof statuses; a genus-one torsor has no elliptic point law without an origin or selected Jacobian identification.

| Independent axis | Distinct constructors and retained proof data | Producer and first open adapter |
|---|---|---|
| Base field | Q; number field; global function field | `WeierstrassCurve K`; different continuation and local norms |
| Geometric carrier | pointed smooth elliptic E; genus-one torsor + Jacobian and torsor class | Actual affine/projective point law only after choice |
| Model | general, short when valid, integral, local minimal | Mathlib reduction and variable changes; no division at char 2/3 without permission |
| Arithmetic | CM, non-CM, twists, isogenies, rational torsion, p-torsion | #1105 and #1049; Galois actions explicit |
| Local reduction | good ordinary/supersingular, split/nonsplit multiplicative, additive and wild | Mathlib good/bad `localPolynomial` tied to place |
| Rank | zero, one, intermediate, high, unbounded/unknown | independent point certificates are not MW rank |
| Selmer | p, p^n, p^infinity, proved/unknown corank | Kummer local maps, Sha quotient and exact p-adic conditions |
| Galois | actual T_l(E), inertia, Frobenius, ramification, residual image | determinant and unramified reduction compatibility |
| Geometric node | full, semidefinite, quotient-definite; exact/inscribed/circumscribed/controlled | #1496 preserves omittedSource and addedCarrier |
| Analytic status | finite Euler, continuation, FE, certified zero windows, conditional zero-free bounds | conductor/gamma/root, analyticOrderAt and boundaries |

Suggested interfaces (not claims of identically named existing declarations): CurveSource, LocalReductionAndFrobenius, PointCountCertificate, TorsionResidueCertificate, SelmerAndShaProfile, BSDInvariants, EllipticLFunctionProfile, PrismaticTube, JointedEllipsoidNode, EllipticZeroCountCertificate, CurveFamilyCountCertificate. Only `GoodPointCountCertificate`, actual Weierstrass count and finite-window consumer in the newly written Lean file are implemented candidates here. The other labels are typed design obligations, not instantiated axioms masquerading as results.

## 5. Gödel–torsion, prismatic tube and jointed ellipsoid construction attempts

### 5.1 A genuine arithmetic torsion-residue target

At a chosen good place v of E/K, for l different from the residue characteristic, the actual morphism is the Tate-module Galois representation
\[
\rho_{E,\ell}:\operatorname{Gal}(\overline K_v/K_v)\to\operatorname{Aut}_{\mathbb Z_\ell}(T_\ell E),
\]
with local Frobenius and determinant det(1-T Frob_v)=1-a_vT+q_vT². A mod-l^n residue of this endomorphism is a well-defined *arithmetic* observation once the representation, unramifiedness and field embedding are proved. Source candidates here supply trace integers but not the Tate representation. Kummer and Selmer local images additionally require 0→E[l^n]→E→E→0 and the resulting cohomological long exact sequence. Finite cyclic color phases are not substitutes for E[l^n].

Concrete two-prime attempt: use N7=13 and N19=27; the divisibility obstruction is exact. Proving the compatibility of specialization on every primary torsion component would establish rational torsion-freeness in the rank-32 *candidate*, not independence of its 32 rational points or BSD.

### 5.2 A genuine cochain-map test and a precise non-comparison

The existing DyadicPadicDelta candidate (#1524) realizes algebraic δ on the complete 2-adic ring with the distinguished ideal (2). It does **not** yet construct Bhatt–Scholze prismatic cohomology for a selected elliptic model.

Here is a nontrivial *true cochain map*, and a hostile test of the invalid inference "an integral cochain map is a quasi-isomorphism." Let C^0=C^1=Z_2, d_C(x)=2x. Let D^0=D^1=F_2, d_D=0. Degreewise reduction π: C→D obeys d_Dπ=0=πd_C. But
\[
H^0(C)=0,\ H^1(C)=F_2;\qquad H^0(D)=F_2,\ H^1(D)=F_2.
\]
The induced H^0-map is not surjective; π is **not** a quasi-isomorphism. The defect is genuine, not an omitted error set. This is an elementary complete proof; it is **not** a claim that C or D is an elliptic prismatic complex.

A valid prismatic tube still requires an actual p-adic elliptic integral model, a genuine prism (A,I) with δ, distinguished generator and derived completeness, its prismatic complex, a crystalline/de Rham/étale comparison with exact base-change/filtration/Frobenius hypotheses, torsion and truncation loss, and an actual BSD consumer. The candidate base (W(k),(p)) for a good reduction elliptic model is plausible; no geometric comparison is completed by simply naming it.

### 5.3 Exact geometric jets and a forced finite-orbit kernel

For a pointed genus-one curve E, line bundle L of positive degree d, stage m>=1, and *r distinct* contacts Z={P1,...,Pr}, the intrinsic order-two restriction is the actual map
\[
J_{m,Z}:H^0(E,L^m)\to\bigoplus_{i=1}^r L^m\otimes \mathcal O_{E,P_i}/\mathfrak m_{P_i}^{3}.
\]
Riemann–Roch gives dim H0(E,L^m)=md and the jet target has dimension 3r. Therefore **md>3r implies dim ker(J)>=md-3r>0** by rank-nullity. A fixed order-r torsion orbit cannot support injective stage-growing jets indefinitely. This is a complete mathematical obstruction at the stated scope, independent of BSD.

For local frame e_j=g_ij e_i and coordinate z_j=φ_ij(z_i), write a section f_i e_i=f_j e_j, so f_i=g_ij(f_j∘φ_ij). Then
\[
f_i'=g_{ij}'f_j\circ\phi_{ij}+g_{ij}(f_j'\circ\phi_{ij})\phi_{ij}',
\]
\[
f_i''=g_{ij}''f_j+2g_{ij}'(f_j'\circ\phi_{ij})\phi_{ij}'
+g_{ij}[(f_j''\circ\phi_{ij})(\phi_{ij}')^2+(f_j'\circ\phi_{ij})\phi_{ij}''].
\]
A componentwise jet-copy map that drops derivative terms is not source-compatible. The Čech triple cocycle and joint overlap source restrictions are separate needed proofs. The chosen positive Gram \(\langle Js,Js\rangle\) has radical ker J; without injectivity or quotienting it is not full dimensional, and it cannot be identified with the Néron–Tate regulator without a proof comparing bilinear forms and normalizations. Use #1496 TypedEllipsoidAtlas, #1497 ThreePhaseEllipsoidOrbit, #1500 ThreePhaseEllipsoidQuadratic and retain both omittedSource/addedCarrier residuals.

### 5.4 Gödel vorticity and a complete positive-Gram obstruction

The actual Gödel observer metric/vorticity source in #1543 has nonzero vorticity but a torsion-free Levi-Civita connection; a physical vorticity tensor is distinct from geometric connection torsion, elliptic point torsion, prismatic torsion and Selmer/Sha torsion. There is no existing representation of Gödel observer transport on E(K), a Tate module or Selmer cochains. A proposed circulation transfer must first give a source map, antisymmetric operator, pairing, functoriality and complete signed defect equation.

The following *proved elementary obstruction* excludes the shortcut "positive Gram implies control of a lost signed source." Let J(x,y)=x+y, G(x,y)=J(x,y)^2 and S(x,y)=x-y. On v_t=(t,-t), t>0, G(v_t)=0 but S(v_t)=2t>0; for every C, the inequality S(v)<=C G(v) fails. This statement does not prove a nonexistence theorem for all Gödel–elliptic maps. It proves that a **particular kind of unsourced inference** is invalid, and it identifies the missing kernel/signed-residual obligation.

## 6. Critical-strip, zero-count and curve fixtures

The correct degree-two completed elliptic L has conductor, gamma, root number, symmetry s↔2-s, central zeros of potentially positive multiplicity, and bad local factors. Dirichlet/zeta windows do not certify it. A valid elliptic argument-principle/Turing certificate must retain exact horizontal and vertical boundary coverage, interval enclosure, multiplicities, exact zero-free boundary conditions, conductor/gamma corrections and source-preserving finite error. Floats and a finite zero table cannot establish an infinite strip bound.

| Fixture | Independent mathematical source | Unproved interface or hostile condition |
|---|---|---|
| CM y²=x³-x | #1105 Q(i) split/inert and ordinary/supersingular conditions | p=2 bad; density needs actual Chebotarev supplier |
| Non-CM y²=x³-x+1, rank one | Stoll EllipticCurves RankExample claims E(Q)≅Z | keep external dependency; model discriminant -368 |
| Rank-zero/torsion | choose independently certified E(Q) rank zero | no rank inference from a handful of point counts |
| Rational 2-torsion | CM curve has x=0,±1 at y=0 | preserve reduction mod 2 and bad factors |
| Rank-32 candidate | #1049 finite source record and 32 rational points | missing rank-lower-bound Mordell–Weil independence |
| Multiplicative/additive | actual Mathlib localPolynomial | don't use quadratic good polynomial |
| Characteristic 2/3 | general five-coefficient Weierstrass | no unjustified short-model divisions |

The two-prime numerical trace equality and signed second-prime-power contribution are finite increments, but no verified new zero-free region, point-count bound beyond Hasse, analytic rank bound, or BSD consequence has yet been established.

**Ranked unresolved suppliers**: (1) noncircular all-window signed Frobenius correlation strong enough for Goldfeld or a degree-two energy criterion; (2) actual Frobenius/Tate and torsion-specialization maps for specific source curves; (3) completed elliptic L multiplicity-aware zero windows and conductor-dependent remainders; (4) arithmetic Selmer/Sha/Néron–Tate leading-term integral comparison; (5) true elliptic prism/cohomology comparison; (6) source-preserving Gödel or ellipsoid transport with a quantitative signed residual, if it ever yields more than analogy.

## 7. Pinned sources and independent research comparison

- Primary grwtsk mathematical source: `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/Record4239Curve.lean`, blob `9b489d813ddf451a7c8d164ca808fb569b29b5b8`, with source mathematical attribution Elkies–Klagsbrun–Li; earlier rank verification #1049 NOT_RUN. Current baseline main at inspection: `1fd45c86c94d2b42bb68374e1d118149d0b34d88`.
- Pinned Mathlib `leanprover-community/mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612`; actual `Mathlib/AlgebraicGeometry/EllipticCurve/LFunction.lean` blob `de7b33670abe4c6af2a0dcc6cdd1696f42ee5738`; `Weierstrass.lean` blob `5ef9316e466dfc60347c91f8110fe2a8eef28e5b`. Mathlib's formal LSeries definition does not itself prove BSD or analytic continuation.
- Stoll, EllipticCurves, source `MichaelStollBayreuth/EllipticCurves@bad38e242a187dea006fc302a0ef0fd53eedd4ba`, `README.md`, `MordellWeil.lean`, `SelmerGroup.lean`, `RankExample.lean`. The README claims a sorry-free MW/2-descent project, not independently built in this investigation.
- Goldfeld 1982 theorem; Arshay Sheth, *Euler Product Asymptotics for L-functions of Elliptic Curves*, IMRN 2025, https://doi.org/10.1093/imrn/rnaf214 . Preserve its hypotheses, implication direction, constant and exceptional-set convention.
- Bhatt–Scholze, *Prisms and Prismatic Cohomology*, Annals Math 196 (2022), https://annals.math.princeton.edu/2022/196-3/p05 . Genuine prisms, comparisons and torsion losses are not inferred from a delta ring.
- Clay BSD Millennium problem https://www.claymath.org/millennium/birch-and-swinnerton-dyer-conjecture/ .
- OpenAI recent low-Selmer-corank BSD manuscript, `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `preprints/Exact-Birch-Swinnerton-Dyer-Formula-from-Low-Selmer-Corank-October-7-2026/build/sections/01-introduction.tex`, blob `8afa7de5ae4ade572e70565d81d624bd34476c4e`. Its **claim**, for a fixed elliptic E/Q with full q-infinity-Selmer corank 0 or 1, is exact refined BSD and finite Sha without extra reduction/CM/image restrictions, relying on named additional papers. This is a recent research manuscript, not an independently accepted universal theorem.
- Dirichlet only: `GTimG/QuasiRiemannTracker` PR #99 merged source `fc2f46afbfda62351055d3c12fcacd4f6916cc63`; PR #102 open, pinned `DevinWatson/QuasiRiemannTracker@ad7b7edd47bee2fdff34165da5cc14cc0331db2c`. Five windows (three count, two capped physical) and fifteen admission guards per window, rational/Bernstein polynomial covers, positive reserves, return accounting and conductor/source conditions are reusable techniques. PR #102 **claims** Dirichlet nonvanishing for Re(s)>0.87338196661320751993 excluding its principal pole. None is a degree-two elliptic L theorem.
- Zeta only: `anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`, `zeta23/Zeta23/Statement.lean` blob `b8a95eb20cbade61a33f165004c34d1ce1674947`, `FinalMult.lean` blob `c2034d2311be8eb2687b5f7c7cd2d7a1f9ada422`: exact analytic-order multiplicities and zeta reflection, no elliptic bridge.

## 8. Verification, composition and revision

New Lean file: `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticFiniteEulerWindow.lean`. Its mathematical content is source-preserving finite algebra and source-count comparison; its Lean bodies are **SOURCE_PROOF_CANDIDATE**, not kernel-verified. Finite mathematical proof of Theorems A–C and the two obstruction calculations is independent of Lean elaboration. A source-level proof candidate is not a claim of a successful new computation or a quantitative BSD improvement.

Compilation NOT_RUN; exact expected-interface elaboration NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN; analytical acceptance of any global BSD implication NOT_ESTABLISHED. No native Lean execution, external repository write, automation, scheduled verifier, CI bypass or forced branch update was authorized or performed.

Related current issues: #1049, #1105, #1496, #1497, #1500, #1542, #1543, #1547, #1524, #132, #159, #202, #203, #226, #221, #227, #230, #1530 and #1548. Their existing verification states are not modified. No GRWTSK umbrella import, historical proof, toolchain or dependency pin is changed. The actual publication commit, tree, source blob and ledger status must be recorded by readback, not guessed.

Mathematical novelty compared with Goldfeld, Hasse/Weil, classical Selmer theory, Iwasawa theory or the October 2026 manuscript is not established. The independent, durable result here is exact finite source comparison and prime-power accounting, plus explicit obstructions identifying precisely why the proposed geometric paths have not yet become BSD implications.
