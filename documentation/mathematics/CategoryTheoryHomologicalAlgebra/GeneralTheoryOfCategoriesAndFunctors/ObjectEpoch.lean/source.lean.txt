/-
# ObjectEpoch.lean

## Role

`ObjectEpoch.lean` defines epoch infrastructure for categorical objects.

It records how categorical objects are attached to semantic epochs, how object freshness is checked at a prefix and scope, how source-target epoch coordinates are represented, and how object equality, compatibility, migration, invalidation, status, dependency closure, certificates, audit references, and replay behavior interact with epoch movement.

Object epoch movement is not Lean universe lifting.

Object epoch movement is not refinement.

Object epoch movement is not label equality.

Object epoch movement is not object identity.

A categorical object at epoch `e` is not automatically the same categorical object at epoch `e'`.

## Core principle

A categorical object is interpreted under an epoch.

For object `A`, an epoch attachment has form:



    ObjectAt(A,e)



or:



    HasObjectEpoch(A,e)



A theorem about `A` at epoch `e` cannot be reused for `A` at epoch `e'` unless epoch equality, compatibility, migration, re-verification, trusted-boundary evidence, or audit-only policy is accepted for the required scope.

The same object label across epochs is insufficient.

The same object id across epochs is insufficient.

The same Lean value across epochs is insufficient.

## Formal shape

An object-epoch record has schematic form:



    ObjectEpoch=(object,epoch,role,status,scope,mode,prefix,deps,certs,invalidations,sourceTarget,audit,replay)



where:

- `object` is the categorical object;
- `epoch` is the semantic epoch attached to the object;
- `role` records whether the epoch is source, target, current, audit, migrated, stale, or superseded;
- `status` records lifecycle state;
- `scope` records consumer context;
- `mode` records proof or migration mode;
- `prefix` records history-relative availability;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `invalidations` records stale or blocking epoch effects;
- `sourceTarget` records source-target coordinates where the object participates in migration;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record attaches semantic interpretation to the object.

It does not migrate the object by construction.

## Epoch attachment

Epoch attachment records that object `A` is interpreted at epoch `e`:



    ObjectAt(A,e)



This statement is proof-relevant.

It may depend on object identity, kind, context, type witness, schema, dependencies, certificates, status, proof boundary, trusted boundary, and replay behavior.

An epoch field in a record is data.

It becomes accepted epoch attachment only through derivation or certificate.

## Object freshness

Object freshness has form:



    ObjectFresh(A,p,e,scope)



It says that `A` is usable at prefix `p`, epoch `e`, and scope `scope`.

Freshness requires valid epoch attachment, accepted object status, fresh dependencies, valid proof boundary, accepted trusted boundaries, no blocking invalidation, and replay-admissible reconstruction.

Freshness is not global.

An object may be fresh for audit and stale for proof.

## Source-target coordinates

Cross-epoch object claims require source-target coordinates:



    sourceEpoch=e





    targetEpoch=e'



For object migration:



    A_e~> A_{e'}



the record must identify source object, target object, source epoch, target epoch, migration mode, dependencies, certificates, invalidations, audit references, and replay behavior.

A target object with the same id is not a migrated source object by default.

## Epoch equality

Epoch equality has form:



    e=e'



or:



    EpochEq(e,e')



Epoch equality may permit same-epoch reasoning if object identity, dependencies, proof boundary, and replay schema are also aligned.

Epoch equality is stronger than compatibility.

Epoch equality is not object equality.

Objects at the same epoch may still be different objects.

## Epoch compatibility

Epoch compatibility has form:



    EpochCompatible(e,e',scope,mode)



Compatibility may permit limited cross-epoch use under a declared mode and scope.

Compatibility is weaker than equality.

Compatibility does not by itself migrate object identity, object admissibility, object equality, object equivalence, object dependencies, certificates, or replay behavior.

Object-specific evidence remains required.

## Object epoch migration

Object epoch migration relates an object at source epoch to an object at target epoch:



    ObjectMigrates(A_e,A_{e'},mode)



Migration must preserve or explicitly weaken object id, kind, context, type witness, universe metadata, admissibility, equality, equivalence, dependency closure, status, certificates, proof boundary, trusted boundary, audit reference, and replay behavior.

Same label at the target epoch is insufficient.

Same Lean value at the target epoch is insufficient.

## Epoch movement is not universe lifting

Lean universe levels are type-theoretic.

Epochs are semantic.

A lift:



    X:Type\ u -> X:Type\ v



does not prove:



    ObjectAt(A,e)-> ObjectAt(A,e')



Universe movement does not change semantic epoch.

Epoch migration cannot be replaced by universe lifting.

## Epoch movement is not refinement

Refinement changes precision or representation detail.

Epoch movement changes semantic interpretation.

A transition:



    A_{h,e}-> A_{h',e}



is refinement without epoch movement.

A transition:



    A_{h,e}-> A_{h,e'}



is migration without refinement.

A transition:



    A_{h,e}-> A_{h',e'}



requires both refinement and migration evidence.

## Epoch movement is not label equality

If:



    label(A_e)=label(A_{e'})



this does not imply that the objects are epoch-compatible.

Labels may be reused across epochs.

Label equality may support display or audit only if scoped evidence permits.

It cannot support proof, morphism typing, functoriality, naturality, replay, or certificate reuse by itself.

## Epoch movement is not object identity

Object identity includes epoch.

If the epoch changes, the identity record changes unless a certified cross-epoch identity or migration relation relates the records.

Thus:



    id(A_e)=id(A_{e'})



does not imply:



    ObjectIdentity(A_e)=ObjectIdentity(A_{e'})



The epoch coordinate is proof-relevant.

## Current epoch

An object may be current for a scope:



    ObjectCurrent(A,p,e,scope)



Current status requires accepted epoch status, object freshness, dependency freshness, no blocking invalidations, and replay-admissible status derivation.

Current for display does not imply current for proof.

Current for audit does not imply current for frame construction.

## Source epoch

A source epoch records the epoch from which an object, theorem, certificate, migration, refinement, replay manifest, or audit link originates.

Source epoch is part of provenance.

A source-epoch object is not automatically current at a target epoch.

Source status may be accepted while target status is stale, unknown, migrated, quotient-valid, observable-valid, or audit-only.

## Target epoch

A target epoch records the epoch in which migrated, refined, replayed, or re-certified object use is attempted.

Target-epoch use requires target-specific admissibility.

A target object may decode, type-check, or display while still failing exact object admissibility.

Target epoch must be explicit in certificates, replay records, and migration records.

## Audit epoch

An audit epoch records the semantic coordinate used for historical explanation.

Audit epoch may be source epoch, target epoch, or a dedicated audit interpretation.

Audit-only epoch use does not imply current target proof use.

Audit epoch links must not rewrite old object records.

They preserve traceability.

## Stale epoch

An object epoch becomes stale when epoch-dependent interpretation is no longer accepted for a declared scope.

Causes include changed object schema, changed kind taxonomy, changed categorical context, changed equality or equivalence relation, changed admissibility policy, stale dependency, proof-boundary change, trusted-boundary change, replay-schema change, or invalidation record.

Staleness is append-only.

The old epoch attachment remains audit content.

## Superseded epoch

An object epoch may be superseded by another epoch for a declared scope.

Supersession records a preferred current epoch.

It is not equality.

It is not migration.

It is not object identity.

A superseded object remains audit-replayable if dependencies remain available.

## Deprecated epoch

An epoch may be deprecated for categorical-object use.

Deprecation does not erase object claims.

Deprecated objects may be audit-only, migrated, stale, superseded, or research-obligated for current consumers.

Deprecation must be recorded as status, not as deletion.

## Invalidated epoch

An object epoch may be invalidated when an assumption or dependency required for interpretation fails.

Invalidation may affect only selected scopes or modes.

For example, an epoch may be invalid for exact proof but valid for audit.

Invalidation must propagate through object dependencies and object certificates where relevant.

## Epoch status

Object epoch status is prefix-relative, epoch-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

An accepted epoch attachment at one prefix may be stale at a later prefix.

Status must be replayable.

## Object epoch admissibility

An object may be admissible only under certain epoch conditions.

An admissibility theorem may require:



    ObjectAt(A,e)





    ObjectFresh(A,p,e,scope)





    EpochCompatible(e,e',scope,mode)



or:



    ObjectMigrates(A_e,A_{e'},mode)



The required epoch relation must be explicit.

Admissibility cannot infer epoch compatibility from object labels.

## Object epoch and equality

Object equality is epoch-sensitive.

A same-epoch equality claim:



    ObjectEq(A_e,B_e)



does not imply a target-epoch equality claim:



    ObjectEq(A_{e'},B_{e'})



unless equality migration, object migration, epoch compatibility, dependency migration, certificate migration, and replay preservation are accepted.

Same labels at the target epoch are insufficient.

## Object epoch and equivalence

Object equivalence is epoch-sensitive.

A quotient, observable, approximate, replay, audit, migration, or refinement equivalence must state which epochs its objects inhabit.

Cross-epoch equivalence requires source-target coordinates and accepted relation evidence.

An equivalence at source epoch is not target equivalence by default.

## Object epoch and dependencies

Object epoch records depend on epoch declarations, object identity, object kind, categorical context, type witness, equality and equivalence infrastructure, admissibility rules, proof-mode policies, scope policies, status policies, certificates, proof boundaries, trusted boundaries, audit references, and replay parameters.

If any dependency changes, object epoch claims may stale.

Hidden epoch dependencies invalidate replay.

## Object epoch and certificates

Object-epoch certificates may prove epoch attachment, freshness, compatibility, migration, invalidation, supersession, audit-only status, replay admissibility, or path coherence.

A certificate about object `A` at epoch `e` cannot be reused for epoch `e'` unless certificate migration or re-verification is accepted.

Certificate subject must include the epoch coordinate.

## Object epoch and proof boundary

Proof boundaries are epoch-indexed.

If a proof of object epoch attachment relies on Lean kernel assumptions, verifier behavior, decoder behavior, hash assumptions, finite enumeration, extraction boundary, replay engine, or archive trust, these must be recorded.

Changing proof boundary may stale object epoch claims.

## Object epoch and trusted boundary

A trusted boundary may certify an epoch claim only if its trusted statement includes that claim.

A trusted decoder may certify decoding at an epoch.

It does not certify object freshness unless the trusted statement includes freshness.

A trusted hash may certify byte identity.

It does not certify epoch compatibility.

## Object epoch and audit references

Audit links may connect object epoch claims to framework history records, migration nodes, certificate records, replay manifests, trusted boundaries, or extraction artifacts.

Audit links do not prove epoch attachment.

They provide traceability.

Epoch audit links are scope-relative and replayable.

## Object epoch and replay

Replay of object epoch claims reconstructs object identity, epoch record, source-target coordinates where relevant, status, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay metadata.

A stored epoch label is not replay.

A cached object record is not replay.

Replay must reconstruct why the epoch claim is accepted for the requested scope.

## Object epoch and morphism endpoints

Morphism endpoint use requires endpoint objects to be fresh at the required epoch.

For:



    f:A-> B



the endpoint judgment depends on:



    ObjectFresh(A,p,e,endpointScope)



and:



    ObjectFresh(B,p,e,endpointScope)



or accepted cross-epoch compatibility if endpoints are not at the same epoch.

Endpoint epoch mismatch must be explicit.

## Object epoch and identity morphisms

Identity morphism formation:



    id_A:A-> A



requires object `A` to be fresh at the identity-formation epoch and scope.

If object `A` is stale or audit-only at the current epoch, exact identity morphism formation is blocked or weakened.

A no-op runtime conversion cannot supply epoch freshness.

## Object epoch and composition

Composition requires intermediate objects to be equal or compatible at the relevant epoch.

For:



    f:A_e-> B_e





    g:C_{e'}-> D_{e'}



composition requires evidence relating `B_e` and `C_{e'}`.

This may be exact equality, epoch equality, object migration, quotient compatibility, observable compatibility, or rejected/unknown status.

It must not be inferred.

## Object epoch and functors

A functor may preserve, change, or migrate object epochs.

A functor preserving epochs must prove:



    ObjectAt(A,e)=> ObjectAt(F(A),e)



or the appropriate target-context variant.

A functor changing epochs must record source-target epoch transformation and mode.

Functoriality must account for epoch behavior.

## Object epoch and natural transformations

Naturality components are epoch-sensitive.

For:



    eta_A:F(A)-> G(A)



the epoch of `A`, `F(A)`, and `G(A)` must be explicit.

A naturality square at epoch `e` cannot be reused at epoch `e'` without naturality migration, re-verification, or epoch compatibility evidence.

## Object epoch and quotient categories

Quotient-object claims are epoch-sensitive.

A quotient relation at epoch `e` may differ from the quotient relation at epoch `e'`.

Representative independence, congruence, and quotient readiness must be fresh for the relevant epoch.

Quotient compatibility across epochs requires migration or relation compatibility.

## Object epoch and migration paths

Object migration may follow paths:



    A_e-> A_{e_1}-> A_{e'}



Different paths may produce different target objects, target dependencies, or target statuses.

The chosen path is part of the object epoch claim unless path coherence is certified.

Direct migration and composite migration are not automatically equal.

## Object epoch path coherence

Path coherence states that two object epoch migration paths produce equal or equivalent target object epoch claims.

It must identify paths, source object, target objects, source epoch, target epoch, modes, scopes, dependencies, certificates, invalidations, audit links, and replay behavior.

Without path coherence, target object meaning depends on migration path.

## Object epoch identity

Same-epoch identity is the identity relation:



    ObjectEpochId(A_e):A_e-> A_e



It does not prove anything about other epochs.

Same-epoch identity still depends on object identity, status, dependencies, certificates, proof boundary, and replay behavior.

Repeated epoch label is insufficient.

## Object epoch composition

Epoch migrations may compose:



    A_e~> A_{e'}





    A_{e'}~> A_{e''}



to produce:



    A_e~> A_{e''}



only under declared composition laws.

Composition must account for loss modes, invalidations, dependencies, certificates, proof boundaries, path coherence, and replay behavior.

Composition cannot silently strengthen evidence.

## Object epoch invertibility

Object epoch migration may be invertible if forward and backward migrations compose to identity object-epoch claims.

Invertibility requires certificates.

A backward migration candidate is insufficient.

Approximate, quotient, observable, summary, checkpoint, or audit-only inverses remain weaker modes.

## Object epoch partiality

Object epoch compatibility may be partial.

It may apply only to selected object kinds, contexts, scopes, modes, prefixes, dependencies, or proof statements.

Partial epoch compatibility cannot support total object reuse.

Consumers must prove that their use lies inside the partial domain.

## Object epoch unknown

Unknown object-epoch status means the framework cannot establish the required epoch claim.

Unknown is not accepted.

Unknown is not rejection.

Unknown blocks proof consumers unless the consumer explicitly accepts unknown, normally only for diagnostics or research ledgers.

Unknown may create a research obligation.

## Object epoch rejected

Rejected object-epoch status means the required epoch claim failed.

A rejected epoch migration or compatibility claim provides no usable object evidence.

It remains audit content.

Rejection must record reason, dependencies, scope, mode, proof boundary, epoch, and replay behavior.

## Object epoch audit-only

Audit-only object epoch status preserves historical explanation.

It does not permit current target proof, exact morphism typing, frame construction, authority mutation, certificate reuse, or raw replay.

Audit-only epoch use must be explicit.

It cannot be consumed as exact object freshness.

## Object epoch research obligation

A research-obligated object epoch claim records an unresolved epoch relation required by a consumer.

It must state source object, target object where relevant, source epoch, target epoch, missing evidence, blocked consumer, dependencies, mode, scope, and replay context.

It does not prove epoch compatibility.

## Object epoch invalidation propagation

If an object epoch dependency is invalidated, object epoch freshness must be recomputed.

Invalidation may propagate to object identity, object equality, object equivalence, object admissibility, morphism typing, identity morphisms, composition, functoriality, naturality, quotienting, replay, and certificates.

Propagation is mode- and scope-relative.

## Object epoch migration versus object identity

Object epoch migration relates identities across epochs.

It is not identity equality unless it explicitly proves identity equality.

A migrated object may be target-valid only under quotient, observable, approximate, summary, checkpoint, audit-only, partial, or exact mode.

Consumers must check the mode.

## Object epoch migration versus specialized migration

Categorical object epoch migration does not migrate specialized semantics.

A carrier-kind object migrated as a categorical object is not a migrated carrier unless carrier migration is also certified.

A sheaf-kind object migrated as a categorical object is not a migrated sheaf unless sheaf migration is also certified.

The object layer must not collapse these claims.

## Object epoch and applications

Application-specific epoch attachments belong outside the abstract category-object core.

`ObjectEpoch.lean` may define generic hooks for application object epochs.

It must not define concrete application epochs, bitmap dimensions, matrix dimensions, token epochs, image epochs, hash constants, Feistel constants, UI epochs, or runtime payload epochs.

## Object epoch and `none`

No object-epoch rule may treat `none`, `null`, missing fields, or absent runtime bindings as epoch defaults.

Absence is data-level absence.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Epoch attachment cannot install defaults.

## Object epoch equality

Two object-epoch records are equal only if object identity, epoch, role, status, scope, mode, prefix, dependencies, certificates, invalidations, source-target coordinates, audit references, proof boundaries, trusted boundaries, and replay behavior coincide.

Same object id and same epoch label are insufficient.

Same label and same target epoch are insufficient.

## Object epoch equivalence

Object-epoch records may be equivalent under declared relation.

Examples include audit equivalence, replay equivalence, migrated-epoch equivalence, quotient epoch equivalence, observable epoch equivalence, approximate epoch equivalence, or path equivalence.

Equivalence is not equality.

Consumers must state which equivalence they accept.

## Object epoch certificates

Object-epoch certificates may prove:



    ObjectAt(A,e)





    ObjectFresh(A,p,e,scope)





    ObjectEpochEq(A,e,e')





    ObjectEpochCompatible(A,e,e',scope,mode)





    ObjectEpochMigrates(A_e,A_{e'},mode)





    ObjectEpochInvalidated(A,e,scope)



or freshness, status, dependency closure, source-target coordinate validity, path coherence, identity, composition, invertibility, audit, and replay-admissibility claims.

Only accepted certificates discharge object-epoch obligations.

## Epoch rule

`ObjectEpoch.lean` artifacts are epoch-indexed by:

- object-epoch schema epoch;
- object-identity epoch;
- epoch-attachment epoch;
- freshness-policy epoch;
- source-target-coordinate epoch;
- epoch-equality epoch;
- epoch-compatibility epoch;
- object-migration epoch;
- object-status epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-epoch claims.

The old object-epoch artifact remains audit content.

## History relation

A history record depending on `ObjectEpoch.lean` must record:

1. source file identity;
2. declaration identity;
3. categorical object;
4. epoch;
5. source-target coordinates where relevant;
6. epoch relation kind;
7. mode and scope;
8. prefix;
9. status;
10. dependency closure;
11. certificates;
12. invalidation behavior;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The epoch label alone is insufficient.

## Replay rule

Replay of `ObjectEpoch.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, `ObjectEquality.lean`, `ObjectEquivalence.lean`, `ObjectAdmissibility.lean`, and `ObjectDependency.lean`;
3. reconstructing object-epoch declarations;
4. reconstructing epoch attachment, freshness, source-target coordinate, equality, compatibility, migration, status, invalidation, and path-coherence declarations;
5. checking object epoch interaction with equality, equivalence, admissibility, dependencies, morphism endpoints, identity morphisms, composition, functors, naturality, and quotients;
6. checking proof objects or trusted boundaries where present;
7. checking that no runtime code or application constants are introduced;
8. checking dependency closure and audit metadata.

If any step fails, downstream object-epoch claims are not replay-admissible.

## Runtime representation

`ObjectEpoch.lean` may lower to:

- Lean epoch-attachment predicates;
- freshness theorem metadata;
- source-target coordinate records;
- object-epoch migration descriptors;
- invalidation descriptors;
- dependency manifests;
- certificate descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not object-epoch identity.

Object-epoch identity depends on object, epoch, role, status, scope, mode, prefix, dependencies, certificates, invalidations, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical objects have the same label, same id, same Lean value, same kind, same context, or same runtime representation across two epochs.

This does not imply cross-epoch object identity, freshness, compatibility, or migration.

They collapse only if object epoch attachment, source-target coordinates, dependencies, certificates, status, proof boundary, trusted boundary, audit references, invalidations, and replay behavior are certified for the required scope and mode.

Thus epoch movement cannot be replaced by label equality, universe lifting, refinement, or runtime identity.

## Proof obligation

`ObjectEpoch.lean` is admissible only if the framework can certify:

1. object epoch attachment is explicit;
2. freshness is prefix-, epoch-, and scope-relative;
3. source-target coordinates are explicit for cross-epoch claims;
4. epoch equality is distinct from compatibility;
5. compatibility is distinct from migration;
6. migration is distinct from object identity;
7. epoch movement is not universe lifting;
8. epoch movement is not refinement;
9. dependency and certificate interaction is explicit;
10. invalidation and status behavior are append-only and replayable;
11. runtime representations and application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectEpoch.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime epoch constants, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-epoch infrastructure.

## Commitment rule

`ObjectEpoch.lean` may define object epoch attachment, freshness, compatibility, migration, invalidation, and replay obligations.

It cannot transport object claims across epochs by label.

It cannot make epoch movement universe lifting.

It cannot make epoch movement refinement.

It cannot make target objects source objects by id reuse.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored epoch labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
