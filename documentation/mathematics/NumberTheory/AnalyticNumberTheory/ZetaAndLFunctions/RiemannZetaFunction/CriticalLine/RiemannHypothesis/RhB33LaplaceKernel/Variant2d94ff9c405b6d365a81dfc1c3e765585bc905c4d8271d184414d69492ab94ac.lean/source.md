# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhB33LaplaceKernel.Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fba7f024dbe3aabc8cf50b3eec8984e4a186183f` · SHA-256 `2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.Kernel

#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.J_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JIntegralObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JRegularPartObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.KernelCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42f68687ef31c0285cb448c53c6a04ccfa47ff0f8f387ef545384f387d9a0858 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhB33LaplaceKernel/Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
