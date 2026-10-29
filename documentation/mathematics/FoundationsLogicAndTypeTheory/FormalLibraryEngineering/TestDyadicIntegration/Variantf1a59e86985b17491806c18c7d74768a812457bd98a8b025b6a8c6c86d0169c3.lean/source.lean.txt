-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GAltExpr.Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GAltExpr.Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/TestDyadicIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Quick test: Dyadic integration on g_alt_expr (the Li2 integrand).
Compare computation time vs rational backend.
-/
import LeanCert.Validity.IntegrationDyadic
import LeanCert.Validity.Integration


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GAltExpr.Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496

open LeanCert.Core
open LeanCert.Engine
open LeanCert.Validity.IntegrationDyadic
open LeanCert.Validity.Integration

-- g_alt_expr = log(1-t²) / (log(1+t) · log(1-t))
def g_alt_expr : Expr :=
  Expr.mul
    (Expr.log (Expr.add (Expr.const 1)
      (Expr.neg (Expr.mul (Expr.var 0) (Expr.var 0)))))
    (Expr.inv
      (Expr.mul
        (Expr.log (Expr.add (Expr.const 1) (Expr.var 0)))
        (Expr.log (Expr.add (Expr.const 1) (Expr.neg (Expr.var 0))))))

def testInterval : IntervalRat := ⟨1/1000, 999/1000, by norm_num⟩

-- Test: Dyadic integration with small partition count
set_option profiler true in
#eval do
  let result := integratePartitionDyadic g_alt_expr testInterval 100 (by norm_num)
  IO.println s!"Dyadic (100 parts): [{result.lo}, {result.hi}]"
  IO.println s!"  width: {result.hi - result.lo}"

-- Test: Rational integration with small partition count (for comparison)
set_option profiler true in
#eval do
  match integratePartitionWithInv g_alt_expr testInterval 100 with
  | some result => IO.println s!"Rational (100 parts): [{result.lo}, {result.hi}]"
  | none => IO.println "Rational: failed"

-- Test: Dyadic with 3000 partitions (the Li2 count)
set_option profiler true in
#eval do
  let result := integratePartitionDyadic g_alt_expr testInterval 3000 (by norm_num)
  IO.println s!"Dyadic (3000 parts): [{result.lo}, {result.hi}]"
  IO.println s!"  width: {result.hi - result.lo}"

-- Test: The actual checker with default precision (-53)
set_option profiler true in
#eval checkIntegralLowerBoundDyadic g_alt_expr testInterval 3000 (103775/100000)

-- Test: Higher precision configs
def highPrec : DyadicConfig := { precision := -100, taylorDepth := 15 }
def veryHighPrec : DyadicConfig := { precision := -200, taylorDepth := 20 }

set_option profiler true in
#eval checkIntegralLowerBoundDyadic g_alt_expr testInterval 3000 (103775/100000) highPrec

set_option profiler true in
#eval checkIntegralLowerBoundDyadic g_alt_expr testInterval 3000 (103775/100000) veryHighPrec

set_option profiler true in
#eval checkIntegralUpperBoundDyadic g_alt_expr testInterval 3000 (104840/100000) veryHighPrec

-- Find optimal: precision -150, depth 15, 3000 parts
def medPrec : DyadicConfig := { precision := -150, taylorDepth := 15 }

set_option profiler true in
#eval checkIntegralLowerBoundDyadic g_alt_expr testInterval 3000 (103775/100000) medPrec
