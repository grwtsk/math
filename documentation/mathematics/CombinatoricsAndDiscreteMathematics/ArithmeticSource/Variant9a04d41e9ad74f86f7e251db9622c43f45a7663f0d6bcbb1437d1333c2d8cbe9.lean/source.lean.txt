-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSource.Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ArithmeticSource.Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ArithmeticSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.DiscrepancyTrace
import Mathematics.Prismatic.ArithmeticEnhancement

/-!
# Canonical arithmetic source and reduced channel

Arithmetic quotient, level, Hecke, and local--global data are present before
any automorphic claim.  The reduced source is obtained from an explicit
idempotent invariant projector.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSource.Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f

namespace Mathematics.MobiusOntology

universe u v w

abbrev ArithmeticEnhancement :=
  Mathematics.Prismatic.ArithmeticEnhancement

structure ArithmeticSource
    (Object : Type u) (Embedding : Type v) (Coefficient : Type w) where
  object : Object
  embeddings : Finset Embedding
  permutationValue : Embedding → Coefficient
  enhancement : ArithmeticEnhancement
  constructionLaw : Prop
  constructionLawProof : constructionLaw

structure ReducedArithmeticSource
    (Carrier : Type u) [AddCommGroup Carrier] where
  carrier : Carrier
  invariantProjection :
    Mathematics.AbelReynolds.InvariantProjection Carrier

namespace ReducedArithmeticSource

def invariant
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.invariantProjection.project source.carrier

def reduced
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) : Carrier :=
  source.carrier - source.invariant

theorem invariant_reduced_eq_zero
    {Carrier : Type u} [AddCommGroup Carrier]
    (source : ReducedArithmeticSource Carrier) :
    source.invariantProjection.project source.reduced = 0 := by
  rw [reduced, invariant, map_sub,
    source.invariantProjection.idempotent, sub_self]

end ReducedArithmeticSource

end Mathematics.MobiusOntology
