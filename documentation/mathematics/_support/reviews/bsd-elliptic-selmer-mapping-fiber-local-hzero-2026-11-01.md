# Genuine Selmer mapping fiber, local degree-zero correction and honest Bockstein gate

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01 (America/Los_Angeles).
Mathematical scope: finite first-three-degree cochain-algebra identities. The actual Galois cochain source and H¹ Selmer-structure source are identified from upstream; this increment does NOT construct an actual elliptic Iwasawa deformation, duality, derived heights or the complex analytic BSD comparison. Lean source proof candidates, compilation NOT_RUN, fresh kernel replay NOT_RUN, full transitive axiom audit NOT_RUN. General BSD-I/II OPEN.

## Primary sources, original attributions and the precise source revision

1. Jan Nekovář, *Selmer complexes*, Astérisque 310 (2006), Société Mathématique de France, https://www.numdam.org/item/AST_2006__310__R1_0/, especially 6.1, 6.7, 7.8, and 11.2: a Selmer complex is a **mapping fiber of actual complexes**, not merely the kernel of a map between H¹ groups. Local conditions are cochain maps U_v^+ -> C^•(G_v,T), and local degree-zero terms contribute in the long exact sequence. Nekovář's cochain Bockstein uses actual deformations, not a selected spectrum.
2. Benjamin Howard, *Derived p-adic heights and p-adic L-functions*, arXiv:1202.6343 (2012): higher derived Selmer-height maps and specified p-adic Iwasawa derivative classes, not a full complex Hasse–Weil jet comparison.
3. Takamichi Sano, *Derived Bockstein regulators and anticyclotomic p-adic Birch and Swinnerton-Dyer conjectures*, arXiv:2308.08875 (2023), derived Bockstein regulator descent in p-adic Iwasawa theory; not unconditional general BSD.
4. Verified current upstream source TauCetiProject/TauCeti at Git commit 2bdb755239d3bd84760e99bc83166bdf7cc75a6b, Apache-2.0, original authors The Tau Ceti contributors:
   - \`TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean\`, blob \`9596754d63dfddae05765acc47fab267df58da7e\`, actual continuous C¹,C², d0,d1,d2 as additive group homomorphisms and genuine d1_comp_d0/d2_comp_d1, with continuity-restriction lemmas B1_le_C1 and B2_le_C2.
   - \`TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean\`, blob \`589ba4d163c40ae0b20dc8de1a3911a6a334c530\`, actual \`cochainsMap1\`/\`cochainsMap2\`, \`explicitMap1\`/\`explicitMap2\` and their commutativity.
   - \`TauCeti/RepresentationTheory/Homological/ContCohomology/SelmerStructure.lean\`, blob \`cd7c633795865655521f955a6bd3ba52a6bf30d4\`, genuine H¹ localizations and localCondition subgroups, \`selmerGroup = ⨅i (localCondition i).comap (localization i)\`, plus \`mem_selmerGroup_iff\`.
   - \`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean\`, blob \`5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1\`, true elliptic Kummer/Selmer/Sha exactness and actual local conditions, separately from the derived-complex construction.
   - External toolchain is Lean v4.36.0-rc1 at \`lean-toolchain\` blob \`2afd38716ad6182657562d3dac3c98461c1385f2\`, not grwtsk/math's v4.34.1 and pinned Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. No external adapter was imported, compiled or installed, and no default root dependency changed.
5. The local mathematical source \`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedBocksteinSelmerBoundary.lean\` at previous blob \`340b23adf45f656d11115f09d7927a8a75fbd176\` contains FOUR source-level sign-orientation issues: using \`eq_neg_of_add_eq_zero_left\` to derive the second summand from \`a+b=0\`. The correct identity is \`eq_neg_of_add_eq_zero_right\` (b=-a). New reviewed blob \`da3fd136ec954e523556ed066ee67cc219506404\` makes exactly these four repairs, preserving all the original theorem statements and mathematical scope. This is source review, not compilation or kernel replay.

## I. A genuine degree-one localization-defect map

For global G=H¹(G_K,M), local H_i=H¹(G_{K_i},M_i), true localization homomorphisms loc_i:G->H_i, and real local-condition subgroups L_i≤H_i, define
    Δ:G -> ∏_i H_i/L_i,
    Δ(c)_i = loc_i(c) mod L_i.
This is a literal additive group homomorphism. Its kernel is exactly
    ker Δ = { c ∈ H¹(G_K,M) : ∀ i, loc_i(c) ∈ L_i }
          = Sel_𝓕(M).
This source theorem is independent of arithmetic rank, Mordell–Weil height, Sha finiteness, Iwasawa deformation, or complex zero order. The exact quotient targets and every local condition are retained.

New isolated source proof candidate:
 \`GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticSelmerLocalizationDefect.lean\`
 blob \`2c3ac2a88ff1bd203904288fa2326a14ce73015b\`,
 namespace \`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.SelmerLocalDefect\`.
Declarations \`LocalizedHOne\`, \`LocalizedHOne.selmer\`, \`LocalizedHOne.defect\`, \`LocalizedHOne.defect_eq_zero_iff\`, \`LocalizedHOne.selmer_eq_defect_ker\`, \`LocalizedHOne.defectCokernel\`, \`LocalizedHOne.source_in_selmer_iff_zero_defect\`, \`LocalizedHOne.selmer_source_invariant\`. The input homomorphisms are intended to be supplied as the *actual* Tau Ceti localization maps; no instance of true elliptic Galois H¹ has been compiled under grwtsk/math's incompatible pin.

The cohomology of the two-term complex G->∏ H_i/L_i has H⁰ equal to the Selmer group and H¹ equal to a localization cokernel. It is NOT the full Nekovář Selmer complex and does NOT contain enough data to define any higher Bockstein.

## II. A genuinely constructed three-degree mapping fiber

Take source cochain complexes of actual additive groups (for an elliptic representation, these are the continuous Galois cochains):
 C_G^0 --d_G^0--> C_G^1 --d_G^1--> C_G^2,
 U^0   --d_U^0--> U^1   --d_U^1--> U^2,
 C_L^0 --d_L^0--> C_L^1,
together with source cochain maps res^i:C_G^i->C_L^i and inc^i:U^i->C_L^i for i=0,1 satisfying the genuine cochain naturalities
 d_L^0 res^0 = res^1 d_G^0, d_L^0 inc^0 = inc^1 d_U^0.
No d_G or d_U is assigned from an analytic rank.

Define the literal shifted cone F=Cone(C_G⊕U -> C_L)[-1] in degrees 0,1,2 by
 F^0=C_G^0⊕U^0,
 F^1=C_G^1⊕U^1⊕C_L^0,
 F^2=C_G^2⊕U^2⊕C_L^1,
 with
 d_F^0(g,u)=(d_G^0 g, d_U^0 u, res^0 g-inc^0 u),
 d_F^1(g,u,l)=(d_G^1 g, d_U^1 u, res^1 g-inc^1 u-d_L^0 l).
Expansion shows
 d_F^1 d_F^0(g,u)=(0,0,
    res^1 d_G^0 g-inc^1 d_U^0 u
      -d_L^0 res^0 g+d_L^0 inc^0 u)=(0,0,0).
Every term is retained; the minus sign on d_L is essential.

The source also constructs the degree-one cocycle subgroup ker d_F^1, the boundary homomorphism d_F^0 into this subgroup, and the ACTUAL H¹ of the constructed truncated mapping fiber, ker d_F^1 / im d_F^0. This is the correct cochain-level arithmetic target whenever the genuine elliptic cochain maps are supplied, not an assumed spectral Hilbert operator.

New isolated source:
 \`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SelmerMappingFiberDegreeTwo.lean\`
 blob \`2f4aa5efe281f7fe753e2006e687a3316472feb4\`,
 namespace \`GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerMappingFiber\`.
Declarations: ConeData, ConeDegreeZero, ConeDegreeOne, ConeDegreeTwo, ConeData.coneD0, ConeData.coneD1, ConeData.coneD1_coneD0, ConeData.cocyclesOne, ConeData.boundary_is_cocycle, ConeData.boundaryOne, ConeData.fiberHOne, ConeData.localZeroShift, ConeData.localZeroShift_is_cocycle, ConeData.localZeroShift_boundary_iff, ConeData.localZeroShift_not_boundary.

## III. The essential LOCAL DEGREE-ZERO correction

For any local cocycle ℓ∈ker(d_L^0), the triple (0,0,ℓ) is a degree-one cocycle of F. It is a fiber boundary if and only if there are g∈C_G^0 and u∈U^0 such that
 d_G^0 g=0, d_U^0 u=0, and res^0 g-inc^0 u=ℓ.
This is an explicit complete proof in the source, not a positivity certificate. If ℓ does not arise this way, its class survives nontrivially in H¹(F), even if the naive degree-one global H¹ Selmer kernel omits it. So replacing the genuine mapping fiber H¹ by the kernel at H¹ is not always valid.

The standard cone long exact sequence yields
 coker(H⁰(C_G)⊕H⁰(U) -> H⁰(C_L))
   ↪ H¹(F)
   ↠ ker(H¹(C_G)⊕H¹(U) -> H¹(C_L)),
with a short exact sequence between these three terms. To identify the rightmost kernel with the classical H¹ Selmer group in H¹(C_G), it suffices that H¹(U)->H¹(C_L) be injective with image equal to the true local condition. To identify H¹(F) itself with the classical Selmer group, the displayed H⁰ cokernel must ALSO vanish. A list of local H¹ subgroups alone does NOT establish these cochain-level conditions.

This is a concrete obstruction to the prior assistant’s proposed immediate “instantiate the elliptic Selmer complex” step: Tau Ceti has genuine H¹ localization and continuous cochain maps, but I did not find a complete original local-condition cochain complex U_v^+ with its source map of complexes that carries the global elliptic local conditions. A valid consumer must construct it; one must not silently set U_v^+=0 or substitute a split abstract complex.

## IV. Independent hostile exact calculation

Use rational one-dimensional C_G^0,C_G^1,U^0,U^1,C_L^0,C_L^1 with d_G^0=2, d_U^0=3, d_L^0=6, res^0=1, res^1=3, inc^0=1, inc^1=2, and d_G^1=d_U^1=0. Both cochain naturalities hold: 6⋅1=3⋅2 and 6⋅1=2⋅3. Then the literal matrices are
 d_F^0 = [[2,0],[0,3],[1,-1]],
 d_F^1 = [[0,0,0],[0,0,0],[3,-2,-6]],
whose exact product is ZERO. Replacing the mandated -d_L by +d_L gives third row [3,-2,+6], whose product with d_F^0 is [12,-12], NONZERO. This exact hostile sign test shows the necessity of the shifted-cone sign; it is not a simulation of the actual Galois representations.

A second structural hostile example: take global and local-condition cochains zero and a local complex concentrated in degree zero with H⁰(C_L)≠0. Then H¹(F)≅H⁰(C_L) while the naive global H¹ kernel is zero. This is the canonical missing-local-H⁰ counterexample. The Lean source’s localZeroShift_not_boundary theorem gives its general witness criterion.

A third hostile example: two deformations can have the same zero-order complex and the same H¹, while different first-order differential coefficients produce different first Bockstein maps. In particular d_0=0 on C¹=C²=Q, with d_1=0 versus d_1=id, has the same zero-order H¹ but distinct β₁. Therefore the H¹ localization defect alone does not determine the higher-derived pairing.

## V. Remaining actual arithmetic and analytic consumers

An actual Tau Ceti binding must use the correct topological/cocycle types: C¹ and C² in LowDegree.lean, d0/d1/d2 plus continuity lemmas, cochainsMap1/cochainsMap2 in ExplicitFunctoriality, and the exact elliptic SelmerStructure localization and local conditions. It must additionally build local cochain complexes U_v^+ realizing the actual condition, with commutative cochain-level inclusion maps; this cannot be inferred from abstract H¹ subgroups or from the cited finite Selmer exact sequence. One must then introduce the Iwasawa deformation and prove its d(t)^2 identities, genuine p-adic duality and derived height determinants, in the setting of Nekovář, Howard and Sano. All these are distinct from the original real Néron–Tate pairing and the COMPLEX Hasse–Weil central jet dual.

The current increment does not assert an Euler-system construction of every Mordell–Weil class, rank equality, any complex spectral self-adjointness, a canonical Q_p-to-C map, Sha finiteness or BSD-II. The previous exact arithmetic regulator and coherent Kummer image sources remain unchanged. The currently published higher-derived Bockstein source is corrected for four orientation errors only; no statement was weakened or reinterpreted.

## VI. Publication and verification

Lean pin \`leanprover/lean4:v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. Source-only code drafting and exact matrix diagnostics completed. Parser NOT_RUN, compilation NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN for all existing and new declarations. Source has no \`sorry\` or newly declared \`axiom\`. No verification tool or CI was dispatched and no downstream toolchain or import changed.

Future isolated checks:
- \`lake env lean --wfail GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticSelmerLocalizationDefect.lean\`
- \`lake env lean --wfail GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SelmerMappingFiberDegreeTwo.lean\`
- \`lake env lean --wfail GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedBocksteinSelmerBoundary.lean\`
Follow with fresh kernel replay and #print axioms, and external pinned Tau Ceti adapter-specific compile tests.

Mathematical assessment: exact cone differential, its square-zero proof and local degree-zero obstruction are complete elementary homological algebra, traceable to genuine Nekovář source. They are neither mathematical novelty claims nor proof of BSD. The live higher-rank BSD proof obligation is still a genuine regulator/period-compatible arithmetic-derived determinant comparison to the COMPLEX L(E,s) central jet, with full Sha, Tamagawa and torsion factors.
