# Connes--automorphic spectral comparison for elliptic BSD (2026-11-01)

Local mathematical attribution: grwtsk contributors.
Status: ANALYTIC SOURCE COMPARISON; finite Lean SOURCE_PROOF_CANDIDATES;
compilation NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN;
BSD-I OPEN; BSD-II OPEN. No claim of mathematical novelty for the cited prior theorems.

## Closest primary mathematical results

1. Alain Connes, *Trace formula in noncommutative geometry and the zeros of the Riemann zeta function*, Selecta Mathematica (N.S.) 5 (1999), 29--106, DOI 10.1007/s000290050042; arXiv:math/9811068. Adele-class trace interpretation and absorption/resonance distinction. The GL1 zeta realization does not directly realize the elliptic Hasse--Weil L-function.
2. Anton Deitmar, *A Polya--Hilbert operator for automorphic L-functions*, arXiv:math/9903061 (1999), Theorem 3.16. Weighted Hilbert-space operator for automorphic L-functions; spectrum on the critical line; explicit dependence of multiplicities on Sobolev cutoff delta. Its proof uses derivatives of Dirac distributions at zeros.
3. Christophe Soule, *Sur les zeros des fonctions L automorphes* (1999), C. R. Acad. Sci. Paris 328, 955--958, DOI 10.1016/S0764-4442(99)80304-8. Automorphic extension of Connes's critical-zero construction.
4. Dihua Jiang and Zhilin Luo, *Certain Fourier operators and their associated Poisson summation formulae on GL1*, Pacific Journal of Mathematics 326 (2), 301--372 (October 2023), DOI 10.2140/pjm.2023.326.301, arXiv:2108.03566 (HTML revision displays March 22, 2026), especially (8.8), (8.10) and Theorem 8.1 (critical-zero theorem; Lemma 8.2 is the density lemma). Establishes spectral correspondence and a multiplicity cutoff for standard cuspidal automorphic L-functions.
5. Alain Connes, Caterina Consani, Henri Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755 (2025), EMS Series of Lectures in Mathematics (2026). Finite-prime self-adjoint approximants and numerical results for the RIEMANN ZETA function only; limiting identification remains an open proof obligation and should not be transported to BSD.

## Actual elliptic objects and analytic normalization

For E/Q, modularity identifies a genuine cuspidal automorphic representation pi_E of GL2(A_Q) with L(s,pi_E)=L(E,s+1/2) under unitary normalization. In particular E's center s=1 corresponds to pi_E's center s=1/2. A formal bridge must match every good AND bad Euler factor, completed archimedean factor, conductor and chosen convention. This exact global modularity identification is NOT formalized in the present source increment.

Jiang--Luo construct H_(pi,delta)=L2_delta(C_Q)/closure(Theta_pi(S_pi(A^x))) and the generator D_(pi,delta,chi) of a scaling action, where the L2_delta weight is (1+(log|x|)^2)^(delta/2). This action is NOT unitary for general delta, and a purely imaginary spectrum by itself does not prove skew-adjointness or self-adjointness after multiplication by i. For delta>1, their Theorem 8.1 says that a spectral parameter mu occurs iff L(1/2+mu,pi x chi)=0; spectral multiplicity equals the largest integer m with m < (1+delta)/2 and m <= ord L at that point. Choosing delta>max(1,2r-1) recovers full analytic multiplicity r for a central zero of order r. It does NOT automatically prove that the ORDINARY KERNEL of D has dimension r, because generalized zero chains must be separated.

## Hostile kernel-versus-generalized-kernel control

In Q^2 let J=[[0,1],[0,0]], e0=(1,0), e1=(0,1). Then Je1=e0 !=0 and Je0=0, so J^2e1=0 but Je1!=0. The generalized zero space has dimension 2 whereas ker J has dimension 1. In the dual local-jet picture, multiplication by z on delta_0 and delta_0' similarly creates a nilpotent chain, while z^2 annihilates both. Thus analytic zero multiplicity r may require a generalized eigenspace or a quotient of local jets. Proving semisimplicity is a separate obligation before replacing this with ker D.

Lean candidate source: GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ConnesCentralRootSpaceObstruction.lean; source blob 23390402eb3ad43579a740c7efa5559e136605ab. Its explicit vector identities provide a concrete counterexample to the invalid automatic ordinary-kernel inference, not a model of D_(pi,delta).

## Genuine count-to-local-operator trace

The EXISTING grwtsk source GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticFiniteEulerWindow.lean defines a_q=q+1-N_q from actual reduction counts N_q, with reciprocal polynomial 1-a_q*T+q*T^2 and recurrence for prime-power traces t_n. Define A_q=[[a_q,-q],[1,0]]. Direct integer algebra yields tr(A_q)=a_q, det(A_q)=q, A_q^2=a_q*A_q-q*I, and det(I-T*A_q)=1-a_q*T+q*T^2. Consequently tr(A_q^n)=t_n for all n by the same recurrence (elementary mathematical induction; its ALL-n matrix-power Lean form is NOT included here). At the actual record-curve good counts q=7,N=13 and q=19,N=27, prime traces are -5,-7; second prime-power traces both equal 11. This faithfully supplies FINITE signed local terms relevant to a Connes/Weil explicit-formula input. It does not imply a genuine Galois-cohomological Frobenius operator, automorphy, global convergence, central rank or BSD.

The source contains exact 2x2 determinant and first two power-trace proofs, with existing record finite counts reused: GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticConnesLocalTrace.lean; source blob 9a8f0eb644f6db596f5f8f8ba412f508e98a804c. An independently inspectable hostile sign example is a_7=-5: a positive-semidefinite Gram operator cannot be used as a replacement for the signed local trace. The count transport to actual Mathlib minimal-local factor retains obligations in EllipticPowerSeriesLocalFactor.lean and related seven-adic sources.

For Re(s)>3/2 the actual good-prime logarithmic derivative has the formal shape -L_p'/L_p(s)=(log p)*sum_(n>=1)tr(A_p^n)*p^(-ns), justified by the Hasse bound and local Euler factor; ALL bad primes, normalization and analytic continuation are separate global obligations. A finite determinant is not a spectral determinant for L(E,s).

## Rank one and rank beyond one

Gross--Zagier gives an independent identity between the Neron--Tate height of an ACTUAL Heegner point and the derivative of the genuine base-change L-function. Kolyvagin supplies a rank-one finiteness/rank control under the relevant hypotheses. This permits a restricted noncircular comparison of the height of a source point and the spectral central derivative after normalization. It does NOT give a natural map from the entire Mordell--Weil height lattice to the Connes quotient or its central generalized zero space in arbitrary rank. Arbitrarily choosing an isometry between equal-dimension spaces is not a BSD proof. There is no source-exact finite Sha / Tamagawa / period / regulator / torsion leading coefficient supplied by the Connes spectral result alone.

## Open consumer and return obligations

- Build the genuine Neron--Tate real Hilbert space of E(Q), preserve its integral lattice and its regulator, and establish actual rational point and finite generation provenance.
- Import or prove modularity/pi_E plus exact local bad/good Euler, conductor, gamma factor and central shift comparison.
- Formalize the adelic quotient, the theta-image closure, scaling group domain/closure, central spectral jets, and Theorem 8.1 with its delta/multiplicity interpretation. Check algebraic versus geometric multiplicity and the exact operator-theoretic root space.
- Construct a genuine arithmetic-to-central-spectral map from the elliptic points/height/Heegner or Selmer sources, NOT an arbitrary chosen linear isomorphism. Prove rank and metric/covolume correspondence independently.
- Establish actual Sha finiteness and BSD-II determinant-line comparison separately. Neither operator trace nor finite companion matrix supplies these.
- Verify isolated new source files against Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, then independently rerun kernel checks and transitive axiom auditing before promotion.

## Disposition

These are two isolated finite algebraic source proof candidates plus an existing-theorem comparison. The Jordan hostile control exposes a possible INVALID inference in the stronger kernel formulation. The finite local trace transports two actual prime sources exactly. Neither is claimed as a new solution of BSD-I/II, a global trace formula, a full analytic proof, or a formally accepted Lean theorem. Mathematical prior art is explicitly attributed; AI-assisted source drafting and source inspection do not constitute proof execution.
