# Corrected derived local Kummer condition: higher Weil--Chatelet residue and canonical good truncation

Local mathematical attribution: grwtsk contributors.
Review date: 2026-11-01 (America/Los_Angeles).
Status: classical exact-triangle mathematics with an independently exact hostile cochain calculation; two isolated Lean SOURCE_PROOF_CANDIDATES. Parsing NOT_RUN; compilation NOT_RUN; fresh kernel NOT_RUN; transitive axiom audit NOT_RUN. This is an explicit mathematical correction of an earlier OVERSTRONG full quasi-isomorphism claim, not a proof of BSD.

## The false inference and the exact original elliptic objects

For a genuine elliptic curve E/F over a local field F of characteristic zero, let G_F be its real absolute Galois group, A_n=E[p^n](Fsep), B=E(Fsep), P=E(F)=B^{G_F}, j:A_n->B the actual inclusion, eta:P->C^0(G_F,B) the true fixed-point inclusion. The previously published point-corrected cochain complex is the honest homotopy fiber

    U_n = Fib(RGamma(F,A_n) ⊕ P[0] --(j-eta)--> RGamma(F,B)).

Its source-typed Tau Ceti carrier is identified under the original external pin 2bdb755239d3bd84760e99bc83166bdf7cc75a6b, including W.TorsionCoeff, W.PointCoeff, basePointCoeff, basePointEquivInvariants, and the actual continuous cochains. The generic GRWTSK LocalPointKummerFiber.lean constructs the first two differentials. The previous mathematical review bsd-global-kummer-point-fiber-tower-2026-11-01.md, blob 9362e58810da0c177ff4c96e1c2b3b1fece3a1e2, claimed that the FULL U_n was canonically quasi-isomorphic to [P--p^n-->P] and therefore had no higher cohomology. That implication is FALSE. The review is retained for its historical source identity but must be read with this correction. The low-degree identities H0 and H1, the actual global finite Selmer H1, and genuine Kummer compatibility remain mathematically valid.

## Exact derived-category proof with the higher degree accounted for

The genuine geometric coefficient sequence
    0 -> A_n -> B --[p^n]--> B -> 0
is short exact (multiplication-by-p^n on E(Fsep) is surjective in characteristic zero). It induces a distinguished triangle
    RGamma(F,A_n) --j--> RGamma(F,B) --[p^n]--> RGamma(F,B) -> RGamma(F,A_n)[1].
By elementary octahedral/cone calculus for the homotopy pullback, the genuine original U_n is isomorphic in the derived category to
    Fib(P[0] --[p^n] eta--> RGamma(F,B)).
This uses the ACTUAL source B and its full Galois cohomology; it does not reduce RGamma(F,B) to its H0.

The long exact sequence of this final fiber, plus H0(F,B)=P and H^i(P[0])=0 for i!=0, gives:
  H0(U_n) = ker([p^n]:P->P) = E(F)[p^n],
  H1(U_n) = coker([p^n]:P->P) = E(F)/p^n E(F),
  H^i(U_n) ≅ H^{i-1}(F,E) for EVERY i>=2.
In particular,
  H2(U_n) ≅ H1(F,E),
the actual local Weil--Chatelet group, generally NONZERO. For F a finite extension of Q_l, local Tate duality identifies H1(F,E) with the Pontryagin dual of E(F) (using the self-dual principally polarized elliptic curve), and E(F) is generally nonzero; there is no legitimate vanishing assumption. The source result differs from the acyclic two-term rational-point complex in degree two.

The canonical good truncation \tau_{\le1}U_n, NOT the full U_n, has cochains
  (\tau_{\le1} U_n)^0 = U_n^0,
  (\tau_{\le1} U_n)^1 = ker(d_U^1:U_n^1->U_n^2),
  (\tau_{\le1} U_n)^i = 0 for i>=2,
and unchanged d_U^0 restricted to original degree-one cycles. By definition it preserves the ACTUAL H0 and H1, has zero H^i above one, and maps naturally into U_n and then RGamma(F,A_n). Because the local Kummer source identifies the projection H1(U_n)->H1(F,A_n) injectively with image the actual local Kummer subgroup, the same is true for the good truncation. This is a canonical derived/cochain remedy: it *records* the higher Weil--Chatelet residue before truncating; it never asserts it was absent.

For exact rank preservation, the cochain-level projection of one-cocycles (c,b) onto c gives a surjection onto
  ker d_A^1 ∩ (j_1)^{-1}(im d_B^0).
If its class becomes an A-boundary c=d_A^0 a, naturality shows b-j_0a is a B-invariant point. The *actual* elliptic fixed-point theorem identifies B^{G_F} with P, so a corresponding P-coordinate makes (c,b) a genuine cone boundary. Therefore the map of H1 into the actual H1(A_n) is injective with exactly the original Kummer image. The new generic Lean candidate states this source-original representative/boundary-reflection result with the fixed-point hypothesis explicit, not a numerical rank hypothesis.

## A formally hostile counterexample with exact rational cochains

Take A_n=0, B a complex with B0=Q, B1=Q, all B differentials zero, and P=H0(B)=Q by eta=id. Multiplication by m=2 on the entire B complex is an isomorphism, so the coefficient triangle 0->A_n->B--2->B->0 is DEGREEWISE exact. The full point cone has
 U^0=Q, U^1=Q, U^2=Q, with d_U^0=-id, d_U^1=0, d_U^2=0.
Thus (exact rational matrix ranks) H0=0, H1=0, H2=Q. By contrast the two-term point resolution [Q--2->Q] has H0=0,H1=0,H2=0. This is an exact hostile counterexample to the FULL quasi-isomorphism claim even with a degreewise exact multiplier sequence, not an invented elliptic curve or numerical Galois computation.

Reproducible independent exact-rational matrix calculation using SymPy in this turn confirmed d_U^1d_U^0=0 and d_U^2d_U^1=0, and Betti dimensions H0=0,H1=0,H2=1 versus 0,0,0 for the point resolution. This is a finite diagnostic, NOT Lean verification.

The new source candidate LocalKummerHigherResidue.lean extends the original point cone one further degree and proves uD2_uD1=0 under real differential squares and coefficient naturality, including a source-typed hostile degree-two cocycle not lying in the degree-one boundary image. It does not claim to instantiate an actual local Galois E.

## Tower and derived inverse-limit qualification

The full p-power cochain tower is compatible with true p-multiplication on E[p^(n+1)] and the original cochain maps. Under the octahedral comparison Fib(P --p^n->RGamma(F,B)), its induced map on the target RGamma(F,B) is identity, while the P-coordinate map is p-multiplication. Consequently for i>=2 the H^i(U_n) ≅ H^{i-1}(F,E) are linked by the identity under the standard tower, and higher Weil--Chatelet residue is NOT erased by inverse limit.

On the GOOD TRUNCATED tower, which retains only original H0 and H1, the level cohomology is
 H0=E(F)[p^n] (transition p),
 H1=E(F)/p^nE(F) (transition reduction).
Because every E(F)[p^n] is finite, that H0 tower is Mittag--Leffler; because point quotient reductions are surjective, the H1 tower is Mittag--Leffler. The derived inverse-limit Milnor sequence therefore gives, for V_v=Rlim_n(\tau_{\le1}U_n):
  H0(V_v)=T_p(E(F)),
  H1(V_v)=E(F)^hat_p,
  H^i(V_v)=0 for i>=2.
THIS is the justified two-degree local derived limit. The full cone tower cannot be substituted in its place for derived duality. Tau Ceti's actual TateModule and tateModuleTransition make the rational-point H0 inverse limit source-exact, but the compatible complete original all-place p-adic cochain adapter remains UNCOMPILED.

The truncation and derived inverse limit are suitable low-degree local Kummer condition carriers. Whether they satisfy the particular perfectness, local duality, and Greenberg/Bloch--Kato comparison needed for a chosen Nekovar Selmer complex is a SEPARATE theorem; do not claim full p-adic derived regulator or real Neron--Tate-to-complex central L-jet comparison.

## Source identifiers and verified claims

New source files, exact blobs recorded on commit:
- GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerGoodTruncation.lean, blob 5b6441553d7c252bba3cc2a259cb62a44eefc2b3, namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncation; goodTruncOne, goodTruncD0, goodTruncHZero, goodTruncHOne, goodTruncHZero_iff, goodTruncHOne_eq_original, AOneCycles, aBoundaryToCycles, localRepresentatives, projectionToLocalRepresentatives, projection_surjective, projection_boundary_reflecting, projection_zero_kernel_of_full_invariants.
- GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerHigherResidue.lean, blob 179d9518911b0c642136a6f39dff2628dd2a1a2b, namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerHigherResidue; HigherConeData, HigherConeData.uD2, HigherConeData.uD2_uD1, HigherConeData.geometric_one_cocycle_closed, hostile_two_cocycle, hostile_two_cocycle_not_boundary.

The earlier local point source and original two-term KummerPointResolution.lean must carry a visible source-scope notice: the latter is a low-degree model, NOT an unconditional quasi-isomorphism to the whole U. Preserve original source blobs and other mathematical statements when making those annotations. The previous long mathematical review must be marked superseded for its full quasi-isomorphism and higher-vanishing statements. Track this source correction and its proof acceptance separately in grwtsk/math#1565.

Original literature: Jan Nekovar, *Selmer complexes*, Asterisque 310 (2006), https://www.numdam.org/item/AST_2006__310__R1_0/ , local conditions as complexes and derived duality. J. S. Milne, *Weil--Chatelet groups over local fields*, Ann. Sci. Ecole Norm. Sup. 3 (1970), 273--284, DOI 10.24033/asens.1193 (local Tate pairing/nonvanishing). Milne, *Arithmetic Duality* (2026 notes), https://www.jmilne.org/math/xnotes/Tate100.pdf, §1, H1 of an abelian variety over a p-adic field is the dual of rational points. Silverman, *Arithmetic of Elliptic Curves*, 2nd ed., Springer GTM 106 (2009), III.7 and X.4, DOI 10.1007/978-0-387-09494-6. Original upstream Tau Ceti contributor source pin 2bdb755239d3bd84760e99bc83166bdf7cc75a6b (Apache-2.0) and grwtsk/math pinned Lean v4.34.1 Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 unchanged.

Status: exact cochain mathematics and hostile example established; all new and inherited Lean parsing NOT_RUN, compilation NOT_RUN, fresh independent kernel replay NOT_RUN, transitive axiom audit NOT_RUN. No new sorry or axiom declaration. No CI/verification execution dispatched, no root import/dependency migration. BSD-I/II and the higher-rank COMPLEX Hasse--Weil central-jet comparison remain OPEN.
