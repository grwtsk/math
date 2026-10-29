# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BalanceGauge.Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39c3a45e4ff7f8cff730f33bacfdae80ae633d11` · SHA-256 `4b1f70147c3ca502393510e3356d37db9ad7423807a8552420f432fb91c40b61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BalanceGauge.Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BalanceGauge.Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/BalanceGauge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.Balance

/-!
# Balance gauge equivalence

Gauge changes preserve the product of finite allocations.  Defect and trace
invariance require their own realization certificates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BalanceGauge.Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01a8142778148da137d816d3360f2a417996fb13d88ae20cf18b5d62d8737fbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
