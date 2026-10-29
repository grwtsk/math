# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RosserSchoenfeldZeta.Variant83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `733fbdaa91198d70626c50d8144baf9b07233c88` · SHA-256 `83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect
import PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions

blueprint_comment /--
\section{The zeta function bounds of Rosser and Schoenfeld}\label{rs-zeta-sec}
-/

blueprint_comment /--
In this section we formalize the zeta function bounds of Rosser and Schoenfeld.
-/

namespace RS
@[blueprint "RS_theorem_19"
  (title := "Rosser--Schoenfeld Theorem 19")
  (statement := /--
    One has a Riemann von Mangoldt estimate with parameters 0.137, 0.443, and 1.588.
  -/)]
theorem theorem_19 : riemannZeta.Riemann_vonMangoldt_bound 0.137 0.443 1.588 := by sorry
end RS
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dae2fe661c0ef948923b1482ee5f992b886921696b37b14b05b5e744400ffcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/RosserSchoenfeldZeta/Variant83aed3997c04bbee6272078fdbfd8235168fa96ccc319b296069dff5c976a5bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
