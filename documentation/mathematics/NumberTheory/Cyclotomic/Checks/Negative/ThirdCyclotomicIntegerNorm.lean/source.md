# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Negative.ThirdCyclotomicIntegerNorm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a306bcfe194520f1aa5701c87745b1dfbca4e52e` · SHA-256 `6b6c3a2a04073e115804436139074514d7abb337ab0752d688e9e2cddf95d177`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- The accepted positive module proves norm_O((2))=4 and norm_Z((2))=2,
and their genuine inequality; the integer value cannot be assigned to the O ideal. -/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicIdeals
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
noncomputable section

-- Intended rejection: the actual degree-two ideal norm theorem proves 4, not the integer value 2.
example : Ideal.absNorm (Ideal.span ({(2:O)} : Set O))=2 :=
  principal_two_absNorm

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be42349fe3fbe93deed17433dc87caf199067a697e50cf8d2cc3e1fddcbdae73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicIntegerNorm.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
