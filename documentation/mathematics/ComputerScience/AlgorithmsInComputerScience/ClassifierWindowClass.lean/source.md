# Classifier Window Class — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdf94603184941d5c5539d55f0e19cbabe3d8946` · SHA-256 `fd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kernel.Checked

set_option autoImplicit false

namespace FWR.Manuscript.Classifier

/-
This module formalizes the Zhang, Polymath8, Maynard, and parity-barrier motifs
as finite classifier fields. It does not prove or improve any prime-gap theorem.
-/

universe u

inductive WindowClass where
  | admissibleDenseLowResidue
  | admissibleSparse
  | obstructed
  | distributionBad
  | highOverload
  | parityBarrier
  | insufficientData
  | refusedOverclaim
deriving DecidableEq, Repr

structure Context where
  Window : Type u
  Score : Type u
  admissibility : Window -> Score
  distribution : Window -> Score
  maynardWeight : Window -> Score
  denseCluster : Window -> Score
  paritySeverity : Window -> Score
  unresolvedResidue : Window -> Score
  classScore : Window -> Score
  classify : Window -> WindowClass
  HasZhangClassifier : Prop
  HasPolymath8aDistribution : Prop
  HasMaynardWeightScore : Prop
  HasPolymath8bParityModule : Prop
  HasFiniteWindowInventory : Prop
  DoesNotClaimPrimeGapTheorem : Prop

def deterministicClassifierClaim (ctx : Context) : Prop :=
  ∀ I : ctx.Window, ctx.classify I = ctx.classify I

def deterministicClassifierWitness (ctx : Context) :
    Checked (deterministicClassifierClaim ctx) :=
  Checked.proved (by intro I; rfl)

theorem deterministicClassifierWitness_isProved (ctx : Context) :
    (deterministicClassifierWitness ctx).isProved = true := by
  rfl

inductive Atom where
  | finiteWindowInventory
  | zhangAdmissibilityClassifier
  | polymath8aDistributionCertificate
  | maynardWeightScore
  | denseClusterEvidence
  | parityBarrierFlag
  | unresolvedResidueMass
  | finiteClassScore
  | refusedPrimeGapOverclaim
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteWindowInventory => "finiteWindowInventory"
  | .zhangAdmissibilityClassifier => "zhangAdmissibilityClassifier"
  | .polymath8aDistributionCertificate => "polymath8aDistributionCertificate"
  | .maynardWeightScore => "maynardWeightScore"
  | .denseClusterEvidence => "denseClusterEvidence"
  | .parityBarrierFlag => "parityBarrierFlag"
  | .unresolvedResidueMass => "unresolvedResidueMass"
  | .finiteClassScore => "finiteClassScore"
  | .refusedPrimeGapOverclaim => "refusedPrimeGapOverclaim"

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteWindowInventory => ctx.HasFiniteWindowInventory
  | .zhangAdmissibilityClassifier => ctx.HasZhangClassifier
  | .polymath8aDistributionCertificate => ctx.HasPolymath8aDistribution
  | .maynardWeightScore => ctx.HasMaynardWeightScore
  | .denseClusterEvidence => ctx.HasPolymath8bParityModule
  | .parityBarrierFlag => ctx.HasPolymath8bParityModule
  | .unresolvedResidueMass => ctx.DoesNotClaimPrimeGapTheorem
  | .finiteClassScore => deterministicClassifierClaim ctx
  | .refusedPrimeGapOverclaim => ctx.DoesNotClaimPrimeGapTheorem

def atomResidue (a : Atom) : Residue :=
  { target := Target.SieveClassifier
    atomId := Atom.id a
    kind :=
      match a with
      | .finiteWindowInventory => ResidueKind.missingFiniteWitness
      | .zhangAdmissibilityClassifier => ResidueKind.missingSieveEstimate
      | .polymath8aDistributionCertificate => ResidueKind.missingDistributionEstimate
      | .maynardWeightScore => ResidueKind.missingSieveEstimate
      | .denseClusterEvidence => ResidueKind.missingSieveEstimate
      | .parityBarrierFlag => ResidueKind.missingParityBarrierResolution
      | .unresolvedResidueMass => ResidueKind.conjecturalAtom
      | .finiteClassScore => ResidueKind.missingFiniteWitness
      | .refusedPrimeGapOverclaim => ResidueKind.authorityOverclaim
    blocks := "use of finite classifier data as a prime-gap theorem"
    clearsBy := "a separate prime-gap theorem proof, not the finite classifier" }

def allAtoms : List Atom := [
  Atom.finiteWindowInventory,
  Atom.zhangAdmissibilityClassifier,
  Atom.polymath8aDistributionCertificate,
  Atom.maynardWeightScore,
  Atom.denseClusterEvidence,
  Atom.parityBarrierFlag,
  Atom.unresolvedResidueMass,
  Atom.finiteClassScore,
  Atom.refusedPrimeGapOverclaim
]

def classifierResidues : List Residue :=
  allAtoms.map atomResidue

def primeGapOverclaim (ctx : Context) : Prop :=
  ctx.DoesNotClaimPrimeGapTheorem

def primeGapOverclaimWitness (ctx : Context) :
    Checked (primeGapOverclaim ctx) :=
  Checked.residue classifierResidues

theorem primeGapOverclaimWitness_hasResidue (ctx : Context) :
    (primeGapOverclaimWitness ctx).hasResidue = true := by
  rfl

theorem classifierResidue_count :
    classifierResidues.length = 9 := by
  rfl

theorem classifierResidues_targets_correct :
    ∀ r ∈ classifierResidues, r.target = Target.SieveClassifier := by
  intro r hr
  rw [classifierResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end FWR.Manuscript.Classifier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73c5fbe68cfd739a25e21a89ad357c2cd675df1e50963136ce53928ae4ec684b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
