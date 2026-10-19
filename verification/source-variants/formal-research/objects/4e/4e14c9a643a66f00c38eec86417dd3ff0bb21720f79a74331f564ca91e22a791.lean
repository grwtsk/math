import Folder.GrandChallenge.BSD.FixedPointRecursion

/-!
# Folder.GrandChallenge.BSD.RankOrderCompatibility

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD rank/order compatibility contracts.
Ontology: bsd_fixed_point_recursion
Pivot role: arithmetic
Zero typology: rank-order
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace BSD

structure RankOrderData where
  curve : EllipticCurveObject
  algebraicRankLabel : String
  analyticOrderLabel : String
  regulatorOrPeriodLabel : String

structure RankOrderCompatibility where
  data : RankOrderData
  compatible : Prop
  compatible_certified : compatible
  mismatchObstruction : Prop
  mismatchObstruction_certified : mismatchObstruction
  sourceLabel : String

theorem bsd_rank_order_compatible_if_supplied
    (R : RankOrderCompatibility) :
    R.compatible :=
  R.compatible_certified

theorem bsd_mismatch_obstruction_if_supplied
    (R : RankOrderCompatibility) :
    R.mismatchObstruction :=
  R.mismatchObstruction_certified

end BSD
end GrandChallenge
end Folder
