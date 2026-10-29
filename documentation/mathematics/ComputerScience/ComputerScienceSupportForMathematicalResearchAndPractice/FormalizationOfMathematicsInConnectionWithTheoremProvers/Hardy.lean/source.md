# Hardy — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `006ca8ef9ade2e2843365e7f6a6cc1fc7e7fcb65` · SHA-256 `e84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.OffLine

/-!
# Hardy-line evidence

Sign changes certify odd total multiplicity in an interval.  They do not
replace the two-dimensional strip count.
-/

namespace Mathematics.RHIsolation

inductive HardyIntervalDisposition
  | zeroFree
  | oddMultiplicityExists
  | uniqueSimpleZero
  | unresolved
deriving DecidableEq, Repr

structure HardySignChangeCertificate where
  interval : RealInterval
  totalMultiplicity : Nat
  totalMultiplicity_odd :
    Odd totalMultiplicity
  endpointSignsOpposite : Prop
  endpointSignsOppositeProof :
    endpointSignsOpposite

theorem hardy_signChange_gives_oddMultiplicity
    (certificate :
      HardySignChangeCertificate) :
    Odd certificate.totalMultiplicity :=
  certificate.totalMultiplicity_odd

structure HardyUniqueSimpleZeroCertificate where
  interval : RealInterval
  ordinate : ℝ
  ordinate_mem : interval.Contains ordinate
  hardyZero : Prop
  hardyZeroProof : hardyZero
  simple : Prop
  simpleProof : simple

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=903aa661cd7c1e061657868f27ef505ba626126e378a4932dca6e28396fc77b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hardy/Variante84302b3c9df3d08d36c37a5200ff1e8e46fd3d139dc935da38124fb3d07d8a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
