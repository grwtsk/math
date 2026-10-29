# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Phase.Variant32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2916de54551940b1c1f9c14f1c36446fdccc5684` · SHA-256 `32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Evidence-governed phase classification -/

namespace Mathematics.Orbit

inductive Status
  | finite (period : Nat)
  | denseCircle
  | denseTorus (dimension : Nat)
  | unresolved
  deriving DecidableEq, Repr

inductive PhaseEvidence
  | exactRational (numerator : Int) (denominator : Nat)
  | certifiedIrrational (certificate : CertificateId)
  | finitePrefix (samples : List Int)
  deriving DecidableEq, Repr

def classify : PhaseEvidence → Status
  | .exactRational _ denominator =>
      if denominator = 0 then .unresolved else .finite denominator
  | .certifiedIrrational _ => .denseCircle
  | .finitePrefix _ => .unresolved

@[simp] theorem finite_prefix_never_claims_irrationality
    (samples : List Int) :
    classify (.finitePrefix samples) = .unresolved := rfl

end Mathematics.Orbit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c35b2199bdffc3bfc36073721bacc1ea6733efd3638276c1cfa6dbcf96beff84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Phase/Variant32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
