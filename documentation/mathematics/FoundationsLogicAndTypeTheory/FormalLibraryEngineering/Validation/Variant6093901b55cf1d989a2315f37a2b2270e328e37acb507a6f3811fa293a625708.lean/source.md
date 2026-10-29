# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `176b8c8412bf8b27139c9ad21507e9da81c6a070` · SHA-256 `6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.SourceAnalysis.Invariant
import MathDiscovery.Atom.Validation

/-! # Source-analysis completion certificate -/

namespace MathDiscovery.SourceAnalysis

open MathDiscovery

structure ValidationCertificate where
  commandCoverage : Digest
  alignmentCoverage : Digest
  contextCoverage : Digest
  witnessCoverage : Digest
  reconstructionDigest : Digest
  unresolvedCount : Nat
  valid : Bool
  deriving DecidableEq, Repr

def ValidationCertificate.Valid (certificate : ValidationCertificate) : Prop :=
  certificate.commandCoverage.Valid ∧ certificate.alignmentCoverage.Valid ∧
    certificate.contextCoverage.Valid ∧ certificate.witnessCoverage.Valid ∧
    certificate.reconstructionDigest.Valid ∧ certificate.unresolvedCount = 0 ∧
    certificate.valid = true

end MathDiscovery.SourceAnalysis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58c319c776af189dd3fc3d37645587557ad479f29ed284c9a8796ad65284a9ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
