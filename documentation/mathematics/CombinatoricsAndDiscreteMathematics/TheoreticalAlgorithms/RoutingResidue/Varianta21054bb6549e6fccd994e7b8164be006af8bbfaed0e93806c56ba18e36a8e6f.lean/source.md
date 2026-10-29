# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RoutingResidue.Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d08d77f3bff8dc502c6b10bbe8b5d1013c861f12` · SHA-256 `a21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.NeuralDiffusion.Residue
import Mathematics.Projection.SeparatorObligation

/-!
# Residue-driven classification

Routing residue activates continued classification without acquiring authority.
Split and boundary are proof-bearing mathematical diagnoses.  Backpropagation,
human/GPT review, and durable handoff are strategies for proposing a discharge;
they cannot mutate accepted keys, names, routes, or Lean objects.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u v w

inductive ClassificationStrategy
  | splitProposal
  | backpropagate
  | requestExternalMathematics
  | persistAndExit
  deriving DecidableEq, Repr

inductive RouteAssessment
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element]
  | named (key : RigidKey)
  | opaque (key : RigidKey) (residue : RoutingResidue Element Probe)
  | unrouted (residue : RoutingResidue Element Probe)
  | undischarged (obligation : SeparatorObligation Element Probe)

namespace RouteAssessment

variable
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]

def needsClassification :
    RouteAssessment Element Probe → Bool
  | .named _ => false
  | .opaque _ _ => true
  | .unrouted _ => true
  | .undischarged _ => true

@[simp] theorem named_does_not_activate (key : RigidKey) :
    needsClassification
      (RouteAssessment.named (Element := Element) (Probe := Probe) key) =
        false :=
  rfl

@[simp] theorem residue_activates
    (residue : RoutingResidue Element Probe) :
    (RouteAssessment.unrouted residue).needsClassification = true :=
  rfl

end RouteAssessment

/--
Immutable proposal-only observation.  It points to an accepted generation;
accepted compiler objects never point back to this mutable learning plane.
-/
structure ResidueObservation
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  acceptedGeneration : ObjectAddress
  activationKey : ActivationKey
  residue : RoutingResidue Element Probe
  proposedStrategy : ClassificationStrategy
  modelEvidence : List String
  authority : ProposalAuthority := .languageModel

/--
Deterministic coupling of exact residue into an analytic carrier.  Equivariance
laws belong here; the resulting neural value remains proposal evidence.
-/
structure ResidueCoupling
    (Residue : Type u) (Carrier : Type v)
    [Zero Residue] [Zero Carrier] where
  realize : Residue → Carrier
  realize_zero : realize 0 = 0

end Mathematics.NeuralDiffusion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e63de726bd5e77bed28f9ea6cfea59f54792e02891a338b7df9bcce5a7adec02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RoutingResidue/Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
