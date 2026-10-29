# Crystalline Poincare Fortification — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b10c7b695807bd25efbd15724c3a0e3a997ea10c` · SHA-256 `c3346dfea74a2067c98cce8f4a11486afd3d06b999359b30f0234fdb31a12988`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.CrystallinePoincareFortification

/-!
# Folder.Theorem.CanonicalPath.CrystallinePoincareFortification

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Poincare fortification contract facts.
Ontology: proof.crystalline_poincare_fortification
Pivot role: topology
Zero typology: compatibility-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem crystalline_carrier_dimension_three_if_supplied
    (C : Folder.CanonicalPath.CrystallineHomotopyCarrier) :
    C.dimensionThree :=
  Folder.CanonicalPath.crystalline_carrier_dimension_three_if_supplied C

theorem crystalline_carrier_simply_connected_if_supplied
    (C : Folder.CanonicalPath.CrystallineHomotopyCarrier) :
    C.simplyConnected :=
  Folder.CanonicalPath.crystalline_carrier_simply_connected_if_supplied C

theorem crystalline_poincare_rigidity_if_supplied
    {C : Folder.CanonicalPath.CrystallineHomotopyCarrier}
    (P : Folder.CanonicalPath.CrystallinePoincareRigidityContract C) :
    P.equivalentToCrystallineSphere :=
  Folder.CanonicalPath.crystalline_poincare_rigidity_if_supplied P

theorem perelman_transfer_ricci_flow_like_if_supplied
    (P : Folder.CanonicalPath.PerelmanTransferContract) :
    P.ricciFlowLikePDE :=
  Folder.CanonicalPath.perelman_transfer_ricci_flow_like_if_supplied P

theorem atlas_quasi_iso_topology_descent_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.atlasPreservesCarrierTopology :=
  Folder.CanonicalPath.atlas_quasi_iso_topology_descent_if_supplied F

theorem poincare_fortification_prevents_topological_escape_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.preventsTopologicalEscape :=
  Folder.CanonicalPath.poincare_fortification_prevents_topological_escape_if_supplied F

theorem poincare_fortification_supports_fixed_point_compatibility_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.supportsFixedPointCompatibility :=
  Folder.CanonicalPath.poincare_fortification_supports_fixed_point_compatibility_if_supplied F

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e2ca6c829648ca24667615da57c56e27ed4b8578811616894f66137c27ebd14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallinePoincareFortification/Variantc3346dfea74a2067c98cce8f4a11486afd3d06b999359b30f0234fdb31a12988.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
