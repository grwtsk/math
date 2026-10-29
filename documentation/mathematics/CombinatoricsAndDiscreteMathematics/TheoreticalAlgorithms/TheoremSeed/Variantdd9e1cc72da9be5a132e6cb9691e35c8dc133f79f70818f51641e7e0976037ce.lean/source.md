# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremSeed.Variantdd9e1cc72da9be5a132e6cb9691e35c8dc133f79f70818f51641e7e0976037ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23d128f08b13e1e82cffb47167b90546d62adc59` · SHA-256 `dd9e1cc72da9be5a132e6cb9691e35c8dc133f79f70818f51641e7e0976037ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Comparisons

namespace Surface.Prismatic

universe u

/-!
What is formalized:
A first Prop-valued theorem-object seed for prismatic comparison infrastructure.

What is certificate-gated:
The Hodge-Tate comparison content is supplied by an explicit
`HodgeTateComparisonCertificate`.

What is not claimed:
This is not a proof of Bhatt--Scholze prismatic comparison theorems. It is a
typed theorem-facing object that downstream modules may require instead of
dashboard readiness booleans.

Primary mathematical source:
Bhatt--Scholze, Prisms and Prismatic Cohomology, comparison-theorem interface.
-/

/--
First major-proof seed for prismatic theorem infrastructure.

The object packages a bounded prism, a formal scheme, its prismatic cohomology
interface, and a Hodge-Tate comparison certificate.  Possessing such a seed is a
Prop-valued theorem-facing input; it does not make the current repository
comparison-ready by itself.
-/
structure HodgeTateTheoremSeed where
  p : Nat
  P : BoundedPrism.{u} p
  X : PadicFormalScheme
  C : PrismaticCohomology P X
  cohomologyAdmissible : C.admissibleForMajorProofInput
  hodgeTate : HodgeTateComparisonCertificate C
  hodgeTateCertified : hodgeTate.certifiedForMajorProof
  sourceBoundary : List String

/-- A Prop gate for downstream theorem-facing prismatic inputs. -/
def HasHodgeTateTheoremSeed : Prop :=
  Nonempty (HodgeTateTheoremSeed.{u})

/-- Current repository state: no Hodge-Tate theorem seed has been supplied. -/
def currentHodgeTateTheoremSeed? : Option (HodgeTateTheoremSeed.{u}) :=
  none

theorem currentHodgeTateTheoremSeed_absent :
    currentHodgeTateTheoremSeed?.isNone = true := by
  rfl

end Surface.Prismatic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7082f540a700033f5e270975aa0fa44ca4681f1a189675daf320754cc132b791 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremSeed/Variantdd9e1cc72da9be5a132e6cb9691e35c8dc133f79f70818f51641e7e0976037ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
