# Theoretical qualification: mathematical comparison and source return

Local attribution: grwtsk contributors.

**Mathematical source:** \`GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean\`. Published source proof candidate, not compilation/kernel acceptance. The mathematical source was created **before** this exposition and before any Noe promotion-implementation changes. The current compiler and source scopes must be pinned independently for future checks.

The theorem does not encode an individual's mathematical judgment or assert that an automatically filled review form can certify understanding. It formalizes the *mathematical obligations* a theoretical comparison must actually satisfy. It is intentionally method-neutral: structural, analytic, algebraic, geometric, logical, probabilistic, combinatorial and other proofs are all eligible.

## 1. What typechecking can and cannot transfer

For source objects \(S\) and model objects \(M\), a lossless encoding provides maps
\[
e:S\to M,\qquad d:M\to S,\qquad d(e(s))=s,\quad e(d(m))=m.
\]

These are equalities of **objects**, not equalities of **mathematical properties**. Given claims \(P:S\to\mathrm{Prop}\), \(Q:M\to\mathrm{Prop}\), transfer requires a proved bridge
\[
\forall s,\quad P(s)\iff Q(e(s)).
\]
Only *then* is it legitimate to infer
\[
(\forall s,\ P(s))\iff(\forall m,\ Q(m)).
\]

The source theorem \`source_forall_iff_model_forall\` proves both directions by using the actual inverse identities and the exact predicate bridge. \`representation_without_property_bridge_is_insufficient\` exhibits a hostile model: the identity encoding on the one-element type has perfect round trips, but the model predicate is \(\mathrm{True}\) while the source predicate is \(\mathrm{False}\). The representation checks, yet the intended mathematical conclusion cannot transfer.

**Analytical comparison:** A typed theorem on the model can be correct while a claimed theorem about the source is false. This is not a failure of Lean; the missing bridge is mathematics.

## 2. A quantitative source return must retain the signed residual

Let \(I\) index scales, objects or source observations. A complete signed comparison consists of
\[
F(i)=M(i)+R(i)\qquad(i\in I).
\]
The residual is the derived difference \(R(i)=F(i)-M(i)\). It is not a freely selected slack parameter once \(F\) and \(M\) are fixed.

The source theorem \`SignedComparison.source_upper_of_signed_bound\` gives
\[
M(i)+R(i)\le U(i)\quad\Longrightarrow\quad F(i)\le U(i).
\]
A different theorem \`source_upper_of_separate_bounds\` proves that separate bounds \(M\le M_{\rm up}\) and \(R\le R_{\rm up}\) imply \(F\le M_{\rm up}+R_{\rm up}\). This may lose crucial signed cancellation; it is not substituted for the complete comparison when that cancellation matters.

The hostile \`signed_cancellation_fixture\` has \(F=0\), \(M=5\), \(R=-5\). Neither model size nor residual size describes the final source without preserving the **sign** and the relation between them. A second hostile theorem \`model_bound_without_comparison_is_insufficient\` constructs a zero model and positive source, refuting any source bound inferred from model control alone.

**Independent calculation:** Direct subtraction gives \(R=F-M\). Substituting this in the signed comparison proves the return without invoking any triangle inequality. The separate-bound theorem instead applies monotonicity of addition. These are two analytic routes with distinguishable assumptions and losses; they are not two independent proofs of an unavailable arithmetic estimate.

## 3. A conditional theorem cannot discharge its own premise

The theorem \`conditional_is_not_unconditional\` refutes the proposed universal rule
\[
(P\Rightarrow Q)\Rightarrow Q.
\]
Taking \(P=\mathrm{False}\), \(Q=\mathrm{False}\) makes \(P\Rightarrow Q\) true while \(Q\) remains false. The companion \`conditional_return\` shows that supplying a *proof of \(P\)* alongside a proof of \(P\Rightarrow Q\) legitimately derives \(Q\).

This is the logical obstruction to promoting an RH/NS/Yang–Mills-facing conditional theorem into a solution just because its Lean declaration typechecks.

## 4. What is *not* formalized by these theorems

- They do not prove the adequacy of a model's interpretation or automatically establish that an assessor understands the proof; they require an explicit source-specific proof of the comparison.
- They do not establish historical originality, independent invention or explanatory merit.
- The signed-return theorem does not construct missing arithmetic cancellation, Fourier summability or an operator-norm gap.
- Alternative proof independence is an analytical assessment of actual derivations and shared premises, not a theorem inferred from different scripts or paths; none is fabricated here.
- A one-proof analytical result can be mathematically complete. Multiple independent routes are a research-strengthening test, not a global axiom of truth.
- The theorem here does not provide a runtime acceptance gate, trusted human review, Noe PW-0 codec semantics or a kernel receipt.

## 5. The first downstream consumer

The existing Noe proof-wave capsule is a reversible identity/provenance carrier. The mathematical structures in this module provide a foundation for a *future*, separately reviewed qualification contract: a claimed transfer must point to the original source, an actual object map, its proved predicate comparison, a complete signed observation return when relevant, and its missing premises. An auto-generated text field or boolean review flag cannot construct these Lean proof witnesses.

The source may be imported as a mathematical prerequisite of later formal source-comparison theorems. It must **not** be treated as automatically accepting every candidate. Its actual consumer in a qualification pipeline still needs a source binding, mathematical review and distinct formal/trust gate.

## 6. Evidence, versions and next theorem

**Local source status:** \`SOURCE_PROOF_CANDIDATE\`. Compilation, fresh kernel checking and transitive axiom audit \`NOT_RUN\`.

**Pinned build environment observed from current repository:** \`leanprover/lean4:v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. These are declared revisions, not evidence of execution.

**Next mathematical theorem:** instantiate an exact source/model comparison for a real research consumer, not a generic review wrapper. The Navier–Stokes low-output operator \(\mathcal B_{u,K}\) and the finite stationary moment operator \(J\) are different operators and spaces; until an explicit domain/codomain map, intertwining and complete defect estimate exist, their bounds cannot be transferred or used to assert \(\|\mathcal B_{u,K}-J\|<\gamma\).

This document records the primary argument, alternative mathematical calculation, hostile cases, legitimate consumer and missing bridge separately from code validity. An exact-source verification request must use the final source commit and blob after all edits; this document does not dispatch any work.
