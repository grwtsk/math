import BooleanMatrix.Application.Core
import BooleanMatrix.Format

/-!
# Format-preserving BooleanMatrix applications
-/

namespace BooleanMatrix

/--
An application carrying a proof that valid source matrices produce valid
target matrices.
-/
structure TypedApplication
    (source target : Format) where
  run : Application
  preserves :
    ∀ input,
      source.Valid input →
      target.Valid (run input)

namespace TypedApplication

/-- Typed identity application. -/
def identity
    (format : Format) :
    TypedApplication format format where
  run := Application.identity
  preserves := by
    intro input valid
    exact valid

/-- Typed sequential composition. -/
def comp
    {first second third : Format}
    (after : TypedApplication second third)
    (before : TypedApplication first second) :
    TypedApplication first third where
  run := Application.comp after.run before.run
  preserves := by
    intro input valid
    exact after.preserves
      (before.run input)
      (before.preserves input valid)

end TypedApplication
end BooleanMatrix
