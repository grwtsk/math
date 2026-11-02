# Elliptic point-corrected local Kummer fiber, global assembly, and derived p-power limit

Local attribution: grwtsk contributors.
Mathematical status: classical Kummer/cohomology exactness and cochain algebra; BSD-I/II OPEN. Formal status: isolated Lean SOURCE_PROOF_CANDIDATES, parsing NOT_RUN, compilation NOT_RUN, fresh kernel replay NOT_RUN, full axiom audit NOT_RUN. No external Tau Ceti imports were compiled.

## Correction of the earlier local cone

The earlier cone U_old=Fib(C_cont(G_F,E[p^n])->C_cont(G_F,E)) detects the correct local H1 image, but H1(U_old) has extra H0(E)/H0(E[p^n]) classes. Its H1 is NOT automatically E(F)/p^n E(F). For a coherent inverse p-power Kummer tower use the original rational local point group P=E(F) in the homotopy pullback:

 U_n=Fib(C_cont(G_F,E[p^n]) + P[0] -> C_cont(G_F,E)),
 (c,P) |-> j(c)-eta(P).

The plus here denotes the direct sum of cochain complexes. With A=E[p^n](Fsep), B=E(Fsep), eta:P=E(F)->B^G, the actual first degrees are
 U^0=A+P, U^1=C1(G_F,A)+B, U^2=C2(G_F,A)+C1(G_F,B),
 dU^0(a,P)=(dA a,j a-eta P),
 dU^1(c,b)=(dA c,j c-dB b).
Original cochain dA^2=0, dB j=j dA and Galois invariance dB eta P=0 prove dU^1 dU^0=0 with the exact shifted sign.

The actual elliptic short exact sequence 0->E[p^n]->E--[p^n]->E->0 in the discrete Galois category, with E(F)=B^G, gives a canonical derived quasi-isomorphism
 U_n ≃ [E(F)--[p^n]-->E(F)] in degrees 0,1.
Consequently H0(U_n)=E(F)[p^n], H1(U_n)=E(F)/p^nE(F), and higher H vanish. The projection on H0 onto H0(C_A) is an isomorphism. On H1 the projection is injective with image ker(H1(j))=im δ_v,p^n. Its injectivity follows because H0(C_A)+E(F)->H0(C_B)=E(F) is surjective. This precise H1 image is Tau Ceti's REAL local elliptic Selmer localCondition by WeierstrassCurve.range_kummerMap and selmerStructure_localCondition. The earlier U_old remains historically valid for its image but not as this completion model.

## Global Selmer mapping fiber and finite-level theorem

For the actual all-place family with real local Galois restriction maps, set A_n=E[p^n], U_n=prod_v U_v,n and L_n=prod_v C_cont(G_v,A_n). Let
 F_n=Fib(C_cont(G_Q,A_n)+U_n -> L_n)
with arrow res-i and degreewise source-shaped dF(g,u,l)=(dGg,dUu,res g-i u-dL l).
The true cochain naturalities prove dF^1dF^0=0. The cone long exact sequence has the correction coker(H0 global + H0 U -> H0 L), which now VANISHES because H0(U_v)->H0(C_A,v) is an isomorphism at each v. On H1 each H1(U_v)->H1(C_A,v) is injective with image the Kummer condition. Therefore
 H1(F_n) ≅ {c∈H1(G_Q,A_n): res_v c∈δ_v(E(Q_v)/p^nE(Q_v)) for all v}
          = Sel_p^n(E/Q).
This is a classical mathematical identification for the actual full-place cochain objects; the local and global Lean source candidates are generic source-shape algebra rather than an accepted imported all-place Galois formalization. A finite-S/restricted product model must separately impose genuine outside-S unramified conditions. Tau Ceti Unramified.lean only proves the Kummer-in-unramified inclusion under good reduction away from p; do not silently promote it to equality. Infinite/real places need actual cohomological conventions, especially for p=2.

## p-power transitions and proof

On geometric torsion E[p^(n+1)]->E[p^n] use multiplication by p; on geometric E and rational E(F) use p as well. Naturality of all additive Galois cochain maps yields strict compatible chain maps U_(n+1)->U_n and F_(n+1)->F_n, retaining every local H0 term. For an actual rational point P choose Q with p^(n+1)Q=P. The Kummer cocycle sigma Q-Q maps to sigma(pQ)-pQ, with p^n(pQ)=P. Therefore the cohomology transitions are
 H0: E(F)[p^(n+1)] --p--> E(F)[p^n],
 H1: E(F)/p^(n+1)E(F) --reduction--> E(F)/p^nE(F).
The H1 map is NOT p-multiplication on the quotient. The honest two-term point complex [P--p^n-->P] has transition p in degree zero and identity in degree one, explaining this distinction.

## Derived inverse limit and H0 preservation

Let U_v,p=Rlim_n U_v,n. By Milnor's exact sequence,
 0->lim1 H^(i-1)(U_v,n)->H^i(U_v,p)->lim H^i(U_v,n)->0.
Each E(F)[p^n] is FINITE (subgroup of geometric p^n torsion), hence Mittag-Leffler and lim1 H0=0. The point quotient transitions are surjective, hence lim1 H1=0. Thus
 H0(U_v,p)=lim_n E(F)[p^n]=T_p(E(F)),
 H1(U_v,p)=lim_n E(F)/p^nE(F)=p-adic completion E(F)^hat_p.
The first is the Tate module of RATIONAL LOCAL points, not the geometric Galois representation T_pE=lim_n E[p^n](Fsep). At finite nonarchimedean local fields E(F) has finite torsion, so its rational Tate module vanishes by bounded p-primary torsion. At complex places T_p(E(C))=Z_p^2, and real places also generally retain nonzero H0. Never erase archimedean local H0 without proof.

At the GLOBAL level the real Selmer short exact sequences 0->E(Q)/p^n E(Q)->Sel_p^n->Sha[p^n]->0 and SURJECTIVE point-quotient transition give
 0->E(Q)^hat_p->lim_n Sel_p^n(E/Q)->T_p Sha(E/Q)->0.
This retains the Sha obstruction without assuming Sha finite. When the actual full global compatible cochain models have been supplied, their finite H0 towers have lim1=0, yielding H1(Rlim F_n)=lim Sel_p^n. The source does NOT identify Nekovar p-adic heights with real Neron-Tate heights or with COMPLEX Taylor jets.

## Exact upstream sources and provenance

Upstream TauCetiProject/TauCeti revision 2bdb755239d3bd84760e99bc83166bdf7cc75a6b, original Tau Ceti contributors (Apache-2.0):
- GaloisCohomology/Coefficients.lean blob d56decb915934d38ff4ed5271ed59c73953a89e1: actual W.TorsionCoeff, W.PointCoeff, W.basePointCoeff, W.basePointEquivInvariants and Galois equivariance.
- GaloisCohomology/Descent.lean blob 3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b: actual WeierstrassCurve.range_kummerMap.
- GaloisCohomology/Selmer/Basic.lean blob 5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1: actual selmerStructure_localCondition and Kummer exact sequence.
- RepresentationTheory/Homological/ContCohomology/LowDegree.lean blob 9596754d63dfddae05765acc47fab267df58da7e: actual continuous cochain differentials.
- Algebra/Module/Torsion/TateModule.lean blob 62e7fac1cb918662dde0e644e61060d4428e9942: actual TateModule, tateModuleTransition, proj and compatibilities.
- EllipticCurve/TateModule/Basic.lean blob 65f22a80e553f58ca70469e292697ca20a8da4e9: geometric T_pE rank two.
- GaloisCohomology/Unramified.lean blob 27bdfb672e46e81d8df33f12d74ec35160c9bf68, finite-S boundary.
Original upstream toolchain Lean v4.36.0-rc1; local grwtsk/math pinned v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No compatible upstream compilation was executed.

Primary classical references: Silverman, Arithmetic of Elliptic Curves, 2nd ed. 2009, III.7/X.4, DOI 10.1007/978-0-387-09494-6; Nekovar, Selmer Complexes, Asterisque 310 (2006), https://www.numdam.org/item/AST_2006__310__R1_0/; Christopher Skinner, Lectures on the Iwasawa Theory of Elliptic Curves (2018), section 2.1.2, https://swc-math.github.io/aws/2018/2018SkinnerNotes.pdf.

Independent hostile algebra: an exact-rational two-term example has old cone H1 dimension 1, corrected point cone H1 dimension 0, both with squared differential zero. Another has corrected cone H0 nonzero. These are counterexamples to the two false inferences, not computations on actual E/Q.

## Source deliverables and acceptance

Isolated candidate source blobs:
LocalPointKummerFiber.lean 5fd56d6fc1904c26c951bfcb459b033c86f3a415.
LocalPointKummerTower.lean c006d62ed7b034f43b16364a4fdd9d4a191fb30e.
GlobalKummerPointFiberAssembly.lean df902e143024a36c3916f8d210a31ca00ae7618a.
GlobalSelmerFiberTower.lean 9482578feeefaec280babf861dbf74dedf2ab4f6.
KummerPointResolution.lean 3d6723a861ad1c44eaaab3bb9cfff1f299212fe2.
Isolated Tau Ceti adapter TauCetiPointKummerTower.lean 50f9b9f07822933f9f25751bd22d99eb0afb9a00.
Namespaces and exact paths remain under GRWTSK MSC category theory/homological algebra, elliptic number theory, and documentation/adapters respectively. No root imports or foreign dependency migrations.

Parsing NOT_RUN; Lean compilation NOT_RUN; fresh independent kernel replay NOT_RUN; transitive axiom audit NOT_RUN; upstream adapter NOT_COMPILED. No new sorry or axiom declarations. No CI/proof execution dispatched.

Remaining formal provider gates: source-exact quasi-isomorphism between the point-corrected local cone and two-term Kummer point complex in Lean; real cochain-level Galois restriction and all-place product/restricted-product specialization; derived inverse limit as actual continuous T_pE cochains; archimedean correction and global/local Tate duality; and the genuine higher derived regulator. Neither those results nor this classical arithmetic construction prove the COMPLEX L(E,s) central-jet/rank equality or full BSD-II.
