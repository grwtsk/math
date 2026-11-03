# Genuine elliptic Kummer–Selmer cycle classes, coherent height transport, and the higher-derived analytic obstruction

Local mathematical attribution: grwtsk contributors.
Research date 2026-11-01. Source status: FINITE/GROUP ALGEBRA SOURCE_PROOF_CANDIDATE; Lean compilation NOT_RUN, fresh kernel NOT_RUN, full transitive axiom audit NOT_RUN. Classical Kummer and cited derived p-adic height results are established external theorems, but a general morphism into the complex central jets of the actual Hasse–Weil L-function is NOT proved. BSD-I and BSD-II remain OPEN.

## 1. The actual upstream arithmetic carrier, not a Selmer certificate

For a nonsingular E/Q and p prime, let A=E(Q), T=A_tors and Lambda=A/T. Let h_NT and B_NT denote the true real canonical height and its polarization. Finite generation (Mordell–Weil) and positivity show Lambda is a free finitely generated Z-module and B_NT is a strictly positive definite real bilinear form on Lambda. The regulator is the determinant in a Z-basis; no arbitrary Hilbert/Gram normalization is allowed.

The upstream SOURCE, inspected at TauCetiProject/TauCeti commit 041e4b26b134b0b92a1f69dea2c4e744bba37b8e, provides genuine rather than certificate-supplied definitions and proofs:

- GaloisCohomology/Selmer/Basic.lean, blob 5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1 (Apache-2.0, Tau Ceti contributors): WeierstrassCurve.kummerSelmerMap, kummerSelmerMap_injective, exact_kummerSelmerMap_selmerShaMap, selmerShaMap_surjective. These are the actual point group, p^n torsion Galois cohomology, chosen local embeddings, Selmer subgroup, and Sha[p^n], NOT a symbolic Mordell–Weil decomposition.
- GaloisCohomology/Selmer/NumberField.lean, blob eced9d9be32fce125f3d2ac92c27afb99643cb45: genuine completions and local conditions over a number field, Sha as cohomology locally trivial at all places, and finite_torsionBy_sha. Finite-level Sha[p^n] does NOT imply whole Sha is finite.
- MordellWeil/PointModTorsion/Basic.lean, blob cc0df2e5d9b195383a1f3565c1a50ec8adeaa434: actual PointModTorsion, neronTatePairingModTorsion, descended pairing on point representatives, Northcott positivity, actual height Gram.
- MordellWeil/Regulator/Basic.lean, blob f0144a8752f11135d91d091560c4c56613f168e5: actual regulator, real Gram basis change, positive determinant, rank-zero convention.
- CanonicalHeight/Basic.lean, blob d3dbde3fa297630c719a8a9e696ca5d2259a8867: true limit-defined height and polarization.

All upstream attribution is theirs. Its pinned toolchain is leanprover/lean4:v4.36.0-rc1 (lean-toolchain blob 2afd38716ad6182657562d3dac3c98461c1385f2), while grwtsk/math is pinned to v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Thus NO source file in this increment imports Tau Ceti: the provider adapter requires an isolated, separately checked compatibility build. Existing GRWTSK/ComputerScience/AlgorithmsInComputerScience/MordellWeil.lean remains certificate-gated, and is not silently promoted.

## 2. Actual algebraic cycle class and Galois-cohomological map

Let O be the origin of E. A genuine rational point P determines a degree-zero divisor class [P]-[O] in CH^1(E)^0=Pic^0(E), canonically identified with E(Q) by the elliptic group law (at the level of rational points, accounting for rational line bundles). The p-adic etale Abel–Jacobi image is the Kummer cohomology class in H^1(Q,T_p E), after imposing the appropriate local Selmer conditions. This is the authentic first arithmetic cycle-class map, not a chosen Hilbert spectrum.

For every n>=1, the standard Kummer long exact sequence gives the true short exact sequence
  0 -> E(Q)/p^n E(Q) --delta_n--> Sel_(p^n)(E/Q)
    -> Sha(E/Q)[p^n] -> 0.
The middle map and injectivity/surjectivity have genuine upstream Tau Ceti names above. The Kummer maps at levels p^n must be shown compatible with the actual natural cohomological transition maps E[p^(n+1)] -> E[p^n]. That compatibility is an independently identified Lean proof obligation: the new generic module has explicit KummerTransitionData rather than assuming an arbitrary family is a coherent inverse-limit tower. No Iwasawa or Selmer filtration is reconstructed by assigning dimensions.

## 3. The exact kernel of the complete Kummer tower

Compose the original rational point P in A with E(Q)->E(Q)/p^n E(Q) and genuine delta_n, yielding kappa_n(P). Injectivity of delta_n means
  ker kappa_n = p^n A.
Hence the kernel of the full coherent family kappa_infty is
  K_infty = intersection_(n>=1) p^n A.
By the Mordell–Weil decomposition A≅Z^r ⊕ T and the elementary decomposition T=T[p^infty]⊕T[p'], where T[p'] is the prime-to-p torsion, intersection_n p^n Z^r=0, intersection_n p^n T[p^infty]=0, and multiplication by p^n is an automorphism of T[p']. Therefore
  K_infty = T[p'].
This is **NOT** 0 on the full E(Q) in general. It is exactly killed by Neron–Tate B_NT, so the original height factors on the IMAGE of the full coherent tower. No value of any finite-level Selmer height has been fabricated.

The p-primary torsion part of T maps to torsion in the coherent Selmer tower. Taking the torsion-free quotient of the *image* of the coherent map removes that part. Thus there is a canonical isomorphism of Z-lattices
  Lambda_E ≅ im(kappa_infty)/torsion.
This is not a claim that all Selmer classes come from rational points; the quotient by Sha can be nontrivial. The real vector space of this PARTICULAR image after tensor with R identifies with H_E=(A/T)⊗R. The genuine Neron–Tate pairing is transported back from A (it annihilates K_infty) and its Gram/regulator is preserved exactly on an integral basis.

The new isolated Lean algebra module accepts actual additive level maps kappa_n plus explicit level-kernel witnesses; proves kernel/divisibility, demonstrates how a height form annihilating the common kernel transports to the image independently of arbitrary representative choices, proves full matrix and determinant conservation, and requires explicit transition commutativity to produce coherent inverse-limit elements. No built-in Tau Ceti Galois classes appear in its source until a compatible adapter is proved.

## 4. Fatal finite-level height collapse; no false compatibility

For any P with h_NT(P)>0 and n>=1, the finite Kummer map identifies delta_n(p^nP)=delta_n(0), while h_NT(p^nP)=p^(2n)h_NT(P)>0 and h_NT(0)=0. Hence no function from a SINGLE finite Selmer group to R can extend the original real canonical height of all rational points. The new Lean theorem positive_height_not_factor_through_finite_kummer proves this generic contradiction exactly from source quadraticity and the finite-level killed point; it is NOT a claim that the genuine Selmer structure itself has no different p-adic height.

There is a stronger topology obstruction. For a nontorsion P, kappa_infty(p^nP)->0 in the profinite (coherent inverse-limit) topology: each fixed level eventually vanishes. But h_NT(p^nP)=p^(2n)h_NT(P)->+infinity in R. Therefore the real Neron–Tate height on the discrete embedded Mordell–Weil lattice cannot extend continuously to the p-adic completion with its natural topology. It is mathematically invalid to call a Nekovar p-adic Selmer height the original real Neron–Tate height. Distinct fields and normalization are not removable by an arbitrary linear change of basis.

Independent finite integer/rational diagnostics, p=3 on positive definite Gram matrices of ranks 1,2,3, showed p^nP has zero class modulo p^n while heights scale by p^(2n). Original determinant/height fixtures: rank 1 det=2,h=2, rank 2 det=8,h=18, rank 3 det=56,h=178. At n=2 the class remains zero while heights become 162,1458,14418 respectively. These are finite hostile checks, not a universal kernel/axiom proof.

## 5. Genuine higher-derived arithmetic heights: precise source scope

Jan Nekovar, *On p-adic height pairings*, https://webusers.imj-prg.fr/~jan.nekovar/pu/height.pdf , constructs p-adic height pairings for good p-adic Galois representations, including etale Abel–Jacobi classes of algebraic cycles under stated hypotheses and choices of p-adic logarithms/Hodge splittings. This pairing targets Q_p and is NOT B_NT valued in R.

Benjamin Howard, *Derived p-adic heights and p-adic L-functions*, arXiv:1202.6343 (2012): Definition 2.2 gives the higher derived heights and Lemma 2.3 describes their kernels. Theorem 4.2 constructs a filtration S_p^(1) ⊇ S_p^(2) ⊇ ... with derived pairings h_p^(r) and radical S_p^(r+1); Theorem 4.5, under its hypotheses and for a specific cohomological Iwasawa class z, relates h_p^(r)(z_0,c) to the r-th derivative class of the COHOMOLOGICALLY DEFINED p-adic L-function in J_p^r/J_p^(r+1). Howard explicitly warns after Theorem 4.5 that in higher Selmer dimension this formula computes heights against a FIXED z_0, not all pairwise height entries in a basis; hence it does NOT establish a higher-rank regulator determinant for free.

Additional existing arithmetic advances, not imported as a general BSD proof: Chan-Ho Kim, *A higher Gross--Zagier formula and the structure of Selmer groups*, Trans. Amer. Math. Soc. 377 (2024) 3691--3725, DOI 10.1090/tran/9125; Daniel Disegni, *The universal p-adic Gross--Zagier formula*, arXiv:2001.00045, in analytic rank-one families.

## 6. Why the complex central-jet comparison remains unproved

For genuine Hasse–Weil L(E,s), the central complex jet is
  J_E^C = O_(s=1)/(L(E,s)),
  dim_C J_E^C = ord_(s=1)L(E,s).
The Connes/Jiang--Luo construction supplies a complex automorphic spectral central-zero correspondence under its actual analytic hypotheses (Theorem 8.1, Jiang--Luo 2023), and the finite automorphic test normalizer reconstructs the complex Taylor coefficients (Lemma 8.3). Neither a p-adic Selmer height nor an Iwasawa augmentation-jet class gives a **canonical or proved** map into this complex quotient for arbitrary elliptic rank. There is no continuous unital scalar embedding Q_p -> R/C compatible with the standard topologies: p^n->0 p-adically while the images of rational integers p^n fail to tend to zero in R/C. Choosing a noncontinuous abstract field embedding, even if one exists set-theoretically, would not prove equality of the two L-functions' central Taylor derivatives or preserve real Neron–Tate regulators. Interpolation of p-adic L-values is not a statement about complex derivatives in s.

There IS a genuine restricted rank-one span. Under Gross--Zagier and Kolyvagin hypotheses (L(E,1)=0, L'(E,1)!=0, suitable Heegner K with L(E^D,1)!=0), the real arithmetic rank one is deduced from established theorems; the actual Heegner Q defines
  Phi_(E,Q)(P)([f]) = B_NT(P,Q)f(1).
Using the inverse of the Kummer map on its ACTUAL coherent arithmetic lattice image yields exactly the same Phi; Gross--Zagier fixes the scalar height/first derivative and its integral index m^2 as reviewed in bsd-heegner-height-central-jet-rank-one-2026-11-01.md. That restricted map is NONCIRCULAR and becomes a complex line isomorphism after tensoring the source lattice with C. It is NOT a higher rank construction or independent Connes spectral norm.

To prove general BSD-I by this route one must produce, for every r, true higher cycle/Selmer classes spanning the arithmetic Mordell–Weil lattice, an independently defined comparison to the ACTUAL complex central r-jet dual, prove matching kernels/surjectivity without assuming rank equality, and give an exact regulator/period/local/Tamagawa/torsion/Sha determinant-line return. The candidate code and known Howard theorems do not solve these open premises.

## 7. Source and verification status

New isolated source:
  GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/MordellWeilCoherentKummerHeight.lean
  source blob c3ccd70a2d817dc0534b103239e69e6ad26891e7
  namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.CoherentKummerHeight.
Declarations: kummerTower, kummerTower_zero, kummerTower_add, tower_equal_implies_level_kernel, tower_kernel_iff_power_divisible, tower_injective_of_power_separated, KummerImage, packSource, chooseSource, chooseSource_spec, heightOnImage, KernelHeightCompatible, heightOnImage_packSource, originalSourceGram, coherentImageGram, coherentImageGram_eq_source, coherentImageGram_det_eq_source, tower_injective_of_height_kernel, positive_height_not_factor_through_finite_kummer, KummerTransitionData, CoherentKummerClasses, coherentClassOfSource, coherentClass_injective_of_positive_height.

This module is the generic finite-cohomology-consumer algebra, NOT the actual source of W.kummerSelmerMap. The Kummer kernel and transition hypotheses are mathematical obligations; a compatible Tau Ceti provider port (or an independent actual pinned Lean proof) must discharge them. No self-chosen rank or complex analytical jet has been introduced. No root GRWTSK.lean imports, dependency pin modifications, foreign repository changes, CI/verification dispatch or source promotion.

Repository pinned Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; syntax/compilation NOT_RUN, fresh independent kernel replay NOT_RUN, transitive axiom audit NOT_RUN. Candidate has no source-level sorry or axiom declaration. Source-bound future verification command: lake env lean --wfail GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/MordellWeilCoherentKummerHeight.lean followed by isolated kernel and #print axioms audit and the EXTERNAL Tau Ceti adapter compatibility checks. A source blob is not an accepted compiled proof.

Disposition: arithmetic-to-Galois/finite-Selmer cycle classes and original real regulator transport on the **coherent arithmetic image** are classically source-grounded, with new general algebraic Lean candidates. Higher derived p-adic heights retain their true coefficient and scope. The missing general complex central-jet comparison remains OPEN; it is not solved by substituting a p-adic L-jet for an ordinary complex Taylor derivative.
