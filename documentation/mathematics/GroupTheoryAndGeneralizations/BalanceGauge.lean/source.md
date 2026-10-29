# Balance Gauge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9677bb9180c3b140713eaf6c0f6c2c46e06bcac6` · SHA-256 `0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.Balance

/-!
# Balance gauge equivalence

Gauge changes preserve the product of finite allocations.  Defect and trace
invariance require their own realization certificates.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol uOperator uTest

structure BalanceGauge
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (cut : Finset Prime) where
  factor : Prime → Symbol
  product_one :
    ∏ prime ∈ cut, factor prime = 1

def BalanceGauge.act
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {cut : Finset Prime}
    (gauge : BalanceGauge (Symbol := Symbol) cut)
    (allocation : Prime → Symbol) :
    Prime → Symbol :=
  fun prime =>
    gauge.factor prime * allocation prime

theorem BalanceGauge.product_act
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {cut : Finset Prime}
    (gauge : BalanceGauge (Symbol := Symbol) cut)
    (allocation : Prime → Symbol) :
    ∏ prime ∈ cut, gauge.act allocation prime =
      ∏ prime ∈ cut, allocation prime := by
  simp only [BalanceGauge.act]
  rw [Finset.prod_mul_distrib, gauge.product_one,
    one_mul]

structure BalanceGaugeInvariantDefect
    (model : OperatorModel)
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime] where
  defect :
    (cut : Finset Prime) →
      (Prime → Symbol) →
      model.Operator
  invariant :
    ∀ cut
      (gauge :
        BalanceGauge (Symbol := Symbol) cut)
      allocation,
      defect cut (gauge.act allocation) =
        defect cut allocation

structure BalanceGaugeInvariantTrace
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (Test : Type uTest) where
  trace :
    (cut : Finset Prime) →
      (Prime → Symbol) →
      Test → ℝ
  invariant :
    ∀ cut
      (gauge :
        BalanceGauge (Symbol := Symbol) cut)
      allocation test,
      trace cut (gauge.act allocation) test =
        trace cut allocation test

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=284e9f612ddea856ae4cca1522de01eb9c5eebc3e3e83f28e0afb8d0d19f1c88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
