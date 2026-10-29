# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UniversalSequence.Variant7df8bb61179ba4c6f962ccda93c54e001c7e227fa4a733548f64b1ee57013e78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8872d8d0fbd6458d151a6f83efae0735090873fc` · SHA-256 `ab18b2cd7c37b773dd2216587708af7d70c9a91a4872b5c7ea88837d88f2abdc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","mathematical_subject":"Computation.DataStructures","original_sha256":"de633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exploration/UniversalSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Declared-class universal exploration

Coverage is conditional on the supplied graph-class membership and port-label
certificate.  No cross-class universality is asserted.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad

namespace Mathematics.GraphAccess

structure UniversalSequenceCertificate (Node : Type u) where
  graphClassRef : String
  sequenceRevisionRef : String
  declaredNodes : List Node
  visitedNodes : List Node
  graphClassMembership : Prop
  portLabelsComplete : Prop
  graphClassMembershipEvidence : graphClassMembership
  portLabelsCompleteEvidence : portLabelsComplete
  covers :
    ∀ node, node ∈ declaredNodes → node ∈ visitedNodes

theorem universal_sequence_covers_declared_class
    {Node : Type u}
    (certificate : UniversalSequenceCertificate Node)
    (node : Node)
    (declared : node ∈ certificate.declaredNodes) :
    node ∈ certificate.visitedNodes :=
  certificate.covers node declared

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f84ea53412d17e350688c06dab8ccaac8fd3939eaa81d41eacc35823308261a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UniversalSequence/Variant7df8bb61179ba4c6f962ccda93c54e001c7e227fa4a733548f64b1ee57013e78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
