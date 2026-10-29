# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Varianteb7268a0bfdbe8f3f3e5425984f47b3fd47a0ec0b8a50296529680c36e7495a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3f10922e7d90cd3487ac6a311cc0d53f0cef0c1` · SHA-256 `ef1b8b9feeed62b3345a3476e52366a05d5cb03b759cc1b3bf6bfd7092639cbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","mathematical_subject":"Foundations.Unclassified","original_sha256":"c2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Evaluation

/-!
# Propositional semantic relations

These predicates are transparent definitions over executable evaluation.
They carry no theorem authority by themselves.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Satisfaction under one valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- Truth under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- Truth under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- Falsity under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Mathematics.Boolean.Formula
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8365240af1f7a08575549d6390da01e5f0e0874ff8a72080b9aacb712ea14386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianteb7268a0bfdbe8f3f3e5425984f47b3fd47a0ec0b8a50296529680c36e7495a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
