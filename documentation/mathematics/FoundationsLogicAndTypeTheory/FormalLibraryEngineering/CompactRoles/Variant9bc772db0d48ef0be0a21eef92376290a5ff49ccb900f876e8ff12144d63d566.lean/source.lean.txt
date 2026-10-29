set_option autoImplicit false

namespace Think.Compact

inductive RadoProjectedRole where
  | graph
  | projection
  | orbit
  | witness
  | heat
  | centroid
  | modularWeight
  | formShadow
  | pairCorrelation
  | residue
  | prune
  | canonical
  | memory
  | boundary
  | compact
deriving DecidableEq, Repr

def RadoProjectedRole.importsRadoTheorem :
    RadoProjectedRole → Bool
  | _ => false

def RadoProjectedRole.pairCorrelationIsAuthority :
    RadoProjectedRole → Bool
  | _ => false

theorem radoProjected_imports_no_rado_theorem
    (r : RadoProjectedRole) :
    r.importsRadoTheorem = false := by
  cases r <;> rfl

theorem radoProjected_pairCorrelation_regularizerOnly
    (r : RadoProjectedRole) :
    r.pairCorrelationIsAuthority = false := by
  cases r <;> rfl

end Think.Compact
