# Tau Ceti genuine elliptic Kummer–Selmer and Néron–Tate source adapter

Local attribution: grwtsk contributors. This is a SOURCE CONTRACT, NOT a compiled adapter and NOT an external execution request. Preserve original Tau Ceti contributors' Apache-2.0 authorship and licenses. Never copy pinned external Lean modules into the root build as a workaround.

## Original actual providers (immutable source pin)

Repository TauCetiProject/TauCeti, source revision 041e4b26b134b0b92a1f69dea2c4e744bba37b8e. Toolchain source lean-toolchain blob 2afd38716ad6182657562d3dac3c98461c1385f2, Lean v4.36.0-rc1.

- TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean, blob 5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1: WeierstrassCurve.kummerSelmerMap, kummerSelmerMap_injective, exact_kummerSelmerMap_selmerShaMap, selmerShaMap_surjective. The quotient's source is the ACTUAL W.toAffine.Point with kernel (nsmulAddMonoidHom m).range, not an invented free Z-module. Requires a genuine separable-closure/local field embedding family and hm : IsUnit (m : K).
- TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/NumberField.lean, blob eced9d9be32fce125f3d2ac92c27afb99643cb45: genuine completion local conditions, W.sha and finite_torsionBy_sha (finite-level only).
- TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/FinitelyGenerated.lean, blob 189193b56794e32083b9e02110c48fe1ba10b785: fg_point_of_numberField, moduleFinite_point_of_numberField.
- TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean, blob d3dbde3fa297630c719a8a9e696ca5d2259a8867: canonicalHeight, neronTatePairing, torsion annihilation, quadraticity.
- TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/PointModTorsion/Basic.lean, blob cc0df2e5d9b195383a1f3565c1a50ec8adeaa434: PointModTorsion, neronTatePairingModTorsion, true neronTateGramMatrix, Northcott positivity.
- TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/Regulator/Basic.lean, blob f0144a8752f11135d91d091560c4c56613f168e5: regulator, regulator_eq_abs_det_neronTateGramMatrix and genuine integral-basis congruence.

Main grwtsk/math pinned Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The external provider is not imported, compiled or kernel replayed here.

## Exact future type mapping, without weakening the mathematics

1. Choose actual W : WeierstrassCurve Q with [W.IsElliptic], and the genuine all-places completion family with compatible separable-closure embeddings tau. Fix a prime p with p>=2.
2. For each n use m=p^n (n starts at one; level zero is the zero quotient). Obtain IsUnit(m : Q). Define kappa_n: W.toAffine.Point ->+ W.selmerGroup tau m by composing the genuine quotient point -> (W.toAffine.Point / m W.toAffine.Point) with W.kummerSelmerMap tau hm.
3. From kummerSelmerMap_injective and the literal quotient kernel prove kappa_n(P)=0 iff P in m W.toAffine.Point. No assumed Selmer rank or analytic jet order enters.
4. Construct genuine transition homomorphisms from the actual torsion inclusion/multiplication E[p^(n+1)] -> E[p^n], inducing cohomological maps on H1 and preserving local Selmer conditions. Prove that the kappa_n commute with them. The source-only grwtsk/math KummerTransitionData field is currently NOT discharged. Do not infer compatibility merely from matching index labels.
5. Use Mordell--Weil finite generation to prove intersection_n p^n W.toAffine.Point = its prime-to-p torsion. The module's generic height-kernel compatibility then follows from the TRUE neronTatePairing tor-annihilation. Its resulting pairing on the coherent Kummer *image* has exactly the ORIGINAL Gram on any source integer family. Only after supplying a genuine full basis (Module.Basis over Z on PointModTorsion W) may its determinant be called the actual regulator.
6. Taking the torsion-free quotient of the coherent image gives an image canonically isomorphic to PointModTorsion W. It does not identify the complete Selmer group with rational points; the Sha[p^n] exact cokernel stays.
7. Preserve the external height's convention through to the complex Gross--Zagier normalization. Do not substitute a different half-height or an orthonormal real basis. An unrelated Formal Conjectures normalization can change the rank-r regulator by 2^r.
8. Only a separate Howard/Nekovar p-adic Selmer-complex provider constructs p-adic derived heights. Those pairings are NOT the real Neron--Tate form transported along the discrete Kummer image; do not identify their coefficient fields. Their proven output is a p-adic Iwasawa augmentation jet, not the genuine complex L(E,s) Taylor jet.

## Acceptance and review

Actual upstream source is a precise concrete target, not an already installed dependency. Isolate any future Tau Ceti adapter package in its own compatible toolchain; keep source-specific GRWTSK module under the MSC subject tree and add relative adapter pointers here. Compile actual imported Kummer, finite-generation and Neron--Tate theorems first, and only then prove the level transitions, infinite kernel, torsion quotient, original Gram transport, and the previously published Schur regulator. Recheck the full transitive axiom closure of those exact imports. No root GRWTSK umbrella import, version migration, verification dispatch or Git-effect machinery is authorized by this note.

The missing proof of the higher-rank arithmetic classes versus the COMPLEX central analytic jet remains the open BSD comparison. A successful p-adic derived-height theorem alone would not certify it.
