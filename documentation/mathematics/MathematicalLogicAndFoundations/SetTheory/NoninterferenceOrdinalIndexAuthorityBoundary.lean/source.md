# Noninterference Ordinal Index Authority Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `995093fc5f04962558044bd531cb8ede1ca06173` · SHA-256 `cbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Resolver
import Mathematics.StratifiedBoundary.Presentation.Noninterference

/-!
# Ordinal authority noninterference

An ordinal address is position data only.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalIndexAuthorityBoundary where
  ordinalIndexRef : String
  persistentIdentityRef : String
  theoremAuthorityRef : String
  runtimeAuthority : Bool := false
  mutationAuthority : Bool := false
  theoremAuthorityCreated : Bool := false
  runtimeAuthority_exact : runtimeAuthority = false
  mutationAuthority_exact : mutationAuthority = false
  theoremAuthorityCreated_exact :
    theoremAuthorityCreated = false

theorem ordinal_index_does_not_create_authority
    (boundary : OrdinalIndexAuthorityBoundary) :
    boundary.runtimeAuthority = false ∧
      boundary.mutationAuthority = false ∧
      boundary.theoremAuthorityCreated = false :=
  ⟨boundary.runtimeAuthority_exact,
    boundary.mutationAuthority_exact,
    boundary.theoremAuthorityCreated_exact⟩

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe275124d0f3fcd982a93263f06a1c83d945b31464aed5e7f0a8c9856956799 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variantcbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
