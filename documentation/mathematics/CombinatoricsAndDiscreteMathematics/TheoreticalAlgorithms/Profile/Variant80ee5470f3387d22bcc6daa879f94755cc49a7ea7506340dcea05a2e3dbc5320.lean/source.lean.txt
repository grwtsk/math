import Mathematics.Capability.Scope
import Mathematics.Juris.Disposition

/-!
# Source-bound jurisdiction profile

The evaluator is supplied by a versioned profile bound to authoritative source
digests.  This formal layer does not invent legal rules.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure JurisContext where
  actor : PrincipalId
  resource : ElementId
  dataClass : StableId
  purpose : PurposeId
  territory : StableId
  device : DeviceId
  effect : Effect

structure JurisProfile where
  profileId : StableId
  sourceDigests : List Digest
  sources_valid :
    ∀ digest ∈ sourceDigests, digest.Valid
  effectiveFrom : Nat
  effectiveUntil : Option Nat
  evaluate : JurisContext → JurisDisposition

def jurisEvaluate
    (profile : JurisProfile)
    (context : JurisContext) :
    JurisDisposition :=
  profile.evaluate context

structure JurisAdmission
    (profile : JurisProfile)
    (context : JurisContext) : Prop where
  allowed :
    jurisEvaluate profile context = .allowed

theorem JurisAdmission.mayExecute
    {profile : JurisProfile}
    {context : JurisContext}
    (admission : JurisAdmission profile context) :
    (jurisEvaluate profile context).MayExecute := by
  rw [admission.allowed]
  trivial

end Mathematics.Juris
