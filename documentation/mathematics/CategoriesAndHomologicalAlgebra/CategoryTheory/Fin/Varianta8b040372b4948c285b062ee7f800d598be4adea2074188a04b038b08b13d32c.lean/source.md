# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fin.Varianta8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6acfad730d22f73548bb26ba581548905699e464` · SHA-256 `a8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal
import Mathlib.Order.Fin.Basic

/-!
# Limits and colimits indexed by `Fin`

In this file, we show that `0 : Fin (n + 1)` is an initial object
and `Fin.last n` is a terminal object. This allows to compute
limits and colimits indexed by `Fin (n + 1)`, see
`limitOfDiagramInitial` and `colimitOfDiagramTerminal`
in the file `Limits.Shapes.IsTerminal`.

-/

universe v v' u u' w

open CategoryTheory Limits

namespace Fin

variable (n : ℕ)

/-- `0` is an initial object in `Fin n` when `n ≠ 0`. -/
def isInitialZero [NeZero n] : IsInitial (0 : Fin n) := isInitialBot

/-- `Fin.last n` is a terminal object in `Fin (n + 1)`. -/
def isTerminalLast : IsTerminal (Fin.last n) := isTerminalTop

end Fin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ab4f8e40e7dceb023faddbbaa03321147084faca77ba9dbb04c75173d9a3e09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fin/Varianta8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
