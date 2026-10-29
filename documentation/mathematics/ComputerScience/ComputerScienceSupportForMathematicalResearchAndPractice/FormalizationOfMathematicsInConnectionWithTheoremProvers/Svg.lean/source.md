# Svg — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd2b6444e9ea6a8de8714fec9121e7e751f37cbb` · SHA-256 `f84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Data.Svg
import ProofWidgets.Component.HtmlDisplay

open ProofWidgets Svg

private def frame : Frame where
  xmin   := -2
  ymin   := -2
  xSize  := 4
  width  := 400
  height := 400

private def svg : Svg frame :=
  { elements :=
      #[line (0.,0.) (1.,0.) |>.setStroke (1.,0.,0.) (.px 2),
        line (1.,0.) (0.,1.) |>.setStroke (0.,1.,0.) (.px 2),
        line (0.,1.) (0.,0.) |>.setStroke (0.,0.,1.) (.px 2),
        circle (0.,0.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (0.,1.,1.) |>.setId "point1",
        circle (1.,0.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (1.,0.,1.) |>.setId "point2",
        circle (0.,1.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (1.,1.,0.) |>.setId "point3"] }

-- #eval toJson svg.toHtml

#html svg.toTHtml
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46095d0cc260e3462ca2a2f7f89736f8a943788535fa190f5dd40dad6f3245a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variantf84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
