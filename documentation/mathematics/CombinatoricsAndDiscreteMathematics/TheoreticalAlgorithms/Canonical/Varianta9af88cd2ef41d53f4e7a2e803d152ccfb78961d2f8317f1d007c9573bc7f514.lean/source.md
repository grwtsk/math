# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Canonical.Varianta9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f3e3b1d3e058b936428b204ff4a5dd4d3c5227e` · SHA-256 `a9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Prune

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def idealPrunedTree : List String :=
  [ "formal/Think/Pipeline/Phases/PhaseTable.lean"
  , "formal/Think/Pipeline/Phases/PhaseSymmetry.lean"
  , "formal/Think/Pipeline/Phases/PhaseResidue.lean"
  , "formal/Think/Poles/Request.lean"
  , "formal/Think/Poles/Carrier.lean"
  , "formal/Think/Poles/Lowering.lean"
  , "formal/Think/Poles/Trace.lean"
  , "formal/Think/Poles/Compact.lean"
  , "formal/Think/Poles/Classifier.lean"
  , "formal/Think/Poles/Scheduler.lean"
  , "formal/Think/Poles/Cluster.lean"
  , "formal/Think/Poles/Boundary.lean"
  , "formal/Think/SourceTree/RadoProjected/Canonical.lean"
  ]

theorem idealPrunedTree_count :
    idealPrunedTree.length = 13 := by
  rfl

structure CompressionRule where
  originalPattern : String
  canonicalTarget : String
  action : String
deriving DecidableEq, Repr

def compressionRules : List CompressionRule :=
  [ { originalPattern := "Pipeline/Phases/PhaseNN_*.lean"
      canonicalTarget := "Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { originalPattern := "Poles/*Pole/*.lean"
      canonicalTarget := "Poles/<Family>.lean"
      action := "merge family" }
  , { originalPattern := "ResearchSurvey/<topic>.lean"
      canonicalTarget := "ResearchSurvey/Corpus.lean"
      action := "convert to SurveyEntry" }
  , { originalPattern := "Think/FiniteWitnessResidue/Tests/*Smoke.lean"
      canonicalTarget := "Think/FiniteWitnessResidue/Tests/Smoke.lean"
      action := "merge smoke suites" }
  ]

theorem compressionRules_count :
    compressionRules.length = 4 := by
  rfl

end Think.RadoProjectedModularHeatflow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2feeaccf90045220b6a7dd027f5c67ff70feb16868a46dc422b4dfe007fe196a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Canonical/Varianta9af88cd2ef41d53f4e7a2e803d152ccfb78961d2f8317f1d007c9573bc7f514.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
