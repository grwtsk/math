-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GeometricCompensationFactor.Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.GeometricCompensationFactor.Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/GeometricPathBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.WeightedPathBudget
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Geometric path compensation

Uniform transport and compensation bounds produce the finite geometric
factor and its closed form.
-/


namespace GRWTSK.Algebra.GeometricCompensationFactor.Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess
open scoped BigOperators

universe uHilbert uTest

def geometricCompensationFactor
    (contraction : ℝ) : Nat → ℝ
  | 0 => 0
  | length + 1 =>
      1 + contraction ^ 2 *
        geometricCompensationFactor
          contraction length

theorem geometricCompensationFactor_nonnegative
    (contraction : ℝ)
    (length : Nat) :
    0 ≤ geometricCompensationFactor
      contraction length := by
  induction length with
  | zero =>
      exact le_rfl
  | succ length induction =>
      exact add_nonneg zero_le_one
        (mul_nonneg (sq_nonneg _) induction)

theorem geometricCompensationFactor_eq_sum
    (contraction : ℝ)
    (length : Nat) :
    geometricCompensationFactor
        contraction length =
      ∑ index ∈ Finset.range length,
        (contraction ^ 2) ^ index := by
  induction length with
  | zero =>
      rfl
  | succ length induction =>
      rw [geometricCompensationFactor,
        induction, geom_sum_succ]
      ring

theorem geometricCompensationFactor_closedForm
    (contraction : ℝ)
    (length : Nat)
    (nonunit :
      contraction ^ 2 ≠ 1) :
    geometricCompensationFactor
        contraction length =
      ((contraction ^ 2) ^ length - 1) /
        (contraction ^ 2 - 1) := by
  rw [geometricCompensationFactor_eq_sum,
    geom_sum_eq nonunit]

theorem weightedBudget_geometric_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (contraction epsilon : ℝ)
    (contraction_nonnegative :
      0 ≤ contraction)
    (epsilon_nonnegative :
      0 ≤ epsilon)
    (uniform :
      path.AllArcs
        (fun arc =>
          ‖system.transport arc‖ ≤
              contraction ∧
            certificate.budget arc ≤
              epsilon)) :
    weightedCompensationBudget
        certificate path ≤
      epsilon *
        geometricCompensationFactor
          contraction path.length := by
  induction path with
  | nil =>
      simp [weightedCompensationBudget,
        DeflectionPath.length,
        geometricCompensationFactor]
  | cons arc rest induction =>
      rcases uniform with
        ⟨⟨transportBound, budgetBound⟩,
          restUniform⟩
      have downstream :=
        induction restUniform
      have squareBound :
          ‖system.transport arc‖ ^ 2 ≤
            contraction ^ 2 := by
        nlinarith [norm_nonneg
          (system.transport arc)]
      have geometricNonnegative :=
        geometricCompensationFactor_nonnegative
          contraction rest.length
      have firstProduct :
          ‖system.transport arc‖ ^ 2 *
              weightedCompensationBudget
                certificate rest ≤
            ‖system.transport arc‖ ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) :=
        mul_le_mul_of_nonneg_left
          downstream (sq_nonneg _)
      have secondProduct :
          ‖system.transport arc‖ ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) ≤
            contraction ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) :=
        mul_le_mul_of_nonneg_right
          squareBound
          (mul_nonneg epsilon_nonnegative
            geometricNonnegative)
      calc
        weightedCompensationBudget
            certificate (.cons arc rest) ≤
          epsilon +
            contraction ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) := by
          unfold weightedCompensationBudget
          linarith
        _ =
          epsilon *
            geometricCompensationFactor
              contraction
              (DeflectionPath.length
                (.cons arc rest)) := by
          simp [DeflectionPath.length,
            geometricCompensationFactor]
          ring

theorem pathEnergy_geometric_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true))
    (contraction epsilon : ℝ)
    (contraction_nonnegative :
      0 ≤ contraction)
    (epsilon_nonnegative :
      0 ≤ epsilon)
    (uniform :
      path.AllArcs
        (fun arc =>
          ‖system.transport arc‖ ≤
              contraction ∧
            certificate.budget arc ≤
              epsilon)) :
    abs
        (system.packetEnergy target test -
          system.packetEnergy source test) ≤
      epsilon *
          geometricCompensationFactor
            contraction path.length *
        system.packet.packetNormSq
          source test :=
  le_trans
    (pathEnergy_weighted_compensation_bound
      system certificate path test safe)
    (mul_le_mul_of_nonneg_right
      (weightedBudget_geometric_bound
        certificate path contraction epsilon
        contraction_nonnegative
        epsilon_nonnegative uniform)
      (system.packet.packetNormSq_nonnegative
        source test))

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
