# Stratified Node — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d6f0b75ef2b953cdfd499f0e2f59d2a483384f7` · SHA-256 `b72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Stratified presentation node
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedPresentationNode where
  nodeId : String
  persistentIdentity : String
  finiteCutRef : String
  predecessorCutRef : Option String
  ordinalProfileRef : String
  normalizedStratumRef : String
  localRank : Option Nat
  ordinalIndex : Option StratifiedFrontierIndex
  displayedApproximant : Option Nat
  unresolvedLimitObligationRefs : List String
  noRuntimeEnumerationNotice : Bool := true
  noRuntimeEnumerationNotice_exact :
    noRuntimeEnumerationNotice = true

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=411a075256d5fc424c2c0f973e4be0d2d6948f3fbd0b70b2b379bf387232e9bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StratifiedNode/Variantb72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
