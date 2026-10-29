# Euler Prime Divergence Index Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de6eda029315590be024cbc593c4f9ac4c13fd57` · SHA-256 `a4be9812911d457f20024f9fcf679079ee5fa051ecbbef1d5bbe6da73e94b81a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","mathematical_subject":"Computation.DataStructures","original_sha256":"906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/EulerPrimeDivergenceIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.EulerPrimeReciprocalDivergence
import Folder.Rebuild.Exposition.RealEulerProductIndex

/-!
# Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex

Exposition anchors for Euler's divergence of reciprocal primes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128

namespace Folder
namespace Rebuild
namespace Exposition

def harmonicSeriesDivergenceAnchor : ClassicalAnchor where
  shortName := "Harmonic divergence"
  paperOrBook := "Checked rebuild analytic number theory layer"
  theoremLabel := "harmonicPartial_unbounded"
  mathematicalContent :=
    "The harmonic partial sums are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAtOneAnchor : ClassicalAnchor where
  shortName := "Finite Euler product at one"
  paperOrBook := "Checked rebuild finite Euler-product layer"
  theoremLabel := "harmonicPartial_le_finiteHarmonicEulerProduct"
  mathematicalContent :=
    "Harmonic partial sums are bounded above by finite Euler products over primes up to N with cutoff N."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPrimeReciprocalDivergenceAnchor : ClassicalAnchor where
  shortName := "Euler reciprocal-prime divergence"
  paperOrBook := "Euler's finite-product argument"
  theoremLabel := "primeReciprocalPartial_unbounded"
  mathematicalContent :=
    "The partial sums of reciprocal primes are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def pntStrongerAsymptoticStillTargetAnchor : ClassicalAnchor where
  shortName := "Prime asymptotic still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Prime-counting asymptotics remain target-only and are not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zeroFreeLineStillTargetAnchor : ClassicalAnchor where
  shortName := "Boundary zero-free line still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZeroFreeLineTarget"
  mathematicalContent :=
    "The boundary zero-free theorem remains target-only and is not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def eulerPrimeDivergenceAnchors : List ClassicalAnchor :=
  [ harmonicSeriesDivergenceAnchor
  , finiteEulerProductAtOneAnchor
  , eulerPrimeReciprocalDivergenceAnchor
  , pntStrongerAsymptoticStillTargetAnchor
  , zeroFreeLineStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b20a87345a22fcbe97a59fe26a644ad7a8a32c1e4a9008795ef5dc3bfdf0685 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerPrimeDivergenceIndex/Variant80ec0203f94827ff03c42b4d82bde539b5ba54721a4b8d85f654b38dd43ed9e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
