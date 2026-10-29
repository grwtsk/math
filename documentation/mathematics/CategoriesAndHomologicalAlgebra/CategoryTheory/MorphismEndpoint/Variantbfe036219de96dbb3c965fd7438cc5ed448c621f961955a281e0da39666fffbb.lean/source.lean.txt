-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant6fa84901e0a1ece6c041de6a71c4f921101ef0b71b16e6a3436137bf759d7cc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fa84901e0a1ece6c041de6a71c4f921101ef0b71b16e6a3436137bf759d7cc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variant6fa84901e0a1ece6c041de6a71c4f921101ef0b71b16e6a3436137bf759d7cc8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6fa84901e0a1ece6c041de6a71c4f921101ef0b71b16e6a3436137bf759d7cc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/morphism/MorphismEndpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# MorphismEndpoint.lean

## Role

`MorphismEndpoint.lean` defines source and target endpoint infrastructure for categorical morphisms.

A morphism endpoint is a categorical object used as the source or target of a typed arrow.

Endpoint infrastructure records endpoint identity, endpoint role, endpoint admissibility, endpoint equality, endpoint equivalence, endpoint migration, endpoint dependency freshness, endpoint certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior.

An endpoint is not a label.

An endpoint is not a runtime type.

An endpoint is not an implementation signature.

An endpoint is not a function parameter annotation.

It is a proof-relevant categorical object occurrence in a morphism-typing judgment.

## Core principle

For a morphism:



    f:A-> B



the source endpoint `A` and target endpoint `B` must be categorical objects accepted for endpoint use under the morphism's mode and scope.

The endpoint claim is not discharged by matching names, matching Lean types, matching runtime signatures, or matching displayed arrows.

Endpoint validity requires object identity, admissibility, dependency freshness, epoch compatibility, certificates, audit references, and replay behavior.

## Formal shape

A morphism-endpoint record has schematic form:



    MorphismEndpoint=(morphism,role,object,identity,admissibility,equality,equivalence,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `morphism` identifies the morphism using the endpoint;
- `role` is source or target;
- `object` is the categorical object at the endpoint;
- `identity` records object-identity evidence;
- `admissibility` records endpoint-use admissibility;
- `equality` records endpoint equality where substitution is used;
- `equivalence` records endpoint equivalence where weaker compatibility is used;
- `mode` records exact, quotient, observable, approximate, summary, checkpoint, partial, audit-only, trusted-boundary, rejected, unknown, or research-obligated mode;
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

The endpoint record is part of morphism typing.

It does not define the morphism witness by itself.

## Source endpoint

The source endpoint records the object from which the morphism originates.

For:



    f:A-> B



the source endpoint is:



    src(f)=A



The source endpoint must be typed, well-formed, endpoint-admissible, dependency-fresh, epoch-fresh, certificate-supported, and replay-admissible for the morphism's declared mode and scope.

A runtime input type is not a source endpoint unless verified as the categorical object `A`.

## Target endpoint

The target endpoint records the object into which the morphism maps.

For:



    f:A-> B



the target endpoint is:



    tgt(f)=B



The target endpoint must be typed, well-formed, endpoint-admissible, dependency-fresh, epoch-fresh, certificate-supported, and replay-admissible for the morphism's declared mode and scope.

A runtime output type is not a target endpoint unless verified as the categorical object `B`.

## Endpoint role

Endpoint role is proof-relevant.

An object used as a source endpoint may have different obligations from the same object used as a target endpoint.

Source role may require domain interpretation.

Target role may require codomain interpretation.

For relational or partial morphisms, source and target roles interact with domain, codomain, partiality, and composition laws.

The role must be recorded.

## Endpoint identity

Endpoint identity is object identity in morphism context.

It includes object id, kind, categorical context, type witness, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit reference, and replay behavior.

Endpoint identity is not endpoint label.

Endpoint identity is not Lean type equality.

Endpoint identity is not runtime signature equality.

## Endpoint admissibility

Endpoint admissibility has form:



    EndpointAdmissible(f,A,Source,mode,scope)



or:



    EndpointAdmissible(f,B,Target,mode,scope)



It requires object admissibility for endpoint-use scope, plus any morphism-specific endpoint requirements.

Endpoint admissibility is stronger than object construction and usually stronger than display admissibility.

It must be certified or derivable.

## Endpoint well-formedness

Endpoint well-formedness requires:

1. endpoint object is typed;
2. endpoint role is declared;
3. endpoint object belongs to the morphism's categorical context;
4. endpoint identity is explicit;
5. endpoint epoch is explicit;
6. endpoint dependencies are closed;
7. endpoint status is available;
8. endpoint replay metadata is present where required.

Well-formedness does not imply endpoint admissibility.

## Endpoint equality

Endpoint equality records that two endpoint objects are equal under the equality notion required by a morphism construction.

It may have form:



    EndpointEq(A,B)



or a more explicit equality:



    ObjectIdentityEq(I_A,I_B)



Endpoint equality must state mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, and replay behavior.

Label equality is insufficient.

## Endpoint equivalence

Endpoint equivalence records weaker compatibility between endpoint objects.

It may be quotient, observable, approximate, replay, audit, migration, refinement, or path equivalence.

Endpoint equivalence is not endpoint equality.

A morphism construction may consume endpoint equivalence only if the construction is congruent under that equivalence.

Endpoint equivalence cannot be used for exact substitution unless strengthened.

## Endpoint compatibility

Endpoint compatibility is the relation required for composition, functoriality, naturality, or endpoint substitution.

For composition:



    f:A-> B





    g:C-> D



compatibility between `B` and `C` is required.

The compatibility may be exact equality, quotient equivalence, observable equivalence, approximate relation, migration relation, or rejection/unknown status.

It must be explicit.

## Endpoint substitution

Endpoint substitution replaces one endpoint object with another.

A substitution law may have form:



    EndpointEq(A,A')=> Hom(A,B)-> Hom(A',B)



or a weaker equivalence-preserving version.

Substitution requires congruence of morphism typing.

Object equality alone is not enough unless morphism typing respects that equality.

Endpoint labels cannot be substituted.

## Source substitution

Source substitution changes the source endpoint of a morphism.

For:



    f:A-> B



and:



    A=A'



one may derive:



    f:A'-> B



only if the source-endpoint typing relation is congruent under the declared endpoint equality.

For quotient or observable source equivalence, the resulting morphism claim must be weakened unless strengthened.

## Target substitution

Target substitution changes the target endpoint of a morphism.

For:



    f:A-> B



and:



    B=B'



one may derive:



    f:A-> B'



only if the target-endpoint typing relation is congruent under the declared endpoint equality.

Target substitution may affect codomain predicates, admissibility, certificates, replay, and composition.

It is not automatic.

## Endpoint dependency freshness

Endpoint use requires fresh dependencies.

Dependencies include object identity, object kind, categorical context, type witness, equality relation, equivalence relation, admissibility policy, proof mode, scope policy, status policy, epoch, certificates, proof boundary, trusted boundary, audit reference, invalidation policy, and replay parameters.

If an endpoint dependency is stale, the morphism typing claim becomes stale, rejected, weakened, unknown, or research-obligated.

## Endpoint availability

Endpoint availability means the endpoint object and its required records can be reconstructed at the prefix and epoch.

Availability is not admissibility.

An available endpoint may still be stale, rejected, unknown, audit-only, invalidated, or weaker than required.

Availability must not be consumed as endpoint proof.

## Endpoint status

Endpoint status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted endpoint status at one scope does not imply accepted endpoint status at another scope.

## Endpoint certificate

Endpoint certificates may prove:



    SourceEndpoint(f,A)





    TargetEndpoint(f,B)





    EndpointAdmissible(f,A,role,mode,scope)





    EndpointEq(A,B)





    EndpointEquiv(A,B,R)





    EndpointFresh(A,p,e,scope)



or endpoint migration, endpoint refinement, endpoint invalidation, endpoint dependency closure, endpoint audit, endpoint replay, and endpoint path coherence.

Only accepted certificates discharge endpoint obligations.

## Endpoint proof boundary

Endpoint judgments may depend on proof boundaries.

If endpoint identity, endpoint admissibility, endpoint equality, or endpoint replay depends on Lean kernel assumptions, axioms, verifiers, decoders, hash assumptions, finite enumerators, replay engines, extraction boundaries, or archives, those dependencies must be recorded.

Changing proof boundary may stale endpoint claims.

## Endpoint trusted boundary

A trusted boundary may support endpoint evidence only for its declared statement.

A trusted decoder may certify typed decoding of an endpoint representation.

A trusted hash may certify endpoint bytes.

A trusted archive may certify endpoint retrieval.

None of these proves endpoint admissibility unless the trusted statement includes it.

Boundary overreach must be rejected.

## Endpoint epoch

Endpoints are epoch-indexed.

A source endpoint at epoch `e` is not automatically a source endpoint at epoch `e'`.

A target endpoint at epoch `e` is not automatically a target endpoint at epoch `e'`.

Cross-epoch endpoint use requires endpoint migration, object migration, dependency migration, certificate migration, proof-boundary migration, and replay preservation.

Same endpoint label across epochs is insufficient.

## Endpoint migration

Endpoint migration relates endpoint objects across epochs:



    A_e~> A_{e'}



as source or target endpoint.

Migration must preserve or explicitly weaken identity, role, admissibility, equality, equivalence, dependency closure, status, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

Endpoint migration does not automatically migrate the morphism witness, domain, codomain, or partiality.

## Endpoint refinement

Endpoint refinement may add identity detail, sharpen admissibility, improve dependency closure, strengthen certificates, or replace trusted-boundary assumptions.

Refinement is not migration.

If endpoint epoch changes, migration evidence is also required.

A refined endpoint may support stronger, weaker, or narrower consumers depending on the refinement theorem.

## Endpoint invalidation

Endpoint claims may become stale if object identity, kind, context, type witness, admissibility policy, equality relation, equivalence relation, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, status policy, audit link, or replay schema changes.

Invalidation is append-only.

The old endpoint claim remains audit content.

## Endpoint audit

Endpoint audit links connect source or target endpoint claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, or history prefixes.

Audit links provide traceability.

They do not prove endpoint identity, admissibility, equality, equivalence, or replay.

## Endpoint replay

Endpoint replay reconstructs endpoint role, endpoint object, identity, admissibility, equality or equivalence where used, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A stored endpoint label is not replay.

A runtime type annotation is not replay.

A displayed endpoint in a diagram is not replay evidence.

## Endpoint and domain

The source endpoint interacts with morphism domain.

A domain predicate:



    D_f:A-> Prop



is meaningful only relative to the source endpoint `A`.

Changing or migrating the source endpoint may require domain migration.

Source endpoint admissibility does not imply domain membership for every source value.

## Endpoint and codomain

The target endpoint interacts with morphism codomain.

A codomain predicate:



    C_f:B-> Prop



is meaningful only relative to the target endpoint `B`.

Changing or migrating the target endpoint may require codomain migration.

Target endpoint admissibility does not imply every target value satisfies the codomain predicate.

## Endpoint and partiality

Partiality depends on source and target endpoint interpretation.

Undefinedness, rejection, unknown status, stochastic selection, and selected-target behavior must be interpreted relative to endpoint objects.

Changing endpoints may change partiality semantics.

Partiality migration must cite endpoint migration.

## Endpoint and identity morphisms

Identity morphism formation requires endpoint identity:



    id_A:A-> A



The source and target endpoint occurrences of `A` must be the same object under the required identity relation.

Repeated label `A` is insufficient.

A no-op runtime function is insufficient.

## Endpoint and composition

Composition requires endpoint compatibility.

For:



    f:A-> B



and:



    g:C-> D



one needs:



    EndpointCompatible(B,C,mode,scope)



before forming:



    go f:A-> D



If compatibility is quotient, observable, approximate, audit-only, unknown, or rejected, the composed morphism must reflect that mode.

## Endpoint and associativity

Associativity depends on endpoint compatibility across composed morphisms.

If intermediate endpoints are identified only through equivalence, the associativity theorem must use the corresponding equivalence relation.

Associativity in exact mode requires exact endpoint compatibility.

Endpoint mismatch may stale or reject associativity.

## Endpoint and functors

A functor maps endpoints:



    A|-> F(A)





    B|-> F(B)



For a morphism:



    f:A-> B



the functorial image has endpoints:



    F(A)



and:



    F(B)



Functoriality requires endpoint mapping to preserve or transform endpoint identity, admissibility, dependencies, epochs, and replay behavior under declared mode.

## Endpoint and naturality

Naturality squares depend on endpoint objects.

For:



    G(f)o eta_A=eta_Bo F(f)



the endpoints `A`, `B`, `F(A)`, `F(B)`, `G(A)`, and `G(B)` must be admissible and replayable.

Endpoint audit or labels do not prove naturality.

## Endpoint and quotient categories

In quotient categories, endpoints may be equivalence classes.

Endpoint quotient use requires quotient relation, representative policy, representative independence, congruence, dependency closure, certificates, epoch, and replay behavior.

A quotient endpoint cannot be used as a representative-sensitive endpoint without recovery evidence.

## Endpoint and runtime signatures

A runtime signature such as:



    RuntimeType_1-> RuntimeType_2



does not define categorical endpoints.

Runtime types must be related to categorical objects by accepted translation and typing certificates.

An implementation signature may be useful audit data.

It is not endpoint evidence by itself.

## Endpoint and implementation calls

Implementation calls have input and output positions.

Those positions are not categorical source and target endpoints unless certified.

A call trace may record runtime values.

It does not prove endpoint admissibility or morphism typing.

Implementation behavior must be verified against endpoint records.

## Endpoint and labels

Diagram labels, object labels, parameter names, and UI names are not endpoints.

They may support display scope.

They cannot support proof, replay, composition, functoriality, naturality, or certificate use without typed endpoint evidence.

Label equality is insufficient for endpoint equality.

## Endpoint and applications

Application-specific endpoints belong outside this abstract file.

`MorphismEndpoint.lean` may define generic hooks for application-instantiated endpoints.

It must not define concrete application endpoints, bitmap dimensions, matrix dimensions, token endpoints, image endpoints, hash constants, Feistel constants, UI endpoints, or runtime payload endpoints.

## Endpoint and `none`

No endpoint rule may treat `none`, `null`, missing endpoint, absent runtime binding, missing input type, or missing output type as a mathematical default.

Absence is data-level absence.

A partial morphism may lack a defined output.

Undefinedness is not default target value.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

## Endpoint equality

Two endpoint records are equal only if morphism, role, object, identity, admissibility, equality or equivalence evidence, mode, scope, prefix, epoch, dependencies, certificates, status, invalidations, proof boundary, trusted boundary, audit references, and replay behavior coincide.

Same object label is insufficient.

Same runtime type is insufficient.

Same implementation signature is insufficient.

## Endpoint equivalence

Endpoint records may be equivalent under declared relation.

Examples include quotient endpoint equivalence, observable endpoint equivalence, approximate endpoint equivalence, replay endpoint equivalence, audit endpoint equivalence, migrated endpoint equivalence, refined endpoint equivalence, or path endpoint equivalence.

Equivalence is not equality.

Consumers must declare which endpoint equivalence they accept.

## Endpoint path coherence

If multiple paths establish an endpoint object, path coherence may be required.

Without path coherence, the endpoint path is part of morphism identity and composition identity.

Path-coherence certificates must record paths, endpoint roles, objects, modes, scopes, dependencies, epochs, certificates, audit references, invalidations, and replay behavior.

## Endpoint certificates

Endpoint certificates may prove:



    MorphismSource(f,A)





    MorphismTarget(f,B)





    EndpointAdmissible(f,A,role,mode,scope)





    EndpointCompatible(A,B,mode,scope)





    EndpointMigrates(A_e,A_{e'},role,mode)





    EndpointReplayAdmissible(f,A,role)



or endpoint equality, equivalence, dependency closure, freshness, invalidation, audit, substitution, congruence, composition compatibility, and path-coherence claims.

Only accepted certificates discharge endpoint obligations.

## Epoch rule

`MorphismEndpoint.lean` artifacts are epoch-indexed by:

- morphism-endpoint schema epoch;
- morphism-record epoch;
- source-endpoint epoch;
- target-endpoint epoch;
- endpoint-role epoch;
- object-identity epoch;
- object-admissibility epoch;
- endpoint-equality epoch;
- endpoint-equivalence epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream endpoint claims.

The old endpoint artifact remains audit content.

## History relation

A history record depending on `MorphismEndpoint.lean` must record:

1. source file identity;
2. declaration identity;
3. morphism identity;
4. endpoint role;
5. endpoint object;
6. endpoint identity;
7. endpoint admissibility;
8. endpoint equality or equivalence where used;
9. mode and scope;
10. prefix and epoch;
11. dependency closure;
12. certificates;
13. status;
14. invalidation behavior;
15. proof boundary;
16. trusted boundary where used;
17. audit reference;
18. replay data.

The endpoint label, runtime type, or implementation signature alone is insufficient.

## Replay rule

Replay of `MorphismEndpoint.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, and `CategoryMorphism.lean`;
3. reconstructing endpoint-role declarations;
4. reconstructing source and target endpoint records;
5. reconstructing endpoint identity, admissibility, equality, equivalence, migration, refinement, dependency, epoch, audit, invalidation, and replay declarations;
6. checking endpoint interaction with domain, codomain, partiality, identity morphisms, composition, associativity, functors, naturality, and quotient categories;
7. checking proof objects or trusted boundaries where present;
8. checking that labels, runtime types, and implementation signatures are not treated as categorical endpoints;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream endpoint claims are not replay-admissible.

## Runtime representation

`MorphismEndpoint.lean` may lower to:

- Lean endpoint records;
- source-endpoint metadata;
- target-endpoint metadata;
- endpoint-admissibility theorem metadata;
- endpoint-compatibility descriptors;
- endpoint-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not endpoint identity.

Endpoint identity depends on morphism, role, object, identity, admissibility, equality or equivalence evidence, dependencies, certificates, epochs, statuses, proof boundaries, trusted boundaries, audit references, invalidations, and replay behavior.

## Non-collapse theorem

Let two endpoint occurrences have the same label, same runtime type, same implementation signature, or same displayed diagram position.

This does not imply endpoint equality, endpoint admissibility, endpoint compatibility, or endpoint replay.

Endpoint claims are valid only when categorical object identity, endpoint role, admissibility, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior are accepted for the required mode and scope.

Thus labels, runtime types, and implementation signatures are insufficient for categorical endpoints.

## Proof obligation

`MorphismEndpoint.lean` is admissible only if the framework can certify:

1. source and target endpoints are explicit;
2. endpoint roles are explicit;
3. endpoints are categorical objects;
4. endpoint admissibility is required;
5. endpoint equality and endpoint equivalence are distinct;
6. endpoint substitution requires congruence;
7. endpoint migration is distinct from morphism migration;
8. endpoint dependencies are fresh;
9. endpoint certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
10. labels, runtime types, and implementation signatures are excluded as endpoint evidence;
11. application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismEndpoint.lean` may not define concrete carrier endpoints, concrete spectrum endpoints, authority endpoints, tensor endpoints, sheaf endpoints, operator endpoints, history endpoints, migration endpoints, refinement endpoints, application endpoints, runtime signatures, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-endpoint infrastructure.

## Commitment rule

`MorphismEndpoint.lean` may define source and target endpoint records and endpoint laws.

It cannot make labels endpoints.

It cannot make runtime types endpoints.

It cannot make implementation signatures endpoints.

It cannot infer endpoint admissibility from object presence.

It cannot compose morphisms without endpoint compatibility.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant6fa84901e0a1ece6c041de6a71c4f921101ef0b71b16e6a3436137bf759d7cc8

