-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantProjection.Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.InvariantProjection.Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"de0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/DiscrepancyTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic
import Mathematics.Prismatic.ArithmeticEnhancement

/-!
# Exact unnormalized discrepancy trace

This module does not infer a trace formula from a name or a schedule.  A trace
formula is an equality field whose left side is the actual unnormalized
discrepancy.  Its invariant part is supplied by an idempotent additive
projection and is removed exactly before spectral estimation.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantProjection.Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49

namespace Mathematics.AbelReynolds

open scoped BigOperators

universe u v w

/-- An additive idempotent projector onto the invariant channel. -/
structure InvariantProjection
    (Carrier : Type w) [AddCommGroup Carrier] where
  project : Carrier →+ Carrier
  idempotent : ∀ value, project (project value) = project value

/-- The three admitted sources of an exact trace identity. -/
inductive TraceFormulaKind
  | cohomological
  | selberg
  | automorphic
  deriving DecidableEq, Repr

/--
Authority for a trace identity.  The automorphic constructor is indexed by the
same arithmetic enhancement carried by the trace.
-/
inductive TraceFormulaAuthority
    (source : Mathematics.Prismatic.ArithmeticEnhancement.{u}) :
    TraceFormulaKind → Type (u + 1)
  | cohomological
      (claim : Prop) (certificate : claim) :
      TraceFormulaAuthority source .cohomological
  | selberg
      (claim : Prop) (certificate : claim) :
      TraceFormulaAuthority source .selberg
  | automorphic
      (claim : Prop)
      (certificate :
        Mathematics.Prismatic.AutomorphicCertificate source claim) :
      TraceFormulaAuthority source .automorphic

/--
An exact finite spectral trace formula for the unnormalized discrepancy.
Finiteness makes multiplicity and Jordan data separately certifiable in the
subsequent spectral-control layer.
-/
structure ExactDiscrepancyTrace
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] where
  arithmeticSource :
    Mathematics.Prismatic.ArithmeticEnhancement.{u}
  kind : TraceFormulaKind
  authority : TraceFormulaAuthority arithmeticSource kind
  discrepancy : Scale → Carrier
  invariantProjection : InvariantProjection Carrier
  spectralTerm : Scale → Spectrum → Carrier
  remainder : Scale → Carrier
  exact :
    ∀ scale,
      discrepancy scale =
        invariantProjection.project (discrepancy scale) +
          ((∑ spectral : Spectrum, spectralTerm scale spectral) +
            remainder scale)

namespace ExactDiscrepancyTrace

variable {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
  [Fintype Spectrum] [NormedAddCommGroup Carrier]

/-- The projected invariant contribution. -/
def invariantBias
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) : Carrier :=
  trace.invariantProjection.project (trace.discrepancy scale)

/-- The discrepancy after exact removal of the invariant bias. -/
def centeredDiscrepancy
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) : Carrier :=
  trace.discrepancy scale - trace.invariantBias scale

/-- Removing the invariant projection leaves exactly spectrum plus remainder. -/
theorem centered_eq_spectral_sum_add_remainder
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale := by
  change
    trace.discrepancy scale -
        trace.invariantProjection.project (trace.discrepancy scale) =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale
  calc
    trace.discrepancy scale -
          trace.invariantProjection.project (trace.discrepancy scale) =
        (trace.invariantProjection.project (trace.discrepancy scale) +
            ((∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
              trace.remainder scale)) -
          trace.invariantProjection.project (trace.discrepancy scale) :=
      congrArg
        (fun value =>
          value -
            trace.invariantProjection.project (trace.discrepancy scale))
        (trace.exact scale)
    _ =
        (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
          trace.remainder scale := by abel

/-- The centered discrepancy has zero invariant projection. -/
theorem project_centeredDiscrepancy_eq_zero
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier)
    (scale : Scale) :
    trace.invariantProjection.project
        (trace.centeredDiscrepancy scale) = 0 := by
  rw [centeredDiscrepancy, invariantBias, map_sub,
    trace.invariantProjection.idempotent, sub_self]

end ExactDiscrepancyTrace

end Mathematics.AbelReynolds
