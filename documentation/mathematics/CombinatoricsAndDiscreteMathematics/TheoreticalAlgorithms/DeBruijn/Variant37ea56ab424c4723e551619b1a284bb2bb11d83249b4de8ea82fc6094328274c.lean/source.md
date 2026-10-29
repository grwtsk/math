# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeBruijn.Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e047c7134b879b1fe64731d50df95e59fb5e70a6` · SHA-256 `37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite action-window coverage
-/

namespace Mathematics.GraphAccess

structure DeBruijnCoverageCertificate (Window : Type u) where
  alphabetRef : String
  order : Nat
  declaredWindows : List Window
  coveredWindows : List Window
  alphabetComplete : Prop
  alphabetCompleteEvidence : alphabetComplete
  covers :
    ∀ window, window ∈ declaredWindows → window ∈ coveredWindows

theorem debruijn_covers_every_action_window
    {Window : Type u}
    (certificate : DeBruijnCoverageCertificate Window)
    (window : Window)
    (declared : window ∈ certificate.declaredWindows) :
    window ∈ certificate.coveredWindows :=
  certificate.covers window declared

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92c26f53c37fd37d7bca3228c4d9633d3c557a41d75e49d7924c92f52b343729 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeBruijn/Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
