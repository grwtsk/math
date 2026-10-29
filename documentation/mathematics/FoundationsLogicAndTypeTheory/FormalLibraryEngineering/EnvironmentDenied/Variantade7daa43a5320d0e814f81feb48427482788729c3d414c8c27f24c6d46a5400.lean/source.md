# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvironmentDenied.Variantade7daa43a5320d0e814f81feb48427482788729c3d414c8c27f24c6d46a5400

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `299f95e87154d1b0af3868ee7046c38901c01c89` · SHA-256 `ade7daa43a5320d0e814f81feb48427482788729c3d414c8c27f24c6d46a5400`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Synthetic absence checks; no environment values are printed or retained. -/
import Lean

#eval do
  for name in ["OPENAI_API_KEY", "GH_TOKEN", "GITHUB_TOKEN", "AWS_SECRET_ACCESS_KEY", "SSH_AUTH_SOCK"] do
    if (← IO.getEnv name).isSome then
      throw (IO.userError "qualification inherited environment boundary failed")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ad8c3eb52e5b7252f9fbe2ea0f70e9dcf313ebbb42bfc116c8ff0c2276bdb92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvironmentDenied/Variantade7daa43a5320d0e814f81feb48427482788729c3d414c8c27f24c6d46a5400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
