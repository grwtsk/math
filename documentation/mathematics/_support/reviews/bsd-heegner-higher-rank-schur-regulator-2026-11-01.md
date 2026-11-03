# Higher-rank BSD height regulator: exact Schur factor and integral-basis conservation (2026-11-01)

Local attribution: grwtsk contributors.
Status: ANALYTICALLY PROVED ELEMENTARY HILBERT/LATTICE LEMMA; isolated LEAN_SOURCE_PROOF_CANDIDATE; parsing NOT_RUN; compilation NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN. Genuine Neron--Tate carrier imported in grwtsk/math: NO. General BSD-I and BSD-II: OPEN. This report makes no claim of a higher-rank arithmetic--analytic comparison.

## A. Original mathematical objects, not a selected Gram proxy

For a nonsingular E/Q, the intended arithmetic carrier is Lambda_E := E(Q)/tors and H_E := Lambda_E tensor_Z R with the actual Neron--Tate form B_E(P,Q) = (hat h(P+Q)-hat h(P)-hat h(Q))/2. By Mordell--Weil and the canonical height theorems, this is a finite-dimensional positive-definite REAL inner-product space. The true regulator is the Gram determinant on an INTEGRAL free basis of Lambda_E; using an arbitrary orthonormal basis erases the lattice covolume.

For ANY finite-dimensional real inner-product space H, any nonzero q, and any finite family P_i (no assumed rank equality or elliptic curve), set
  a = <q,q> != 0,
  b_i = <q,P_i>,
  C_ij = <P_i,P_j>,
  G = [[a, b^T],[b,C]].
The displayed G is the literal original pairing matrix on the ordered family (q,P_i), not an operator chosen independently of that family. The new source proves (as Lean source candidates) equality of this literal Gram with the actual Matrix.fromBlocks, then applies the pinned Mathlib determinant theorem.

## B. Complete determinant proof and residual

Pinned source of the theorem is Mathlib.LinearAlgebra.Matrix.SchurComplement, commit d13f23b723b8a846827a245b89c10fc7d3f11612, Git blob 5badd3a718bd2231da1e416e688a3d0265e8c819, theorem Matrix.det_fromBlocks₁₁. Primary authors upstream Alexander Bentkamp, Eric Wieser, Jeremy Avigad, Johan Commelin, Apache-2.0. For invertible A the theorem says
 det fromBlocks(A,B,C,D) = det A * det(D - C * invOf(A) * B).
Here A is an ACTUAL 1-by-1 matrix [a]. Since a!=0, it is invertible and invOf(A) has single entry a^-1; the finite product C*invOf(A)*B has entries b_i*b_j/a. The exact Schur formula is
  det G = a * det S, S_ij = <P_i,P_j> - <q,P_i><q,P_j>/a.
Introduce residual points e_i := P_i - (<P_i,q>/a) q. Direct bilinear expansion, real symmetry, and <e_i,q>=0 prove
  S_ij = <e_i,e_j>.
Thus the entire source Gram, including every off-diagonal cross term, is retained by G, while the orthogonal sector is the REAL geometric residual, not a supplied PSD certificate.

There is no analytic vanishing order or semisimplicity assumption in this finite algebra. The result is a proof of the elementary height-lattice determinant geometry needed by BSD, not of BSD-I.

## C. Recover the genuine integral regulator and the index

Let Lambda_E be the actual torsion-free finite-rank integer lattice, and suppose q belongs to a full integral basis (q,P_2,...,P_r). Such q is primitive (not an arbitrary nonzero element). Assume that a separate arithmetic construction supplies a point Q=mq mod torsion with m in Z\{0}. The Neron--Tate quadraticity gives
  h_Q := B_E(Q,Q) = m^2 a.
Consequently
  Reg(E) = (h_Q/m^2) * det S.
This holds in any rank, conditional ONLY on the genuine input basis/point, with no BSD rank--order hypothesis. For rank one, S has empty index type and determinant 1. The previous Gross--Zagier/Kolyvagin rank-one formula supplies h_Q in terms of the true first derivative under its genuine hypotheses; no higher-rank analytic bridge is thereby produced.

The code intentionally does NOT manufacture the integer basis of the actual E(Q)/tors or the saturation of ZQ. That is a separate supplier to verify, and any use of the determinant as the arithmetic regulator must prove the basis is integral and complete.

## D. Integral basis invariance (not real orthonormalization)

For any square real G and U,
  det(U^T G U) = (det U)^2 det G
by Matrix.det_mul and Matrix.det_transpose from pinned Mathlib. If U is the REAL image of an integer matrix with det(U)=+1 or -1, then det(U)^2=1, so the original regulator is unchanged. The source explicitly uses Mathlib's pinned Int.cast_det for the integer-to-real determinant comparison; this is a genuine Z/real integral lattice distinction, not an assumed orthogonal change. For a non-unimodular real basis change, the determinant scales and must not be presented as invariant. This is why a real Hilbert-space isometry alone cannot certify BSD-II.

## E. Independent hostile and finite checks

Example: H=R^2 with original integral standard basis e1,e2, let q=e1. The Gram is diag(1,1) with determinant 1. Its q-observed rank-one Gram is diag(1,0) with determinant 0; the residual is diag(0,1). The whole Schur formula gives 1 = 1*1, whereas det(observed) falsely gives 0. This is an exact counterexample to suppressing the residual.

Separate independent integer/rational calculation: six exact positive Gram matrices in dimensions 1..6, generated as A^T A + diag(1,...,n), satisfy det G = a*det(C - bb^T/a). With Q=3q they satisfy h_Q/9*det S = det G. Tested determinant outputs were 17,735,3795,560809,12930352,5395351248. An elementary U with det 1 preserved each determinant; replacing det U by 2 multiplied the determinant by 4. The tested cases are finite diagnostics only; the universal proof is the Schur theorem and bilinear calculation above. Nothing was tested against elliptic record #4239's true regulator.

## F. Source status, exact accepted upstream APIs, and compatibility

Published proof candidate module: GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HeegnerHeightSchur.lean (record its current main commit and exact blob after write), namespace GRWTSK.Analysis.InnerProductSpace.HeegnerHeightSchur. New declarations pivot, upperBlock, lowerBlock, outerDiv, sourceBlock, pivot_det, pivotInvertible, pivot_inverse_entry, crossBlock_eq_outerDiv, sourceBlock_det_schur, fullHeightBlock, height_schur_complement_eq_residual, full_height_block_det, full_height_det_integral_index, congruence_det_square, unimodular_congruence_regulator, one_dimensional_index_convention, extendedHeightFamily, fullHeightBlock_is_originalGram, extended_original_regulator_schur, integerChangeToReal, integerChangeToReal_det, integral_unimodular_regulator. Inherits previously published but uncompiled HeegnerHeightJetProjection.lean blob e0edbdb15dce026fa607a76aaeb15f4e7bc8d78a.

Source-target genuine canonical height supplier inspected directly:
- TauCetiProject/TauCeti main commit 041e4b26b134b0b92a1f69dea2c4e744bba37b8e, TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean blob d3dbde3fa297630c719a8a9e696ca5d2259a8867, Apache-2.0, original attribution Tau Ceti contributors. Provides actual canonicalHeight, canonicalHeightQuadratic, neronTatePairing, torsion annihilation and pairing/height quadraticity. Tau Ceti's CURRENT toolchain is leanprover/lean4:v4.36.0-rc1, while grwtsk/math is pinned to leanprover/lean4:v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. It is an external mathematical source, NOT an imported or verified-compatible dependency in this increment. No incompatible root dependency migration is made.
- FormalConjecturesForMathlib.AlgebraicGeometry.EllipticCurve.Regulator, https://google-deepmind.github.io/formal-conjectures/src/FormalConjecturesForMathlib/AlgebraicGeometry/EllipticCurve/Regulator/ , provides actual source definitions of neronTateMatrix/regulator on torsion quotient but warns its canonical height over Q is 2 times Tau Ceti's. In rank r this scales the determinant by 2^r. It is NOT automatically the BSD standard normalization until the concrete integral model and global period convention are reconciled.
- Mathlib pinned SchurComplement blob above; Matrix.Determinant.Basic.lean blob 66f8b885e8ce08fecc06336d6a26d5eff6c15aa6, original upstream Mathlib authors and Apache-2.0. It includes Matrix.det_fin_one, Matrix.det_mul, Matrix.det_transpose, Int.cast_det.

Proposed verification against grwtsk/math pinned Lean:
 lake env lean --wfail GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HeegnerHeightSchur.lean
Then fresh kernel replay and transitive #print axioms audit, including inherited HeegnerHeightJetProjection imports. Compilation, parser, kernel and axiom checks all NOT_RUN, because the source authoring environment has no lean/lake installed and no remote verification has been dispatched. No sorry or new axiom declarations are present in the authored source.

## G. Remaining genuine BSD comparison

Even exact Neron--Tate Schur determinant preservation does NOT provide the arithmetic-to-analytic correspondence in higher rank. The rank-one map x -> B_E(x,Q) * ev_(s=1) has rank at most one; for analytic rank>=2 and a valid Heegner twist with L(E^D,1)!=0, the classical Gross--Zagier first Heegner trace is torsion, so the proposed first-point map is zero. The missing supplier is genuinely higher-derived arithmetic cycle/Selmer height data with a noncircular pairing to the true central jets of L(E,s), or equivalently proven Connes automorphic generalized zero-space, whose image spans all required analytic directions. The correct BSD-II determinant line also must preserve period, torsion, Tamagawa and actual finite Sha order. No such supplier is claimed.

Do not promote this module to the root GRWTSK umbrella, assert kernel acceptance, or silently treat a mathematical theorem proof candidate as the full Birch and Swinnerton--Dyer conjecture. Mathematical conclusion: arbitrary-rank original height lattice regulator and its integral basis invariance are explained and source-drafted at their exact scope; general BSD remains open.
