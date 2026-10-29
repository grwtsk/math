import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
QUANTUM-CELL-1: exact real-amplitude four-label reference laws.
Grover (1996), quant-ph/9605043, supplies the reflection algorithm. The graph
carrier and rational source adapters are authored for this bounded profile.
No physical quantum execution, matrix exponential formalization, universal
machine, JSON refinement, source positivity, or RH consequence is asserted.
-/
namespace GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.FiniteReflection

abbrev V := Rat × Rat × Rat × Rat
abbrev Flags := Bool × Bool × Bool × Bool

def zero : V := (0, 0, 0, 0)
def uniform : V := (1/2, 1/2, 1/2, 1/2)
def dot (x y : V) : Rat := x.1*y.1 + x.2.1*y.2.1 + x.2.2.1*y.2.2.1 + x.2.2.2*y.2.2.2
def normSq (x : V) : Rat := dot x x
def mean (x : V) : Rat := (x.1+x.2.1+x.2.2.1+x.2.2.2)/4
def harmonic (x : V) : V := (mean x, mean x, mean x, mean x)
def diffuse (x : V) : V := (2*mean x-x.1, 2*mean x-x.2.1, 2*mean x-x.2.2.1, 2*mean x-x.2.2.2)
def laplacian (x : V) : V := (4*(x.1-mean x), 4*(x.2.1-mean x), 4*(x.2.2.1-mean x), 4*(x.2.2.2-mean x))
def flip (b : Bool) (x : Rat) : Rat := if b then -x else x
def phase (b : Flags) (x : V) : V := (flip b.1 x.1, flip b.2.1 x.2.1, flip b.2.2.1 x.2.2.1, flip b.2.2.2 x.2.2.2)
def step (b : Flags) (x : V) : V := diffuse (phase b x)
def inverseStep (b : Flags) (x : V) : V := phase b (diffuse x)

theorem flip_involution (b : Bool) (x : Rat) : flip b (flip b x) = x := by
  cases b <;> simp [flip]

theorem flip_square (b : Bool) (x : Rat) : flip b x * flip b x = x*x := by
  cases b <;> simp [flip] <;> grind

theorem phase_involution (b : Flags) (x : V) : phase b (phase b x) = x := by
  simp only [phase, flip_involution]

theorem phase_norm (b : Flags) (x : V) : normSq (phase b x) = normSq x := by
  simp only [normSq, dot, phase, flip_square]

theorem harmonic_idempotent (x : V) : harmonic (harmonic x) = harmonic x := by
  simp only [harmonic, mean, Prod.mk.injEq]
  constructor
  · grind
  constructor
  · grind
  constructor <;> grind

theorem harmonic_kernel (x : V) : laplacian (harmonic x) = zero := by
  simp only [laplacian, harmonic, mean, zero, Prod.mk.injEq]
  constructor
  · grind
  constructor
  · grind
  constructor <;> grind

theorem diffusion_involution (x : V) : diffuse (diffuse x) = x := by
  apply Prod.ext
  · simp only [diffuse, mean]; grind
  apply Prod.ext
  · simp only [diffuse, mean]; grind
  apply Prod.ext <;> simp only [diffuse, mean] <;> grind

theorem diffusion_norm (x : V) : normSq (diffuse x) = normSq x := by
  simp only [normSq, dot, diffuse, mean]
  grind

theorem step_norm (b : Flags) (x : V) : normSq (step b x) = normSq x := by
  simp only [step, diffusion_norm, phase_norm]

theorem inverse_step (b : Flags) (x : V) : inverseStep b (step b x) = x := by
  simp only [inverseStep, step, diffusion_involution, phase_involution]

theorem uniform_normalized : normSq uniform = 1 := by
  simp only [normSq, dot, uniform]
  grind

theorem single_marked_example : step (false,false,false,true) uniform = (0,0,0,1) := by
  simp only [step, diffuse, phase, flip, mean, uniform]
  grind

-- Deliberate distinction between dissipative averaging and unitary reflection.
def halfHeat (x : V) : V := ((mean x+x.1)/2, (mean x+x.2.1)/2,
  (mean x+x.2.2.1)/2, (mean x+x.2.2.2)/2)

theorem heat_is_not_diffusion :
    normSq (halfHeat (1,-1,0,0)) = 1/2 ∧
    normSq (diffuse (1,-1,0,0)) = 2 := by
  simp only [normSq, dot, halfHeat, diffuse, mean]
  constructor <;> grind

end GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.FiniteReflection
