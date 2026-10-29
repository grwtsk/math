-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MultipleInheritancePolicy.Variantadcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MultipleInheritancePolicy.Variantadcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"adcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Taxonomy/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.Relation

/-!
# Derived navigation projections

A tree is a declared projection of the typed terrain. It never becomes the
canonical taxonomy merely because it is convenient to render.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MultipleInheritancePolicy.Variantadcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9

namespace Mathematics.Taxonomy

open Mathematics

inductive MultipleInheritancePolicy
  | choosePrimary
  | duplicateReferenceLeaves
  | preserveDag
  deriving DecidableEq, Inhabited

structure NavigationProjection where
  id : NavigationProjectionId
  rootDomain : DomainId
  selectedRelations : Finset TaxonomyRelationKind
  tieBreakPolicy : StableId
  multipleInheritance : MultipleInheritancePolicy
  omittedRelations : Finset TaxonomyRelationKind
  authority : HomeCandidateAuthority := .navigationOnly
  deriving DecidableEq

end Mathematics.Taxonomy
