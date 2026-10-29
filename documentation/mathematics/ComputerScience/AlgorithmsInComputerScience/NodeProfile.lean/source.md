# Node Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65be881a5338b197cca9a8a8ca7e20052aa9d83` · SHA-256 `42380e96d86dc388674051ba32bd61aa60ab3038a9ae12d0ed7b7df01e3e2e78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Mathematics.SemiLocalDefect.Presentation

structure NodeProfile where
  nodeRef : String
  capacityRef : String
  openObligationRefs : List String
  presentationRef : String
  authoritativeEffect : Bool := false

end Mathematics.SemiLocalDefect.Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b8ef80d52265645586515cf16bb4eac9067dd9c327dd8808e633740ba139b42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodeProfile/Variant42380e96d86dc388674051ba32bd61aa60ab3038a9ae12d0ed7b7df01e3e2e78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
