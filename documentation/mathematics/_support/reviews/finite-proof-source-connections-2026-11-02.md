# A source-bound connection atlas for finite inference and proof search

Local attribution: grwtsk contributors. Authored mathematical review, 2026-11-02.
Initial inspected Math head: `50511171b4611a42b3428ab4c77e1293e909eac2`.
Initial inspected Noeaaeue head: `218dfa95de54165b44e244f9e1a18fa409b09d6b`.

## Abstract

Three new source-proof-candidate modules connect six mathematical mechanisms:
finite conjunctive inference, goal-directed pruning, proof-carrying instantiation,
forward Horn semantics, exact representation transport, and reverse-edge
dependency invalidation. The connections are explicit theorems about their
actual objects, rather than cross-references inferred from filenames. In
particular, a forward inference clause is not the backward prerequisite CNF,
an exact atom bijection is not an arbitrary relabeling, and source identity
strings are not authenticated declarations.

This is a **bounded, source-inspected family review**. It does not claim a
complete semantic index of the entire repository, an accepted Lean proof,
a SAT/ETH runtime result, or a general Lean-expression extractor.

## 1. Actual source families examined

The following identities are Git blob identities observed in the inspected
`main` tree. All named imported theories remain mathematically and formally
independent until a new exact-source check covers the composed import closure.

| Source and inspected blob | Mathematical role | Connection or boundary |
| --- | --- | --- |
| `GRWTSK/Combinatorics/LeastDependencyClosure.lean` — `f3c0e9f73f0dfd245a365caa53c7bb1b04fa5933` | `Closure`, `FiniteInventory`, finite prerequisite scan, inclusion-monotone weighted cost, and typed *backward* prerequisite CNF | Proved goal-slice comparison and weighted minimality; **not** forward Horn inference |
| `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/JointPremiseInference.lean` — `d662c1bed6ed017a99c9aa4f23b128d0357ff0f1` | `Rule`, `Derivable`, `ClosedUnder`, `RuleDepends`, `goalSlice` | Finite inference and semantic entailment inherit the same AND/OR rule meaning |
| `.../FiniteJointPremiseClosure.lean` — `7b701d37cf754a811c31bce7fd6d26e8147f36ba` | List scanner and `mem_finiteClosure_iff` | Original finite forward engine; no replacement implementation added |
| `.../FiniteGoalPrunedClosure.lean` — `f915650ad2281144b28bfb5e5bdff16bc65a2417` | Exact `ruleDependencyEdges`, backward filter and initially-satisfied rule removal | New forward Horn query and cross-closure identities retain this exact rule inventory |
| `.../InstantiatedRuleCertificates.lean` — `8a947b13ef0f4fdca9127620d11a99870d4b121a` | Proof-bearing `InstantiatedApplication`/`InstantiatedFact`, source-claim separation, semantic soundness | Model of the new Horn CNF; representation transport requires proof comparison |
| `.../TheoreticalQualification.lean` — `301228a02fca2352ad7a55f23784f39d42210be8` | `ExactRepresentation` and pointwise predicate comparison; separate signed-residual comparisons | New image/erasure bridge imports actual `ExactRepresentation`; **no** transport without a property bridge |
| `GRWTSK/Combinatorics/FiniteDependencyClosure.lean` — `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867` | Saturation of affected consumers through finite, possibly cyclic, dependencies | New reverse-edge theorem identifies exactly when its closure equals goal prerequisites |
| `GRWTSK/Combinatorics/FiniteDependencyExamples.lean` — `6d6fc193e99bfe9eaad5669bf199bad3a4fe7bbf` | Cyclic invalidation fixtures | Related negative controls, not evidence that the new Lean module compiled |
| `GRWTSK/Combinatorics/DependencyGraph.lean` — `e27da6af2452f986a7fce03825b9d0ae741cfbdf` | Well-founded DAF project dependency cones | Same informal word *dependency*, but requires a distinct finite-node/path correspondence and acyclicity |
| `GRWTSK/Combinatorics/FrontierAntichain.lean` — `93a25c0a8ece3b2c4552bd4870aa1af1b93092e3` | Antichain OR/AND over unresolved sets | Potential consumer of proof routes, not proved equivalent to finite Horn entailment |
| `.../WitnessDischarge.lean` — `49186bd91a02f760839cee65874772e4da7a983f` | Witness-bearing route derivations in `Mathematics.ProofStrategy` | Different upstream route/snapshot contract; no source-exact adapter is asserted |
| `.../RouteFrontier.lean` — `5364dcd1ddcbd76d1f804abda98801228ad1e1dc` | Certified route completion and unresolved frontiers | Do not collapse frontier classification into a positive derivation without route and seed witnesses |

The elided `.../` paths in this table refer only to the existing
`GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/`
directory. They are not independent source lookup identities: for verification,
use the full path under the actual committed tree.

The historical `GRWTSK/GraphSandwichDiffusion.lean` cited by Noeaaeue's
[repository search guide](https://github.com/grwtsk/noeaaeue/blob/main/bindings/mathematics/organization/docs/repository-search-v1.md)
was source-pinned at Math commit `560caee749f42e074bf2fa22ad9c831fb760e5db`;
that pathname was **not found in the current inspected tree**. Search/diffusion
ranks and exact-step witness paths remain retrieval observations, not sound
conjunctive rules. We do not re-create the historical file or infer a current
locator from the old link.

## 2. Formalized connections

New modules live under the same maintained MSC2020 Proof theory and constructive
mathematics folder. They extend rather than rewrite the imported source tree.

### 2.1 Finite Horn model = rule-closed predicate = derivability

[FiniteHornSemantics.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteHornSemantics.lean)
introduces `ForwardHornClause` with precisely the two supported kinds:
a positive unit fact and a finite conjunctive implication.
Its genuine disjunctive rule clause has semantics

\[
\neg\left(\bigwedge_{p\in P}H(p)\right)\lor H(c).
\]

The theorem candidate `forwardHornSatisfied_iff_closed` proves equivalence
between satisfaction of this finite clause list and the conjunction of
`Included facts H` and `ClosedUnder rules H`. The existing
`derivable_iff_all_closed` then yields

\[
\operatorname{Derivable}(R,F,g)
\iff \forall H\;(\operatorname{HornModel}(R,F,H)\Rightarrow H(g)).
\]

Theorem `decideSourceGoalPruned_iff_forwardHornEntailed` connects the
existing finite executable goal query to that semantic entailment for a
selected goal. This is a complete translation **for the supplied list
language**; arbitrary first-order theories and omitted rules are excluded.

`instantiatedForwardHornModel` proves that the genuine proof-bearing
interpretation is such a model, and `entailedInstantiatedMeaning` provides
the proposition-level return. The proof does not read `SourceClaim` strings.

### 2.2 Backward goal slice = finite prerequisite scan (with cost)

The theorem `finiteSourceSlice_iff_goalSlice` compares the existing
`finitePrerequisiteClosure` against `goalSlice` using the actual
`ruleDependencyEdges` membership equivalence, not a similarity graph.
`finiteSourceSlice_weighted_minimal` applies the existing finite
weighted-cost theorem to the exact all-routes dependency slice. This is
inclusion-minimal retention under nonnegative natural weights, **not**
smallest-proof optimization or a speedup bound.

An explicit hostile example, `backwardPrerequisite_not_forwardHorn`,
distinguishes the old prerequisite clause
`¬H(1) ∨ H(0)` from the forward rule clause
`¬H(0) ∨ H(1)`. Choosing only `H(0)` true satisfies the former and
not the latter. Consequently the prerequisite-CNF evaluator must not
be reused as a forward implication checker without a separate direction
proof.

### 2.3 Exact representation transport: source objects and properties

[ExactInferenceTransport.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ExactInferenceTransport.lean)
imports the existing `TheoreticalQualification.ExactRepresentation`.
It maps a whole rule (including every premise), maps fact lists, and gives
`derivable_encode_forward`, `derivable_encode_reverse`, and
`derivable_encode_iff` as a genuine derivability isomorphism under
the supplied inverse laws.

`decideSourceGoalPruned_encode_iff` transfers the Boolean query when
**both atom types** have complete finite inventories and the selected
source/model goals correspond. The proof-bearing transport additionally
requires the exact property bridge

\[
P(a)\iff Q(\operatorname{encode}(a))
\]

for every atom `a`. The transformed `SourceClaim` is reset to `none`
rather than pretending that relabeling authenticated a Git identity.
The original `source_forall_iff_model_forall` theorem is reused for
universal predicate transport. Noninjective maps, unproved comparisons
and quantitative signed residuals are not silently erased.

### 2.4 Reverse invalidation = forward prerequisite reachability

[FiniteDependencyDuality.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteDependencyDuality.lean)
imports the actual `FiniteDependencyClosure` and proves

\[
a\in\operatorname{affectedClosure}(D,S)
\iff
a\in\operatorname{Closure}(S,D^{\mathsf{op}}).
\]

The source-level theorem `mem_incomingRuleDependencies_iff` constructs
the reverse edge carrier exactly from each available rule's
conclusion-to-premise incidences.
`affectedClosure_iff_sourceGoalSlice` and
`affectedClosure_iff_finiteSourceSlice` then reconcile the two existing
finite algorithms. This explains why one must reverse the graph before
using an invalidation primitive to compute goal prerequisites.

## 3. Controls and attempted falsification

A local, ephemeral two-atom reference enumeration evaluated **2,048 Horn
entailment cases, 4,096 selected-goal pruning cases, 4,096 reverse-edge
closure cases, 1,024 bijective relabeling cases**, and one explicit
prerequisite/forward-polarity countermodel. Every tested comparison agreed
with the displayed abstract mathematics. These are bounded reference
calculations, **not Lean compilation, a source-to-test refinement proof,
kernel verification, or a retained operational receipt**. They do not
measure runtime or AI discovery improvement.

Hostile boundaries remain:
- a missing conjunct must not become an alternative proof;
- an empty-premise rule is a positive unit consequence;
- a seedless cycle cannot establish a new positive fact;
- the backward prerequisite clause is not the forward Horn clause;
- a lossy or unproved map is not an `ExactRepresentation`;
- a rule not in the finite inventory cannot be rejected as false;
- an unsupported source label or outdated Git pin cannot become a proof.

## 4. Evidence, consumers and what remains unconnected

All three new Lean files are **SOURCE_PROOF_CANDIDATE**. Native Lean
elaboration/compilation, fresh kernel replay and transitive axiom audit
are **NOT_RUN** for their exact bytes and complete dependency closure.
The larger historical repository has not been fully scanned, and the
frontier, DAF and spectral source families remain related *research leads*
rather than certified imported proof dependencies.

The most consequential missing bridge is **actual elaborated-source
extraction and refinement**: select a finite class of Lean.Expr
applications; pin the environment and declaration source;
retain universe instantiations, local context and every binder/premise;
construct a typed `InstantiatedApplication` with an actual term; prove
the typed representation matches the original elaborated proposition;
reject unsupported cases. A decoded source name or a successful search
result alone cannot provide this bridge. Native checker execution,
mutable receipts, generated views and benchmarking stay in
[Noeaaeue](https://github.com/grwtsk/noeaaeue/issues/406).

Other open links must be separately proved before admission:
frontier antichain algebra to a witness-bearing OR/AND inference
semantics; well-founded DAF cones to finite cyclic closure when
appropriate; historical GraphSandwich source identity to the current
tree; and quantitative signed residuals to their original source
propositions. The direct import relation or a mathematical analogy
does not prove any of these. Taxonomy proposals remain in
[math issue #1425](https://github.com/grwtsk/math/issues/1425).

This review records the inspected bounded family, exact initial source
identities and the distinct mathematical scopes. Its own publication
commit/blob and passive proof-audit target are recorded separately.
