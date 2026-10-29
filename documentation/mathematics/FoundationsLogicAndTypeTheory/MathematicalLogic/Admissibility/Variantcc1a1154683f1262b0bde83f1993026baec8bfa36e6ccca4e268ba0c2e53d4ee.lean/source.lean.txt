import Mathematics.GraphAccess.RelationScope

/-!
# Certified admissibility

Admissibility is already decided in an admitted request.  Unknown edge
admissibility never enters this predicate as `false`; it remains an explicit
unknown before request construction.
-/

namespace Mathematics.GraphAccess

structure AdmissibilityProfile (G : GraphCut) where
  nodeAdmissibleB : G.Node → Bool
  edgeAdmissibleB : G.Edge → Bool
  edgeEndpointsAdmissible :
    ∀ candidate,
      edgeAdmissibleB candidate = true →
      nodeAdmissibleB (G.source candidate) = true ∧
        nodeAdmissibleB (G.target candidate) = true
  digest : ProfileDigest

def NodeAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (node : G.Node) : Prop :=
  profile.nodeAdmissibleB node = true

def EdgeAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (edge : G.Edge) : Prop :=
  profile.edgeAdmissibleB edge = true

def ArcAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (arc : Arc G) : Prop :=
  EdgeAdmissible profile arc.edge

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (node : G.Node) :
    Decidable (NodeAdmissible profile node) :=
  by
    unfold NodeAdmissible
    infer_instance

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (edge : G.Edge) :
    Decidable (EdgeAdmissible profile edge) :=
  by
    unfold EdgeAdmissible
    infer_instance

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (arc : Arc G) :
    Decidable (ArcAdmissible profile arc) :=
  by
    unfold ArcAdmissible EdgeAdmissible
    infer_instance

theorem ArcAdmissible.endpoints
    {G : GraphCut}
    {profile : AdmissibilityProfile G}
    {arc : Arc G}
    (admissible : ArcAdmissible profile arc) :
    NodeAdmissible profile arc.tail ∧
      NodeAdmissible profile arc.head := by
  have endpoints :=
    profile.edgeEndpointsAdmissible
      arc.edge admissible
  cases arc with
  | mk edge direction =>
      cases direction with
      | forward =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using endpoints
      | reverse =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using
            And.intro endpoints.2 endpoints.1

end Mathematics.GraphAccess
