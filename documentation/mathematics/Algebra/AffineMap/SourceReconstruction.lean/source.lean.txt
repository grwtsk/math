import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionGluing.Basic

/-!
WAVEFORM-CELL-1: authored finite reference laws, not an analytic Mellin transform,
not a PDF interpretation theorem, and not a refinement of the Python host.
Coordinates are rational here. A function supplied to observe is an explicit
parameter; no hidden assumption identifies it with xi, zeta, or the paper's g.
-/
namespace WaveformCell

structure Chart where
  offset : Rat
  slope : Rat

def reflected (c x : Rat) : Rat := 2 * c - x

def coordinate (a : Chart) (x : Rat) : Rat := a.offset + a.slope * x

def reflectChart (c : Rat) (a : Chart) : Chart :=
  ⟨a.offset + a.slope * (2 * c), -a.slope⟩

theorem reflection_involution (c x : Rat) : reflected c (reflected c x) = x := by
  simp only [reflected]
  grind

theorem coordinate_reflection (c x : Rat) (a : Chart) :
    coordinate (reflectChart c a) x = coordinate a (reflected c x) := by
  simp only [coordinate, reflectChart, reflected]
  grind

theorem chart_involution (c : Rat) (a : Chart) :
    reflectChart c (reflectChart c a) = a := by
  cases a with
  | mk offset slope =>
    simp only [reflectChart]
    congr 1 <;> grind

structure View (Source : Type) where
  source : Source
  chart : Chart

def encode {Source : Type} (s : Source) : View Source := ⟨s, ⟨0, 1⟩⟩
def decode {Source : Type} (w : View Source) : Source := w.source

def reflectView {Source : Type} (c : Rat) (w : View Source) : View Source :=
  ⟨w.source, reflectChart c w.chart⟩

def observe {Source Value : Type} (evaluate : Source → Rat → Value)
    (w : View Source) (x : Rat) : Value := evaluate w.source (coordinate w.chart x)

theorem decode_encode {Source : Type} (s : Source) : decode (encode s) = s := rfl

theorem source_preserved {Source : Type} (c : Rat) (w : View Source) :
    decode (reflectView c w) = decode w := rfl

theorem view_involution {Source : Type} (c : Rat) (w : View Source) :
    reflectView c (reflectView c w) = w := by
  cases w with
  | mk source chart =>
    simp only [reflectView, chart_involution]

theorem observation_reflection {Source Value : Type} (evaluate : Source → Rat → Value)
    (c x : Rat) (w : View Source) :
    observe evaluate (reflectView c w) x = observe evaluate w (reflected c x) := by
  simp only [observe, reflectView, coordinate_reflection]

-- Explicitly reuse the existing covering theorem. This is value reconstruction,
-- not a theorem that positive local forms yield a positive global form.
theorem covered_reconstruction {I X V : Type} (covers : I → X → Prop)
    (owner : X → I) (pieces : I → X → V)
    (covered : ∀ x, covers (owner x) x)
    (agree : ∀ i j x, covers i x → covers j x → pieces i x = pieces j x)
    (i : I) (x : X) (hx : covers i x) :
    PaperLocalGlobal.glue owner pieces x = pieces i x :=
  PaperLocalGlobal.restrict_glue covers owner pieces covered agree i x hx

-- Rational-coordinate restriction of the anchored difference-kernel identity.
def kernel (g : Rat → Rat) (a s t : Rat) : Rat :=
  g (s - t) - g (s - a) - g (a - t) + g 0

theorem kernel_reflection (g : Rat → Rat) (even : ∀ x, g (-x) = g x)
    (c a s t : Rat) :
    kernel g a (reflected c s) (reflected c t) =
      kernel g (reflected c a) s t := by
  have h0 : reflected c s - reflected c t = -(s - t) := by
    simp only [reflected]; grind
  have h1 : reflected c s - a = -(s - reflected c a) := by
    simp only [reflected]; grind
  have h2 : a - reflected c t = -(reflected c a - t) := by
    simp only [reflected]; grind
  simp only [kernel, h0, h1, h2, even]

theorem anchor_control :
    kernel (fun x : Rat => x * x) 0 1 1 = -2 ∧
    kernel (fun x : Rat => x * x) 1 0 0 = -2 ∧
    kernel (fun x : Rat => x * x) 0 0 0 = 0 := by
  simp only [kernel]
  grind

def symmetricPolynomial (x : Rat) : Rat := (x - 1 / 2) * (x - 1 / 2) - 1 / 16

theorem polynomial_reflection (x : Rat) :
    symmetricPolynomial (1 - x) = symmetricPolynomial x := by
  simp only [symmetricPolynomial]
  grind

theorem off_center_roots :
    symmetricPolynomial (1 / 4) = 0 ∧ symmetricPolynomial (3 / 4) = 0 ∧
    (1 / 4 : Rat) ≠ 1 / 2 ∧ (3 / 4 : Rat) ≠ 1 / 2 := by
  simp only [symmetricPolynomial]
  grind

theorem reflected_landmarks :
    reflected (1 / 2) (7 / 8) = 1 / 8 ∧ reflected (1 / 2) (1 / 2) = 1 / 2 := by
  simp only [reflected]
  grind

-- These premises are explicit scalar inequalities, not imported zeta facts.
theorem conditional_band (beta upper : Rat)
    (right : beta ≤ upper) (left : 1 - beta ≤ upper) :
    1 - upper ≤ beta ∧ beta ≤ upper := by
  grind

theorem reflection_preserves_centered_square (beta : Rat) :
    (1 - beta - 1 / 2) * (1 - beta - 1 / 2) =
    (beta - 1 / 2) * (beta - 1 / 2) := by
  grind

end WaveformCell
#print axioms WaveformCell.reflection_involution
#print axioms WaveformCell.coordinate_reflection
#print axioms WaveformCell.chart_involution
#print axioms WaveformCell.decode_encode
#print axioms WaveformCell.source_preserved
#print axioms WaveformCell.view_involution
#print axioms WaveformCell.observation_reflection
#print axioms WaveformCell.covered_reconstruction
#print axioms WaveformCell.kernel_reflection
#print axioms WaveformCell.anchor_control
#print axioms WaveformCell.polynomial_reflection
#print axioms WaveformCell.off_center_roots
#print axioms WaveformCell.reflected_landmarks
#print axioms WaveformCell.conditional_band
#print axioms WaveformCell.reflection_preserves_centered_square
