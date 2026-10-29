import Folder.Expansion.ShellFiber

/-!
# Folder.Expansion.ShellTorsion

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: expansion.shell_torsion
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Expansion

open Carrier

structure ShellTorsion (s : GridShape) where
  perm : {c : Cell (expandedShape s) // IsShellCell c} ≃
         {c : Cell (expandedShape s) // IsShellCell c}

namespace ShellTorsion

def id (s : GridShape) : ShellTorsion s where
  perm := Equiv.refl _

def comp {s : GridShape} (τ σ : ShellTorsion s) : ShellTorsion s where
  perm := τ.perm.trans σ.perm

def act {s : GridShape} (τ : ShellTorsion s) (F : ShellFiber s) : ShellFiber s :=
  ⟨fun c => F.value (τ.perm.symm c)⟩

theorem shellTorsion_id_act {s : GridShape} (F : ShellFiber s) :
    act (id s) F = F := by
  ext c
  rfl

theorem shellTorsion_comp_act {s : GridShape}
    (τ σ : ShellTorsion s)
    (F : ShellFiber s) :
    act (comp τ σ) F = act σ (act τ F) := by
  ext c
  simp [act, comp]

theorem shellTorsion_preserves_shell_count_ones {s : GridShape}
    (τ : ShellTorsion s)
    (F : ShellFiber s) :
    ShellFiber.countOnes (act τ F) = ShellFiber.countOnes F := by
  unfold ShellFiber.countOnes act
  have e :
      {c : {c : Cell (expandedShape s) // IsShellCell c} //
          F.value (τ.perm.symm c) = 1} ≃
      {c : {c : Cell (expandedShape s) // IsShellCell c} //
          F.value c = 1} := by
    refine
      { toFun := ?toFun
        invFun := ?invFun
        left_inv := ?left_inv
        right_inv := ?right_inv }
    · intro c
      exact ⟨τ.perm.symm c.1, c.2⟩
    · intro c
      exact ⟨τ.perm c.1, by simpa using c.2⟩
    · intro c
      apply Subtype.ext
      simp
    · intro c
      apply Subtype.ext
      simp
  simpa [ShellFiber.countOnes, act] using Fintype.card_congr e

def cornerTopLeft (s : GridShape) :
    {c : Cell (expandedShape s) // IsShellCell c} :=
  ⟨(⟨0, by simp [expandedShape]⟩, ⟨0, by simp [expandedShape]⟩), by
    intro h
    exact Nat.not_lt_zero _ h.1⟩

def cornerTopRight (s : GridShape) :
    {c : Cell (expandedShape s) // IsShellCell c} :=
  ⟨(⟨0, by simp [expandedShape]⟩, ⟨s.cols + 1, by simp [expandedShape]⟩), by
    intro h
    exact Nat.not_lt_zero _ h.1⟩

def cornerBottomRight (s : GridShape) :
    {c : Cell (expandedShape s) // IsShellCell c} :=
  ⟨(⟨s.rows + 1, by simp [expandedShape]⟩,
    ⟨s.cols + 1, by simp [expandedShape]⟩), by
    intro h
    exact (Nat.lt_irrefl (s.rows + 1)) h.2.1⟩

def cornerBottomLeft (s : GridShape) :
    {c : Cell (expandedShape s) // IsShellCell c} :=
  ⟨(⟨s.rows + 1, by simp [expandedShape]⟩, ⟨0, by simp [expandedShape]⟩), by
    intro h
    exact Nat.not_lt_zero _ h.2.2.1⟩

def cornerCycleTorsion (s : GridShape) : ShellTorsion s where
  perm :=
    ((Equiv.swap (cornerTopLeft s) (cornerTopRight s)).trans
      (Equiv.swap (cornerTopRight s) (cornerBottomRight s))).trans
        (Equiv.swap (cornerBottomRight s) (cornerBottomLeft s))

private theorem cornerBottomLeft_ne_topLeft (s : GridShape) :
    cornerBottomLeft s ≠ cornerTopLeft s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.1.val) h
  simp [cornerBottomLeft, cornerTopLeft] at hv

private theorem cornerBottomLeft_ne_topRight (s : GridShape) :
    cornerBottomLeft s ≠ cornerTopRight s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.1.val) h
  simp [cornerBottomLeft, cornerTopRight] at hv

private theorem cornerBottomLeft_ne_bottomRight (s : GridShape) :
    cornerBottomLeft s ≠ cornerBottomRight s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.2.val) h
  simp [cornerBottomLeft, cornerBottomRight] at hv

private theorem cornerBottomRight_ne_topLeft (s : GridShape) :
    cornerBottomRight s ≠ cornerTopLeft s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.1.val) h
  simp [cornerBottomRight, cornerTopLeft] at hv

private theorem cornerBottomRight_ne_topRight (s : GridShape) :
    cornerBottomRight s ≠ cornerTopRight s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.1.val) h
  simp [cornerBottomRight, cornerTopRight] at hv

private theorem cornerTopRight_ne_bottomRight (s : GridShape) :
    cornerTopRight s ≠ cornerBottomRight s :=
  Ne.symm (cornerBottomRight_ne_topRight s)

private theorem cornerTopRight_ne_bottomLeft (s : GridShape) :
    cornerTopRight s ≠ cornerBottomLeft s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.1.val) h
  simp [cornerTopRight, cornerBottomLeft] at hv

private theorem cornerTopLeft_ne_topRight (s : GridShape) :
    cornerTopLeft s ≠ cornerTopRight s := by
  intro h
  have hv := congrArg
    (fun c : {c : Cell (expandedShape s) // IsShellCell c} => c.1.2.val) h
  simp [cornerTopLeft, cornerTopRight] at hv

private theorem cornerTopLeft_ne_bottomRight (s : GridShape) :
    cornerTopLeft s ≠ cornerBottomRight s :=
  Ne.symm (cornerBottomRight_ne_topLeft s)

private theorem cornerTopLeft_ne_bottomLeft (s : GridShape) :
    cornerTopLeft s ≠ cornerBottomLeft s :=
  Ne.symm (cornerBottomLeft_ne_topLeft s)

@[simp]
theorem cornerCycle_topLeft (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerTopLeft s) = cornerBottomLeft s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_left]
  rw [Equiv.swap_apply_left]
  rw [Equiv.swap_apply_left]

@[simp]
theorem cornerCycle_bottomLeft (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerBottomLeft s) = cornerBottomRight s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomLeft_ne_topLeft s) (cornerBottomLeft_ne_topRight s)]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomLeft_ne_topRight s) (cornerBottomLeft_ne_bottomRight s)]
  rw [Equiv.swap_apply_right]

@[simp]
theorem cornerCycle_bottomRight (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerBottomRight s) = cornerTopRight s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomRight_ne_topLeft s) (cornerBottomRight_ne_topRight s)]
  rw [Equiv.swap_apply_right]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerTopRight_ne_bottomRight s) (cornerTopRight_ne_bottomLeft s)]

@[simp]
theorem cornerCycle_topRight (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerTopRight s) = cornerTopLeft s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_right]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerTopLeft_ne_topRight s) (cornerTopLeft_ne_bottomRight s)]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerTopLeft_ne_bottomRight s) (cornerTopLeft_ne_bottomLeft s)]

end ShellTorsion

export ShellTorsion
  (cornerTopLeft cornerTopRight cornerBottomRight cornerBottomLeft
    cornerCycleTorsion)

end Expansion
end Folder
