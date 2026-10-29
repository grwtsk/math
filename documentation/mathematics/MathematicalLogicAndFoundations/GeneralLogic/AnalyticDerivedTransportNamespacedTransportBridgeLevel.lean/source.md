# Analytic Derived Transport Namespaced Transport Bridge Level — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0101dacde2a1fe582ba2e14ade84a251fc6aa79f` · SHA-256 `c6301cb6d0e2433873de07c8792be2745a5b1cf70d82a9a4369226566b113220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportBridgeLevel.Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransportBridgeLevel.Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce","mathematical_subject":"Foundations.Unclassified","original_sha256":"a61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/AnalyticDerivedTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.RodgersTaoEulerTransport

/-!
# Folder.CanonicalPath.AnalyticDerivedTransport

Radiation role: research-boundary
BinaryMatrix spine: This module stages analytic-to-derived transport, not BinaryMatrix heat.
Ontology: canonical.analytic_derived_transport
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportBridgeLevel.Varianta61cc9375a94127da4368c31916c865ebc801b6186103aa0d86d795775bbedce

namespace Folder
namespace CanonicalPath

inductive TransportBridgeLevel where
  | analyticFlow
  | determinantLineInvariant
  | fredholmIndexInvariant
  | chainMap
  | chainHomotopyEquivalence
  | quasiIsomorphism
  | derivedEquivalence
deriving DecidableEq, Repr

/--
A staged model of the missing analytic-to-derived bridge.

The Rodgers-Tao analytic flow is not treated as a quasi-isomorphism unless the
chain-level bridge fields are supplied.
-/
structure AnalyticDerivedTransportModel where
  level : TransportBridgeLevel
  sourceLabel : String
  analyticFlowSupplied : Prop
  chainMapConstructed : Prop
  quasiIsoConstructed : Prop
  quasiIsoConstructed_certified : quasiIsoConstructed
  eulerInvariant : Prop
  eulerInvariant_certified : eulerInvariant

theorem transport_model_euler_invariant_if_supplied
    (T : AnalyticDerivedTransportModel) :
    T.eulerInvariant :=
  T.eulerInvariant_certified

theorem transport_model_quasi_iso_if_supplied
    (T : AnalyticDerivedTransportModel) :
    T.quasiIsoConstructed :=
  T.quasiIsoConstructed_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ccd931c85b56cedd8c39ff31bdc5dd452277de62220d39e0162707a21d12d41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticDerivedTransport/Variant30a017b79a5c7c9cc2b8c94d93f398e2979635641bec526a2ebad4fda608d9ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
