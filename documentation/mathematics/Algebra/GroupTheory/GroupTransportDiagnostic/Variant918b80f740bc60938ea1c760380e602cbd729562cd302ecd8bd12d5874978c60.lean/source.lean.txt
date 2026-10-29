import Mathlib.Algebra.Group.TransferInstance

noncomputable def transportDiagnostic {G : Type} [Group G] (e : G ≃ G) :
    @MulEquiv G G e.group.toMul inferInstance := e.mulEquiv
