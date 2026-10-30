# Proof disposition: mathematical comparison before scale

Local attribution: grwtsk contributors.

**Applies to every newly authored, revised, imported, or publicly promoted proof claim in GRWTSK mathematics.** This is a repository-wide research and communication standard, not a claim that every historical source has already undergone this review. Maintain the original provenance, evidence and hypotheses of previously published work. Unreviewed legacy material remains *unreviewed for this disposition*, not automatically false or unverified in the Lean sense.

## The epistemic distinction

**Elaboration and typechecking test a particular formal expression; kernel checking establishes derivability of its stated proposition relative to the imported definitions, rules and axioms. This is substantive logical evidence, and large-scale formalization may expose previously unrecognized consequences. But throughput alone proves neither novelty relative to prior mathematics, intended-source fidelity, analytic completion, independence, nor explanatory insight. Those are distinct questions requiring separate evidence. Mathematics may also have complete, inspectable analytic proofs without Lean.**

This is a claim about *discovery and mathematical understanding*, not the false claim that successful Lean checking is logically worthless. A checked proof can establish a nontrivial implication relative to a specified environment and axioms. It does not establish that its hypotheses hold, that its objects are the intended ones, that a different representation preserves the source, that its conclusion transfers to a broader problem, or that an argument is independent of another argument. Formal proof acceptance and analytic knowledge assessment are **orthogonal**; neither can be inferred from the other.

Analytical proof is not shorthand for analogy, numerical agreement, or a plausible picture. It requires a complete mathematical argument with explicit hypotheses and quantifiers, valid inference, correct objects, and an independently inspectable path from source to conclusion. Formalization is optional for mathematics to exist, valuable for auditing exact derivations, and insufficient by itself to make a new comparative claim.

## Orthogonal assessment: do not collapse evidence into a single score

A mathematical claim is indexed by its **exact statement and scope**: quantified variables, hypotheses, definitions, source version, ambient theory, and the interpretation of its objects. For each claim, record separate assessments rather than a single "verified", "novel", "AI-proved", or "breakthrough" label.

| Assessment | Question that must be answered | Evidence required |
| --- | --- | --- |
| Logical/formal validity | Does the stated conclusion follow from the actual assumptions and rules? | Inspectable mathematical argument and/or source-bound proof term, kernel result and axiom audit, with their distinct scopes |
| Source fidelity and analytic closure | Does the argument concern the intended original object, and have all limits, errors, parameter ranges and return maps been justified? | Exact definitions, comparisons, residual accounting, and proof of every required bridge |
| Prior-art and novelty | What theorem, method, quantitative improvement, computational result, or explanation is added relative to identified prior work? | Dated comparison to the closest known literature and stronger/earlier results, with an explicit uncertainty boundary |
| Mathematical understanding and utility | What operative mechanism, obstruction, independent view, or reusable consumer is genuinely explained? | Mathematical exposition, hostile examples where relevant, and a supported downstream use |
| Computational assurance | Is computation exploratory, exhaustively exact, numerically certified, or part of a complete computer-assisted proof? | Algorithm, domain, error model, artifacts, verifier and proof of coverage appropriate to the claim |
| Provenance and review | Who supplied the underlying sources, research direction, candidate argument, verification, and criticism, as far as the record establishes? | Attributable source references, review record and task-specific AI-use disclosure; unknown links stay unknown |

These assessments are **not ordered stages of truth**. A previously known theorem can have a new proof or useful formalization; a proposed new theorem can remain unproved; a completely valid theorem need not be original or independently rediscovered; and a new computational certificate may be a rigorous proof component. **Novelty is never a prerequisite for logical correctness, and successful typechecking is never a substitute for the novelty assessment.** A comparison itself can be a meaningful new theorem when the comparison is established rather than merely asserted.

Every report must distinguish: (a) the proposition actually proved or refuted, (b) the formal assurance obtained, (c) its source correspondence, (d) its assessed originality, and (e) the research roles supported by provenance. Do not use a single acceptance badge to imply all five.

## Typechecking as a mathematical-neighborhood observation

Lean elaboration, successful typechecking, dependency extraction and kernel checking are valuable. They identify a **formal neighborhood**: the proposition's permitted types, terms, hypotheses, dependencies, local constraints and valid proof steps under a declared theory. That neighborhood is not by itself an analysis of which *mathematical objects* correspond, what changes under a representation, which estimates are sharp, whether the argument is explanatory, or which applications are actually licensed. It may expose genuinely new formal consequences, but it does not settle those separate questions.

**Before promotion to a mathematically qualified proof capsule**, require a substantive **theoretical disposition** anchored to the exact original theorem. In addition to formal-source and trust evidence, its reviewer must identify: (i) a complete mathematical argument rather than a conditional shell misreported as a proof; (ii) the objects and exact maps/invariants/comparisons that qualify the conclusion; (iii) at least one meaningful independent calculation or hostile boundary when available, with shared assumptions exposed; (iv) a real application or mathematical reason for retaining the result; and (v) the unproved transfer obligations and intended scope. An original proof with only one valid route is eligible; a second proof is not a mechanical admission requirement. A checked elementary fact can be a useful component even when it is not a breakthrough.

The spirit is **structural comparison together with analytic substance**—one may draw on Grothendieck's language of objects, morphisms, invariants and functorial change, and on analysis through inequalities, convergence, asymptotic control and boundary behavior. **Neither tradition is a prescribed technique.** Topology, logic, arithmetic, geometry, probability, computation, combinatorics and methods not yet anticipated are equally admissible when the actual mathematical argument and scope meet the same standard.

Preserve an essential operational distinction: a reversible **source/candidate capsule** may store an unqualified attempt losslessly, including failed or conditional work, for research and recovery. It must not be displayed, ranked or admitted as an **accepted mathematical proof capsule** without a source-bound theoretical review and independently checked formal evidence where such evidence is claimed. Noe's current `LeanProofCapsule/1` is an identity-bearing *carrier* whose name does not constitute this admission. Its current schema must not be silently reinterpreted or broken. The pre-admission theoretical qualification belongs to an explicit additional reviewed contract in `grwtsk/noeaaeue`, while the mathematical assessment and proof arguments belong here.

## Formal mathematical foundation before operational admission

The mathematical comparison requirements now have source-level Lean theorem candidates in
[`TheoreticalQualification.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean).
The [analytical exposition](../reviews/theoretical-qualification-mathematical-foundations.md) identifies their objects, derivations, counterexamples and missing consumers.

These proofs establish precise limits: exact object round trips require a **separate predicate comparison** before transferring a theorem; a quantitative model requires the **complete signed residual** before returning a bound to the source; and a conditional theorem does **not** prove its conclusion without its premise. They do not automate theoretical judgment, independent analytical review, or mathematical admission to a proof capsule. The source candidate and operational admission contract remain distinct, and the former must precede implementation of the latter.

## Universal proof disposition

Every proof claim should carry a readable *analytical comparison disposition* in authored mathematical prose or an attached reviewed record. Do not silently add unapproved fields to `grwtsk.result-article/1` or retroactively relabel a large corpus.

1. **Statement and actual objects.** Identify the exact conclusion, quantified hypotheses, parameter dependencies, definitions, source identities, and whether the theorem is finite, conditional, asymptotic, analytic, algorithmic or source-exact. Distinguish an implication from a proof of its premises.
2. **Primary analytic argument.** Explain the mechanism of the proof in mathematical terms. Show the operative identity, estimate, reduction, obstruction or construction, including its assumptions and genuine reasoning—not just a declaration name, compiler transcript or formal proof term.
3. **Comparison that qualifies the claim.** Compare actual objects or representations: an exact map and inverse, a common invariant, a boundary/limiting case, a signed residual comparison, a counterexample or an alternative construction. State what is preserved, what changes, and what cannot be transported. A citation, similarity edge or name match is not a comparison theorem.
4. **Distinct routes and noncircularity.** Seek a second *analytical* route or hostile independent check whenever one could materially challenge the conclusion. Record its independent starting objects, premises and mathematical mechanism. Identify shared lemmas and detect whether both routes merely assume the missing result. Two Lean wrappers, two tactic scripts or two parameterizations of the same hypothesis are **not** independent proofs. When only one analytic route exists, record that honestly; do not manufacture a second or demote valid established mathematics solely for lacking one.
5. **Hostile boundary.** Test degenerate, extremal, zero, singular, nonunit, repeated, high–high-to-low, aliasing, sign, dimension, quantifier and limiting cases as applicable. Record an actual counterexample or explain why each attempted obstruction does not apply. Finite experiments are diagnostics, not global proofs.
6. **Consumer and return.** Identify what original statement or downstream theorem uses the result. Prove any required source-preserving return, including the whole remainder, mixed terms and explicit numerical allowances. For an open-problem programme, an elegant representation or verified conditional implication does not replace the missing analytic witness.
7. **Formal and source evidence—separate.** Record the Lean source commit/blob, actual compilation, fresh kernel acceptance, transitive axiom/hypothesis audit, and the exact applicable dependency/toolchain scope, with `NOT_RUN` where appropriate. A successful check says only what it covers. Conversely, an analytically complete argument must not be described as Lean-verified without its own receipts.

8. **Novelty and prior art—independent of validity.** Compare the exact statement, method and quantitative strength with dated primary sources; record what is known, what changes and what remains unassessed. Do not infer originality from the absence of a local dependency, a new Lean declaration, an AI-generated proof, or a repository search with no matches.
9. **Computation and certification.** State the computed domain, exact versus approximate arithmetic, algorithmic assumptions, completeness argument, reproducibility and error bounds. Distinguish experimental corroboration from a formally or analytically justified computer-assisted universal proof.
10. **Review and provenance.** Preserve identifiable upstream researchers and licenses, disclose actual AI-assisted roles where supported, record attempted refutations and reviewer dependence, and follow the target journal's disclosure requirements where applicable. Never infer historical influence from resemblance alone.

Use explicit, non-exclusive descriptions such as **analytically argued**, **independently compared**, **analytically proved at stated scope**, **refuted at stated scope**, **conditional on unresolved premise**, **source proof candidate**, **kernel verified at pinned scope**, and **not assessed**. The first family describes mathematical assessment; the second describes formal evidence. A theorem can legitimately be analytically proved and `NOT_RUN` in Lean, or kernel checked while lacking a useful source comparison. Do not convert either status to the other.

## Prior art, theorem novelty, method novelty, and understanding

For any public novelty claim, construct a **nearest-prior-result comparison**, not a count of declarations. State the claimed advance in one sentence and identify the strongest relevant published or otherwise verifiable earlier theorem, construction, algorithm and formalization, with their versions, dates, hypotheses and exact conclusions. Search appropriate primary mathematical sources, citations, known equivalent formulations and the relevant formal-library neighborhood. A failed search is not a proof of absence; describe the sources searched and the date, and mark the review incomplete when appropriate.

Compare the statements under the **actual** quantifiers, normalization, parameter ranges, hypotheses, sign conventions, error terms, and asymptotic or finite domains. Prove a needed equivalence, implication or strict improvement, or identify it as an unproved correspondence. Where an earlier result already implies the claimed proposition under the same hypotheses, do not claim theorem-level novelty merely because the notation, subject folder, formal proof, or model is new. Where a new combination of established lemmas proves a previously unavailable theorem or sharper bound, the conclusion can be genuinely new without any new foundational ingredient. Conversely, a new, shorter, more general, more explanatory or independently discovered proof of a known theorem can carry method-level or conceptual novelty without being a new theorem.

Use distinct, non-exclusive novelty outcomes:

- **Established prior theorem / rediscovery:** an earlier result already covers the proposition at the stated scope; retain the useful derivation, formalization or independent proof without misrepresenting priority.
- **New formalization or interoperability:** an existing mathematical fact is given a new checked formal expression, interface, bridge or reusable source implementation. Record the engineering and proof-assurance value; do not automatically claim a new mathematical theorem.
- **New proof or method of a known conclusion:** the mathematical claim was known, but the argument, hypotheses, construction or conceptual mechanism differs materially. Establish the difference against the closest known proof.
- **New theorem, construction, or quantitative improvement relative to examined sources:** supply both a complete proof at the claimed scope and a dated, explicit comparison showing the additional conclusion. The qualification "relative to examined sources" is mandatory when worldwide priority has not been established.
- **New theoretical explanation or reusable comparison:** identify the actual invariant, obstruction, independent reduction, simplification or source transport. Explain its consumer and what old difficulty it resolves.
- **Novelty not assessed / indeterminate / disputed:** record the unresolved literature, equivalence, historical, or priority question. Do not silently choose the flattering category.

**A new consequence assembled from known mathematics is not thereby old mathematics.** What matters is whether the precise conclusion was established before and whether the new reasoning proves it. Likewise, formal-neighborhood discovery is a valuable method of finding conjectures, unrecognized implications and errors, but "the AI found a connection" is not itself proof of a new theorem. Novelty and logical acceptance are separate, and neither depends on a model's identity or the number of compute steps.

## Computation, experimental mathematics, and proof certificates

Computation has several legitimate roles with different logical reach. Label each use rather than collapsing them into "computationally verified":

1. **Exploration and finite evidence:** heuristic search, symbolic experiments, sampled values, large finite zero inventories, stochastic runs and numerical agreement may suggest or challenge a theorem. Give the tested domain and precision. They do not by themselves prove an asymptotic, all-parameter or infinite-domain assertion.
2. **Reproducible finite result:** state the exact finite proposition, code/algorithm and its mathematical interpretation, versions, inputs, precision and rounding rules, seeds where relevant, data provenance, output or certificate hashes, and rerun procedure. An exact computation proves only the finite claim for which its algorithm is sound; approximate calculations require certified error enclosures for rigorous inequalities.
3. **Computer-assisted mathematical proof:** provide a mathematical reduction from the advertised theorem to checked subclaims, prove exhaustive coverage or uniform error bounds over the stated domain, and make the computational subclaims independently checkable by a sufficiently justified checker. Identify which proof obligations are discharged by Lean/kernel-checked certificates, exact arithmetic, interval bounds, SMT/SAT proof objects, independently validated code, or external trusted computation. These alternatives have different assurance and must not all be labelled kernel verified.
4. **Refutation:** one source-exact counterexample may refute a universally quantified claim if the counterexample and its hypotheses are rigorously checked. A floating-point apparent counterexample requires error bounds sufficient to establish the violation.

Report termination, completeness of enumeration, overflows/underflows, numerical stability, rounding, tolerance and exceptional-case handling as applicable. For randomized algorithms, specify whether the output is merely empirical, has a proved probabilistic guarantee, or supplies a deterministically checkable certificate. Large search volume, many independent runs and agreement between models do not close unproved universal reductions. An independent recomputation is useful corroboration, not the same thing as a logically complete certificate.

A computationally assisted proof can be fully rigorous. Its strength comes from the reduction and the justified verification of the computation—not from calling the computation either human or AI.

## Source return, hostile review, and independence

**No change of representation earns a free return theorem.** Name the source and target objects, the forward map and (if used) inverse or comparison, and the exact statement transported. Prove the required correspondence at the observation or estimate actually consumed. Full invertibility is not demanded when a justified one-sided bound suffices; conversely, a lossless encoding does not imply a bound. Keep source-dependent signs, multiplicities, repeated primes, nonunit strata, boundary terms, diagonals, mixed interactions and original support conditions. In inequalities, preserve the direction, parameter uniformity, limiting operations and the complete signed remainder before invoking absolute bounds.

For claims involving an open problem, draw the dependency graph back to the **unresolved original-source obligation**. A checked theorem of the form "if P then Q" establishes that implication, not P or Q. A fresh name for P, a nonconstructive unrestricted certificate, finite matching observations, or a different representation of Q does not discharge P. The review must explicitly identify any conjecture-equivalent premise.

An adversarial review attempts to **break the advertised statement**, not just its code style. Select tests relevant to the mathematics: vacuous or inconsistent assumptions; zero, singular, extremal or infinite limits; reversed or missing signs; dimension and field changes; nonunit or repeated factors; support-window endpoints; failed dominated-convergence or uniformity claims; wrong norm or topology; unproved interchange of sum and integral; hidden dependence of constants; selection bias in favorable scales; and conditional-to-unconditional promotion. Distinguish an exact counterexample from a failed test, a numerical hint, or an unrelated analogy.

Independent argument review is desirable when useful, especially for extraordinary claims, but **two proofs are not a theorem-validity requirement**. Independence must concern the decisive mathematical premise. Two tactic scripts, two agents, a reformulation of the same unproved bound, or two implementations of one algorithm do not provide independent mathematical routes. Document shared premises, distinct starting objects, genuinely different mechanisms, reviewers' access to the original attempt, and any untested cases. Reviewers may independently corroborate a result without offering a genuinely independent proof; label that activity accordingly. Do not describe a simulated editorial panel, journal name, or model ensemble as an actual referee decision.

## Provenance, credit and external publication

Keep **grwtsk contributors** as the local content byline and preserve actual upstream authors, citations, licensing, and immutable historical identities. Separately disclose a model or other tool's **evidenced task-specific role**: literature retrieval, conjecture generation, proof synthesis, symbolic/numerical computation, Lean construction, counterexample search, explanation, or checking. Record provider and model/version when available, the human-supplied research direction, the source material involved, and the mathematical output or verification that establishes the role. If records are absent, say "provenance not established"; do not reconstruct prompt history or causal influence from thematic similarity or timing.

Credit an AI system for a documented research contribution without treating it as the author of every theorem it typed or treating its output as automatically novel. Equally, do not erase an identifiable AI-assisted mathematical contribution merely because its ingredients were previously known: assess the precise theorem and proof first. Distinguish human responsibility for validating and publishing a claim from the origin of a particular idea or calculation. Claims about how a specific result influenced another lab, entered training data, improved model weights, or earned mathematical priority require independent evidence. Journal-specific author and AI-disclosure policies apply to external submissions and may differ; this repository policy does not purport to grant journal acceptance or an endorsement by any named mathematician.

## Review record, decision rules, and failure states

For every promoted claim, attach an authored review in the established result-article sections, or an explicitly linked source-bound review. Do **not** silently alter the result-article schema or the lossless capsule codec. The review must permit a mathematically trained reader to reconstruct these minimal fields:

| Field | Minimum review content |
| --- | --- |
| Claim and identity | Exact proposition, definitions, quantified hypotheses, source commit/blob, dependencies, and precise claimed consequence |
| Argument and gap audit | Primary proof mechanism, unresolved premises, source comparison/return, limiting/quantitative allowances and known counterexamples |
| Assurance | Analytical assessment; compilation, kernel replay, transitive axioms and trust surfaces each recorded as **PASS**, **FAIL**, **NOT_RUN** or **NOT_APPLICABLE** with exact scope and evidence when applicable |
| Computation | Role, finite domain, algorithm, reproducibility, error bounds, coverage theorem, certificate/checker and assurance level, or explicitly **NONE** |
| Originality | Closest prior sources, dated claim-by-claim differences, evidence of a new theorem/method/explanation, or explicitly **NOT_ASSESSED** |
| Independence and provenance | Actual independent examinations and common premises, source attributions and evidenced AI/tool roles, or explicit unknowns |
| Consumer and remaining work | What theorem or research question uses the result, which bridge is still missing, and why the classification is justified |

**Acceptance decisions must be local to a claim.** A sound proof of a conditional theorem may be accepted *as conditional*. A valid known theorem may be admitted with no claim to originality. An analytically complete proof may be recorded before formalization with its Lean status **NOT_RUN**. A kernel-accepted proof term may be recorded with novelty **NOT_ASSESSED** and source return still open. A mathematically qualified proof capsule requires substantive analytical comparison at its stated scope; it does **not** require novelty, a second proof, or Lean formalization when no formal claim is made. If formal acceptance is advertised, it additionally requires actual source-pinned formal evidence. An open-problem solution must separately discharge the original target without importing it, an equivalent open assumption, or an uncontrolled certificate.

**Reject promotion beyond the evidence** when an essential premise is unresolved, source comparison is merely analogical, quantifier scope differs, a counterexample applies, a numerical check is advertised as a universal proof, or a claimed kernel receipt is absent or has a different source identity. Record the valid narrower result and the precise missing work instead of deleting useful research. If the novelty review is incomplete, withhold the novelty claim—not the correctness of a valid theorem.

Do not transfer an old verification receipt to edited bytes, infer a corpus-wide audit from local pilots, or confuse publication on main with mathematical acceptance. Preserve source snapshots, failure records and corrections at their original scopes.

## Distinctness tests for multiple routes

Alternative routes qualify independently only when the second argument can be checked without treating the first route's contested estimate or conclusion as a premise. Shared proved foundations—e.g. the same exact source definition—are permitted and must be disclosed. The reviewer asks:

- If the primary result's key inequality were removed, could the second route still derive its conclusion from separately established premises?
- Does the second route directly address a different obstruction or provide a genuinely different calculation (e.g. quadratic polarization versus spectral diagonalization versus infinitesimal generator)?
- Would the strongest known counterexample challenge the routes differently? If not, compare the shared dependence explicitly.
- Does each proof reach the *same* original observation and quantifier scope? Otherwise record a conditional bridge, not an independent verification of the same theorem.

A numerical or finite symbolic check can disprove a universal claim with one exact counterexample, but cannot generally prove a universal theorem. It can corroborate an independent analytic derivation, and should be labelled as such.

## Concrete exemplar: finite residual symmetry and its open transfer

The [three-phase residual analytic closure](../reviews/three-phase-residual-analytic-closure.md) gives direct positive-Gram/Weil polarization, an independent orthonormal spectral calculation and an infinitesimal torsion argument for the finite residual symmetry. Its source object is (E(a,b)=(a,b,-a-b)), with positive Gram matrix (G=\begin{pmatrix}2&1\\1&2\end{pmatrix}). Its actual complex-linear residual isometry group is conjugate to (U(2)), while positive-time heat compatibility restricts coherent/residual mixing.

The same record contains the wrong-metric fixture and a source-labelled divergence-free high–high-to-low Fourier triad. These tests prevent promotion of the finite symmetry result to Navier–Stokes regularity, a PDE moment-gap estimate, or (SU(3)) / quantum chromodynamics. The remaining operator comparison (‖P_\theta-J‖<\gamma) has **not** been analytically discharged. See [analytic completion issue #1498](https://github.com/grwtsk/math/issues/1498) and [source/verification issue #1493](https://github.com/grwtsk/math/issues/1493).

## Corpus-wide adoption without retrospective overclaiming

Apply this disposition to **all proof families** as a publication and review obligation. For existing results, introduce reviewed comparison prose when a source is actually inspected, preserving prior theorem statements, historical acceptance and evidence identities. Mark the review population as reviewed, unreviewed or blocked; do not claim that all historical proofs have acquired independent analytic checks by adding this document.

The maintained result-article form remains authoritative for article metadata; this disposition belongs in the article's authored **Proof**, **Composition**, **Verification and trust boundary**, and **Sources and missing bridges** sections. Preserve the same source identities and one canonical article. Do not create per-proof placeholder certifications or inflate completion counts.

The operational extraction, mass inventory, runnable audit and review receipts belong to [grwtsk/noeaaeue](https://github.com/grwtsk/noeaaeue); mathematical arguments, source links and static specifications remain here. No skill installation, task queue or policy text authorizes execution or asserts that an audit has occurred.

**Neither correctness, novelty, understanding, computational evidence nor provenance is a throughput statistic.** Prefer a source-exact comparison that exposes why one argument works, where another fails, what is genuinely new relative to prior sources, and what remains unknown over an enormous collection of checked derivations whose relationships have not been established. Retain valid known mathematics and computer-assisted discoveries at their honestly demonstrated scopes.
