/-
# CategoryMorphism.lean

## Role

`CategoryMorphism.lean` defines the primary Lean record for categorical morphisms.

It supplies the proof-core representation of a typed arrow, including morphism identity, source object, target object, relation or action witness, domain predicate, codomain predicate, partiality policy, proof mode, consumer scope, dependency closure, epoch attachment, certificates, audit references, proof boundary, trusted boundary, status, invalidations, and replay behavior.

A category morphism is not a runtime function.

It is not an implementation call.

It is not a callback.

It is not a method name.

It is not a sampled input-output table.

It is an abstract typed arrow in the Lean categorical proof layer.

## Core principle

A categorical morphism exists only when its source and target objects are typed and admissible, its relation or action witness is declared, its domain and codomain obligations are explicit, its partiality is recorded, and its dependencies, certificates, epochs, audit links, proof boundaries, trusted boundaries, and replay behavior are reconstructible.

The schematic judgment is:



    f in Hom(A,B)



or:



    f:A-> B



where `A` and `B` are categorical objects, not runtime types.

## Formal shape

The primary record has schematic form:



    CategoryMorphism=(id,source,target,witness,domain,codomain,partiality,mode,scope,deps,epoch,status,certs,proofBoundary,trustedBoundary,audit,replay)



where:

- `id` identifies the morphism as a categorical artifact;
- `source` records the source categorical object;
- `target` records the target categorical object;
- `witness` records the relation, graph, action, function, selected relation, stochastic kernel, or abstract arrow witness;
- `domain` records source-side definedness or admissibility constraints;
- `codomain` records target-side admissibility constraints;
- `partiality` records total, partial, relational, selected, stochastic, rejected, unknown, or research-obligated behavior;
- `mode` records exact, quotient, observable, approximate, summary, checkpoint, probabilistic, partial, audit-only, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records admissible consumers;
- `deps` records dependency closure;
- `epoch` records semantic epoch attachment;
- `status` records lifecycle state;
- `certs` records accepted evidence;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record is abstract and categorical.

It does not define implementation code.

## Morphism identity

Morphism identity includes:



    (id,source,target,witness,domain,codomain,partiality,mode,scope,deps,epoch,status,certs,proofBoundary,trustedBoundary,audit,replay)



Two morphism records with the same `id` are not equal unless all proof-relevant fields coincide or are certified equivalent.

Same source and target labels are insufficient.

Same runtime implementation name is insufficient.

Same input-output behavior on examples is insufficient.

## Source object

The `source` field records the categorical object from which the morphism originates.

The source object must be typed, well-formed, admissible for endpoint use, fresh at the relevant epoch, dependency-closed, and replay-admissible for the morphism's scope.

A source label does not prove source-object admissibility.

A runtime input type does not prove categorical source identity.

## Target object

The `target` field records the categorical object into which the morphism maps.

The target object must be typed, well-formed, admissible for endpoint use, fresh at the relevant epoch, dependency-closed, and replay-admissible for the morphism's scope.

A target label does not prove target-object admissibility.

A runtime output type does not prove categorical target identity.

## Witness field

The witness field records how the morphism is represented abstractly.

It may be:

- a total function;
- a partial function;
- a graph relation;
- a selected relation;
- a stochastic kernel;
- an approximate relation;
- a quotient relation;
- an observable relation;
- a replay relation;
- an audit relation;
- a trusted-boundary statement;
- a rejected relation;
- an unknown relation;
- a research-obligated placeholder.

The witness must be typed by source and target.

A runtime function pointer is not a witness unless verified as one.

## Total-function witness

A total-function witness may have form:



    f:X_A-> X_B



where `X_A` and `X_B` are typed representations of the source and target objects.

Totality is a theorem or type-level property.

If the witness is exported as framework evidence, its source object, target object, dependency closure, proof boundary, epoch, and replay behavior must be recorded.

## Partial-function witness

A partial-function witness may have form:



    D_f:X_A-> Prop





    f:\{x:X_A//D_f(x)\}-> X_B



or an equivalent graph relation.

Partiality must be explicit.

Undefined inputs do not produce default target values.

Partial morphisms cannot be consumed as total morphisms unless totality over the required domain is certified.

## Graph-relation witness

A relation witness may have form:



    R_f:X_A-> X_B-> Prop



The morphism may be nondeterministic or nonfunctional.

Functionality requires proof:



    R_f(a,b_1)and R_f(a,b_2)=> b_1=b_2



A graph relation is not automatically computable.

A graph relation is not automatically total.

## Selected witness

A selected morphism chooses one target among related targets.

Selection must be recorded by a selection functional, selection theorem, or certificate.

The selection policy must be deterministic or otherwise replayable under the declared mode.

Runtime order, file order, hash order, or first-success behavior cannot silently select a target.

## Stochastic witness

A stochastic morphism witness may have form:



    K:X_A-> Prob(X_B)



or a relation between source values and target distributions.

It must record probability carrier, support, normalization, sampling policy, randomness boundary, proof mode, scope, certificates, epoch, and replay behavior.

A sampled target is not the morphism.

Sampling replay requires separate evidence.

## Domain predicate

The domain field records source-side definedness.

For a source representation `X_A`, the domain may be:



    D_f:X_A-> Prop



Domain membership is required before action, graph, selected, stochastic, or composition use when the morphism is partial or domain-restricted.

Source-object admissibility is not the same as domain membership.

## Codomain predicate

The codomain field records target-side admissibility.

For a target representation `X_B`, the codomain predicate may be:



    C_f:X_B-> Prop



Codomain predicate is distinct from target type membership.

A value may inhabit the target type while failing the morphism codomain predicate.

Codomain admissibility must be checked when proof-relevant.

## Partiality policy

The partiality field records how undefined, rejected, unknown, nondeterministic, stochastic, fallback, or research-obligated cases are represented.

Possible partiality statuses include:

- total;
- partial;
- relational;
- selected;
- stochastic;
- undefined;
- rejected;
- unknown;
- audit-only;
- research-obligated.

Partiality is semantic.

It is not runtime exception behavior by itself.

## Exact mode

An exact morphism preserves the declared relation or action without unrecorded loss.

For a functional witness, exact use may require:



    f(a)=b



with domain and codomain evidence.

For a compatibility square, exact use may require:



    M_B(f_e(a))=f_{e'}(M_A(a))



Exact mode requires fresh dependencies and accepted certificates.

## Quotient mode

A quotient morphism is valid only after quotienting source, target, or result.

It must record quotient relations, quotient maps, representative-independence conditions, congruence, retained information, lost representative information, certificates, dependencies, and replay behavior.

Quotient morphisms cannot support representative-sensitive consumers unless strengthened.

## Observable mode

An observable morphism preserves only declared observables.

It must record observable maps, observable equality, retained observable information, lost hidden information, certificates, dependencies, epoch, and replay behavior.

Observable morphisms cannot support hidden-state morphism claims unless faithfulness or recovery is certified.

## Approximate mode

An approximate morphism preserves action or relation up to a metric, residual, or tolerance:



    d(f(a),g(a))<=epsilon



It must record comparison structure, tolerance, error propagation, domain, codomain, dependencies, certificates, epoch, and replay behavior.

Approximate morphisms cannot discharge exact morphism obligations.

## Audit-only mode

Audit-only morphism mode preserves historical explanation or provenance of a morphism claim.

It does not support current proof, exact composition, identity laws, functoriality, naturality, frame construction, or certificate reuse unless strengthened.

Audit-only mode must remain scoped as audit.

## Rejected morphism

A rejected morphism records failure to establish morphism evidence.

Reasons may include invalid source, invalid target, missing endpoint admissibility, failed domain proof, failed codomain proof, partiality mismatch, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected morphisms are audit content.

They are not usable arrows.

## Unknown morphism

An unknown morphism records that morphism validity cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block composition, functoriality, naturality, quotienting, replay, migration, or refinement.

Unknown may generate a research obligation.

## Research-obligated morphism

A research-obligated morphism records an unresolved morphism claim required by a downstream consumer.

It must identify source, target, intended witness, missing evidence, dependencies, required mode, required scope, epoch, and replay context.

It does not produce a usable morphism.

It prevents silent introduction of an unproven arrow.

## Endpoint admissibility

A morphism requires endpoint admissibility:



    ObjectAdmissible(A,mode,endpointScope)





    ObjectAdmissible(B,mode,endpointScope)



for:



    f:A-> B



Endpoint admissibility is part of morphism well-formedness.

Endpoint labels, ids, kinds, or runtime types are insufficient.

## Morphism well-formedness

Morphism well-formedness requires:

1. source object is typed;
2. target object is typed;
3. source and target are endpoint-admissible;
4. witness is typed by source and target;
5. domain predicate is well-formed;
6. codomain predicate is well-formed;
7. partiality is explicit;
8. mode and scope are explicit;
9. dependencies are closed;
10. epoch is attached;
11. certificates and replay metadata are available where required.

Well-formedness is not accepted usability unless status and certificates support it.

## Morphism admissibility

Morphism admissibility has form:



    MorphismAdmissible(f,mode,scope)



or:



    MorphismAdmissibleAt(p,e,f,mode,scope)



It requires well-formedness, endpoint admissibility, domain and codomain validity, partiality compatibility, dependency freshness, accepted status, certificates, proof-boundary validity, trusted-boundary containment, audit requirements, invalidation checks, and replay admissibility.

Constructing the morphism record is not admissibility.

## Morphism status

Morphism status is prefix-relative, epoch-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

A morphism accepted for audit may be rejected for proof.

A morphism accepted at one epoch may be stale at another.

## Morphism certificates

Morphism certificates may prove:



    CategoryMorphism(f,A,B)





    MorphismWellFormed(f)





    MorphismAdmissible(f,mode,scope)





    MorphismDomainValid(f)





    MorphismCodomainValid(f)





    MorphismFunctional(f)





    MorphismTotal(f)



or identity, composition, associativity, equality, equivalence, congruence, quotient compatibility, functoriality, naturality-use, migration, refinement, invalidation, audit, and replay claims.

Only accepted certificates discharge morphism obligations.

## Morphism dependency

Morphism dependencies include source object, target object, endpoint admissibility, object identity, object equality, object equivalence, domain predicate, codomain predicate, partiality policy, witness relation, proof mode, scope policy, status policy, epoch, certificates, proof boundary, trusted boundary, audit references, invalidation policy, and replay parameters.

Hidden dependencies invalidate morphism replay and audit.

## Morphism epoch

Morphism records are epoch-indexed.

A morphism at epoch `e` is not automatically a morphism at epoch `e'`.

Cross-epoch morphism use requires morphism migration, endpoint migration, domain and codomain migration, partiality migration, witness migration, dependency migration, certificate migration, proof-boundary migration, and replay preservation.

Same runtime function name is insufficient.

## Morphism audit

Morphism audit links connect morphism claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migrations, refinements, verifier exports, extraction artifacts, or history prefixes.

Audit links provide traceability.

They do not prove morphism existence, typing, equality, composition, or functoriality.

## Morphism replay

Morphism replay reconstructs source object, target object, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A stored function name is not replay.

A cached input-output pair is not replay.

A runtime call trace is not replay evidence unless certified under a replay procedure.

## Morphism equality

Morphism equality must compare morphism identity, source, target, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, status, invalidations, and replay behavior.

Same implementation is insufficient.

Same action on sampled values is insufficient.

Same source and target labels are insufficient.

## Morphism equivalence

Morphism equivalence may be exact, extensional, quotient, observable, approximate, replay, audit, migration, refinement, or path-based.

Equivalence is not equality.

Substitution through morphism equivalence requires congruence theorems for the consuming construction.

## Identity morphism relation

The primary record must support identity morphism formation:



    id_A:A-> A



Identity morphisms are special morphisms whose source and target are the same categorical object under accepted identity.

Identity formation requires object admissibility and identity certificates.

A no-op runtime function is insufficient.

## Composition relation

The primary record must support composition:



    go f:A-> C



from:



    f:A-> B



and:



    g:B-> C



or from compatible intermediate objects.

Composition requires endpoint compatibility, domain/codomain compatibility, partiality compatibility, dependency closure, and proof-mode composition.

Runtime function composition is not categorical composition unless verified.

## Associativity relation

The morphism record must support associativity statements:



    ho(go f)=(ho g)o f



The equality may be exact, quotient, observable, approximate, replay, or audit equivalence depending on mode.

Associativity requires certificates where exported or consumed.

It is not assumed for arbitrary morphism witnesses.

## Congruence relation

The primary record must support congruence:



    f~ f'
    and g~ g'
    =>
    go f~ g'o f'



Congruence must account for object equality or equivalence, morphism equality or equivalence, domain, codomain, partiality, mode, scope, dependencies, epoch, certificates, and replay behavior.

Congruence is required for quotient categories and path coherence.

## Quotient compatibility

A morphism is quotient-compatible only if it respects the quotient relation on source and target.

For representatives:



    a~_A a'=> f(a)~_B f(a')



This condition must be certified.

A morphism record with quotient mode does not automatically satisfy representative independence.

## Functoriality relation

The primary record must support use by functors.

For a functor `F`, morphism mapping has form:



    f:A-> B
    =>
    F(f):F(A)-> F(B)



Functoriality requires preservation of identity and composition.

Morphism mapping must preserve source, target, domains, codomains, modes, dependencies, certificates, epochs, and replay behavior under declared functor policy.

## Naturality relation

The primary record must support naturality use.

For a natural transformation:



    eta:F=> G



and morphism:



    f:A-> B



the square:



    G(f)o eta_A=eta_Bo F(f)



requires all involved morphisms to be well-formed, composable, dependency-closed, certified, epoch-compatible, and replay-admissible.

Displayed squares are not proof.

## Runtime function non-collapse

A runtime function may implement a morphism only under an implementation certificate.

That certificate must prove source translation, target translation, domain preservation, codomain preservation, action or relation compatibility, partiality behavior, dependency closure, proof boundary, trusted boundary, epoch, and replay behavior.

Without such evidence, runtime functions remain runtime artifacts, not categorical morphisms.

## Implementation call non-collapse

An implementation call is an event or execution trace.

It may be recorded in history.

It may be replayed.

It may be audited.

It does not become a morphism unless certified as evidence for a typed categorical arrow.

Execution success is not morphism existence.

## Cached-output non-collapse

A cached output does not prove morphism behavior.

It may support checkpoint, audit, or display mode only if certified.

Exact morphism use requires witness semantics, domain, codomain, partiality, dependencies, certificates, epoch, and replay behavior.

A cached output is not a morphism witness.

## Label non-collapse

Morphism labels are not morphism identities.

Same morphism name, theorem name, function name, method name, exported symbol, or diagram arrow label is insufficient.

Morphism identity requires full typed record and accepted evidence.

## Morphism migration

Morphism migration relates morphisms across epochs:



    f_e:A_e-> B_e
    ~>
    f_{e'}:A_{e'}-> B_{e'}



It must preserve or explicitly weaken source object, target object, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same implementation name at target epoch is insufficient.

## Morphism refinement

Morphism refinement may sharpen witness semantics, narrow domain, strengthen codomain, reduce error, improve dependency closure, replace trusted boundaries, or add replay metadata.

Refinement is not migration.

If epoch changes, morphism migration evidence is also required.

A refined morphism is not automatically equal to the source morphism.

## Morphism invalidation

A morphism claim may become stale if any of the following changes:

- source object;
- target object;
- endpoint admissibility;
- domain predicate;
- codomain predicate;
- witness;
- partiality policy;
- equality relation;
- equivalence relation;
- proof mode;
- scope;
- dependency closure;
- certificate schema;
- proof boundary;
- trusted boundary;
- epoch;
- audit schema;
- replay schema;
- invalidation policy.

Invalidation is append-only.

The old morphism record remains audit content.

## Morphism and applications

Application-specific morphisms belong outside this abstract file.

`CategoryMorphism.lean` may define generic hooks for application-instantiated arrows.

It must not define concrete application functions, bitmap transforms, matrix operations, token mappings, hash functions, Feistel maps, UI callbacks, or runtime payload arrows.

## Morphism and `none`

No morphism rule may treat `none`, `null`, missing input, missing output, or absent runtime binding as a mathematical default.

Undefinedness is not a default output.

A partial morphism may be undefined.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

## Certificate relation

Morphism certificates may prove:



    CategoryMorphism(f,A,B)





    MorphismWellFormed(f)





    MorphismAdmissible(f,mode,scope)





    MorphismTotal(f)





    MorphismPartial(f)





    MorphismFunctional(f)





    MorphismRelational(f)





    MorphismReplayAdmissible(f)



or domain, codomain, endpoint, identity, composition, associativity, equality, equivalence, congruence, quotient, functoriality, naturality-use, migration, refinement, invalidation, and audit claims.

Only accepted certificates discharge morphism obligations.

## Epoch rule

`CategoryMorphism.lean` artifacts are epoch-indexed by:

- category-morphism record epoch;
- morphism-id schema epoch;
- source-object epoch;
- target-object epoch;
- witness schema epoch;
- domain-predicate epoch;
- codomain-predicate epoch;
- partiality-policy epoch;
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

Changing any component may stale downstream morphism claims.

The old morphism artifact remains audit content.

## History relation

A history record depending on `CategoryMorphism.lean` must record:

1. source file identity;
2. declaration identity;
3. morphism id;
4. source object;
5. target object;
6. witness;
7. domain predicate;
8. codomain predicate;
9. partiality policy;
10. mode and scope;
11. dependency closure;
12. epoch;
13. status;
14. certificates;
15. proof boundary;
16. trusted boundary where used;
17. audit reference;
18. invalidation behavior;
19. replay data.

The runtime function name alone is insufficient.

## Replay rule

Replay of `CategoryMorphism.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/` and `lean/category/object/`;
3. reconstructing the `CategoryMorphism` record declaration;
4. reconstructing morphism id, source, target, witness, domain, codomain, partiality, mode, scope, dependencies, epoch, status, certificates, proof boundary, trusted boundary, audit, invalidation, and replay fields;
5. checking endpoint admissibility and typed witness conditions;
6. checking proof objects or trusted boundaries where present;
7. checking that runtime functions, implementation calls, cached outputs, and labels are not treated as morphisms by default;
8. checking that no application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream category-morphism claims are not replay-admissible.

## Runtime representation

`CategoryMorphism.lean` may lower to:

- Lean morphism-record declarations;
- witness metadata;
- endpoint metadata;
- domain and codomain metadata;
- partiality metadata;
- morphism-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- replay descriptors;
- verifier-facing morphism schemas.

Runtime representation is not morphism identity.

Morphism identity depends on the typed record, endpoint objects, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior.

## Non-collapse theorem

Let a runtime function, implementation call, method name, exported symbol, cached output, sampled graph, or displayed arrow label be present.

This does not imply that a categorical morphism exists.

A categorical morphism exists only when the typed morphism record and its source, target, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior are accepted for the required consumer.

Thus runtime functions and implementation calls are insufficient for categorical morphism identity.

## Proof obligation

`CategoryMorphism.lean` is admissible only if the framework can certify:

1. the primary morphism record is universe-polymorphic;
2. morphisms are typed by source and target categorical objects;
3. endpoint admissibility is explicit;
4. relation or action witness is explicit;
5. domain and codomain predicates are explicit;
6. partiality is explicit;
7. proof mode and scope are explicit;
8. dependency closure is explicit;
9. epochs, statuses, certificates, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior are explicit;
10. runtime functions and implementation calls are not morphisms by default;
11. application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`CategoryMorphism.lean` may not define concrete carrier functions, concrete spectrum maps, authority setters, tensor kernels, sheaf restrictions, operator actions, history append operations, migration maps, refinement maps, application functions, runtime callbacks, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only the abstract Lean record for categorical morphisms.

## Commitment rule

`CategoryMorphism.lean` may define the primary categorical-morphism record.

It cannot turn runtime functions into morphisms.

It cannot turn implementation calls into morphisms.

It cannot infer totality from function-like syntax.

It cannot hide partiality.

It cannot infer endpoint admissibility from labels.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
