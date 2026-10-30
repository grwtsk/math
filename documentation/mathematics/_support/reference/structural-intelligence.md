# Structural intelligence: mathematics that guides the next move

Local attribution: grwtsk contributors.

Structural intelligence is the working programme of making the organization of
good mathematical communication useful to AI discovery. The immediate question is
not merely where a theorem is stored, but what it enables in a particular problem:
which assumptions it consumes, what it produces, why its proof works, and what
remains to be established before the proposed application is legitimate.

Start with the [joint-premise inference article](../../Combinatorics/joint-premise-inference.md).
It gives a concrete source-level result, not only a terminology change. The
[worker programme](https://github.com/grwtsk/noeaaeue/blob/main/bindings/mathematics/organization/docs/structural-intelligence-v1.md)
and [repository-local skills](https://github.com/grwtsk/noeaaeue/tree/main/bindings/mathematics/organization/skills)
carry the operational workflow. Their publication does not install or execute them.

## For a human reader

Explain the mathematical problem and the object before introducing an interface.
Give an exact statement, a proof roadmap and the reason each substantial lemma is
useful. A reduction, construction, normalization, comparison, obstruction and
return to the original problem play different roles. Show a representative use
and a boundary where the proposed use fails. Readers should be able to follow the
argument without decoding a metadata table first.

A claim's hypotheses are part of its meaning. Preserve quantifier order and which
constants may depend on which variables. A representation change must retain the
same source observation or supply an explicit comparison with all residual terms.
A compelling analogy is worth communicating as an analogy; it need not masquerade
as an established implication to be useful.

## Mathematical knowledge through comparison

The repository-wide [proof-comparison disposition](proof-comparison-disposition.md) makes this a standing requirement, not an optional editorial preference. Typechecking at scale establishes that specified formal derivations check; it does not determine which mathematical objects are equivalent, how results transport, which counterexamples obstruct a composition, or whether two proof paths genuinely differ. A source-exact comparison, independent analytical route or meaningful hostile test makes these distinctions inspectable. Without them, mass checking adds little discovery guidance, even while retaining its formal correctness value. Mathematical proofs can be analytically established without Lean; Lean acceptance remains independently valuable and must never be inferred.

For every result under review, expose the actual object-to-object comparison and the consumer it enables. Record whether a second argument independently derives the conclusion or silently reuses its unproved core. Retain alternate routes as alternatives and conjunctions as joint premises. Preserve the analytical status and formal checking status separately, as well as unreviewed and blocked portions of any corpus-wide rollout. A graph similarity or source-index observation does not become knowledge transfer without a proved mathematical map.

## For an AI worker

Read the current source, not just its title or an old summary. Bind the target,
context, declaration, source commit/blob and evidence. Retrieve by the mathematical
move needed as well as by words or notation. Ask: what can be applied now, what
would become applicable after one missing premise, and what would that unlock?

Keep joint premises in one inference record. Keep alternative proof routes as
alternatives. Distinguish statement references, proof references, definitions,
subject associations, citations, informal alignments and similarity observations.
Do not turn every edge into an implication. Maintain an accepted-premise view
under a declared trust policy and an exploratory view that can include candidates,
conjectures and analogies with their actual status visible.

A learned rank may prioritize work; it cannot certify a theorem. The existing
spectral measurement describes a chosen dependency structure. It does not establish
that a result is applicable, important, novel, or likely to solve this goal.

## First formal anchor: safe goal-directed restriction

Let a rule have premises P and conclusion c. It may be applied only after every
member of P is derivable. Begin with a goal set G and collect all premises of every
rule whose conclusion is collected. The resulting backward closure S gives:

    Derivable(restrictRules R S, facts intersect S, g)
      iff Derivable(R, facts, g), for g in G.

The source proof uses induction on a derivation. Backward closure supplies every
premise needed in the induction step. The reverse implication only uses that the
restricted rules and facts are subsets of the original ones. This explains when a
region can be excluded without changing the goal's derivability.

For example, knowing A does not discharge the rule A AND B implies C. Conversely,
when A implies C and B implies C are alternative rules, a proof using A does not
also need B. The all-routes slice may still retain B. Thus a least backward-closed
slice is not automatically a smallest proof or a collection of true propositions.

The exact source is pinned in the article and [verification issue #1424](https://github.com/grwtsk/math/issues/1424).
Native compilation, fresh kernel replay and axiom auditing remain NOT_RUN. Atoms
represent already instantiated propositions: extraction from Lean proof terms,
unification and dependent-variable scope require further work.

## Communication contract for authored documentation

Use the existing [article standard](result-article-standard.md), not a parallel
catalogue. Supply the problem and objects; exact hypotheses and conclusion; proof
strategy and declaration correspondence; the result's intended use; examples or
obstructions; source pins; and separate mathematical-role/evidence fields. Retain
one canonical article identity with reviewed additional subject associations.

Until a reviewed schema extension exists, put new proof-role or intended-use
information in authored prose. Do not silently add unsupported fields to the v1
metadata record. Preserve the source argument and the single authoritative abstract.
Do not replace proofs with templates or edit generated pages as if they were the
canonical source. Roll out guidance one subject family at a time with explicit
reviewed, unreviewed and blocked populations.

## What remains to be formalized and tested

The next bounded mathematical target is a finite executable joint-premise closure
with a proved correspondence to `Derivable`. Checked reification must subsequently
connect instantiated theorem applications to these rules. A solver result also
needs a defined finite source class, a sound/complete SAT encoding, the relevant
constraint graph, structural parameters and a total cost model. Directory shape,
proof-neighborhood size and CNF treewidth are different objects.

Discovery benefit requires a separate comparison of lexical, semantic, typed-graph
and proof-role/plan retrieval. Keep the mathematical information, source pin, model,
task budget and tools equal; prevent target-proof and temporal leakage; measure
accepted downstream results and all preprocessing/search/checking costs. Finite
reference tests, skill-file lint and native proof checking answer different questions.
No measured AI improvement or ETH consequence is supplied by this first increment.

A lossless byte, trace, graph or waveform carrier requires an exact decoding domain
and round-trip theorem. It does not by itself discharge a missing mathematical
estimate or establish that a model can use the representation more effectively.

## Continuing the work without taxonomy churn

Follow [Noeaaeue issue #406](https://github.com/grwtsk/noeaaeue/issues/406) and load the
matching skill before each increment. Formalize first, explain the actual result,
and then test the guidance. Improve skills from specific observed failures while
preserving counterexamples and fixed comparison conditions. Keep unavailable phases
explicit rather than making publication stand in for acceptance.

Queue every taxonomy proposal in [issue #1425](https://github.com/grwtsk/math/issues/1425).
Do not rename directories, change namespaces, or create a top-level Structural
Intelligence subject during churn. The user will approve one coordinated quiet-window
move. Operational skills, extraction, tests and receipts remain in Noeaaeue.

## Sources and scope

[Mathlib documentation](https://leanprover-community.github.io/contribute/doc.html)
and [review guidance](https://leanprover-community.github.io/contribute/pr-review.html)
are relevant exposition practices. [OMDoc](https://www.omdoc.org/format/) is related
semantic-document infrastructure. These design references do not certify this
programme. The initial source proof is an elementary local derivation; no external
complexity theorem is imported. Any later paper-derived formalization must update
the [central reference register](literature/reading-background/paper-to-formalization-references.md)
with its exact hypotheses, authors, identifiers, declarations, source pins, actual
verification commands/receipts or NOT_RUN, and remaining bridges.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34973f82c5cafa3103c322350bd80774657c6112a234a6124279b043a9bd8f75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
