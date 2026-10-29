# Jacobi Sym — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ba714383933fed066ce8536448141ea856e8707` · SHA-256 `aff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol
import Mathlib.Tactic.NormNum.Prime

-- TODO(kmill): remove once the mathlib ToExpr Int instance is removed
set_option eval.pp false

section Csimp

/-!
We test that `@[csimp]` replaces `jacobiSym` (i.e. `J(· | ·)`) and `legendreSym` with
`jacobiSym.fastJacobiSym` at runtime.
-/

open scoped NumberTheorySymbols

/-- info: -1 -/
#guard_msgs in
#eval J(123 | 335)

/-- info: -1 -/
#guard_msgs in
#eval J(-2345 | 6789)

/-- info: 1 -/
#guard_msgs in
#eval J(-1 | 1655801)

/-- info: -1 -/
#guard_msgs in
#eval J(-102334155 | 165580141)

/-- info: -1 -/
#guard_msgs in
#eval J(58378362899022564339483801989973056405585914719065 |
  53974350278769849773003214636618718468638750007307)

instance prime_1000003 : Fact (Nat.Prime 1000003) := ⟨by norm_num1⟩
/-- info: -1 -/
#guard_msgs in
#eval @legendreSym 1000003 prime_1000003 7

-- Should replace `legendreSym` with `fastJacobiSym` without using `Fact p.Prime`
/--
info: 1
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
#eval! @legendreSym (2 ^ 11213 - 1) sorry 7

end Csimp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c050963d8139c5a1f6f8c010dfd16048972eed1cb655be26a23315c7e171c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantaff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
