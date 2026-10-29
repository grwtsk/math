# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CryptographicReduction.Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c1284184d45fcfecc5de5d520977dd55f102bd` · SHA-256 `9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import Mathematics.Resolution.AdversaryInvariant

/-!
# Oracle-to-concrete and query-to-work reduction

A query lower bound becomes a concrete work lower bound only through explicit,
proof-bearing translations.  This module retains both translations and proves
their composition.
-/

namespace Mathematics.Resolution

universe u v w x y

/--
A concrete attack is translated into an oracle algorithm.  Success and the
query overhead are both theorem fields.
-/
structure OracleToConcreteReduction
    (ConcreteAttack : Type u) (OracleAlgorithm : Type v) where
  translate : ConcreteAttack → OracleAlgorithm
  concreteSuccess : ConcreteAttack → Prop
  oracleSuccess : OracleAlgorithm → Prop
  primitiveEvaluations : ConcreteAttack → Nat
  oracleQueries : OracleAlgorithm → Nat
  queryOverhead : Nat
  preservesSuccess :
    ∀ attack,
      concreteSuccess attack →
        oracleSuccess (translate attack)
  queryBound :
    ∀ attack,
      oracleQueries (translate attack) ≤
        queryOverhead * primitiveEvaluations attack

/-- A proof-bearing translation `q(A) ≤ r(n) · W(A)`. -/
structure QueryToWorkTranslation
    {ConcreteAttack : Type u} {OracleAlgorithm : Type v}
    (reduction : OracleToConcreteReduction ConcreteAttack OracleAlgorithm) where
  work : ConcreteAttack → ℝ
  workNonnegative : ∀ attack, 0 ≤ work attack
  queriesPerWork : ℝ
  queriesPerWorkPositive : 0 < queriesPerWork
  queryToWorkBound :
    ∀ attack,
      (reduction.oracleQueries (reduction.translate attack) : ℝ) ≤
        queriesPerWork * work attack

/-- The complete model-specific lower-bound authority. -/
structure ConcreteHardnessCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate)
    (OracleAlgorithm : Type x) (ConcreteAttack : Type y) where
  oracle :
    AdversaryQueryLowerBound problem OracleAlgorithm
  reduction :
    OracleToConcreteReduction ConcreteAttack OracleAlgorithm
  sameQueryCount :
    reduction.oracleQueries = oracle.queryCount
  sameOracleSuccess :
    reduction.oracleSuccess = oracle.boundedError
  workTranslation :
    QueryToWorkTranslation reduction

namespace ConcreteHardnessCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {OracleAlgorithm : Type x} {ConcreteAttack : Type y}

/--
The adversary lower bound reaches concrete work only through both declared
translations.
-/
theorem work_lower_bound
    (certificate :
      ConcreteHardnessCertificate
        problem OracleAlgorithm ConcreteAttack)
    (attack : ConcreteAttack)
    (successful : certificate.reduction.concreteSuccess attack) :
    (certificate.oracle.constant *
        certificate.oracle.witness.ratio) /
        certificate.workTranslation.queriesPerWork ≤
      certificate.workTranslation.work attack := by
  have oracleSuccessful :
      certificate.oracle.boundedError
        (certificate.reduction.translate attack) := by
    rw [← certificate.sameOracleSuccess]
    exact certificate.reduction.preservesSuccess attack successful
  apply (div_le_iff₀'
    certificate.workTranslation.queriesPerWorkPositive).2
  calc
    certificate.oracle.constant *
          certificate.oracle.witness.ratio ≤
        (certificate.oracle.queryCount
            (certificate.reduction.translate attack) : ℝ) :=
      certificate.oracle.sound _ oracleSuccessful
    _ =
        (certificate.reduction.oracleQueries
            (certificate.reduction.translate attack) : ℝ) := by
      rw [certificate.sameQueryCount]
    _ ≤
        certificate.workTranslation.queriesPerWork *
          certificate.workTranslation.work attack :=
      certificate.workTranslation.queryToWorkBound attack

end ConcreteHardnessCertificate

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c86a9baa0e2755d0296d23b9105dc9bb49f8141f4c661773bcfd33c098f42f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
