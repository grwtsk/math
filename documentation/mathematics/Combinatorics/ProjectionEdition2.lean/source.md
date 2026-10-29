# Projection Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8e3c3475678314697e71bc333687c87044a990` · SHA-256 `adcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Taxonomy.Relation

/-!
# Derived navigation projections

A tree is a declared projection of the typed terrain. It never becomes the
canonical taxonomy merely because it is convenient to render.
-/

namespace Mathematics.Taxonomy

open Mathematics

inductive MultipleInheritancePolicy
  | choosePrimary
  | duplicateReferenceLeaves
  | preserveDag
  deriving DecidableEq, Inhabited

structure NavigationProjection where
  id : NavigationProjectionId
  rootDomain : DomainId
  selectedRelations : Finset TaxonomyRelationKind
  tieBreakPolicy : StableId
  multipleInheritance : MultipleInheritancePolicy
  omittedRelations : Finset TaxonomyRelationKind
  authority : HomeCandidateAuthority := .navigationOnly
  deriving DecidableEq

end Mathematics.Taxonomy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=514377220b5d851a7b3b2c44cd4bae667867dea861bdd33c83347aede2e2dfe5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Projection/Variantadcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
