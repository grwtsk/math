# Limit Closure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88f62586e30bd4ae1876ba6bc02ae843350ae83a` · SHA-256 `f37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence

/-!
# Conditional limit square-root closure

Finite bounds pass to a declared limit only through norm compatibility and an
exact arithmetic correspondence.
-/

namespace Mathematics.StratifiedBoundary

structure LimitSquareRootClosure
    (CylinderTraceValue ArithmeticValue : Type u) where
  ordinalFamily : OrdinalFamilySquareRootCertificate
  arithmetic :
    LimitArithmeticCorrespondence
      CylinderTraceValue ArithmeticValue
  limitNormCompatibility : Prop
  limitNormCompatibilityProof : limitNormCompatibility
  finiteSquareRootNorm : Nat
  finiteSquareRootNormEvidence : Prop
  finiteSquareRootNormProof : finiteSquareRootNormEvidence

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f27ec1fb9c176da9765cd261be5025510748e480a378605804c83a6c7432efa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/LimitClosure/Variantf37c08eb527c3ff44bca58062cd54fed7d67a307c2ea2f7406c227032f0712bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
