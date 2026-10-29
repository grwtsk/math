-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.StoredSourceObject.Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.StoredSourceObject.Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/RigidifierStore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.RigidifierRouter

/-!
# Immutable object and compiler proxies

Addresses and compile keys are typed separately from logical route keys.
Serialized digests are integrity/cache locators; no theorem claims that a
cryptographic hash is an injective mathematical encoding.
-/


namespace GRWTSK.Algebra.LinearAlgebra.StoredSourceObject.Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326

namespace Mathematics.Projection

structure StoredSourceObject
    (sortCount neighborhoodCount : Nat) where
  payload : SourceLabelObject sortCount neighborhoodCount
  payloadDigest : Digest
  canonicalEnvelopeDigest : Digest
  payloadDigestValid : payloadDigest.Valid
  canonicalEnvelopeDigestValid : canonicalEnvelopeDigest.Valid
  certifiedAddressOf :
    SourceLabelObject sortCount neighborhoodCount →
      Digest → Digest → ObjectAddress
  address : ObjectAddress
  addressBinding :
    address =
      certifiedAddressOf
        payload payloadDigest canonicalEnvelopeDigest
  addressCertificate : ObjectAddress
  addressCertificatePredicate :
    ObjectAddress → ObjectAddress → Digest → Digest → Prop
  addressCertificateProof :
    addressCertificatePredicate
      addressCertificate address payloadDigest
      canonicalEnvelopeDigest

/-- Exact dictionary that gives every module bit its meaning in one epoch. -/
structure DependencyBitfieldBasis (moduleCount : Nat) where
  basisEpoch : Digest
  dependencyGraphDigest : Digest
  basisEpochValid : basisEpoch.Valid
  dependencyGraphDigestValid : dependencyGraphDigest.Valid
  moduleNameAt : Fin moduleCount → String
  moduleAt : Fin moduleCount → ModuleKey
  moduleKeyInjective : Function.Injective moduleAt
  certifiedAddressOf :
    Digest →
      Digest →
      (Fin moduleCount → String) →
      (Fin moduleCount → ModuleKey) →
      ObjectAddress
  objectAddress : ObjectAddress
  objectAddressBinding :
    objectAddress =
      certifiedAddressOf
        basisEpoch dependencyGraphDigest moduleNameAt moduleAt
  addressCertificate : ObjectAddress
  addressCertificatePredicate :
    ObjectAddress → ObjectAddress → Digest → Digest → Prop
  addressCertificateProof :
    addressCertificatePredicate
      addressCertificate objectAddress basisEpoch
      dependencyGraphDigest

/-- A dependency set whose basis and certification cannot be detached. -/
structure CertifiedDependencyBitfield
    {moduleCount : Nat}
    (basis : DependencyBitfieldBasis moduleCount) where
  bits : BitVec moduleCount
  basisEpoch : Digest
  dependencyGraphDigest : Digest
  basisObjectAddress : ObjectAddress
  basisEpochBinding : basisEpoch = basis.basisEpoch
  dependencyGraphBinding :
    dependencyGraphDigest = basis.dependencyGraphDigest
  basisObjectBinding : basisObjectAddress = basis.objectAddress
  certificate : ObjectAddress
  certificatePredicate :
    ObjectAddress →
      BitVec moduleCount →
      ObjectAddress →
      Digest →
      Digest →
      Prop
  certificateProof :
    certificatePredicate
      certificate bits basisObjectAddress basisEpoch
      dependencyGraphDigest

/--
Persisted kernel-accepted compiler proxy. The opaque `moduleKey` routes to this
object; the object itself carries the semantic module name and exact bitfield
basis.
-/
structure CompilerProxy (moduleCount : Nat) where
  moduleKey : ModuleKey
  sourceRouteKey : Option RigidKey
  certifiedProxyAddressOf :
    ModuleKey → CompileKey → ObjectAddress
  objectAddress : ObjectAddress
  moduleName : String
  canonicalSourcePath : String
  compileKey : CompileKey
  objectAddressBinding :
    objectAddress = certifiedProxyAddressOf moduleKey compileKey
  sourceBlobAddress : ObjectAddress
  sourceCertificateObjectAddress : Option ObjectAddress
  dependencyGraphDigest : Digest
  dependencyGraphDigestValid : dependencyGraphDigest.Valid
  dependencyBasis : DependencyBitfieldBasis moduleCount
  dependencyGraphBinding :
    dependencyGraphDigest =
      dependencyBasis.dependencyGraphDigest
  directDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  transitiveDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  reverseDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  oleanBlobAddress : ObjectAddress
  oleanDigest : Digest
  oleanDigestValid : oleanDigest.Valid
  kernelEnvironmentDigest : Digest
  kernelEnvironmentDigestValid : kernelEnvironmentDigest.Valid
  kernelReceiptObjectAddress : ObjectAddress
  originalAcceptedProxyObjectAddress : ObjectAddress
  kernelAccepted : Bool
  kernelAcceptedProof : kernelAccepted = true
  kernelAcceptancePredicate :
    ObjectAddress →
      ObjectAddress →
      CompileKey →
      Digest →
      Prop
  kernelAcceptanceProof :
    kernelAcceptancePredicate
      kernelReceiptObjectAddress oleanBlobAddress compileKey
      kernelEnvironmentDigest

/--
Reuse is authorized only by exact compile-key equality and an accepted prior
proxy.  Dependency bitfields schedule work; they do not replace Lean imports.
-/
def CompilerProxy.reusable
    {moduleCount : Nat}
    (previous : CompilerProxy moduleCount)
    (requested : CompileKey) : Prop :=
  previous.compileKey = requested ∧ previous.kernelAccepted = true

end Mathematics.Projection
