import Formal.Checked.Geometry
import Formal.Checked.BoundaryMatriciant
import Formal.Checked.Projection.Balance
import Formal.Checked.Projection.Flatten

/-!
Checked source band.

This is the first-party checked band root. It is the only source band allowed
to flow into `Formal.Kernel` as theorem-bearing local authority.
-/

namespace Formal.Checked

def modules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem modules_count : modules.length = 4 := by
  rfl

end Formal.Checked
