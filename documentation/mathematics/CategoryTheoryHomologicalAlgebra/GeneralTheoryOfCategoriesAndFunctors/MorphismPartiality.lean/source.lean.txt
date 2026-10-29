/-
# MorphismPartiality.lean


## Role

`MorphismPartiality.lean` defines partiality infrastructure for categorical morphisms.

It records whether a morphism is total, partial, undefined on some inputs, rejected, unknown, selected, stochastic, fallback-mediated, audit-only, or research-obligated.

Partiality is proof-relevant.

It determines when a morphism may be applied, composed, transported by functors, used in naturality squares, replayed, migrated, refined, certified, or invalidated.

A partiality policy is not runtime exception behavior.

It is not a JavaScript `null`.

It is not an `Option` default.

It is not a fallback output by convention.

It is a typed semantic policy with domain, codomain, dependencies, certificates, epochs, audit links, invalidations, and replay behavior.

## Core principle

A categorical morphism is not assumed total.

For a morphism:



    f:A-> B



partiality determines the relation between source values, domain membership, output existence, target admissibility, rejection, undefinedness, unknown status, stochastic behavior, selected behavior, fallback behavior, and replay behavior.

A morphism may be total only when totality is certified.

A runtime implementation returning a value is not proof of totality.

A missing value is not a mathematical default.

## Formal shape

A morphism-partiality record has schematic form:



    MorphismPartiality=(morphism,policy,domain,codomain,definedness,undefinedness,rejection,unknown,selection,stochastic,fallback,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `morphism` identifies the morphism;
- `policy` records total, partial, relational, selected, stochastic, fallback, rejected, unknown, audit-only, or research-obligated behavior;
- `domain` records source-side definedness predicate;
- `codomain` records target-side admissibility predicate;
- `definedness` records where the morphism is defined;
- `undefinedness` records where it is not defined;
- `rejection` records rejected cases;
- `unknown` records unresolved cases;
- `selection` records selection policy where a relation has many targets;
- `stochastic` records stochastic-kernel behavior where present;
- `fallback` records whether fallback behavior is part of the semantic morphism;
- `mode` records exact, quotient, observable, approximate, summary, checkpoint, probabilistic, partial, audit-only, trusted-boundary, rejected, unknown, or research-obligated mode;
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

The record classifies the morphism's definedness behavior.

It does not define the morphism's action by itself.

## Total morphism

A total morphism is defined for all source-side values in the required source scope:



    forall x:X_A,\ Defined_f(x)



or:



    forall x,\ SourceAdmissible(x)=> Defined_f(x)



depending on the source interpretation.

Totality must be certified.

Function-like syntax is not totality.

Runtime success on examples is not totality.

A total morphism still requires codomain preservation where output admissibility is proof-relevant.

## Partial morphism

A partial morphism is defined only on a source-side domain:



    D_f:X_A-> Prop



Definedness usually requires:



    Defined_f(x)\Leftrightarrow D_f(x)



or a declared stronger policy.

A partial morphism cannot be applied outside its domain unless the result is explicitly rejected, unknown, audit-only, fallback-certified, or research-obligated.

Partiality must remain visible in composition, functoriality, naturality, migration, and replay.

## Undefined case

An undefined case records:



    Undefined_f(x)



Undefinedness is semantic.

It is not runtime crash behavior alone.

It is not missing output alone.

It is not `none` as a mathematical value.

An undefined input produces no categorical output unless a fallback policy is explicitly part of the morphism and certified for the relevant scope.

## Rejected case

A rejected case records that an attempted morphism use is not accepted.

Rejection may arise from failed domain membership, failed endpoint admissibility, failed codomain admissibility, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected cases are audit content.

They cannot be consumed as morphism evidence.

## Unknown case

An unknown case records that the proof core cannot establish whether the morphism is defined, undefined, rejected, or admissible at the requested input or scope.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block morphism application, composition, functoriality, naturality, replay, migration, or refinement.

Unknown must not be silently treated as approximate success or fallback.

## Selected morphism

A selected morphism chooses a target from a relation.

Selection requires:



    select_f(x):X_B



with evidence:



    R_f(x,select_f(x))



and target admissibility where required.

Selection is not runtime order.

Selection is not first successful branch.

Selection is not hash-order iteration.

The selection rule must be deterministic or otherwise replayable under declared mode.

## Stochastic morphism

A stochastic morphism supplies a probability distribution or stochastic kernel:



    K_f:X_A-> Prob(X_B)



on its domain.

It must record support, normalization, randomness boundary, stochastic replay, probability carrier, certificates, epoch, and scope.

A sampled output is not the morphism.

Sampling is a separate replay or trusted-boundary claim.

## Fallback behavior

A fallback may exist at runtime.

It is not part of the categorical morphism unless the fallback is explicitly specified as semantic behavior.

A fallback policy must state:

- when fallback is invoked;
- whether fallback applies inside or outside the ordinary domain;
- what target value or relation it produces;
- whether the fallback result is codomain-admissible;
- which mode and scope may consume it;
- how it is certified and replayed.

Unspecified fallback is inadmissible.

## Audit-only partiality

Audit-only partiality records historical behavior of a morphism or runtime implementation.

It may explain that a call succeeded, failed, returned fallback, was rejected, or was unknown at a source prefix.

Audit-only partiality does not support current proof, exact morphism application, composition, functoriality, naturality, or target-epoch replay unless strengthened.

## Research-obligated partiality

Research-obligated partiality records an unresolved definedness or totality claim required by a downstream consumer.

It must identify morphism, source endpoint, target endpoint, input or class of inputs, required mode, required scope, missing evidence, dependencies, epoch, blocked consumer, and replay context.

It does not prove definedness.

It prevents silent use of a morphism whose partiality is unresolved.

## Domain interaction

Partiality depends on domain.

For source value `x`:



    D_f(x)=> Defined_f(x)



may be a policy theorem.

Outside-domain behavior must be declared.

A morphism may be undefined outside domain, rejected outside domain, fallback-defined outside domain, unknown outside domain, or research-obligated outside domain.

No outside-domain behavior is implicit.

## Codomain interaction

Partiality interacts with codomain admissibility.

Definedness does not imply codomain admissibility unless codomain preservation is certified:



    Defined_f(x) and  R_f(x,y)=> C_f(y)



or, for functional witnesses:



    Defined_f(x)=> C_f(f(x))



A morphism may be defined but produce a target failing a stronger codomain predicate.

Such behavior must be rejected, weakened, or explicitly classified.

## Endpoint interaction

Partiality is interpreted relative to source and target endpoints.

If an endpoint migrates, refines, becomes stale, or changes equivalence relation, partiality may need migration or re-verification.

Endpoint admissibility does not imply totality.

Endpoint equality does not imply partiality equality unless partiality congruence is certified.

## Totality certificate

A totality certificate proves that the morphism is defined on the required source scope.

It may prove:



    forall x,\ D_f(x)



or:



    forall x,\ SourceAdmissible(x)=> Defined_f(x)



Totality certificate must record source endpoint, domain predicate, proof mode, scope, dependencies, epoch, proof boundary, trusted boundary, audit link, and replay behavior.

Totality at one epoch does not imply totality at another.

## Definedness certificate

A definedness certificate proves:



    Defined_f(x)



or:



    D_f(x)



for a particular input or input class.

It may be exact, quotient, observable, approximate, summary, checkpoint, audit-only, rejected, unknown, or research-obligated.

Only accepted exact or consumer-compatible certificates discharge definedness obligations.

## Undefinedness certificate

An undefinedness certificate proves:



    Undefined_f(x)



It may support rejection, diagnostics, audit, or proof that a composition is undefined.

Undefinedness is not output value.

Undefinedness cannot be replaced by a default target.

A theorem that treats undefinedness as a value must define an explicit lifted codomain or partiality encoding.

## Rejection certificate

A rejection certificate proves that a partiality claim or morphism application is rejected.

It must record rejection reason, subject, mode, scope, dependencies, epoch, proof boundary, trusted boundary, audit links, and replay behavior.

Rejected partiality evidence cannot be consumed as definedness.

## Unknown certificate

An unknown certificate records that definedness or totality could not be established.

It must identify missing evidence and blocked consumers.

Unknown partiality evidence cannot be consumed as accepted evidence.

It may generate research obligations.

## Selection certificate

A selection certificate proves that a selected target is valid.

It must prove relation membership, selection policy, determinism or replayability, codomain admissibility where needed, dependencies, epoch, proof boundary, trusted boundary, and replay behavior.

A selected morphism without selection certificate is not a deterministic categorical arrow.

## Stochastic certificate

A stochastic certificate proves stochastic-kernel validity.

It may prove support, normalization, measurability where relevant, codomain support containment, randomness-boundary validity, sampling replay, or probability-mode admissibility.

A sampled output does not prove stochastic-kernel validity.

Sampling and kernel validity are distinct certificate subjects.

## Fallback certificate

A fallback certificate proves that fallback behavior is part of the morphism semantics.

It must prove invocation condition, output relation, codomain admissibility, mode, scope, dependency closure, epoch, proof boundary, trusted boundary, audit link, and replay behavior.

A runtime fallback branch is not categorical fallback semantics unless certified.

## Partiality equality

Two partiality policies are equal only if their morphism, policy, domain, codomain interaction, definedness relation, undefinedness relation, rejection behavior, unknown behavior, selection policy, stochastic behavior, fallback behavior, mode, scope, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay behavior coincide.

Same policy label is insufficient.

Same runtime exception behavior is insufficient.

## Partiality equivalence

Partiality policies may be equivalent under declared relation.

Examples include quotient partiality equivalence, observable partiality equivalence, approximate partiality equivalence, replay partiality equivalence, audit partiality equivalence, migrated partiality equivalence, refined partiality equivalence, or path partiality equivalence.

Equivalence is not equality.

Consumers must state which partiality equivalence they accept.

## Partiality congruence

Partiality congruence states that definedness, undefinedness, rejection, or selection behavior respects a relation.

For quotienting:



    x~ x'=> (Defined_f(x)<=ftrightarrow Defined_f(x'))



For migration:



    Defined_{f,e}(x)=> Defined_{f,e'}(M(x))



Congruence must be certified.

It is required for quotient morphisms, functoriality, naturality, composition, and replay preservation.

## Partiality and identity morphisms

The identity morphism is usually total on the admissible object scope:



    Defined_{id_A}(x)



for all admissible `x`.

This must be stated and certified.

A no-op runtime implementation does not prove identity totality.

If identity is restricted, the restriction must be explicit.

## Partiality and composition

For:



    go f



definedness generally requires:



    Defined_f(x)



and:



    Defined_g(y)



where `R_f(x,y)` or `y=f(x)`.

A composition partiality law must record the composed domain, intermediate value conditions, codomain requirements, dependencies, certificates, epoch, and replay behavior.

Composition cannot hide partiality.

## Partiality and associativity

Associativity for partial morphisms requires agreement of definedness conditions.

The composites:



    ho(go f)



and:



    (ho g)o f



may differ if their intermediate definedness conditions differ.

Exact associativity requires equality of partiality behavior.

Weaker associativity must state quotient, observable, approximate, audit-only, or partial mode.

## Partiality and functors

A functor mapping morphisms must preserve or transform partiality.

If `f` is partial, `F(f)` must have a related partiality policy.

Functoriality requires that identity and composition laws respect partiality.

A functor that maps only function names and ignores partiality is not functorial for partial morphisms.

## Partiality and naturality

Naturality squares involving partial morphisms require compatible domains and definedness conditions on both paths.

For:



    G(f)o \eta_A



and:



    \eta_Bo F(f)



the square may commute only where both sides are defined.

A naturality theorem must state its partiality domain.

## Partiality and quotienting

A partial morphism descends to a quotient only if partiality is representative-independent.

For representatives:



    x~ x'=> (Defined_f(x)<=ftrightarrow Defined_f(x'))



and similarly for rejected, fallback, selected, or stochastic behavior where used.

Without partiality congruence, a quotient morphism is not well-defined.

## Partiality and observables

Observable partiality uses only observed data to determine definedness.

It must record observable map, observable definedness predicate, retained information, lost hidden information, dependencies, certificates, epoch, and replay behavior.

Observable definedness cannot support hidden definedness claims unless faithfulness or recovery is certified.

## Partiality and approximation

Approximate partiality may record a residual or tolerance for definedness:



    res_D(x)<=\varepsilon



This is not exact definedness unless a soundness theorem proves it.

Approximate partiality supports only consumers that accept approximate definedness.

Exact application requires exact definedness.

## Partiality and stochasticity

Stochastic partiality records where a stochastic kernel is defined.

Definedness requires kernel existence and normalization.

If the kernel is undefined, a sampled value cannot repair the undefinedness.

Stochastic definedness and sampling are separate replay subjects.

## Partiality and replay

Partiality replay reconstructs policy, domain, codomain interaction, definedness, undefinedness, rejection, unknown status, selection, stochastic behavior, fallback behavior, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

Runtime exception logs are not partiality replay.

A stored `defined` flag is not partiality replay.

## Partiality and audit

Partiality audit links connect partiality claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, or history prefixes.

Audit links are traceability only.

They do not prove definedness, undefinedness, totality, rejection, selection, stochastic validity, or fallback semantics unless paired with accepted certificates.

## Partiality and epochs

Partiality policies are epoch-indexed.

A morphism total at epoch `e` may be partial at epoch `e'`.

A fallback accepted at epoch `e` may be rejected at epoch `e'`.

Cross-epoch partiality use requires partiality migration, equality, compatibility, re-verification, or audit-only policy.

Same morphism name across epochs is insufficient.

## Partiality migration

Partiality migration relates source and target partiality policies:



    Partiality_{f,e}<=adsto Partiality_{f,e'}



It must preserve or explicitly transform definedness, undefinedness, rejection, unknown status, selection, stochastic behavior, fallback behavior, domains, codomains, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Morphism migration depends on partiality migration.

## Partiality refinement

Partiality refinement may sharpen definedness, reduce unknown cases, eliminate fallback, narrow domains, add totality proof, strengthen codomain guarantees, or replace trusted-boundary evidence.

Refinement is not migration.

If epoch changes, partiality migration evidence is required separately.

## Partiality invalidation

Partiality claims may become stale if domain predicate, codomain predicate, definedness policy, fallback policy, selection policy, stochastic policy, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old partiality claim remains audit content.

## Partiality status

Partiality status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted partiality for audit does not imply accepted partiality for exact application.

## Partiality and applications

Application-specific partiality belongs outside this abstract file.

`MorphismPartiality.lean` may define generic hooks for application-instantiated partiality.

It must not define concrete application partiality, bitmap partiality, matrix partiality, token partiality, image partiality, hash constants, Feistel partiality, UI fallback, or runtime payload partiality.

## Partiality and `none`

No partiality rule may treat `none`, `null`, missing output, missing input, or absent runtime binding as a mathematical default.

`none` may represent absence in a data encoding only when explicitly modeled.

Undefinedness is not default output.

Fallback is not implicit.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

## Partiality certificates

Partiality certificates may prove:



    MorphismTotal(f)





    MorphismPartial(f,D_f)





    Defined_f(x)





    Undefined_f(x)





    Rejected_f(x)





    Unknown_f(x)





    Selected_f(x,y)





    StochasticDefined_f(x)





    FallbackValid_f(x,y)



or partiality equality, equivalence, congruence, composition, associativity, quotient compatibility, functoriality, naturality, migration, refinement, invalidation, freshness, dependency closure, audit, and replay-admissibility claims.

Only accepted certificates discharge partiality obligations.

## Epoch rule

`MorphismPartiality.lean` artifacts are epoch-indexed by:

- morphism-partiality schema epoch;
- morphism-record epoch;
- domain-predicate epoch;
- codomain-predicate epoch;
- definedness-policy epoch;
- undefinedness-policy epoch;
- rejection-policy epoch;
- unknown-policy epoch;
- selection-policy epoch;
- stochastic-policy epoch;
- fallback-policy epoch;
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

Changing any component may stale downstream partiality claims.

The old partiality artifact remains audit content.

## History relation

A history record depending on `MorphismPartiality.lean` must record:

1. source file identity;
2. declaration identity;
3. morphism identity;
4. partiality policy;
5. domain and codomain interaction;
6. definedness, undefinedness, rejection, unknown, selection, stochastic, or fallback claim where used;
7. mode and scope;
8. prefix and epoch;
9. dependency closure;
10. certificates;
11. status;
12. invalidation behavior;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The runtime exception behavior, returned fallback, or `none` value alone is insufficient.

## Replay rule

Replay of `MorphismPartiality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, and `MorphismCodomain.lean`;
3. reconstructing partiality-policy declarations;
4. reconstructing total, partial, undefined, rejected, unknown, selected, stochastic, fallback, audit-only, and research-obligated records;
5. checking partiality interaction with domain, codomain, endpoints, identity morphisms, composition, associativity, functors, naturality, quotienting, certificates, epochs, audit, and replay;
6. checking proof objects or trusted boundaries where present;
7. checking that runtime exception behavior, fallback returns, and `none` values are not treated as categorical partiality by default;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream partiality claims are not replay-admissible.

## Runtime representation

`MorphismPartiality.lean` may lower to:

- Lean partiality records;
- definedness predicates;
- undefinedness predicates;
- rejection descriptors;
- selection descriptors;
- stochastic-kernel descriptors;
- fallback descriptors;
- partiality-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not partiality identity.

Partiality identity depends on morphism, policy, domain, codomain, definedness, undefinedness, rejection, unknown, selection, stochastic, fallback, mode, scope, prefix, epoch, dependencies, certificates, status, proof boundary, trusted boundary, audit references, invalidations, and replay behavior.

## Non-collapse theorem

Let a runtime implementation throw an exception, return `none`, return `null`, return a fallback, accept an input, reject an input, or produce an output.

This does not by itself determine categorical morphism partiality.

Categorical partiality holds only when the typed partiality policy, domain, codomain interaction, definedness, undefinedness, rejection, unknown, selection, stochastic, fallback semantics, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, invalidations, and replay behavior are accepted for the required scope and mode.

Thus runtime behavior is insufficient for partiality identity.

## Proof obligation

`MorphismPartiality.lean` is admissible only if the framework can certify:

1. totality is certified, not assumed;
2. partiality is explicit;
3. undefinedness is not default output;
4. rejection, unknown, fallback, selected, stochastic, audit-only, and research-obligated behavior are distinct;
5. fallback is semantic only when certified;
6. domain and codomain interaction is explicit;
7. composition and associativity laws account for partiality;
8. quotienting requires partiality congruence;
9. functoriality and naturality account for partiality;
10. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
11. runtime behavior and application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismPartiality.lean` may not define concrete carrier partiality, concrete spectrum partiality, authority partiality, tensor partiality, sheaf partiality, operator partiality, history partiality, migration partiality, refinement partiality, application fallback logic, runtime exception behavior, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-partiality infrastructure.

## Commitment rule

`MorphismPartiality.lean` may define total, partial, undefined, rejected, unknown, selected, stochastic, fallback, audit-only, and research-obligated morphism behavior.

It cannot infer totality from syntax or runtime success.

It cannot turn undefinedness into a default output.

It cannot treat `none` or `null` as mathematical values without explicit semantics.

It cannot make fallback semantic without certificates.

It cannot hide domain or codomain obligations.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
