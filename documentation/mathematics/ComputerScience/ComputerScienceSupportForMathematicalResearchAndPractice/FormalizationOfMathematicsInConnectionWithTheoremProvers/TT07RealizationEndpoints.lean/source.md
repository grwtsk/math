# TT07 Realization Endpoints — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9ba6ea646535bdfe76bb954e2360c408d5b8a51` · SHA-256 `f0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Graph

universe uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/-- A realization record retains both exact materialized endpoint equations. -/
theorem tt07_realizationEndpoints
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {contract : RealizationContract soundness materializedGraph}
    {source target : Coordinate}
    {evaluation : SieveEvaluation procedure source target}
    {witness : SieveWitness soundness evaluation}
    (record : RealizationRecord contract evaluation witness) :
    materializedGraph.source record.occurrence.edge = source ∧
      materializedGraph.target record.occurrence.edge = target :=
  ⟨record.occurrence.sourceEquation, record.occurrence.targetEquation⟩

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41b0bf19977b19bc3640fb2bf8ecaf73081685a3d81b1405d2626e178a3bd7b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT07RealizationEndpoints/Variantf0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
