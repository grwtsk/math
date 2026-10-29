/-!
Fourier/Tauberian analytic blueprint boundary.

This marker groups Fourier, Sobolev, smoothing, and Wiener blueprint material
without importing unresolved files.
-/

namespace Formal.Blueprint.Analytic.FourierTauberian

def files : List String :=
  [ "Fourier"
  , "SmoothExistence"
  , "Sobolev"
  , "Wiener"
  ]

theorem files_count : files.length = 4 := by
  rfl

end Formal.Blueprint.Analytic.FourierTauberian
