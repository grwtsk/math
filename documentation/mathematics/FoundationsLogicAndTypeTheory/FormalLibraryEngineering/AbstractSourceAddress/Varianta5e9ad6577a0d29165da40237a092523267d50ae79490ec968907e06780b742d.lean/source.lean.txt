-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractSourceLayer.Varianted23cf8b7552e631e1ec85542fffbe256806d2f0db83cec68172010366005e94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed23cf8b7552e631e1ec85542fffbe256806d2f0db83cec68172010366005e94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AbstractSourceLayer.Varianted23cf8b7552e631e1ec85542fffbe256806d2f0db83cec68172010366005e94","mathematical_subject":"Foundations.Unclassified","original_sha256":"ed23cf8b7552e631e1ec85542fffbe256806d2f0db83cec68172010366005e94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SourceAnalysis/AbstractSourceAddress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Provenance
import Mathematics.SourceAnalysis.CommandElements.ByteRange

/-!
# Abstract source addresses

One address locates an occurrence in the source-to-semantics cascade.  The
layer is explicit, and the immutable source object remains present at every
derived layer.  An address is provenance; it is not semantic identity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractSourceLayer.Varianted23cf8b7552e631e1ec85542fffbe256806d2f0db83cec68172010366005e94

namespace Mathematics.SourceAnalysis

/-- Ordered strata in the reconstructible abstract source tree. -/
inductive AbstractSourceLayer
  | repositoryHistory
  | sourceFile
  | sourceBytes
  | comment
  | concreteSyntax
  | abstractSyntax
  | elaboratedTerm
  | kernelDeclaration
  | mathematicalPoint
  | proofDependency
  | blueprint
  | issue
  | dataset
  | countermodel
  | externalCertificate
  | generatedArtifact
  | transformedArtifact
  | reflectedPatch
  | modelProjection
  deriving DecidableEq, Repr, Inhabited

namespace AbstractSourceLayer

/-- Rank is a source-cascade coordinate, never theorem authority. -/
def rank : AbstractSourceLayer → Nat
  | .repositoryHistory => 0
  | .sourceFile => 1
  | .sourceBytes => 2
  | .comment => 3
  | .concreteSyntax => 4
  | .abstractSyntax => 5
  | .elaboratedTerm => 6
  | .kernelDeclaration => 7
  | .mathematicalPoint => 8
  | .proofDependency => 9
  | .blueprint
  | .issue
  | .dataset
  | .countermodel
  | .externalCertificate
  | .generatedArtifact => 10
  | .transformedArtifact => 11
  | .reflectedPatch => 12
  | .modelProjection => 13

end AbstractSourceLayer

/-- Exact source-relative position of one derived occurrence. -/
structure AbstractSourceAddress where
  addressId : StableId
  sourceObject : Ecosystem.SourceObjectAddress
  layer : AbstractSourceLayer
  parentAddressId : Option StableId
  byteRange : Option ByteRange
  nodeDigest : Digest
  derivationDigest : Digest
  deriving DecidableEq, Repr

/-- A source address cannot silently lose its immutable source coordinate. -/
def AbstractSourceAddress.SameSourceObject
    (left right : AbstractSourceAddress) : Prop :=
  left.sourceObject = right.sourceObject

/-- Equal address identifiers are not inferred from equal source spelling. -/
def AbstractSourceAddress.SameIdentity
    (left right : AbstractSourceAddress) : Prop :=
  left.addressId = right.addressId

end Mathematics.SourceAnalysis
