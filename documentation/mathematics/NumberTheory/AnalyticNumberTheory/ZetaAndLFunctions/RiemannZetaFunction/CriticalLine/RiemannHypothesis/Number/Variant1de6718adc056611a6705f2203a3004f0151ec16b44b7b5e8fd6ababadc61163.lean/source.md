# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Number.Variant1de6718adc056611a6705f2203a3004f0151ec16b44b7b5e8fd6ababadc61163

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b086007eaf7c594d82cb5b30f2d554bb224a40a3` · SHA-256 `1de6718adc056611a6705f2203a3004f0151ec16b44b7b5e8fd6ababadc61163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload
import Number.ArithmeticFunction
import Number.EulerProduct
import Number.Mobius

/-!
`Number` is deliberately independent of `Boolean`.

The bridge `Boolean → Number` lives in `Number.Bridge.Boolean`, but it is not
imported here. This keeps the arithmetic semantics layer usable without the
finite Boolean verifier substrate.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ddc91b448cbb4d481d1f59094769c8e857f4b62da69cc52e957e4aee9c2d111 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Number/Variant1de6718adc056611a6705f2203a3004f0151ec16b44b7b5e8fd6ababadc61163.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
