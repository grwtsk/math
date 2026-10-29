# Id Digest Ref — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa2ab4a0c2b741e079518077a4343a3ef5564f19` · SHA-256 `b701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Composite ABI identity elements

These textual wrappers cross package boundaries without importing either
mathematical project.  They carry identity only; equality never manufactures
semantic equivalence or theorem authority.
-/

namespace URSM.Contracts

structure DigestRef where
  value : String
  deriving DecidableEq, Repr, Inhabited

def DigestRef.Valid (digest : DigestRef) : Prop :=
  digest.value.length = 64 ∧
    digest.value.toList.all (fun character ↦
      "0123456789abcdef".contains character) = true

structure ProjectKey where
  projectId : String
  revisionId : String
  snapshotDigest : DigestRef
  deriving DecidableEq, Repr

structure ObjectRef where
  objectId : String
  digest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09f93ac771041741b15b37d6f4b3f594c7deb517121b2c85ec32fd9e1f4428c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Id/Variantb701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
