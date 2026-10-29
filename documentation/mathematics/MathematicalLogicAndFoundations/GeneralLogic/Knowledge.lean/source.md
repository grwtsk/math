# Knowledge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8e1640652d51990109bb165fd16bf40a2f200cf` · SHA-256 `d9d8477f10f611a22d175ca8e835ebae5ab7f6a2e4987466067ef284a9aee1b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.Layers

namespace Think.Logic.MathlibEcosystem

structure KnowledgeTopology
    (C : Type u) [CategoryTheory.Category.{v} C] where
  J : CategoryTheory.GrothendieckTopology C
  siteHash : String
  topologyHash : String
  closedSieveHeytingHash : String
  sheafificationReceiptHash : String
  claimBearing : Bool

structure KnowledgeSheaf
    (C : Type u) [CategoryTheory.Category.{v} C]
    (K : KnowledgeTopology C) where
  sheafHash : String
  localSectionHash : String
  gluingReceiptHash : String
  classifierOmegaAsClosedSieveHash : String
  usesBooleanOmega : Bool
  claimBearing : Bool

def KnowledgeSheaf.omegaIsIntuitionistic
    {C : Type u} [CategoryTheory.Category.{v} C]
    {K : KnowledgeTopology C}
    (S : KnowledgeSheaf C K) : Prop :=
  S.usesBooleanOmega = false

theorem knowledge_omega_not_boolean_if_intuitionistic
    {C : Type u} [CategoryTheory.Category.{v} C]
    {K : KnowledgeTopology C}
    (S : KnowledgeSheaf C K) :
    S.omegaIsIntuitionistic → S.usesBooleanOmega = false :=
by
  intro h
  exact h

end Think.Logic.MathlibEcosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bef3aa70adbeb2b97a4f58cddae2dc2201964afe32f0f2b91a4025047c6bc35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Knowledge/Variantd9d8477f10f611a22d175ca8e835ebae5ab7f6a2e4987466067ef284a9aee1b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
