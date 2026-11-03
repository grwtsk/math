# An undoubled Appell–Humbert semicharacter on the actual CM ring-of-integers period torus

Mathematical attribution: **grwtsk contributors**; formalization assistance: OpenAI. Source candidate dated 2026-11-02; **COMPILATION_NOT_RUN**, **EXPECTED_TYPES_NOT_RUN**, **FRESH_KERNEL_NOT_RUN**, **TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. Mathematical comparison and finite diagnostics are distinct from source elaboration.

## Original sources, exact identity and root-import boundary

- Current `grwtsk/math` observed source base `162891132952e479189bfbc59529185fccfc10b1` (before publication; GitHub head must be rechecked and leased before advancing main). No existing mathematical declarations, root imports, Mathlib pin, source provenance or signed arithmetic energy targets are changed.
- Original derived *positive integral CM period form* and actual ring-of-integers sites: `GRWTSK/Geometry/CMActualPeriodTraceComparison.lean` (blob `5c2036d896ecebdb409b05b7a228a8fc2ebacd05`), `CMActualIntegralPeriodResidueLinks.lean` (blob `431417c587070fa7a1f2c1082d04dadd3008a056`), `CMActualPeriodDoubledAutomorphy.lean` (blob `134905b34aa7d836b5818c0f6b077e7f9644d656`), `CMActualPeriodCoverCurvature.lean` (blob `5d09f7a777fa66fd034a12042dfbd38f4eec7049`), and `CMRiemannSemicharacter.lean` (blob `7073576c99b09bf19bea342bf5882093d6123225`). All remain untouched.
- Upstream source explicitly pinned `openai/math@4eaee87548250b2682affda7d05d947c05554bae`: `lean/OAI/AlgebraicGeometry/ComplexMultiplication/CM/PeriodSpace.lean`, blob `e6f4424149cadd941963e9888cec770997ac2276`; `PeriodRiemannForm.lean`, blob `1e71c2d4e74e6dde8f36a1e93f04daa23664daa6`; `PeriodHermitian.lean`, blob `a56e096f6ebcbd86b64929bf355e30ac89e3a89c`; `IntegralPolarization.lean`, blob `b4dec3f0a6a96d7253dfd574c80d8dadcb38e1c3`; `lean/OAI/Geometry/ComplexTorus/RiemannProjectivity/ProjectivityCriterion.lean`, blob `82187516feab68f8797114fa417e1194b74e3e82`. No source copies are added to root imports. Source dependency compatibility is a pending acceptance facet.
- Formal toolchain references: Lean `leanprover/lean4:v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Lean and Lake are unavailable in the local runtime. The new files may need minor theorem/tactic fixes before elaborating; no pretense of kernel validation is made.
- Primary classic background: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, 2nd ed. (Springer, 2004), Chapter 2, §§1–2, DOI `10.1007/978-3-662-06307-1`. This is established Appell–Humbert mathematics; the contribution is a **source-exact link from the actual O_E lattice to a generated semicharacter and metric-compatible cover action**, not a novelty claim for the classical theorem.

## The actual integral lattice and the quadratic refinement

Let E be the *same* Galois CM number field as the source, epsilon its actual CM embedding type, V the period space `InfinitePlace E → ℂ`, and Λ its `periodIntegerLattice`, the **image of the ring of integers O_E**, not an arbitrary Z-span of a Q-basis. Let H be the already sourced positive Hermitian form, conjugate linear in its first slot and complex linear in its second slot, with integer imaginary period pairing

`B(a,b) = Im H(period(a),period(b)) = actualIntegerPeriodFlux E epsilon a b`, `a,b∈O_E`.

Mathlib's free finite integer basis of O_E can be reindexed by an explicit `Fin N` with `N=card(Free.ChooseBasisIndex ℤ (O_E))`. The basis is not canonical; no false basis-free theta characteristic is claimed. For the chosen ordered basis `(e_i)`, set `M_ij=B(e_i,e_j)` and integral coordinates `a_i`. Bilinearity of the original Riemann form gives the exact **full** matrix return

`B(a,b) = ∑_i ∑_j a_i M_ij b_j`.

Define `U(a,b)=∑_{i<j} a_i M_ij b_j` and `q(a)=U(a,a)`. Skewness and zero diagonal give `B(a,b)=U(a,b)-U(b,a)`. Therefore

`q(a+b)-q(a)-q(b)=U(a,b)+U(b,a)=B(a,b)+2U(b,a)`.

The **actual** semicharacter `α(a)=(-1)^q(a)` is unit modulus, α(0)=1, and satisfies

`α(a+b)=α(a) α(b) (-1)^B(a,b)`.

No new pairing matrix or freely chosen gauge parameter replaces the original source B. Under a different integer basis, α may change by an ordinary U(1) character; this is a standard legitimate Appell–Humbert ambiguity and is not a change in B. An arbitrary Q-basis lattice cannot be quietly substituted for O_E.

## The undoubled factor, its cocycle, metric and independent residue flux

Let `p(a)=epsilon.periodEmbedding((a:E))` and write the source H with the convention linear in the SECOND slot. Define

`F(a,z)=exp[πH(p(a),z) + (π/2)H(p(a),p(a))]`,

`J(a,z)=α(a)F(a,z)`.

The exponent difference is explicitly

`log F(a,z+p(b)) + log F(b,z) - log F(a+b,z)`
` = (π/2)(H(p(a),p(b))-H(p(b),p(a)))`
` = πi B(a,b)`.

Since B is an actual INTEGER on O_E, `exp(πiB)=(-1)^B`. The semicharacter's twisted law then cancels this exact phase, proving

`J(a+b,z)=J(a,z+p(b)) J(b,z)`.

This is a **holomorphic, nonzero, undoubled** factor; the action on the cover is `(z,w)↦(z+p(a), J(a,z)w)`. A genuine additive group action follows, including inverses. The algebraic orbit setoid has an honest quotient and a base projection to the actual compact CM period torus. This is not yet a topological or holomorphic locally trivial line bundle; that stronger property requires explicit quotient topology and local charts.

The weight `h(z)=exp[-π Re H(z,z)]` is positive. Hermitian symmetry gives

`Re H(z+p(a),z+p(a)) = Re H(z,z) + 2 Re H(p(a),z) + Re H(p(a),p(a))`.

Thus `h(z+p(a)) |J(a,z)|²=h(z)`. This is the **correct metric-isometry condition** for the chosen fiber-shift convention. A descended Chern connection with genuine differential-form curvature remains a separate geometric theorem.

Because α(a) is always ±1,

`J(a,z)^2 = exp[2πH(p(a),z)+πH(p(a),p(a))] = J₂(a,z)`.

The right side is EXACTLY the **previously published doubled factor** in `CMActualPeriodDoubledAutomorphy.lean`. The doubling relation does NOT make odd parity holonomy trivial on the undoubled bundle: the signed triangle phase from `CMActualIntegralPeriodResidueLinks.lean` is

`W_{ijk}=(-1)^{B(s_j-s_i,s_k-s_i)} = exp[(1/2) F_cover(s_j-s_i,s_k-s_i)]`,

where `F_cover(u,v)=2π i B(u,v)` is the previously defined cover **curvature coefficient**. The final equality is source-algebraic, not a proof that `F_cover` is a descended Chern curvature. All original parity, nonunit additive residue classes, integer labels, Möbius coefficients and signed interference terms are independent and unchanged. They do not become a physical detector observable by this construction.

## Hostile checks / source comparison / prior-art

- E=Q(i), O_E=Z[i], H(z,w)=conj(z)w. The ordered basis (1,i) gives `B((a,b),(c,d))=ad-bc`, `q(a,b)=ab`, `α(a,b)=(-1)^(ab)`. This yields a nontrivial α and the original odd triangle phase. Using α≡1 **fails** the undoubled cocycle when B is odd, though the doubled cocycle still works. The sign depends on source orientation and is preserved.
- Scaling B by 2 preserves rational nondegeneracy and positivity but makes the mod-two triangle holonomy trivial. **Oddness is not guaranteed by geometric positivity**.
- The new basis is an INTEGRAL basis of O_E; multiplying source Q-basis coordinates into O_E or treating `latticeScale` as the integral-basis change is not a justified identification.
- A different ordered basis can change α by a unitary CHARACTER, but not its polarization B; this was independently tested. That is a genuine ambiguity, not a failed construction.
- A coherent signed arithmetic pickup readout is not the positive Hermitian norm of this bundle, and these automorphy identities do not give an all-rate Mertens/Möbius energy estimate or periodic Schwartz-to-Lᵖ smoothing.
- Appell–Humbert is classical. The pinned upstream projectivity construction already proves a doubled holomorphic factor, which is not an undoubled α. Both exact sources are named rather than treating two scripts as independent proofs of the same theorem.

The independent reference `/mnt/data/cm_actual_undoubled_appell_humbert_reference.py` passed **487,612 assertions** using finite exact-rational integer identities and 70-digit high-precision complex tests, including cocycle, squared factor, metric covariance, triangle area and reindexed integral bases. This is finite evidence only. No CERN event rows or experimental coupling fits are used. No second independent general analytic proof of Appell–Humbert is claimed.

## Exact verification targets and remaining gates

Candidate modules:

1. `GRWTSK/Geometry/CMActualIntegralBasisSemicharacter.lean` — true O_E basis, original period matrix, integer coordinate reconstruction and α.
2. `GRWTSK/Geometry/CMActualUndoubledFactorCocycle.lean` — undoubled J, cocycle, and period-cover action.
3. `GRWTSK/Geometry/CMActualUndoubledOrbitTotalSpace.lean` — algebraic orbit quotient and base map to the same original period torus.

**Local-only candidate (NOT_PUBLISHED):** `CMActualUndoubledMetricCurvature.lean` records a proposed cover metric isometry theorem, doubled square comparison and cover-flux-to-residue link law. The GitHub write for this specific source was blocked by a safety check. No kernel or repository acceptance is claimed for those theorems; the analytic identities and independent finite tests remain documented for subsequent review. Do not import that unpublished source from a published module.

All are **SOURCE_PROOF_CANDIDATE**; parsing, elaboration, expected-type checking, fresh kernel replay, transitive axiom audit, full analytic bundle descent and independent mathematical review remain NOT_RUN or OPEN, as indicated. The source carries no new `sorry` or `axiom`, but this is not equivalent to successful elaboration. The specific differential operators and Chern connection on the quotient line bundle, compatible choice for the PARTICULAR original CM abelian variety, full original residue-site assignment, detector POVM/efficiency/time scale and CERN event-level likelihood remain OPEN.

This increment adds no hidden publication authority, schedules, CI, runner, executable verifier or root dependency migration. The proposed static verification target records pins and can be consumed later by an independently authorized verification runner.
