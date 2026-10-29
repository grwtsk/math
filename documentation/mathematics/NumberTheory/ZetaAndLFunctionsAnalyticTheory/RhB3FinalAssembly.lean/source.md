# Rh B3 Final Assembly — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41d46ac1db10f9495ee5922569cd2d3b30e27e67` · SHA-256 `ca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.Assembly

#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.positive_candidate_eq
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_analytic_positive_real
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole

example :
    MeromorphicOn
      FormalResearch.RiemannHypothesis.Laplace.Continuation.continuedTransform
      {s : ℂ | 0 < s.re} :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic

example :
    FormalResearch.RiemannHypothesis.Laplace.Assembly.MeromorphicLaplacePoleObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1da577462831a54530f39f2dfbae1eda2f269134e787c4b0328a342001a554c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhB33FinalAssembly/Variantca22bb68293fcc1cc2739368b5ff2e591963c4c325770c5e222af6c96c4b1e34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
