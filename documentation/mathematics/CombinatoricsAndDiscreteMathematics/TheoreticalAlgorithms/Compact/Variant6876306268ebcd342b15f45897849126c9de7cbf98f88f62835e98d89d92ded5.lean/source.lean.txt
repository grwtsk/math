import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Compact

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.compact

theorem placements_count :
    placements.length = 8 :=
  Think.SourceTree.compactPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

inductive SrcLibSurfaceClass where
  | compactShell
  | poleStream
  | finiteBoundary
deriving DecidableEq, Repr

inductive SrcLibBoundaryStatus where
  | contained
  | cleared
  | residue
deriving DecidableEq, Repr

structure SrcLibCompactShell where
  surface : SrcLibSurfaceClass
  frameCount : Nat
  boundaryStatus : SrcLibBoundaryStatus
deriving Repr

def SrcLibCompactShell.hasFiniteBoundary (shell : SrcLibCompactShell) : Prop :=
  shell.frameCount > 0 ∧ shell.boundaryStatus ≠ SrcLibBoundaryStatus.cleared

def srcLibDefaultCompactShell : SrcLibCompactShell where
  surface := SrcLibSurfaceClass.compactShell
  frameCount := placements.length
  boundaryStatus := SrcLibBoundaryStatus.residue

theorem srcLibDefaultCompactShell_frameCount :
    srcLibDefaultCompactShell.frameCount = 8 := by
  rfl

theorem srcLibDefaultCompactShell_hasFiniteBoundary :
    srcLibDefaultCompactShell.hasFiniteBoundary := by
  constructor
  · rw [srcLibDefaultCompactShell_frameCount]
    decide
  · intro h
    cases h

end Think.Poles.Compact
