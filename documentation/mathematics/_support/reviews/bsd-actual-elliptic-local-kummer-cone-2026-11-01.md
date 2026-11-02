# The actual local elliptic Kummer condition as a derived cochain mapping fiber

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01 (America/Los_Angeles).
Mathematical disposition: the standard local cone-image/Kummer identity is proved below, using the actual elliptic Galois module \(E[m]\), the actual geometric point module \(E(\overline K_v)\), and the genuine cohomological Kummer long exact sequence. It is established classical homological algebra, NOT a new BSD proof.
Formal disposition: one isolated generic Lean source candidate in the pinned grwtsk/math core, one source-typed Tau Ceti adapter in a separate incompatible-upstream scope. Both parsing/compilation NOT_RUN, fresh kernel replay NOT_RUN, complete transitive axiom audit NOT_RUN. No new axiom or sorry declaration. The original upstream mathematical source is not claimed to have been rebuilt in this repository.

## I. The actual elliptic objects

Let \(E/\mathbb Q\) be a genuine nonsingular Weierstrass elliptic curve. Let \(v\) be a place of \(\mathbb Q\), \(F=\mathbb Q_v\), \(G_F=\mathrm{Gal}(F^{\mathrm{sep}}/F)\), and \(m=p^n>1\) with \(p\) an actual prime. All local fields involved have characteristic zero, so multiplication by \(m\) is separable and \([m]:E(F^\mathrm{sep})\to E(F^\mathrm{sep})\) is surjective. Define the actual discrete continuous Galois modules
    \(A=E[m](F^\mathrm{sep}),\quad B=E(F^\mathrm{sep}),\quad j:A\hookrightarrow B\).
The short exact sequence \(0\to A\xrightarrow{j}B\xrightarrow{[m]}B\to0\) is a genuine elliptic isogeny sequence, not a symbolic certificate or abstract source dimension.

Use the ACTUAL continuous inhomogeneous cochains \(C^r_A=C^r_\mathrm{cont}(G_F,A)\) and \(C^r_B=C^r_\mathrm{cont}(G_F,B)\). Let \(j_r:C^r_A\to C^r_B\) be postcomposition with the genuine \(G_F\)-equivariant coefficient inclusion. Cochain functoriality gives \(d_Bj_r=j_{r+1}d_A\), and the actual differential identities give \(d_A^2=0,d_B^2=0\).

Define, IN ALL DEGREES, the actual local-condition cochain complex
    \(U_v^+ := \operatorname{Cone}(C_A^\bullet\xrightarrow{j}C_B^\bullet)[-1]\).
In degrees 0,1,2:
    \(U^0=A\),
    \(U^1=C_A^1\oplus B\),
    \(U^2=C_A^2\oplus C_B^1\),
    \(d_U^0(a)=(d_A^0a,j_0a)\),
    \(d_U^1(c,b)=(d_A^1c,j_1c-d_B^0b)\).
Expand the composite:
    \(d_U^1d_U^0(a)=(d_A^1d_A^0a,\ j_1d_A^0a-d_B^0j_0a)=(0,0)\).
This keeps the full shifted \(B^0\) term and its critical MINUS sign. It does not import a self-adjoint spectral operator or a conjectural BSD rank.

The canonical projection of complexes \(i_v^+:U_v^+\to C_A^\bullet\) has \(i^+_1(c,b)=c\). A degree-one cocycle \((c,b)\) satisfies precisely
    \(d_A^1c=0,\quad j_1c=d_B^0b\).
Thus the image in \(H^1(G_F,A)\) lies in the kernel of \(H^1(j)\). Conversely, if a class \([c]\in H^1(G_F,A)\) is killed by \(H^1(j)\), then its representative \(j_1c\) is an ACTUAL continuous \(B\)-coboundary, so there exists \(b\in B\) with \(j_1c=d_B^0b\), making \((c,b)\) a genuine cone one-cocycle. If the representative changes by an \(A\)-boundary \(c\mapsto c+d_A^0a\), the nullhomotopy changes by \(b\mapsto b+j_0a\), and the cocycle remains valid by the same cochain naturality. No arbitrary test space or basis selection occurs.

Consequently, the EXACT theorem is
    \(\mathrm{im}(H^1(i_v^+))=\ker[H^1(G_F,A)\to H^1(G_F,B)]\).
By the long exact cohomology sequence of \(0\to E[m]\to E\xrightarrow{[m]}E\to0\), the latter is exactly
    \(\mathrm{im}(\delta_{v,m}:E(F)/mE(F)\hookrightarrow H^1(G_F,E[m]))\).
The local condition is therefore the genuine local elliptic Kummer condition. All claims concern the ACTUAL elliptic coefficients and long exact connecting map; no analytic BSD theorem enters.

## II. Literal comparison to Tau Ceti's local-condition source

The immutable external source under review is TauCetiProject/TauCeti commit \`2bdb755239d3bd84760e99bc83166bdf7cc75a6b\`, authorship The Tau Ceti contributors, Apache-2.0:
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean\`, blob \`9596754d63dfddae05765acc47fab267df58da7e\`. Defines genuine \(C^1,C^2\) as continuous cochain AddSubgroups; \(d^0,d^1,d^2\), \`d1_comp_d0_apply\`, \`map_d0_apply\`, \`Z1_le_C1\`, \`H1pi_eq_zero_iff\`, and continuity of the real cochain differentials.
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean\`, blob \`589ba4d163c40ae0b20dc8de1a3911a6a334c530\`. Defines actual cochain and cocycle coefficient maps, \`cocyclesMap1_apply\`, and \`explicitCoeff1_mk\`.
- \`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean\`, blob \`3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b\`. Defines the ACTUAL \`W.TorsionCoeff m\`, \`W.PointCoeff\`, \`W.torsionCoeffIncl m\`, \`W.kummerMap m hm\`, and proves \`W.range_kummerMap m hm\` equating the Kummer image with the kernel of \`explicitCoeff1\`. Its actual homological maps are not an abstract certificate.
- \`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean\`, blob \`5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1\`. Its \`W.selmerStructure τ m\` specifies, at each chosen local field \(L_i\), the precise \`localCondition i = (explicitCoeff1 G_i ((W⁄L_i).TorsionCoeff m) ((W⁄L_i).torsionCoeffIncl m)).ker\`, proved by \`W.selmerStructure_localCondition\`. Its \`mem_selmerGroup_iff_forall_torsionRes_mem_range_kummerMap\` identifies the global Selmer subgroup with these exact local images.
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/SelmerStructure.lean\`, blob \`cd7c633795865655521f955a6bd3ba52a6bf30d4\`, defines actual H¹ localization morphisms and local subgroups.
- \`lean-toolchain\` blob \`2afd38716ad6182657562d3dac3c98461c1385f2\` is \`leanprover/lean4:v4.36.0-rc1\`; local \`grwtsk/math\` still uses Lean v4.34.1 with Mathlib pin \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. No compilation or compatibility of these distinct environments is inferred.

The new Tau Ceti-specific Lean candidate \`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerCone.lean\`, blob \`9cdb5cd999b2723a916146b203ea05ea504fb9a8\`, imports the ACTUAL external elliptic Selmer and continuous cochain sources in an isolated adapter. It defines literal \(U_v^0,U_v^1,U_v^2,d_U^0,d_U^1\) using \`W.TorsionCoeff m\`, \`W.PointCoeff\`, \`TauCeti.ContCohomology.C1/C2\`, \`d0/d1\`, and \`W.torsionCoeffIncl m\`. It supplies candidate proofs \`localD1_localD0\`, \`cone_cycle_iff_lift\`, \`cone_lift_iff_actualLocalCondition\`, \`actualLocalCondition_eq_kummer\`, \`local_cone_condition_matches_selmerStructure\`, and \`cone_cycle_iff_selmerStructure_localCondition\` for an arbitrary actual local field in the selected family. This is an UNCOMPILED adapter source, and its reported proof bodies are not kernel receipts. Preserve exact upstream attribution and dependency toolchain scope.

The parallel generic pinned-Mathlib source \`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerConditionCone.lean\`, blob \`6cc6beef014a7646044555b0b9f0ea10b9da1a39\`, proves the actual low-degree cone differential algebra from explicit \(d_A,d_B,j\) cochain naturalities (which the real Tau Ceti source provides), the cocycle-lift-versus-full-coefficient-boundary criterion, boundary-representative invariance, and the first cohomology quotient of this local cone. Its \`LocalInclusionData\` is precisely a supply contract for the genuine cochain objects, not a substitute for them. It does not assume a numerical Selmer dimension or BSD rank. Importing the incompatible Tau Ceti source into this pinned local build is NOT_DONE.

## III. The noninjective local degree-zero contribution

The cone distinguished triangle supplies
    \(H^0(G_F,A)\to H^0(G_F,B)\to H^1(U_v^+)\to H^1(G_F,A)\to H^1(G_F,B)\).
Because the coefficient inclusion on invariants is the actual injective \(E(F)[m]\to E(F)\), the resulting exact sequence is
    \(0\to E(F)/E(F)[m]\to H^1(U_v^+)\to \mathrm{im}(\delta_{v,m})\to0\).
In particular \(H^1(U_v^+)\to H^1(G_F,A)\) usually has a NONTRIVIAL kernel. It is therefore invalid to claim that a cone realization of the Kummer condition must be a simple local condition with injective \(H^1\) map. That source of extra local H⁰ data must be retained in any global Selmer mapping fiber.

In a char-zero separably closed geometric setting the multiplication-by-m is surjective on the whole \(E(\overline F)\), so the above cochain triangle is compatible with the connecting homomorphism of the genuine short exact isogeny sequence. A specific comparison \(H^1(U_v^+)\cong E(F)\) can be obtained in the derived category under the full exactness/quasi-isomorphism hypotheses; it is not an identification silently assumed by the code.

## IV. Relationship with the global Selmer complex and limits of this bounded result

For an actual global set of places \(S\) and all genuine local completions, take the family \(\Delta_v=(U_v^+,i_v^+)\) as local conditions and insert the cochain maps into the shifted global cone
 \(\widetilde C_f^\bullet =\operatorname{Cone}(C^\bullet(G_{\mathbb Q,S},E[m])\oplus \bigoplus_{v\in S}U_v^+\to\bigoplus_{v\in S}C^\bullet(G_v,E[m]))[-1]\).
The existing grwtsk/math \`SelmerMappingFiberDegreeTwo.lean\`, blob \`2f4aa5efe281f7fe753e2006e687a3316472feb4\`, supplies the generic first-three-degree global mapping-fiber algebra and retains local H⁰. This new work supplies the precise local \(U_v^+\) object and its actual H¹ image, not a full unramified/restricted product global cochain complex. At real/infinite places, archimedean cohomology conventions must be matched explicitly rather than assumed identical to finite-place cochains.

The bounded construction concerns each fixed finite \(m=p^n\) with coefficient modules \(E[m]\). The passage to the \(\mathbb Z_p\)-adic Tate module or an Iwasawa family, unramified conditions away from \(pN\), and Bloch–Kato/Greenberg local conditions at \(p\), all require independent exact comparison and derived inverse-limit control. One cannot simply replace the finite-level Kummer condition at every place by an ordinary or unramified condition without a proved reduction hypothesis.

Finally, the local Kummer image has NO direct comparison to the complex central Taylor jet \(\mathcal O_{s=1}/(L(E,s))\). Nekovář, Howard and Sano construct p-adic Selmer/derived height mechanisms in distinct coefficient fields and under additional hypotheses. A global derived regulator determinant with full archimedean periods, Tamagawa factors, Sha, torsion and complex zero order is still the open higher-rank BSD problem.

## V. Independent hostile finite algebra diagnostics

Exact rational linear algebra was used to check the actual low-degree cone sign and cohomology-image claim without pretending to run Galois or Lean code:

1. Let \(A^0=\mathbb Q\), \(A^1=\mathbb Q^3\), \(A^2=\mathbb Q\) with \(d_A^0=e_1\) and \(d_A^1(x)=x_3\). Let \(B^0=\mathbb Q^2\), \(B^1=\mathbb Q^3\) with \(d_B^0(b_1,b_2)=(b_1,b_2,0)\). Choose \(j_0(1)=(1,0)\) and \(j_1=\mathrm{id}\). Then \(d_U^1d_U^0=0\), \(\dim H^1(A)=1\), \(\dim H^1(U)=1\), and the image and kernel have dimension one.
2. Keep all the same objects but send the second source coordinate via \(j_1(e_2)=e_3\), while preserving the naturality \(j_1d_A^0=d_B^0j_0\). Then \(H^1(A)\) remains dimension one, but its image in \(H^1(B)\) is nonzero; \(\dim H^1(U)=0\), and the image/kernel dimensions are both zero. One cannot infer a fixed local Selmer dimension from the cone type.
3. With \(A=0\) and a local complex \(B\) concentrated in degree zero with \(B^0=\mathbb Q\), the cone has \(H^1(U)=\mathbb Q\) but \(H^1(A)=0\). This hostile control proves that a local degree-zero correction survives despite the projected Kummer condition being zero.

All three are finite exact diagnostics, not actual elliptic curve computations or Lean verification. The universal mathematical proof is the cochain differential calculation and the genuine Kummer long exact sequence.

## VI. Precise verification and remaining source gates

Local generic source and separate Tau Ceti adapter have no newly declared \`sorry\` or \`axiom\`. Parsing NOT_RUN; compilation NOT_RUN; fresh kernel replay NOT_RUN; complete transitive axiom audit NOT_RUN for BOTH environments. External adapter compatibility NOT_RUN. No \`lean\`/\`lake\` executable was available in the local authoring container, and no CI/proof verification was dispatched. Source publication on grwtsk/math main must be checked by exact readback after committing.

Exact future local source verification:
 \`lake env lean --wfail GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerConditionCone.lean\`
and separately in a pinned Tau Ceti compatible, isolated environment with its own Mathlib:
 \`lake env lean --wfail documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerCone.lean\`
followed by fresh kernel replay, \`#print axioms\` on each theorem, full transitive axiom audit, and exact source comparison with the original elliptic Kummer maps and every local place.

The mathematical local-condition image theorem is complete from established Kummer exactness, even though these new Lean candidates await independent compilation. The global higher-derived Selmer complex, duality, Iwasawa regulator and complex BSD bridge remain OPEN.
