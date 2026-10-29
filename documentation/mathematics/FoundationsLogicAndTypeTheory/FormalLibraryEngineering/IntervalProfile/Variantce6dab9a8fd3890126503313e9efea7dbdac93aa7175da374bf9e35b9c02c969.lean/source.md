# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalProfile.Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ec904fa0bb808c97070a7e985a87de6341fe1fc` · SHA-256 `ce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Foundations

universe uInput uWitness

namespace FCRS.Transport

/--
A versioned interval theorem profile over independently typed input and
witness carriers.
-/
structure IntervalProfile
    (Input : Type uInput) (Witness : Type uWitness) where
  version : ArtifactRef .intervalProfile
  sourceTheorem : ArtifactRef .theoremArtifact
  domainVersion : ArtifactRef .domainPredicate
  lowerVersion : ArtifactRef .endpointFunction
  upperVersion : ArtifactRef .endpointFunction
  assumptionSet : ArtifactRef .assumptionSet
  orientation : IntervalOrientation
  sourceNotation : String
  domain : Input → Prop
  lower : Input → Witness
  upper : Input → Witness
  lowerMode : BoundaryMode
  upperMode : BoundaryMode
  witnessQualifies : Witness → Prop
  order : Witness → Witness → Prop

namespace BoundaryMode

/-- Interpret a lower endpoint according to its declared boundary mode. -/
def lowerSatisfied
    {Witness : Type uWitness}
    (mode : BoundaryMode)
    (order : Witness → Witness → Prop)
    (lower witness : Witness) : Prop :=
  match mode with
  | .Open => order lower witness
  | .Closed => lower = witness ∨ order lower witness

/-- Interpret an upper endpoint according to its declared boundary mode. -/
def upperSatisfied
    {Witness : Type uWitness}
    (mode : BoundaryMode)
    (order : Witness → Witness → Prop)
    (witness upper : Witness) : Prop :=
  match mode with
  | .Open => order witness upper
  | .Closed => witness = upper ∨ order witness upper

end BoundaryMode

namespace IntervalProfile

/-- Exact endpoint-membership semantics for a profile. -/
def contains
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness)
    (input : Input) (witness : Witness) : Prop :=
  profile.lowerMode.lowerSatisfied
      profile.order (profile.lower input) witness ∧
    profile.upperMode.upperSatisfied
      profile.order witness (profile.upper input)

/-- Domain, interval, and witness qualification kept as separate conjuncts. -/
def admissible
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness)
    (input : Input) (witness : Witness) : Prop :=
  profile.domain input ∧
    profile.contains input witness ∧
    profile.witnessQualifies witness

end IntervalProfile

/-- A theorem claim is indexed by its exact interval-profile value. -/
def IntervalClaim
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) : Prop :=
  ∀ input, profile.domain input →
    ∃ witness, profile.admissible input witness

/-- A selected mathematical witness with proof for one exact profile/input. -/
structure IntervalWitness
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) (input : Input) where
  value : Witness
  evidence : profile.admissible input value

end FCRS.Transport
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ef3f9009cbebd88d4883424a3181fee3e058e3d95cd27a57191c9c486bcbede -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
