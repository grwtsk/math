-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FeatureChannelAuthority.Variant630d17c49d22dc34432ba047cd9bb1d966283410246abd5853ee6db19edac220","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"630d17c49d22dc34432ba047cd9bb1d966283410246abd5853ee6db19edac220","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FeatureChannelAuthority.Variant630d17c49d22dc34432ba047cd9bb1d966283410246abd5853ee6db19edac220","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"630d17c49d22dc34432ba047cd9bb1d966283410246abd5853ee6db19edac220","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Kernel/Channel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Kernel.Feature
import MathDiscovery.Kernel.Id

/-!
# Authority-labelled kernel channels

Each channel is already a positive kernel and carries a nonnegative weight.
The authority tag is provenance metadata; numerical behavior never promotes
that metadata to theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FeatureChannelAuthority.Variant630d17c49d22dc34432ba047cd9bb1d966283410246abd5853ee6db19edac220

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u}

/-- Closed provenance classes for the first intrinsic Lean feature policy. -/
inductive FeatureChannelAuthority
  | elaboratedType
  | formalDependency
  | typeclassRequirement
  | declarationShape
  | proofTermStructure
  | documentation
  | contextualMetadata
  | externalSemanticEmbedding
  deriving DecidableEq, Repr

/-- One nonnegatively weighted, already-positive feature channel. -/
structure FeatureKernelChannel (Index : Type u) where
  id : ChannelId
  authority : FeatureChannelAuthority
  kernel : PositiveKernel Index
  weight : ℝ
  weight_nonnegative : 0 ≤ weight

/-- The positive kernel contributed by one weighted channel. -/
def FeatureKernelChannel.weighted
    (channel : FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := channel.weight • channel.kernel.matrix
  positiveSemidefinite :=
    channel.kernel.positiveSemidefinite.smul channel.weight_nonnegative

/-- A finite nonnegative sum of positive feature channels. -/
def featureChannelKernel
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := ∑ channel, (channels channel).weighted.matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun channel _ =>
    (channels channel).weighted.positiveSemidefinite

@[simp]
theorem featureChannelKernel_apply
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index)
    (i j : Index) :
    featureChannelKernel channels i j =
      ∑ channel, (channels channel).weight *
        (channels channel).kernel i j := by
  change (∑ channel, (channels channel).weighted.matrix) i j = _
  rw [Matrix.sum_apply]
  apply Finset.sum_congr rfl
  intro channel _
  simp [FeatureKernelChannel.weighted, Algebra.smul_def]

/-- A channel specified directly by a finite feature table. -/
structure FeatureChannelModel (Index : Type u) where
  id : ChannelId
  authority : FeatureChannelAuthority
  features : FiniteFeatureFamily Index
  weight : ℝ
  weight_nonnegative : 0 ≤ weight

/-- Compile a feature-table channel to its positive kernel channel. -/
def FeatureChannelModel.toKernelChannel
    (model : FeatureChannelModel Index) : FeatureKernelChannel Index where
  id := model.id
  authority := model.authority
  kernel := model.features.kernel
  weight := model.weight
  weight_nonnegative := model.weight_nonnegative

end MathDiscovery.Kernel
