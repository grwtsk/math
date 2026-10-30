# Proof comparison pilot: five source-inspected families

Local attribution: grwtsk contributors.

**Disposition:** Five bounded, source-inspected proof cases under the repository-wide [proof-comparison disposition](../reference/proof-comparison-disposition.md). **Not** a corpus-wide audit, a fresh Lean replay, or a certification of any complete open-problem proof.

**Inspection baseline:** grwtsk/math main at \`cd4f870327c44f00db7ac9d2fc0b16c7b99ff150\` (2026-10-30). Each source blob below was actually opened; the mathematical conclusions of this review are analytic assessments, not assertions that the source was freshly compiled. Prior verified receipts remain at their historical revisions, and the entire remaining corpus is **UNREVIEWED** under this new disposition.

These cases deliberately span: an elementary theorem with existing scoped formal evidence; a conjunctive-inference bridge; a conditional implication to an open conjecture; a finite spectral/Gram classification; and an imported finite-rank operator theorem used in the Navier–Stokes programme.

## Case 1 — Least prime: two logically different hypotheses

**Source-bound declarations:**
- \`GRWTSK.NumberTheory.two_is_first_prime\` — \`GRWTSK/NumberTheory/FirstPrime.lean\`, blob \`eb8fb85c1d6a7d74aded94f1127cd5af8420dce5\`.
- \`GRWTSK.NumberTheory.Primes.least_prime_eq_two\` — \`GRWTSK/NumberTheory/MultiplicativeNumberTheory/LeastPrime.lean\`, blob \`7f3c0e19eef20bc0686116316dc6d53a36a1a3be\`.

**Analytical statement:** For natural \(q\),
\[
\operatorname{Prime}(q)\;\wedge\;
(\forall p\in\mathbb N,\operatorname{Prime}(p)\Rightarrow q\le p)
\quad\Longrightarrow\quad q=2.
\]

**Proof and qualifying comparison:** The leastness hypothesis applied to \(p=2\) gives \(q\le2\). The independent arithmetic fact that each natural prime is at least \(2\) gives \(2\le q\). Antisymmetry identifies the objects. This is not a new proof of primality of two: the companion conjunction imports \`Nat.prime_two\` and \`Nat.Prime.two_le\` from Mathlib.

**Hostile tests:** \(q=0\) satisfies the universal leastness inequality relative to primes but is not itself prime. \(q=3\) is prime but fails leastness when compared with \(p=2\). They independently refute dropping either hypothesis. They are not alternate proofs of the full statement.

**Consumer:** The uniqueness theorem is the actual consumer of the foundational prime-two conjunction; no global number-theoretic breakthrough is inferred.

**Independent route:** One direct order-theoretic derivation; two independent hypothesis-necessity counterexamples. No separate second proof of the same theorem is claimed or required.

**Evidence boundary:** The existing authored [least-prime guide](../../NumberTheory/MultiplicativeNumberTheory/least-prime.md) reports **SCOPED_EVIDENCE** at historical commit \`c288573d1e3cad54979fd95ebf17244f30224d41\`, with two local \`--trust=0\` replays and recorded axiom closure \`[propext, Classical.choice, Quot.sound]\`; imported cached Mathlib was not independently replayed. **Do not transfer this historical acceptance to newly edited bytes.**

**Specific discovered discrepancy:** The *current* checked-in uniqueness source uses namespace \`GRWTSK.NumberTheory.Primes\`, whereas the existing article and historical receipt name \`GRWTSK.NumberTheory.Prime.least_prime_eq_two\`, and the historical source pin uses the pre-relocation \`GRWTSK/NumberTheory/Prime/LeastPrime.lean\`. This is an **identity/navigation correspondence requiring reconciliation**, not evidence that the mathematical statement is false or that the historical replay did not occur. A current-source declaration identity check is needed before claiming that old receipt certifies this new layout or declaration name.

## Case 2 — Conjunctive inference: derivability is not truth or smallest proof

**Source:** \`GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/JointPremiseInference.lean\`, blob \`d662c1bed6ed017a99c9aa4f23b128d0357ff0f1\`. Prerequisite \`GRWTSK/Combinatorics/LeastDependencyClosure.lean\`, blob \`c612eb344d2ae884cd7499cd623b253dd3613fed\`.

**Statements:** \`derivable_sound\` assumes all base facts satisfy the interpretation and every rule preserves that interpretation when **all** premises do. \`goalSlice_derivable_iff\` compares derivability in the complete source to derivability after restriction to the existing least backward dependency closure of the goal set. It does **not** require each supplied rule to be semantically true for this syntactic equivalence.

**Comparison and proof:** Forward implication from a restricted derivation uses inclusion into the original rules and facts. For the reverse direction, induction on the original finite derivation retains the conclusion and then every premise of each selected rule, by backward closure. The imported \`Closure.root\` retains the goal. These are two **directions of one equivalence**, not two independent proofs.

**Hostile tests:** For the single rule \([0,1]\Rightarrow2\), fact \(0\) alone cannot produce \(2\), whereas facts \(0,1\) can. Replacing the conjunction by “some premise holds” is unsound. The self-cycle \([0]\Rightarrow0\) with no initial fact cannot generate a finite derivation. Alternative rules \(A\Rightarrow C\) and \(B\Rightarrow C\) may both survive the backward slice even when one suffices for a particular derivation. Thus **least backward-closed slice** is not **smallest proof**.

**Consumer:** Safe goal-directed pruning of a *supplied* rule/fact inventory. Missing bridges include actual extraction of Lean theorem applications and their contexts, executable correspondence at large scale, quantified performance, and any claim about SAT/ETH or AI discovery improvement.

**Independent route:** The semantic-interpretation proof and restriction equivalence are separate lemmas with different premises; neither is a second proof of the other. The finite hostile fixtures test an OR-flattening failure. No independently derived alternate goal-slice equivalence is claimed.

**Formal evidence:** The source and its existing article classify these as source candidates; compilation, fresh kernel checking, and transitive axiom audit remain **NOT_RUN** at the reviewed scope. No source scan is upgraded to a kernel receipt.

## Case 3 — RH pickup endpoints: error comparison does not supply signed cancellation

**Source:** \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean\`, blob \`2606536c56bdcb33d120aeddfbcbeef793e31ba1\`.

**Statement and exact comparison:** For every \(T\ge0\), \`endpointSum_error\` states
\[
|\mathcal E(T)-\mathcal X(T)|\le\tfrac14,
\]
where \(\mathcal X\) is the complete signed off-diagonal arithmetic source and \(\mathcal E\) its actual birth-cell chord approximation. The source also retains a separate **signed defect identity**:
\[
\mathcal E(T)-\mathcal X(T)=
\sum_k c_{2,k}\,K_k(T),
\]
where the coefficient and curvature term come from the same source cells; the absolute majorant is a later deduction, not the definition of the residual.

**Analytic mechanism:** The chord interpolation on each logarithmic birth cell has a proved local curvature price bounded by
\[
\frac1{4N(N+1)}.
\]
The elementary identity
\(
1/[N(N+1)]=1/N-1/(N+1)
\)
telescopes, yielding a total price at most \(1/4\), including the clipped terminal cell. The signed coefficient and original physical source are preserved before summing absolute errors. \`endpoint_subexponential_iff\` exploits this bounded difference to compare growth conditions **for the same good-scale set**.

**Crucial conditional consumer:** \`riemannHypothesis_of_endpoint_good_scales\` concludes canonical \`_root_.RiemannHypothesis\` only after being supplied (i) \`AffineFrequent G\` and (ii) \`SubexponentialOn endpointSum G\`. Its code applies an existing analytic return. The source does **not** construct the missing arithmetic bound for such a \(G\).

**Hostile test:** Uniform \(1/4\) approximation does not imply subexponential growth: for example \(\mathcal E(T)=e^T\) and \(\mathcal X(T)=e^T-\tfrac14\) obey the error inequality but not the all-positive-rate growth condition. This is an illustrative countermodel to that *inference*, **not** a model of the actual Möbius source. An unbounded favorable time sequence without affine coverage also fails the displayed good-scale hypothesis.

**Independent route:** The signed cell-curvature identity and its telescoping absolute bound are complementary calculations of the same *approximation* comparison. Neither constitutes a genuinely independent arithmetic proof of the missing subexponential upper estimate. The terminal RH claim remains **conditional**.

**Evidence:** Source candidate; no fresh compilation, kernel replay or transitive axiom audit is claimed by this pilot. The separate actual-source arithmetic completion and its quantified good-scale coverage remain unresolved.

## Case 4 — Three-phase residual symmetry: a finite theorem analytically compared by different structures

**Source:** \`GRWTSK/GeneralTopology/ThreePhaseResidualGramIdentities.lean\`, blob \`b968a9e3451cecc68309ed7f5ed86f56890ce247\`. Related analytic review: [three-phase residual analytic closure](three-phase-residual-analytic-closure.md).

**Objects:** The zero-mean complex three-coordinate plane has source-exact chart
\[
E(a,b)=(a,b,-a-b).
\]
Its positive residual quadratic form is
\[
q(a,b)=|a|^2+|b|^2+|a+b|^2
=\begin{pmatrix}\bar a&\bar b\end{pmatrix}
\begin{pmatrix}2&1\\1&2\end{pmatrix}
\begin{pmatrix}a\\b\end{pmatrix}.
\]

**Different analytic calculations:** Direct expansion and four-probe Weil polarization identify the true Gram metric and its unitary-preserving condition \(A^\ast GA=G\). Independently, symmetric and antisymmetric spectral coordinates diagonalize \(G\) with eigenvalues \(3,1\). The associated \(S^\ast S=G\) transports its isometry group to \(U(2)\). The infinitesimal condition \(X^\ast G+GX=0\) separately checks continuous generator preservation. These routes check compatible facets without pretending the same finite result is a Navier–Stokes estimate.

**Hostile test:** Raw two-coordinate \(\operatorname{diag}(1,-1)\) is Euclidean-unitary but changes \(q(1,1)=6\) to \(q(1,-1)=2\). Nonzero-temperature heat is dissipative, so unitary heat transport is false on a nonzero residual. A determinant-one or \(SU(3)\) identification does not follow.

**Consumer:** Finite Gram/polarization and torsion observation transport. **No** source-bound PDE operator defect \(\sup_\theta\|P_\theta-J\|<\gamma\) follows merely from these symmetries.

**Evidence:** Finite-dimensional analytic result is argued and independently compared in the linked analytical note. Its Lean algebraic source and transitive dependency closure remain **NOT_RUN**. Analytic and formal statuses are not conflated.

## Case 5 — Imported finite-rank operator gap: source-sensitive perturbation, not PDE regularity

**GRWTSK source:** \`GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/NavierStokesMomentGap.lean\`, blob \`ec0d4d9718596da4d303fd92456871ad770cb44e\`. **Verified imported text identity:** OpenAI source \`openai/math\` commit \`1581d4cbdd69a0faf34b2089614fe2a814316a6a\`, path \`lean/OAI/MathematicalPhysics/NavierStokes/FiniteRankGap.lean\`, blob \`f1ebe2af6bb031e2a524b613f8f07d2033072c83\`. Upstream authorship and licenses remain preserved by the local source header.

**Actual theorem:** For continuous real-linear maps \(B,C,R\), \(J=I+BC\), constants \(\varepsilon>0\), \(\|B\|\le\beta\), \(\|R\|\le\delta\), and the explicit coercivity premise
\[
\varepsilon\|Cy\|^2\le R(Jy)(Cy)\qquad(\forall y),
\]
the operator satisfies
\[
\|Jy\|\ge\gamma\|y\|,
\qquad\gamma=\frac{\varepsilon}{\varepsilon+\beta\delta}>0.
\]

**Direct analytic comparison:** The coercivity and norm of \(R\) imply \(\varepsilon\|Cy\|\le\delta\|Jy\|\), treating \(\|Cy\|=0\) separately. Since \(y=Jy-BCy\), the triangle inequality gives \(\|y\|\le\|Jy\|+\beta\|Cy\|\). Combining them yields the stated lower gap. The source then proves the independent *consequence* that if \(\|P-J\|<\gamma\), the straight segment from \(J\) to \(P\) has no kernel; in finite real dimension determinant sign is constant along that segment. These deductions share the **same** gap supplier and are not alternate independent estimates of it.

**Hostile boundary:** On the one-dimensional real space let \(J=I\), \(\gamma=1\), \(P=0\). Then \(\|P-J\|=1=\gamma\), yet \(P\) is not injective. Thus the strict perturbation threshold is a genuine boundary, not a cosmetic inequality. The determinant conclusion also requires real finite dimension.

**Consumer and open transfer:** The local module reuses the gap in finite observation/Hodge interfaces but explicitly requires identified coordinate energy and intertwining. No equivalence has been proved here between those finite operators and the full nonlinear 3D Navier–Stokes dynamics; the unresolved \(\|P_\theta-J\|<\gamma\) from the actual Fourier source cannot be supplied by choosing a certificate field.

**Independent route:** One analytic coercivity derivation plus a separate perturbation/path argument and a sharp equality-threshold counterexample. No second independent proof of the coercivity *premise* is claimed.

**Evidence:** Source and upstream-text comparison completed. The local extended module is a source candidate; no fresh compilation, kernel replay, transitive axiom audit, or source-to-PDE verification is established by this pilot.

## Reviewed population, cross-case conclusions, and next action

**Reviewed in this pilot:** 5 specifically identified source families, at the exact file blobs above. **Not reviewed:** all other mathematical declarations and historical articles; no sampling-rate, total audited theorem count or statistical conclusion is inferred. Source inspection here did **not** run a checker.

The pilot yields three actionable comparison findings:

1. **Historical identity risk:** the least-prime article/receipt's old \`Prime\` namespace and former path differ from the current \`Primes\` source. Keep historical evidence, but require a fresh identity/source concordance before treating it as coverage of present bytes.
2. **Conditionality risk:** an unconditional endpoint quadrature-error theorem sits next to a conditional RH return. The exact comparison isolates the actual open signed-arithmetic supplier, preventing accidental “RH proved” claims from the presence of a formalized implication.
3. **Analogy/transport risk:** finite \(U(2)\) symmetry and the imported Navier–Stokes moment gap are valid at their stated source scopes, but neither produces the actual nonlinear Fourier-to-operator defect; independent analytical work must supply that comparison.

**Next bounded increment:** reconcile the historical/current least-prime declaration identity against the existing local replay evidence **without changing the receipt**, and separately develop an actual source-derived Fourier/Weil/semigroup norm-defect comparison for #1498. The latter is a mathematical research obligation, not an editorial status change.

**Review record:** [corpus-wide tracking issue #1499](https://github.com/grwtsk/math/issues/1499). Preserve original source claims, authored metadata and historical formal receipts; any subsequent verification must be pinned to its exact tested source revision.
