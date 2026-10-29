# Complete source: GRWTSK.Algebra.GroupTheory.OrientationEquivariance.Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5260ec316e96572f25d6912f52f47e5936d87c70` · SHA-256 `f386d7272baf30b5c9062bfee70f7a8cd1b7d45550a28c37112bbc8b043aa8f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OrientationEquivariance.Variant9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OrientationEquivariance.Variant9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c","mathematical_subject":"Algebra.Groups","original_sha256":"9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Symmetry/OrientationEquivariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Refinement.Address

/-!
# Orientation-equivariant addressing

Tree addresses remain independent of symmetry.  This bridge is required only
when an automorphism is claimed to preserve the oriented binary index.
-/


namespace GRWTSK.Algebra.GroupTheory.OrientationEquivariance.Variant9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c

namespace Mathematics.BinaryFrontier.Symmetry

open Mathematics.BinaryFrontier.Refinement

universe uNode uGroup

structure OrientationEquivariance
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (addresses :
      TreeAddressRegistry tree)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Node] where
  addressAction :
    GroupCarrier →
      FrontierAddress →
      FrontierAddress
  addressActionIdentity :
    ∀ address,
      addressAction 1 address = address
  addressActionCompatible :
    ∀ left right address,
      addressAction (left * right) address =
        addressAction left
          (addressAction right address)
  nodeAddressEquivariant :
    ∀ automorphism node,
      addresses.address
          (automorphism • node) =
        addressAction automorphism
          (addresses.address node)
  depthInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .rawPath.length =
        address.rawPath.length
  orientedPathInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .orientedPath =
        address.orientedPath

theorem equalDepthIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address).equalDepthIndex =
      address.equalDepthIndex := by
  unfold FrontierAddress.equalDepthIndex
  rw [equivariance.orientedPathInvariant]

theorem selfDelimitingIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address)
          .selfDelimitingIndex =
      address.selfDelimitingIndex := by
  unfold FrontierAddress.selfDelimitingIndex
  rw [equivariance.depthInvariant,
    equalDepthIndex_invariant
      equivariance automorphism address]

end Mathematics.BinaryFrontier.Symmetry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c77736cd2db764d61b64eef54c02aaaf1862f22375dbb765e8e421155421762d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/OrientationEquivariance/Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
