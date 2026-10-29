# Phase Splitting Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37d0067e43aa29db63c18e9e0a0e61171596d10a` · SHA-256 `395849ee0baf55204c67dbcf1d4e4e52ba57fb79243cb59a5e2347f61d9f474a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BocksteinSplitting.Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BocksteinSplitting.Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0","mathematical_subject":"Foundations.Unclassified","original_sha256":"351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/PhaseSplitting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.OrdinaryBockstein

/-!
# Chosen phase splitting

An abstract splitting may exist, but it is never canonical.  Product
coordinates require this separate certificate and cannot be obtained from
the unsplit Bockstein record alone.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BocksteinSplitting.Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0

namespace Mathematics.Homology

universe u v w

/-- A chosen homomorphic section of one Bockstein quotient. -/
structure BocksteinSplitting
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion) where
  lift : Torsion →+ Phase
  rightInverse :
    Function.RightInverse lift extension.bockstein
  choiceDigest : Digest
  splittingCertificate : ObjectAddress

namespace BocksteinSplitting

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    {extension : BocksteinExtension Torus Phase Torsion}
    (splitting : BocksteinSplitting extension)

/-- The selected torsion lift has exactly the requested finite phase. -/
theorem section_phase (torsion : Torsion) :
    extension.bockstein (splitting.lift torsion) = torsion :=
  splitting.rightInverse torsion

end BocksteinSplitting

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d5345b8a5317965fec9f6c10f79000fe95870eb3ba1b8936a71fdd751007f24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant09c418f2dc5c95ca842fb8ebda1d34d8b7fb027d0c18fbb409697bae77e7a4ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
