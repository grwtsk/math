/-
# MorphismCongruence.lean


## Role

`MorphismCongruence.lean` defines congruence infrastructure for categorical morphisms.

It specifies when object equality, object equivalence, morphism equality, or morphism equivalence is preserved by identity formation, composition, associativity use, functorial mapping, naturality use, quotient descent, replay, migration, refinement, and certificate transport.

Congruence is not automatic.

A relation is not safe for substitution merely because it is named an equivalence.

A quotient relation is not safe for quotient-category construction unless identities, composition, domains, codomains, partiality, and witnesses respect it.

A runtime implementation preserving sample outputs is not congruence evidence.

## Core principle

A construction `K` is congruent with respect to a relation `R` when related inputs produce related outputs.

For morphisms, a typical congruence law is:



 f~ f'
 and 
 g~ g'
 =>
 g o f~ g' o f'



where all endpoint, domain, codomain, partiality, dependency, epoch, and replay prerequisites are satisfied.

Congruence is the bridge from equivalence to safe use.

Without congruence, equivalence cannot be substituted into categorical constructions.

## Formal shape

A morphism-congruence record has schematic form:



 MorphismCongruence=(construction,inputRelations,outputRelation,objectCongruence,morphismCongruence,domainCongruence,codomainCongruence,partialityCongruence,witnessCongruence,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `construction` records the construction whose congruence is claimed;
- `inputRelations` records equality or equivalence relations on inputs;
- `outputRelation` records the resulting equality or equivalence relation;
- `objectCongruence` records endpoint-object compatibility;
- `morphismCongruence` records morphism compatibility;
- `domainCongruence` records domain-predicate compatibility;
- `codomainCongruence` records codomain-predicate compatibility;
- `partialityCongruence` records definedness, rejection, selection, stochastic, fallback, and unknown compatibility;
- `witnessCongruence` records graph, function, relation, selected, stochastic, or trusted-statement compatibility;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, partial, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records consumer context;
- `prefix` records history-relative availability;
- `epoch` records semantic epoch;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `status` records lifecycle state;
- `invalidations` records stale or blocking effects;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record is a substitution-safety claim.

It is not an equality claim by itself.

## Object congruence

Object congruence states that morphism constructions respect object equality or equivalence.

For endpoint substitution:



 A~ A'
 =>
 Hom(A,B)~ Hom(A',B)



or a typed variant.

Object congruence must name the object relation.

Exact object equality, quotient object equivalence, observable object equivalence, replay object equivalence, and audit object equivalence are distinct.

Endpoint labels are insufficient.

## Morphism congruence

Morphism congruence states that constructions respect morphism equality or equivalence.

For composition:



 f~ f'
 and 
 g~ g'
 =>
 g o f~ g' o f'



This requires endpoint compatibility and compatibility of domains, codomains, partiality policies, witnesses, modes, scopes, dependencies, certificates, epochs, and replay behavior.

Morphism equivalence alone does not imply congruence.

## Domain congruence

Domain congruence states that related morphisms have compatible domains.

For quotienting, a standard law is:



 x~_A x'=>
 (D_f(x)<=> D_f(x'))



For morphism equivalence:



 f~ g=>
 (D_f(x)<=> D_g(x))



or a declared weaker relation.

Without domain congruence, partial morphisms cannot safely descend to quotients or be substituted in compositions.

## Codomain congruence

Codomain congruence states that related outputs preserve codomain admissibility.

A typical law is:



 y~_B y'=>
 (C_f(y)<=> C_f(y'))



or, for related morphisms:



 f~ g=>
 C_f(y)<=> C_g(y')



under the declared output relation.

Codomain congruence is required for quotient codomains, observable codomains, approximate codomains, and migrated codomains.

Target-object membership is insufficient.

## Partiality congruence

Partiality congruence states that related inputs or related morphisms preserve definedness behavior.

It may require compatibility of:

- definedness;
- undefinedness;
- rejection;
- unknown status;
- selected behavior;
- stochastic kernel definition;
- fallback behavior;
- audit-only behavior;
- research-obligated behavior.

For quotient morphisms:



 x~ x'=>
 Defined_f(x)<=> Defined_f(x')



is required.

Without partiality congruence, substitution may change whether an expression is defined.

## Witness congruence

Witness congruence states that morphism witnesses respect the relevant relations.

For functional witnesses:



 x~_A x'=> f(x)~_B f(x')



For relational witnesses:



 x~_A x'
 and 
 y~_B y'
 and 
 R_f(x,y)
 =>
 R_f(x',y')



or a bidirectional variant where exact quotient descent is required.

Witness congruence is required before quotienting, replay equivalence, functorial mapping, and naturality transport.

## Identity congruence

Identity formation must respect object equality or equivalence.

A standard law is:



 A~ A'=> id_A~ id_{A'}



under a declared morphism relation.

Exact identity congruence requires exact object equality and exact morphism equality.

Quotient identity congruence supports quotient consumers.

Observable identity congruence supports observable consumers.

Repeated labels or runtime no-ops are insufficient.

## Composition congruence

Composition congruence is the central morphism-congruence law.

Given:



 f~ f'





 g~ g'



and compatible endpoints, the construction must prove:



 g o f~ g' o f'



under the declared output relation.

The law must account for composed domains, composed codomains, partiality propagation, witness composition, dependencies, certificates, epochs, and replay behavior.

Composition congruence is not inherited from runtime function composition.

## Associativity congruence

Associativity use must respect morphism equivalence.

If component morphisms are replaced by equivalent morphisms, associativity certificates may be transported only if associativity is congruent under the component equivalence relation.

A theorem:



 h o (g o f)=(h o g) o f



cannot be reused for `f',g',h'` without congruence and endpoint compatibility evidence.

## Functorial congruence

A functor must preserve relevant object and morphism relations.

For objects:



 A~ A'=> F(A)~ F(A')



For morphisms:



 f~ f'=> F(f)~ F(f')



Functorial congruence is required for quotient functors, observable functors, approximate functors, replay-preserving functors, migration functors, refinement functors, and application-instantiation functors.

A functor mapping table is not congruence evidence.

## Naturality-use congruence

Naturality claims may be transported across related morphisms only if naturality use is congruent.

If:



 f~ f'



then a naturality square for `f` yields a naturality square for `f'` only when component maps, functor images, compositions, endpoints, domains, codomains, partiality policies, and comparison relations all respect the equivalence.

Displayed naturality diagrams are insufficient.

## Quotient descent

Quotient descent requires congruence.

A morphism descends to a quotient only if it respects the quotient relation on source and target:



 x~_A x'=> f(x)~_B f(x')



For partial morphisms, domain and partiality congruence are also required.

For relational morphisms, graph congruence is required.

For stochastic morphisms, kernel congruence is required.

Without these laws, the quotient morphism is not well-defined.

## Representative independence

Representative independence is a congruence consequence or requirement.

It states that a construction does not depend on the selected representative.

For composition, identity, functoriality, and naturality in quotient categories, representative independence must be certified.

A quotient relation without representative independence cannot support quotient categorical structure.

Representative independence cannot be inferred from quotient labels.

## Observable congruence

Observable congruence states that constructions preserve declared observables.

For a morphism:



 x~_{Obs}x'=>
 Obs(f(x))=Obs(f(x'))



or a construction-level variant.

Observable congruence supports observable consumers only.

It does not preserve hidden state unless faithfulness or recovery is certified.

## Approximate congruence

Approximate congruence states that related inputs produce outputs within a bound.

A typical form is:



 d_A(x,x')<=\varepsilon_A
 =>
 d_B(f(x),f(x'))<=\varepsilon_B



It must record metric, tolerance, error propagation, domain, codomain, dependencies, certificates, epoch, and replay behavior.

Approximate congruence cannot support exact quotient descent unless strengthened.

## Replay congruence

Replay congruence states that replay respects equality or equivalence.

For morphisms:



 f~ g=> Replay(f)~ Replay(g)



or:



 Replay(g o f)~ Replay(g) o Replay(f)



under declared replay procedures.

Replay congruence must record targets, procedures, manifests, comparison relations, dependencies, certificates, epochs, proof boundaries, trusted boundaries, invalidations, and audit links.

Stored outputs are insufficient.

## Migration congruence

Migration congruence states that migration preserves object or morphism relations.

For morphism equivalence:



 f_e~_e g_e
 =>
 M(f_e)~_{e'}M(g_e)



under declared migration mode.

It must record endpoint migration, domain migration, codomain migration, partiality migration, witness migration, dependency migration, certificate migration, proof-boundary migration, audit migration, invalidations, and replay preservation.

Same target names are insufficient.

## Refinement congruence

Refinement congruence states that refinement preserves or reflects object or morphism relations.

For morphisms:



 f_h~_h g_h
 =>
 Refine(f_h)~_{h'}Refine(g_h)



or through projection and reconstruction.

It must distinguish precision movement from epoch movement.

If epoch changes, migration congruence is also required.

## Extraction congruence

Extraction congruence states that extracted checker or runtime-facing artifacts preserve proof-core relations.

It must record source Lean declarations, target extraction artifacts, input schemas, output schemas, proof-erasure policy, trusted extraction boundary, dependencies, epochs, and replay behavior.

Running extracted code successfully is not extraction congruence.

## Congruence for certificates

Certificate transport may require congruence.

If a certificate proves a statement about `f`, and `f~ g`, then reusing the certificate for `g` requires statement congruence, subject congruence, dependency freshness, proof-boundary compatibility, mode compatibility, and replay behavior.

Equivalence of certificate payloads is insufficient.

## Congruence for statuses

Status derivations may need congruence.

If:



 f~ g



then accepted status for `f` transfers to `g` only when status policy is congruent under the morphism relation.

A status tag cannot be copied across equivalent morphisms without status-congruence evidence.

## Congruence for dependencies

Dependency closure may need congruence.

If a construction replaces `f` by `g`, the dependency closure must be transformed or proven equivalent.

A congruence theorem must state whether dependencies are preserved exactly, migrated, refined, quotiented, observed, summarized, checkpointed, or audit-linked.

Hidden dependency changes invalidate congruence use.

## Congruence for audit links

Audit links may be transported across equality or equivalence only if audit congruence is certified.

If:



 f~ g



and `f` has an audit link, `g` does not automatically inherit that audit link.

Audit preservation requires typed source-target link transformation, dependency closure, epoch compatibility, certificates, and replay behavior.

## Congruence status

Congruence claims have lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted congruence for audit does not imply accepted congruence for proof or quotient descent.

Status is prefix-, epoch-, mode-, and scope-relative.

## Rejected congruence

Rejected congruence records that a construction does not respect a relation or that no accepted evidence exists.

Reasons may include domain mismatch, codomain mismatch, partiality mismatch, witness mismatch, endpoint mismatch, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected congruence blocks substitution under the relation.

## Unknown congruence

Unknown congruence records that relation preservation cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block quotienting, functoriality, naturality, composition, replay, migration, refinement, or certificate reuse.

Unknown must not be treated as approximate success.

## Research-obligated congruence

Research-obligated congruence records that a congruence proof is required but unavailable.

It must identify construction, input relation, output relation, missing law, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not prove congruence.

It prevents silent substitution.

## Congruence equality

Two congruence records are equal only if their construction, input relations, output relation, object congruence, morphism congruence, domain congruence, codomain congruence, partiality congruence, witness congruence, mode, scope, prefix, epoch, dependencies, certificates, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior coincide.

Same construction name is insufficient.

Same relation name is insufficient.

## Congruence equivalence

Congruence records may be equivalent under declared relation.

Examples include quotient congruence equivalence, observable congruence equivalence, approximate congruence equivalence, replay congruence equivalence, audit congruence equivalence, migrated congruence equivalence, refined congruence equivalence, or path congruence equivalence.

Equivalence is not equality.

Consumers must state which congruence equivalence they accept.

## Congruence invalidation

Congruence claims may become stale if construction semantics, input relation, output relation, endpoint relations, domain relations, codomain relations, partiality relations, witness relations, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old congruence claim remains audit content.

## Congruence migration

Congruence may migrate across epochs:



 Congruent_e(K,R,S)
 leads-to 
 Congruent_{e'}(K',R',S')



Migration must preserve or explicitly weaken construction semantics, relations, domains, codomains, partiality, witnesses, dependencies, certificates, proof boundaries, trusted boundaries, invalidations, audit links, and replay behavior.

Same construction names are insufficient.

## Congruence refinement

Congruence may refine by narrowing relation domains, strengthening output relations, reducing approximation error, improving dependency closure, replacing trusted boundaries, or adding replay metadata.

Refinement is not migration.

If epoch changes, congruence migration is also required.

A refined congruence theorem is not automatically equal to the source theorem.

## Congruence audit

Congruence audit links connect congruence claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, or history prefixes.

Audit links are traceability only.

They do not prove congruence unless paired with accepted certificates.

## Congruence replay

Congruence replay reconstructs construction, input relations, output relation, endpoint relations, domain relation, codomain relation, partiality relation, witness relation, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

If replay reconstructs only relation names or construction names, the congruence claim is not replay-admissible.

## Runtime non-collapse

Runtime behavior may appear congruent on sampled inputs.

This does not prove categorical congruence.

Categorical congruence is a theorem over typed constructions and declared relations.

Implementation names, runtime functions, callback identities, sampled outputs, or pipeline similarities are insufficient.

## Congruence and applications

Application-specific congruence belongs outside this abstract file.

`MorphismCongruence.lean` may define generic hooks for application-instantiated congruence.

It must not define concrete application congruence, bitmap transform congruence, matrix operation congruence, token congruence, image operation congruence, hash constants, Feistel congruence, UI callback congruence, or runtime payload congruence.

## Congruence and `none`

No congruence rule may treat `none`, `null`, missing output, missing input, absent runtime binding, or undefined result as a mathematical default.

Undefinedness congruence is a partiality claim.

Fallback congruence must be certified as semantic fallback congruence.

Absence cannot be silently substituted as a value.

## Congruence certificates

Congruence certificates may prove:



 Congruent(K,R,S)





 CompositionCongruent(R,S)





 IdentityCongruent(R)





 FunctorCongruent(F,R,S)





 NaturalityUseCongruent(\eta,R)





 QuotientDescends(f)





 ReplayCongruent(R)





 MigrationCongruent(M,R,S)





 RefinementCongruent(P,R,S)



or object congruence, endpoint congruence, domain congruence, codomain congruence, partiality congruence, witness congruence, equality, equivalence, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge congruence obligations.

## Epoch rule

`MorphismCongruence.lean` artifacts are epoch-indexed by:

- morphism-congruence schema epoch;
- construction epoch;
- input-relation epoch;
- output-relation epoch;
- object-congruence epoch;
- morphism-congruence epoch;
- domain-congruence epoch;
- codomain-congruence epoch;
- partiality-congruence epoch;
- witness-congruence epoch;
- quotient-policy epoch;
- observable-policy epoch;
- approximate-comparison epoch;
- replay-congruence epoch;
- migration-congruence epoch;
- refinement-congruence epoch;
- proof-mode epoch;
- scope epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream congruence claims.

The old congruence artifact remains audit content.

## History relation

A history record depending on `MorphismCongruence.lean` must record:

1. source file identity;
2. declaration identity;
3. construction;
4. input relations;
5. output relation;
6. object-congruence claim;
7. morphism-congruence claim;
8. domain-congruence claim;
9. codomain-congruence claim;
10. partiality-congruence claim;
11. witness-congruence claim;
12. proof mode and scope;
13. prefix and epoch;
14. dependency closure;
15. certificates;
16. status;
17. invalidation behavior;
18. proof boundary;
19. trusted boundary where used;
20. audit reference;
21. replay data.

The construction name or relation name alone is insufficient.

## Replay rule

Replay of `MorphismCongruence.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, `MorphismComposition.lean`, `MorphismAssociativity.lean`, `MorphismEquality.lean`, and `MorphismEquivalence.lean`;
3. reconstructing congruence declarations;
4. reconstructing construction, input relations, output relation, object, morphism, domain, codomain, partiality, and witness congruence records;
5. checking identity, composition, associativity, functoriality, naturality-use, quotient descent, replay, migration, refinement, certificate, status, dependency, audit, and path-coherence congruence claims;
6. checking proof objects or trusted boundaries where present;
7. checking that runtime similarity, sampled behavior, implementation names, and callback identities are not treated as congruence evidence;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream congruence claims are not replay-admissible.

## Runtime representation

`MorphismCongruence.lean` may lower to:

- Lean congruence theorem statements;
- congruence records;
- construction descriptors;
- relation descriptors;
- quotient-descent metadata;
- functorial congruence metadata;
- naturality-use congruence metadata;
- replay-congruence descriptors;
- congruence-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not congruence identity.

Congruence identity depends on construction, input relations, output relation, endpoint/domain/codomain/partiality/witness congruence, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let two runtime implementations appear to preserve a relation on sampled inputs, or let a construction preserve labels, implementation names, callbacks, displayed nodes, or cached outputs.

This does not imply categorical congruence.

Categorical congruence holds only when the construction preserves the declared object, morphism, domain, codomain, partiality, and witness relations under accepted dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit references, invalidations, and replay behavior.

Thus runtime similarity and sampled behavior are insufficient for congruence.

## Proof obligation

`MorphismCongruence.lean` is admissible only if the framework can certify:

1. congruence is explicit and not assumed;
2. input and output relations are typed;
3. object congruence is explicit;
4. morphism congruence is explicit;
5. domain congruence is explicit;
6. codomain congruence is explicit;
7. partiality congruence is explicit;
8. witness congruence is explicit;
9. composition, identity formation, functorial mapping, naturality use, quotient descent, replay, migration, and refinement consume congruence only when certified;
10. equality and equivalence remain distinct;
11. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
12. runtime similarity and sampled behavior are excluded as congruence evidence;
13. application constants are excluded;
14. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismCongruence.lean` may not define concrete carrier congruence, concrete spectrum congruence, authority-setter congruence, tensor-kernel congruence, sheaf-restriction congruence, operator-action congruence, history-append congruence, migration-map congruence, refinement-map congruence, application congruence, runtime callback congruence, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-congruence infrastructure.

## Commitment rule

`MorphismCongruence.lean` may define congruence laws for categorical morphism constructions.

It cannot assume equivalence is substitutable without congruence.

It cannot make quotient descent safe without representative independence.

It cannot make observable preservation hidden-state preservation.

It cannot make approximate preservation exact preservation.

It cannot infer congruence from runtime similarity or sampled outputs.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
