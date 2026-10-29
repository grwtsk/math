# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Place.Variant49260a636add04b3f2f474bcb0453d57acfccde32ab9a1b1001bef31732681d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aadaa2820e2301cde1a5614d2bf10e037d8c70d2` · SHA-256 `53434b9d081582f987e696a056c1ea69e510ef1fe685be4ae101d79132f86785`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanNeFinite.Variant3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArchimedeanNeFinite.Variant3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d","mathematical_subject":"Foundations.Unclassified","original_sha256":"3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/AdelicInfinityTopos/Place.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.Place

/-!
# Folder.Theorem.AdelicInfinityTopos.Place

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports adelic place separation facts.
Ontology: proof.adelic.place
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArchimedeanNeFinite.Variant3fe10983c0397a35555a1777dbf03516b507c2810a6eacb7a6254e783d45a62d

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace Place

theorem archimedean_ne_finite
    (p : Nat) :
    Folder.AdelicInfinityTopos.Place.archimedean ≠
      Folder.AdelicInfinityTopos.Place.finite p :=
  Folder.AdelicInfinityTopos.archimedean_ne_finite p

theorem bad_tmf_prime_is_finite
    {v : Folder.AdelicInfinityTopos.Place}
    (h : Folder.AdelicInfinityTopos.IsBadTMFPrime v) :
    ∃ p, v = Folder.AdelicInfinityTopos.Place.finite p :=
  Folder.AdelicInfinityTopos.bad_tmf_prime_is_finite h

end Place
end AdelicInfinityTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a589c941b3994c3dd727a395183de766300274ce53a2f2244a4d12e3acaf3530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Place/Variant49260a636add04b3f2f474bcb0453d57acfccde32ab9a1b1001bef31732681d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
