# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConcentrationExclusion.Varianta3f5365b799adc8d5ee3fab1cb11526a823034a1fc3a6f5ed5724124062ffda3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9be4a1cb2f3ccf42843bb627c7777a9cafda7683` · SHA-256 `a3f5365b799adc8d5ee3fab1cb11526a823034a1fc3a6f5ed5724124062ffda3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.YangMills.ConcentrationExclusion

Radiation role: research-boundary
BinaryMatrix spine: This module records Yang-Mills concentration-exclusion contracts.
Ontology: yang_mills_concentration_obstruction
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace YangMills

structure GaugeFieldConfiguration where
  label : String

structure TubeVolumeEstimatePackage where
  configuration : GaugeFieldConfiguration
  kakeyaStyleEstimateLabel : String
  excludesDegenerateTubeConcentration : Prop
  excludesDegenerateTubeConcentration_certified :
    excludesDegenerateTubeConcentration
  sourceLabel : String

theorem ym_tube_concentration_excluded_if_supplied
    (T : TubeVolumeEstimatePackage) :
    T.excludesDegenerateTubeConcentration :=
  T.excludesDegenerateTubeConcentration_certified

end YangMills
end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eace8510ed405ad2afe6ba230c924e00842313b4b4c3d63c5e30ee021aefe94a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConcentrationExclusion/Varianta3f5365b799adc8d5ee3fab1cb11526a823034a1fc3a6f5ed5724124062ffda3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
