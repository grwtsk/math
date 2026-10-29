-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant91b83cc79666c4a27a379dc78d67a700240c599cca619ed98f00b8c30ed40c3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91b83cc79666c4a27a379dc78d67a700240c599cca619ed98f00b8c30ed40c3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variant91b83cc79666c4a27a379dc78d67a700240c599cca619ed98f00b8c30ed40c3c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"91b83cc79666c4a27a379dc78d67a700240c599cca619ed98f00b8c30ed40c3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/morphism/MorphismDependency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# MorphismDependency.lean


## Role

`MorphismDependency.lean` defines dependency infrastructure for categorical morphisms.

It specifies direct dependencies, transitive dependency closure, dependency freshness, dependency availability, hidden-dependency rejection, dependency invalidation, dependency migration, dependency refinement, dependency audit, and dependency replay for morphism records, endpoints, witnesses, domains, codomains, partiality policies, equality relations, equivalence relations, identity laws, composition laws, associativity laws, functoriality laws, naturality-use claims, certificates, epochs, proof boundaries, trusted boundaries, audit links, and replay procedures.

A dependency record is not an import list.

It is not a filename list.

It is not a label list.

It is not a Lean namespace prefix.

It is a proof-relevant closure of everything required to reconstruct and validate a morphism claim.

## Core principle

A morphism claim is admissible only if every proof-relevant dependency is explicit, available, fresh, scope-compatible, epoch-compatible, certificate-compatible, audit-linked where required, and replay-admissible.

For a morphism:



 f:A-> B



the dependency closure must include at least the dependencies of:



 A, B, witness(f), Domain_f, Codomain_f, Partiality_f, mode, scope, status, epoch, certs, proofBoundary, trustedBoundary, audit, replay



and all dependencies required by identity, composition, associativity, equality, equivalence, congruence, quotienting, functoriality, or naturality-use claims that consume `f`.

Imports are insufficient.

Filenames are insufficient.

Displayed labels are insufficient.

## Formal shape

A morphism-dependency record has schematic form:



 MorphismDependency=(subject,directDeps,transitiveDeps,closure,freshness,availability,hiddenDeps,endpointDeps,witnessDeps,domainDeps,codomainDeps,partialityDeps,equalityDeps,equivalenceDeps,lawDeps,certificateDeps,epochDeps,auditDeps,replayDeps,mode,scope,prefix,epoch,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `subject` records the morphism claim or morphism-derived claim;
- `directDeps` records immediate dependencies;
- `transitiveDeps` records recursive dependencies;
- `closure` records the computed dependency closure;
- `freshness` records whether dependencies are valid at the prefix and epoch;
- `availability` records whether dependency artifacts can be reconstructed;
- `hiddenDeps` records missing or undeclared dependencies;
- `endpointDeps` records source and target object dependencies;
- `witnessDeps` records relation, graph, action, selected, stochastic, trusted, or replay witness dependencies;
- `domainDeps` records domain-predicate dependencies;
- `codomainDeps` records codomain-predicate dependencies;
- `partialityDeps` records definedness and undefinedness dependencies;
- `equalityDeps` records equality-relation dependencies;
- `equivalenceDeps` records equivalence-relation dependencies;
- `lawDeps` records identity, composition, associativity, congruence, quotient, functoriality, and naturality-use dependencies;
- `certificateDeps` records certificate-schema, verifier, payload, and proof dependencies;
- `epochDeps` records epoch and migration dependencies;
- `auditDeps` records audit-link dependencies;
- `replayDeps` records replay-procedure dependencies;
- `mode` records proof mode;
- `scope` records consumer context;
- `prefix` records history-relative availability;
- `epoch` records semantic epoch;
- `status` records lifecycle state;
- `invalidations` records stale or blocking effects;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record defines dependency closure.

It does not prove the morphism claim by itself.

## Direct dependency

A direct dependency is immediately used by a morphism claim.

For `CategoryMorphism(f)`, direct dependencies may include source endpoint, target endpoint, witness, domain, codomain, partiality policy, proof mode, scope, status, epoch, certificates, proof boundary, trusted boundary, audit reference, and replay parameter.

A direct dependency must be typed.

A direct dependency must be named by artifact identity, not by display label alone.

## Transitive dependency

A transitive dependency is a dependency of a dependency.

For example, the source endpoint depends on object identity, object kind, object admissibility, object epoch, object certificates, object audit links, and object replay data.

The morphism dependency closure must include these recursively.

A morphism record that cites only the endpoint id but omits endpoint dependencies is incomplete.

## Dependency closure

Dependency closure is the least dependency set containing all direct dependencies and all recursive dependencies required by those dependencies.

A closure judgment may be written:



 ClosedDeps(f,Delta)



where `Delta` contains every required artifact.

Closure must be stable under replay.

If replay discovers a dependency not in `Delta`, the original dependency record is incomplete.

## Dependency availability

Availability means that each dependency can be located and reconstructed at the relevant history prefix.

Availability is not freshness.

An available dependency may still be stale, rejected, unknown, audit-only, invalidated, migrated, or weaker than required.

Availability cannot be consumed as proof validity.

## Dependency freshness

Freshness means that the dependency is valid for the required epoch, prefix, mode, and scope.

A dependency fresh for audit may be stale for proof.

A dependency fresh at epoch `e` may be stale at epoch `e'`.

Freshness must be checked before a morphism claim is consumed.

## Hidden dependency

A hidden dependency is any proof-relevant artifact used by a morphism claim but absent from the declared dependency closure.

Hidden dependencies invalidate replay and audit.

Examples include undeclared equality relations, implicit coercions, finite enumerators, trusted decoders, runtime schemas, proof-boundary assumptions, selection policies, stochastic kernels, fallback policies, quotient relations, and migration maps.

Hidden dependencies must be rejected or converted into explicit dependencies.

## Endpoint dependencies

A morphism depends on source and target endpoints.

Endpoint dependencies include object identity, object kind, categorical context, type witness, endpoint role, endpoint admissibility, endpoint equality, endpoint equivalence, endpoint epoch, endpoint status, endpoint certificates, endpoint audit links, endpoint invalidations, and endpoint replay data.

Endpoint labels are not dependency closure.

Runtime type names are not endpoint dependencies.

## Witness dependencies

A morphism depends on its witness.

Witness dependencies vary by witness kind.

A functional witness depends on function semantics, source typing, target typing, domain typing, codomain typing, totality or partiality facts, equality relation, proof boundary, and replay procedure.

A relational witness depends on relation schema, graph semantics, functionality or nondeterminism policy, domain and codomain predicates, equality or equivalence relations, certificates, and replay behavior.

A stochastic witness depends on probability carrier, support, normalization, kernel definition, randomness boundary, and replay behavior.

A selected witness depends on selection policy and selection replay.

## Domain dependencies

A morphism depends on its domain predicate.

Domain dependencies include source endpoint, source type witness, domain-predicate definition, definedness policy, totality claims, restriction or extension facts, domain equality, domain equivalence, domain congruence, domain migration, domain certificates, proof boundary, trusted boundary, epoch, audit links, invalidations, and replay behavior.

Source-object membership is not sufficient dependency evidence for the domain.

Runtime input acceptance is not sufficient.

## Codomain dependencies

A morphism depends on its codomain predicate.

Codomain dependencies include target endpoint, target type witness, codomain-predicate definition, output-admissibility policy, codomain preservation, codomain reflection, codomain equality, codomain equivalence, codomain congruence, codomain migration, codomain certificates, proof boundary, trusted boundary, epoch, audit links, invalidations, and replay behavior.

Target-object membership is not sufficient dependency evidence for the codomain.

Runtime output production is not sufficient.

## Partiality dependencies

A morphism depends on its partiality policy.

Partiality dependencies include totality, partiality, definedness, undefinedness, rejection, unknown status, selected behavior, stochastic behavior, fallback behavior, audit-only behavior, research-obligated behavior, domain interaction, codomain interaction, composition interaction, equality and equivalence interaction, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Runtime exception behavior is not sufficient dependency evidence.

`none` and `null` are not partiality dependencies unless explicitly modeled.

## Equality dependencies

Morphism equality claims depend on endpoint equality, witness equality, domain equality, codomain equality, partiality equality, extensionality principles, equality relation, proof mode, scope, dependencies of compared morphisms, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A theorem name alone is not equality dependency closure.

Same implementation name is not equality evidence.

## Equivalence dependencies

Morphism equivalence claims depend on the equivalence relation, equivalence laws, endpoint relation, domain relation, codomain relation, partiality relation, witness relation, retained information, lost information, congruence laws, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Equivalence dependencies must remain distinct from equality dependencies.

A quotient relation, observable relation, or approximate relation cannot be consumed without its own dependency closure.

## Identity-law dependencies

Identity claims depend on object identity, endpoint admissibility, identity morphism record, identity domain, identity codomain, identity partiality, left identity law, right identity law, equality or equivalence relation, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A runtime no-op is not an identity dependency unless certified as part of identity semantics.

Repeated labels are not identity dependencies.

## Composition dependencies

Composition claims depend on both component morphisms, endpoint compatibility, composed domain, composed codomain, partiality propagation, composition law, equality or equivalence relation, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A runtime pipeline is not composition dependency closure.

A call sequence is not composition dependency closure.

## Associativity dependencies

Associativity claims depend on component morphisms, both bracketings, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, comparison relation, composition laws, equality or equivalence infrastructure, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Syntactic reassociation of runtime calls is not associativity dependency evidence.

## Congruence dependencies

Congruence claims depend on construction semantics, input relations, output relation, object congruence, morphism congruence, domain congruence, codomain congruence, partiality congruence, witness congruence, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A relation name alone is not congruence evidence.

Congruence must state which construction preserves which relation.

## Quotient dependencies

Quotient morphism claims depend on raw morphism, quotient endpoints, quotient relations, representative policy, representative independence, quotient domain, quotient codomain, quotient partiality, quotient witness, quotient identity, quotient composition, congruence laws, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A quotient-class label is not quotient dependency closure.

A representative id is not quotient evidence.

## Functoriality dependencies

Functoriality claims depend on functor identity, object map, morphism map, endpoint transport, identity preservation, composition preservation, equality preservation, equivalence preservation, domain transport, codomain transport, partiality transport, quotient compatibility, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

An implementation-level mapping table is not functoriality dependency closure.

A runtime dispatcher is not functoriality evidence.

## Naturality-use dependencies

Naturality-use claims depend on transformation context, functors, source morphism, source and target objects, functor images, component morphisms, left path, right path, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A displayed commutative diagram is not naturality dependency closure.

A diagram renderer is not naturality proof.

## Certificate dependencies

A morphism claim that cites a certificate depends on the certificate schema, certificate subject, certificate payload, verifier, verifier boundary, certificate status, certificate epoch, certificate dependencies, certificate audit link, certificate invalidation policy, and certificate replay behavior.

A certificate payload is not enough.

A theorem name is not enough.

A verifier name is not enough.

The accepted certificate record must be part of dependency closure.

## Proof-boundary dependencies

If a morphism claim depends on axioms, extensionality principles, quotient soundness, finite enumeration, trusted arithmetic, trusted decoders, replay engines, extraction procedures, archives, or external verifiers, those proof-boundary dependencies must be explicit.

Changing a proof boundary may stale the morphism claim.

Proof-boundary dependencies cannot be hidden behind imports.

## Trusted-boundary dependencies

Trusted components must be recorded as trusted-boundary dependencies.

A trusted component supports only the exact statement it is trusted to provide.

A trusted decoder may certify decoding.

A trusted runtime may certify execution.

A trusted archive may certify retrieval.

None of these certifies morphism validity unless the trusted statement includes the morphism claim.

## Epoch dependencies

Morphism dependency closure is epoch-indexed.

Each dependency has an epoch or epoch range.

A morphism dependency fresh at epoch `e` is not automatically fresh at epoch `e'`.

Epoch dependencies include source endpoint epoch, target endpoint epoch, witness epoch, domain epoch, codomain epoch, partiality epoch, equality epoch, equivalence epoch, certificate epoch, proof-boundary epoch, audit epoch, invalidation-policy epoch, and replay-schema epoch.

## Migration dependencies

Cross-epoch morphism use depends on migration evidence.

Migration dependencies may include endpoint migration, witness migration, domain migration, codomain migration, partiality migration, equality migration, equivalence migration, certificate migration, proof-boundary migration, audit migration, replay migration, and invalidation handling.

Same labels across epochs are insufficient.

Same implementation names across epochs are insufficient.

## Refinement dependencies

Refinement dependencies record precision movement, representation movement, restriction, extension, strengthening, weakening, projection, reconstruction, and error bounds.

Refinement is not migration.

If refinement crosses epoch boundaries, both refinement dependencies and migration dependencies are required.

A refined artifact cannot silently replace its source dependency.

## Audit dependencies

Audit dependencies record provenance links needed for traceability.

They may include history records, certificate records, replay manifests, verifier exports, extraction artifacts, migration nodes, refinement nodes, trusted-boundary records, or framework records.

Audit dependencies do not prove morphism validity.

They prove traceability only unless paired with accepted certificates.

## Replay dependencies

Replay dependencies record everything needed to reconstruct a morphism claim.

They include source files, declarations, schemas, object records, morphism records, equality relations, equivalence relations, certificates, proof boundaries, trusted boundaries, audit links, invalidation state, epoch parameters, and comparison procedures.

A cached result is not replay dependency closure.

A runtime trace is not replay dependency closure unless certified as replay evidence.

## Dependency freshness judgment

A freshness judgment may have form:



 FreshDeps(Delta,p,e,mode,scope)



where `Delta` is a dependency closure, `p` is a history prefix, and `e` is an epoch.

Freshness requires all dependencies in `Delta` to be available, accepted or otherwise status-compatible, uninvalidated for the consumer, and epoch-compatible.

Freshness is a prerequisite for admissibility.

## Dependency stale judgment

A stale-dependency judgment records that at least one dependency is no longer valid for the requested prefix, epoch, mode, or scope.

Staleness may produce rejection, weakening, audit-only status, migration requirement, refinement requirement, unknown status, or research obligation.

Staleness does not delete the old dependency.

It appends invalidation or supersession evidence.

## Dependency invalidation

Dependency invalidation propagates through morphism claims.

If a source endpoint dependency becomes stale, every morphism depending on it may become stale.

If a domain predicate changes, compositions, associativity claims, functoriality claims, and naturality-use claims depending on that domain may become stale.

Invalidation is append-only.

The old dependency record remains audit content.

## Dependency propagation

Dependency propagation states that dependencies of component claims are dependencies of derived claims.

For composition:



 Deps(g o f) superseteq Deps(f) cup Deps(g) cup Deps(endpointCompatibility) cup Deps(compositionLaw)



For naturality use:



 Deps(NatUse) superseteq Deps(F(f)) cup Deps(G(f)) cup Deps(eta_A) cup Deps(eta_B) cup Deps(leftPath) cup Deps(rightPath)



Propagation must be explicit.

## Dependency minimization

Dependency closure should not include irrelevant artifacts.

A dependency is admissible when it is required for reconstruction, validation, audit, or replay.

Including application constants, runtime payloads, or unrelated files in framework morphism dependencies violates abstraction unless explicitly scoped as audit-only or application-layer input.

The abstract Lean morphism layer must remain independent of application constants.

## Dependency equality

Two dependency records are equal only if subject, direct dependencies, transitive dependencies, closure, freshness, availability, hidden-dependency policy, endpoint dependencies, witness dependencies, domain dependencies, codomain dependencies, partiality dependencies, equality dependencies, equivalence dependencies, law dependencies, certificate dependencies, epoch dependencies, audit dependencies, replay dependencies, mode, scope, prefix, epoch, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior coincide.

Same import list is insufficient.

Same filename list is insufficient.

## Dependency equivalence

Dependency records may be equivalent under declared relation.

Examples include quotient dependency equivalence, observable dependency equivalence, approximate dependency equivalence, replay dependency equivalence, audit dependency equivalence, migrated dependency equivalence, refined dependency equivalence, or path dependency equivalence.

Equivalence is not equality.

A consumer must declare which dependency equivalence it accepts.

## Dependency congruence

Dependency closure must be congruent under constructions that replace morphisms, objects, certificates, or relations.

If:



 f~ g



then a construction replacing `f` by `g` must transform or relate dependency closures.

Dependency congruence must state whether dependencies are preserved exactly, quotiented, observed, approximated, migrated, refined, summarized, checkpointed, or audit-linked.

Hidden changes invalidate congruence use.

## Dependency status

Dependency status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include available, fresh, stale, missing, hidden, rejected, unknown, migrated, superseded, invalidated, audit-only, approximate, quotient-valid, observable-valid, and research-obligated.

A dependency fresh for one consumer may be invalid for another.

Status must be replayable.

## Rejected dependency closure

A dependency closure may be rejected.

Reasons include missing direct dependency, missing transitive dependency, hidden dependency, stale dependency, invalid epoch, rejected certificate, unavailable audit link, invalid proof boundary, trusted-boundary overreach, replay failure, or abstraction violation.

Rejected dependency closure blocks morphism admissibility.

## Unknown dependency closure

Unknown dependency closure records that the framework cannot determine whether dependencies are complete or fresh.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block morphism application, equality, composition, associativity, functoriality, naturality, replay, migration, refinement, or certificate reuse.

## Research-obligated dependency closure

Research-obligated dependency closure records a required but unavailable dependency proof.

It must identify subject, missing dependency, expected dependency kind, blocked consumer, mode, scope, epoch, and replay context.

It does not prove closure.

It prevents silent use of incomplete dependencies.

## Dependency migration

Dependency migration relates dependency closures across epochs:



 Delta_e leads-to Delta_{e'}



It must preserve or explicitly transform every dependency class: endpoints, witnesses, domains, codomains, partiality policies, equality relations, equivalence relations, laws, certificates, proof boundaries, trusted boundaries, audit links, invalidations, and replay procedures.

Migration of one dependency does not automatically migrate the whole closure.

## Dependency refinement

Dependency refinement may replace dependencies with stronger, narrower, lower-error, more explicit, less trusted, or more replayable dependencies.

Refinement must record source closure, target closure, retained information, added information, removed assumptions, and replay behavior.

Refinement is not migration.

If epoch changes, dependency migration is also required.

## Dependency audit

Dependency audit links connect dependency closures to history records, certificate records, replay manifests, verifier exports, extraction artifacts, migration nodes, refinement nodes, trusted boundaries, or framework records.

Audit links provide traceability.

They do not make dependencies fresh.

They do not replace dependency closure.

## Dependency replay

Dependency replay reconstructs the dependency closure and verifies that every required dependency is present, available, fresh, status-compatible, epoch-compatible, proof-boundary-compatible, trusted-boundary-compatible, audit-linked where required, and uninvalidated for the consumer.

Replay must detect hidden dependencies.

Replay must detect stale dependencies.

Replay must not treat import success as dependency success.

## Imports are not dependencies

Lean imports may be necessary for compilation.

They are not sufficient for semantic dependency closure.

An import line says that a file is available to Lean.

It does not state which declarations, certificates, epochs, proof boundaries, audit links, trusted boundaries, or replay procedures a morphism claim depends on.

Semantic dependencies must be recorded separately.

## Filenames are not dependencies

A filename is a locator.

It is not a dependency record.

A morphism claim that lists `MorphismEquality.lean` does not thereby record the equality relation, theorem, certificate, proof boundary, epoch, or replay behavior it uses.

File paths may support audit.

They do not discharge dependency closure by themselves.

## Labels are not dependencies

Object labels, morphism labels, theorem labels, certificate labels, quotient-class labels, and diagram labels are not dependency records.

They may be display metadata.

They cannot identify semantic dependencies unless resolved to typed artifact records with epochs, statuses, certificates, audit links, and replay behavior.

## Runtime artifacts are not dependencies by default

Runtime function names, callback ids, execution traces, cached outputs, dispatcher tables, browser events, JavaScript objects, Rust structs, WASM exports, or UI elements are not Lean morphism dependencies by default.

They may become dependencies only through certified implementation, extraction, audit, or replay records.

Runtime presence is not proof-core dependency closure.

## Dependency certificates

Dependency certificates may prove:



 DirectDeps(subject,Delta_0)





 TransitiveDeps(subject,Delta)





 ClosedDeps(subject,Delta)





 FreshDeps(Delta,p,e,mode,scope)





 NoHiddenDeps(subject,Delta)





 DepsAvailable(Delta,p)





 DepsReplayAdmissible(Delta)



or dependency migration, refinement, invalidation, audit, equivalence, congruence, and path-coherence claims.

Only accepted certificates discharge dependency obligations.

## Dependency and trusted boundaries

A trusted boundary may certify dependency completeness only if its trusted statement includes dependency completeness.

A trusted build system may certify file availability.

It does not certify semantic dependency closure unless declaration-level dependencies, certificates, epochs, proof boundaries, audit links, and replay data are inside the trusted statement.

Boundary overreach is rejected.

## Dependency and proof boundaries

Dependency proofs may themselves depend on proof boundaries.

If dependency closure is established through reflection, extraction, external verification, finite enumeration, hash commitments, trusted archive lookup, or replay engine output, those proof-boundary dependencies must be included.

A dependency closure proof cannot hide its own dependencies.

## Dependency and applications

Application-specific dependencies belong outside this abstract file.

`MorphismDependency.lean` may define generic hooks for application-instantiated morphism dependencies.

It must not define concrete bitmap dependencies, matrix dependencies, token dependencies, image dependencies, hash constants, Feistel parameters, UI callbacks, runtime payload dependencies, or application file dependencies.

Application constants may appear only in application-layer dependency records.

## Dependency and `none`

No dependency rule may treat `none`, `null`, missing dependency, absent import, absent runtime binding, missing certificate, or missing replay data as a mathematical default.

A missing dependency is missing.

It may cause rejection, unknown status, audit-only status, or research obligation.

It cannot be silently filled by default.

## Epoch rule

`MorphismDependency.lean` artifacts are epoch-indexed by:

- morphism-dependency schema epoch;
- subject schema epoch;
- direct-dependency epoch;
- transitive-dependency epoch;
- closure-policy epoch;
- freshness-policy epoch;
- availability-policy epoch;
- hidden-dependency policy epoch;
- endpoint-dependency epoch;
- witness-dependency epoch;
- domain-dependency epoch;
- codomain-dependency epoch;
- partiality-dependency epoch;
- equality-dependency epoch;
- equivalence-dependency epoch;
- law-dependency epoch;
- certificate-dependency epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream dependency claims.

The old dependency artifact remains audit content.

## History relation

A history record depending on `MorphismDependency.lean` must record:

1. source file identity;
2. declaration identity;
3. dependency subject;
4. direct dependencies;
5. transitive dependencies;
6. closure result;
7. freshness result;
8. availability result;
9. hidden-dependency check;
10. endpoint dependencies;
11. witness dependencies;
12. domain dependencies;
13. codomain dependencies;
14. partiality dependencies;
15. equality and equivalence dependencies;
16. identity, composition, associativity, congruence, quotient, functoriality, and naturality-use dependencies where used;
17. certificate dependencies;
18. proof-boundary dependencies;
19. trusted-boundary dependencies;
20. audit dependencies;
21. replay dependencies;
22. proof mode and scope;
23. prefix and epoch;
24. status;
25. invalidation behavior;
26. audit reference;
27. replay data.

Imports, filenames, or labels alone are insufficient.

## Replay rule

Replay of `MorphismDependency.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, and all morphism files that define dependency subjects;
3. reconstructing dependency-record declarations;
4. reconstructing direct dependencies;
5. recursively reconstructing transitive dependencies;
6. checking closure completeness;
7. checking dependency availability;
8. checking dependency freshness;
9. detecting hidden dependencies;
10. checking endpoint, witness, domain, codomain, partiality, equality, equivalence, identity, composition, associativity, congruence, quotient, functoriality, naturality-use, certificate, epoch, audit, and replay dependency classes;
11. checking proof objects or trusted boundaries where present;
12. checking that imports, filenames, and labels are not treated as complete dependency evidence;
13. checking that no runtime code or application constants are introduced;
14. checking invalidation propagation.

If any step fails, downstream morphism-dependency claims are not replay-admissible.

## Runtime representation

`MorphismDependency.lean` may lower to:

- Lean dependency predicates;
- dependency-closure records;
- direct-dependency descriptors;
- transitive-dependency descriptors;
- freshness-check descriptors;
- hidden-dependency descriptors;
- dependency-certificate descriptors;
- invalidation descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not dependency identity.

Dependency identity depends on subject, direct dependencies, transitive dependencies, closure, freshness, availability, hidden-dependency policy, dependency classes, mode, scope, prefix, epoch, status, invalidations, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let a morphism claim compile, import files successfully, list filenames, display labels, or cite theorem names.

This does not imply dependency closure.

Dependency closure holds only when every direct and transitive semantic dependency required by the morphism claim is explicit, available, fresh, status-compatible, epoch-compatible, certificate-compatible, proof-boundary-compatible, trusted-boundary-compatible, audit-linked where required, uninvalidated, and replay-admissible.

Thus imports, filenames, and labels are insufficient for complete dependency evidence.

## Proof obligation

`MorphismDependency.lean` is admissible only if the framework can certify:

1. direct dependencies are explicit;
2. transitive dependencies are explicit;
3. dependency closure is replay-checkable;
4. endpoint dependencies are explicit;
5. witness dependencies are explicit;
6. domain and codomain dependencies are explicit;
7. partiality dependencies are explicit;
8. equality and equivalence dependencies are explicit;
9. identity, composition, associativity, congruence, quotient, functoriality, and naturality-use dependencies are explicit where consumed;
10. certificate dependencies are explicit;
11. epoch, audit, proof-boundary, trusted-boundary, invalidation, and replay dependencies are explicit;
12. hidden dependencies are rejected or surfaced;
13. imports, filenames, and labels are excluded as complete dependency evidence;
14. application constants are excluded;
15. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismDependency.lean` may not define concrete carrier dependencies, concrete spectrum dependencies, authority dependencies, tensor dependencies, sheaf dependencies, operator dependencies, history dependencies, migration dependencies, refinement dependencies, application dependencies, runtime dependency graphs, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-dependency infrastructure.

## Commitment rule

`MorphismDependency.lean` may define direct and transitive dependency closure for morphism claims.

It cannot treat Lean imports as semantic dependency closure.

It cannot treat filenames as dependency evidence.

It cannot treat labels as dependency evidence.

It cannot allow hidden dependencies.

It cannot treat availability as freshness.

It cannot treat audit links as proof.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant91b83cc79666c4a27a379dc78d67a700240c599cca619ed98f00b8c30ed40c3c

