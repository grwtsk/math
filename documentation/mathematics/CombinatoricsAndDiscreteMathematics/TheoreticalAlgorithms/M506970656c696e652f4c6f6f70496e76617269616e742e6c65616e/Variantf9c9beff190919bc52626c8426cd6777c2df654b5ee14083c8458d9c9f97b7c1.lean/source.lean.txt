import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=0010001|role=proof_code_atom|slug=pipeline-loopinvariant|owner=canonical_owner|core=Pipeline/LoopInvariant.lean|leaf=M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

inductive LoopSurface where
  | formal
  | rust
  | docs
deriving DecidableEq, Repr

namespace LoopSurface

def required : List LoopSurface :=
  [LoopSurface.formal, LoopSurface.rust, LoopSurface.docs]

theorem required_length : required.length = 3 := by
  rfl

end LoopSurface

structure LoopImprovement where
  formal : Bool
  rust : Bool
  docs : Bool
  nonclaimPreserved : Bool
  residueTracked : Bool
deriving DecidableEq, Repr

namespace LoopImprovement

def closed (w : LoopImprovement) : Bool :=
  w.formal && (w.rust && (w.docs && (w.nonclaimPreserved && w.residueTracked)))

theorem closed_implies_formal (w : LoopImprovement)
    (h : w.closed = true) : w.formal = true := by
  cases hFormal : w.formal <;> simp [closed, hFormal] at h
  rfl

theorem closed_implies_rust (w : LoopImprovement)
    (h : w.closed = true) : w.rust = true := by
  cases hFormal : w.formal <;> cases hRust : w.rust <;>
    simp [closed, hFormal, hRust] at h
  rfl

theorem closed_implies_docs (w : LoopImprovement)
    (h : w.closed = true) : w.docs = true := by
  cases hFormal : w.formal <;> cases hRust : w.rust <;> cases hDocs : w.docs <;>
    simp [closed, hFormal, hRust, hDocs] at h
  rfl

theorem closed_implies_nonclaim_preserved (w : LoopImprovement)
    (h : w.closed = true) : w.nonclaimPreserved = true := by
  cases hFormal : w.formal <;> cases hRust : w.rust <;> cases hDocs : w.docs <;>
    cases hNonclaim : w.nonclaimPreserved <;>
    simp [closed, hFormal, hRust, hDocs, hNonclaim] at h
  rfl

theorem closed_implies_residue_tracked (w : LoopImprovement)
    (h : w.closed = true) : w.residueTracked = true := by
  cases hFormal : w.formal <;> cases hRust : w.rust <;> cases hDocs : w.docs <;>
    cases hNonclaim : w.nonclaimPreserved <;> cases hResidue : w.residueTracked <;>
    simp [closed, hFormal, hRust, hDocs, hNonclaim, hResidue] at h
  rfl

end LoopImprovement

end Think.Pipeline
