# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pivot.Variant224dd6f64114bb0f3d0306ab00bf6ea6fcdba535afc7806ff44862d79e2f88d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36e927b70a22adec147bdeae229e330bd15cc50d` · SHA-256 `224dd6f64114bb0f3d0306ab00bf6ea6fcdba535afc7806ff44862d79e2f88d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.Pivot

Radiation role: research-boundary
BinaryMatrix spine: This module defines pivot-atlas scaffolding, not BinaryMatrix data.
Ontology: canonical_pivot
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract parameter space for the canonical analytic path. -/
structure CanonicalParameter where
  tag : String

/-- A local analytic window around a canonical parameter. -/
structure AnalyticWindow where
  center : CanonicalParameter
  label : String

/-- Abstract section complex attached to a local analytic window. -/
structure LocalSectionComplex where
  window : AnalyticWindow
  label : String

/-- Abstract local spectral object. Does not assert it realizes zeta zeroes. -/
structure LocalSpectralObject where
  window : AnalyticWindow
  label : String

/-- Abstract K-theory class attached to a local section complex. -/
structure LocalKIndexClass where
  complex : LocalSectionComplex
  label : String

/-- Contract-level nonvanishing witness. -/
structure LocalKIndexNonzero (I : LocalKIndexClass) : Prop where
  witness : True

/-- A local zero-free boundary/barrier certificate. -/
structure ZeroBarrierCertificate where
  window : AnalyticWindow
  label : String

/-- A local quasi-isomorphism/transport certificate. -/
structure LocalQuasiIsomorphism where
  source : LocalSectionComplex
  target : LocalSectionComplex
  label : String

/-- Optional local trace comparison. This is a contract, not a theorem. -/
structure LocalIndexSpectralTraceComparison where
  kIndex : LocalKIndexClass
  spectralObject : LocalSpectralObject
  label : String

/--
A canonical pivot is a local analytic chart carrying the data needed by the
pivot-atlas program. It does not assert that the local spectral object realizes
zeta zeroes, nor that local data descends globally.
-/
structure CanonicalPivot where
  basePoint : CanonicalParameter
  neighborhood : AnalyticWindow
  sectionComplex : LocalSectionComplex
  spectralObject : LocalSpectralObject
  kIndexClass : LocalKIndexClass
  zeroBarrier : ZeroBarrierCertificate
  localTransport : LocalQuasiIsomorphism
  indexNonzero : LocalKIndexNonzero kIndexClass

theorem CanonicalPivot.index_nonzero
    (P : CanonicalPivot) :
    LocalKIndexNonzero P.kIndexClass :=
  P.indexNonzero

theorem CanonicalPivot.has_zero_barrier
    (P : CanonicalPivot) :
    ∃ Z : ZeroBarrierCertificate, Z = P.zeroBarrier :=
  ⟨P.zeroBarrier, rfl⟩

theorem CanonicalPivot.has_local_transport
    (P : CanonicalPivot) :
    ∃ T : LocalQuasiIsomorphism, T = P.localTransport :=
  ⟨P.localTransport, rfl⟩

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0efda52cf74506d82708b963f8ee7ede14b2ff4791a777d61dc9a259581b3077 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pivot/Variant224dd6f64114bb0f3d0306ab00bf6ea6fcdba535afc7806ff44862d79e2f88d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
