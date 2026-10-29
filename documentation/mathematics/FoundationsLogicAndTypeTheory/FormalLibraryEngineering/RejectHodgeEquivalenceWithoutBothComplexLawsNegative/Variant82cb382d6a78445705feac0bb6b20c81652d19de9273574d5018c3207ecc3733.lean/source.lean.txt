import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- Each law is independently required by the exact equivalence constructor.
def missingCodifferential : HodgeEquiv edgeHodge edgeHodge where
  equiv0 := LinearEquiv.refl ℚ (ℚ × ℚ)
  equiv1 := LinearEquiv.refl ℚ ℚ
  delta_comm := (HodgeEquiv.refl edgeHodge).delta_comm

def missingDifferential : HodgeEquiv edgeHodge edgeHodge where
  equiv0 := LinearEquiv.refl ℚ (ℚ × ℚ)
  equiv1 := LinearEquiv.refl ℚ ℚ
  deltaStar_comm := (HodgeEquiv.refl edgeHodge).deltaStar_comm
