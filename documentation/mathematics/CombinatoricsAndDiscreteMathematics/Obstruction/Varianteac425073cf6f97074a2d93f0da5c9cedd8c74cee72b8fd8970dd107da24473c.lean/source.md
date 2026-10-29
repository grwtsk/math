# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Obstruction.Varianteac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7deee8d3f17f4dde2c933839d539d74fc4b02b69` · SHA-256 `eac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Juris.Profile
import Mathematics.Mutation.Stratum

/-!
# Known obstructions and deterministic mutation programs

The baseline and direct mutation locus are explicit.  “Known” means the local
invariant violation is witnessed; downstream propagation remains an object of
the experiment.
-/

namespace Mathematics.Mutation

inductive ObstructionKind
  | semanticIdentityLoss
  | dependencyOmission
  | proofAuthorityPromotion
  | capabilityWidening
  | permissionInheritance
  | jurisConflict
  | provenanceBreak
  | snapshotStaleness
  | representationLoss
  | accessibilityLoss
  | boundaryLeakage
  | dataUseEscalation
  | crossDeviceAuthorityTransfer
  | noncommutingMerge
  | receiptOmission
  | replayNondeterminism
  deriving DecidableEq, Repr

structure ImmutableSnapshot (State : Type) where
  state : State
  digest : Digest
  digest_valid : digest.Valid

structure MutationProgram (State : Type) where
  programId : StableId
  mutate : State → State
  directSupport : Finset StableId

structure KnownObstruction
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  obstructionId : StableId
  kind : ObstructionKind
  injectionLocus : Finset StableId
  invariant : State → Prop
  program : MutationProgram State
  baselineHolds :
    invariant snapshot.state
  mutantViolates :
    ¬ invariant (program.mutate snapshot.state)
  direct_support_exact :
    program.directSupport = injectionLocus
  expectedDetector : StableId
  recoveryCriterion : StableId
  jurisProfileId : StableId

def directMutationSupport
    {State : Type}
    {snapshot : ImmutableSnapshot State}
    (obstruction : KnownObstruction snapshot) :
    Finset StableId :=
  obstruction.program.directSupport

theorem direct_mutation_support_exact
    {State : Type}
    {snapshot : ImmutableSnapshot State}
    (obstruction : KnownObstruction snapshot) :
    directMutationSupport obstruction = obstruction.injectionLocus :=
  obstruction.direct_support_exact

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31ce89d5aa735549a16e69cacd3daa848cdeded81474fc2ee5e72a127a3eba5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Varianteac425073cf6f97074a2d93f0da5c9cedd8c74cee72b8fd8970dd107da24473c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
