# Phase I — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dad18532ead9cec46dc863a0058b545f00c7698a` · SHA-256 `38dce7437a6cec866e5420e6f6624d93c4873bbb5078938252305a3bed6c7463`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.Literature.Compendium

/-!
# Folder.CanonicalPath.Literature.PhaseI

Radiation role: research-boundary
BinaryMatrix spine: This module records Phase I literature guidance.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath
namespace Literature

def phaseIStrategySummary : String :=
  phaseICluster.strategySummary

def phaseISummary : PhaseSummary := {
  cluster := phaseICluster
  lowInnovationRoute :=
    "Use perfect complexes, determinant of cohomology, and family index propagation."
  theoremTarget :=
    "Componentwise nonzero families K-index from a certified anchor."
  doesNotProve := [
    "BSD",
    "modularity",
    "pointwise global central L-value nonvanishing"
  ]
}

end Literature
end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d3150864c19f9306bac0d0e92177f8abdce3c3a05326e340d3fabaf1b629256 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseI/Variant38dce7437a6cec866e5420e6f6624d93c4873bbb5078938252305a3bed6c7463.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
