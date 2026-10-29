import GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive

/-!
# Central height and ordered area in the integral Heisenberg group

The height here is the signed integer central coordinate `z`, not an operator
norm or an arithmetic height. The source group's multiplication carries the
ordered cross term `x*y'`. Swapping factors changes height by an exact signed
determinant; retaining all three coordinates retains height exactly, whereas
retaining only horizontal coordinates loses it. No randomness, cryptographic
security, Chowla cancellation, or analytic geometry hypothesis occurs here.
-/

set_option autoImplicit false

namespace GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight

open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive

/-- Signed central height, including the ordered-area contribution. -/
def centralHeight (g : IntegralHeisenberg) : ℤ := g.z

/-- The signed horizontal determinant controls the effect of swapping factors. -/
def horizontalDeterminant (a b : IntegralHeisenberg) : ℤ :=
  a.x * b.y - b.x * a.y

/-- Exact central-coordinate law of the actual source group. -/
theorem centralHeight_mul (a b : IntegralHeisenberg) :
    centralHeight (a * b) = centralHeight a + centralHeight b + a.x * b.y := rfl

/-- Arbitrary swaps do not preserve central height: the obstruction is exact. -/
theorem swap_defect (a b : IntegralHeisenberg) :
    centralHeight (a * b) - centralHeight (b * a) = horizontalDeterminant a b := by
  simp only [centralHeight_mul, horizontalDeterminant]
  ring

/-- The precise condition permitting one swap without losing central height. -/
theorem same_height_iff_determinant_zero (a b : IntegralHeisenberg) :
    centralHeight (a * b) = centralHeight (b * a) ↔ horizontalDeterminant a b = 0 := by
  have defect := swap_defect a b
  omega

/-- The two basic horizontal generators exhibit strict order sensitivity. -/
theorem X_Y_height :
    centralHeight (IntegralHeisenberg.X * IntegralHeisenberg.Y) = 1 := by decide

theorem Y_X_height :
    centralHeight (IntegralHeisenberg.Y * IntegralHeisenberg.X) = 0 := by decide

theorem X_Y_height_ne_Y_X :
    centralHeight (IntegralHeisenberg.X * IntegralHeisenberg.Y) ≠
      centralHeight (IntegralHeisenberg.Y * IntegralHeisenberg.X) := by
  rw [X_Y_height, Y_X_height]
  decide

/-- Sum of input central coordinates, prior to ordered multiplication. -/
def inputHeightSum (items : List IntegralHeisenberg) : ℤ :=
  (items.map centralHeight).sum

/-- The total second horizontal coordinate of an ordered list. -/
def horizontalYSum (items : List IntegralHeisenberg) : ℤ :=
  (items.map IntegralHeisenberg.y).sum

/-- Sum over the ordered pairs i<j of x_i*y_j, specified recursively without
commuting, sorting, or forgetting the source list order. -/
def orderedArea : List IntegralHeisenberg → ℤ
  | [] => 0
  | a :: tail => orderedArea tail + a.x * horizontalYSum tail

theorem prod_y (items : List IntegralHeisenberg) :
    items.prod.y = horizontalYSum items := by
  induction items with
  | nil => rfl
  | cons a tail ih =>
    simp only [List.prod_cons, IntegralHeisenberg.mul_y, ih, horizontalYSum,
      List.map_cons, List.sum_cons]

/-- The full product retains the sum of input heights plus every ordered cross
term. It holds for every finite list, including the empty list. -/
theorem ordered_product_height (items : List IntegralHeisenberg) :
    centralHeight items.prod = inputHeightSum items + orderedArea items := by
  induction items with
  | nil => rfl
  | cons a tail ih =>
    simp only [List.prod_cons, centralHeight_mul, ih, prod_y, inputHeightSum,
      List.map_cons, List.sum_cons, orderedArea]
    ring

/-- Central-axis height is invariant under conjugation in the actual source
group. The two zero horizontal-coordinate hypotheses are explicit. -/
theorem central_conjugation_height (a g : IntegralHeisenberg)
    (hx : a.x = 0) (hy : a.y = 0) :
    centralHeight (g * a * g⁻¹) = centralHeight a := by
  change (g.z + a.z + g.x * a.y) + (-g.z + g.x * g.y) +
    (g.x + a.x) * (-g.y) = a.z
  rw [hx, hy]
  ring

/-- A coordinate serialization that retains the complete source element. -/
def coordinates (g : IntegralHeisenberg) : ℤ × ℤ × ℤ := (g.x, g.y, g.z)

def fromCoordinates (value : ℤ × ℤ × ℤ) : IntegralHeisenberg :=
  ⟨value.1, value.2.1, value.2.2⟩

theorem fromCoordinates_coordinates (g : IntegralHeisenberg) :
    fromCoordinates (coordinates g) = g := by
  cases g
  rfl

theorem coordinates_fromCoordinates (value : ℤ × ℤ × ℤ) :
    coordinates (fromCoordinates value) = value := by
  rcases value with ⟨x, y, z⟩
  rfl

/-- Exact reconstruction preserves central height as well as the full triple. -/
theorem reconstructed_height (g : IntegralHeisenberg) :
    centralHeight (fromCoordinates (coordinates g)) = centralHeight g := rfl

/-- The commutative horizontal observation discards the central coordinate. -/
def horizontalProjection (g : IntegralHeisenberg) : ℤ × ℤ := (g.x, g.y)

theorem horizontal_Z_identity_collision :
    horizontalProjection IntegralHeisenberg.Z =
      horizontalProjection (1 : IntegralHeisenberg) := rfl

theorem central_height_Z_identity_different :
    centralHeight IntegralHeisenberg.Z ≠ centralHeight (1 : IntegralHeisenberg) := by
  decide

/-- No decoder of only the horizontal pair can recover central height for all
source elements: the central unit and identity are an explicit collision. -/
theorem no_height_decoder_from_horizontal :
    ¬ ∃ decoder : (ℤ × ℤ) → ℤ, ∀ g : IntegralHeisenberg,
      decoder (horizontalProjection g) = centralHeight g := by
  rintro ⟨decoder, exactHeight⟩
  have hz := exactHeight IntegralHeisenberg.Z
  have hi := exactHeight 1
  rw [horizontal_Z_identity_collision] at hz
  have same := hz.symm.trans hi
  exact central_height_Z_identity_different same

end GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight
