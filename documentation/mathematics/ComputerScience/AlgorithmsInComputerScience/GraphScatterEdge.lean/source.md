# Graph Scatter Edge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10997c7ee35752599ebd9ef83695b47a787ed95f` · SHA-256 `28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Scatter

namespace Color

structure ScatterEdge where
  sourceNamespace : String
  targetNamespace : String
  reason : String
deriving Repr, DecidableEq

structure ScatterGraph where
  rootNamespace : String
  edges : List ScatterEdge
deriving Repr, DecidableEq

def colorGraph : ScatterGraph :=
  { rootNamespace := "Color",
    edges := [
      { sourceNamespace := "Color", targetNamespace := "Color.Red", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Green", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Blue", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedGreen", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedBlue", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.GreenBlue", reason := "symmetric_mix" }
    ] }

theorem colorGraph_root : colorGraph.rootNamespace = "Color" := rfl

end Color
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2d2fbe5d7efffbee114f39e7367979d96153b1ae7f0dc45f2ba0d9d2fa48cc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variant28cc15c504d13bf0a29ce335dda9d8b6bf85048ed2795c2c87c048835d01c666.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
