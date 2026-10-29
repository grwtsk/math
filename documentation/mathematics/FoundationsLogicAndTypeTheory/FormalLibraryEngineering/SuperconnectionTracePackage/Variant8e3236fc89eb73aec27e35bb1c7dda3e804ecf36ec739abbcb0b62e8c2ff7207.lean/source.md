# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuperconnectionTracePackage.Variant8e3236fc89eb73aec27e35bb1c7dda3e804ecf36ec739abbcb0b62e8c2ff7207

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d07571498d49366f8a238472ae72f8ed8478651` · SHA-256 `8e3236fc89eb73aec27e35bb1c7dda3e804ecf36ec739abbcb0b62e8c2ff7207`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.SuperconnectionTracePackage

Radiation role: research-boundary
BinaryMatrix spine: This module records superconnection trace packages.
Ontology: canonical.trace_realization
Pivot role: spectral
Zero typology: trace
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure SuperconnectionTracePackage where
  FamilyData : Type
  SuperconnectionData : Type
  heatKernelData : Type
  chernCharacterRepresentative : Type
  supertraceFormula : Prop
  supertraceFormula_certified : supertraceFormula
  familyIndexCompatibility : Prop
  familyIndexCompatibility_certified : familyIndexCompatibility
  sourceLabel : String

theorem superconnection_trace_formula_if_supplied
    (S : SuperconnectionTracePackage) :
    S.supertraceFormula :=
  S.supertraceFormula_certified

theorem superconnection_family_index_compatible
    (S : SuperconnectionTracePackage) :
    S.familyIndexCompatibility :=
  S.familyIndexCompatibility_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3532e2f826421206a3f66b0e07b25a912a4d72719b14c71c0f9705f2bc73234 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuperconnectionTracePackage/Variant8e3236fc89eb73aec27e35bb1c7dda3e804ecf36ec739abbcb0b62e8c2ff7207.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
