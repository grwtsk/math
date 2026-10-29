# Publication Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5ccf5ec575e50fc94dd94b618b05211e05c27d6` · SHA-256 `f6bd5d4442b82e6399dcdedca0097bd315b758861f23bb0d10fe3ec75c68ceb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.PublicationBoundary

/-!
# Folder.Theorem.Presentation.PublicationBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes publication-boundary facts for generated LaTeX artifacts.
Ontology: proof.presentation.publication_boundary
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem lean_formal_latex_not_conventional_manuscript :
    Folder.Presentation.leanFormalLatexPublicationBoundary.notConventionalManuscript :=
  Folder.Presentation.lean_formal_latex_not_conventional_manuscript

theorem lean_formal_latex_not_proof_of_rh :
    Folder.Presentation.leanFormalLatexPublicationBoundary.notProofOfRH :=
  Folder.Presentation.lean_formal_latex_not_proof_of_rh

theorem lean_formal_latex_source_lean_authoritative :
    Folder.Presentation.leanFormalLatexPublicationBoundary.sourceLeanAuthoritative :=
  Folder.Presentation.lean_formal_latex_source_lean_authoritative

theorem generated_declaration_atlas_ne_conventional_manuscript :
    Folder.Presentation.PresentationArtifactKind.generatedDeclarationAtlas ≠
      Folder.Presentation.PresentationArtifactKind.conventionalMathematicalManuscript :=
  Folder.Presentation.generated_declaration_atlas_ne_conventional_manuscript

end Presentation
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe68f6cf90b45e59021ecaa1b8d9bac80abb3d4351128733fa54f800c355d09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicationBoundary/Variantf6bd5d4442b82e6399dcdedca0097bd315b758861f23bb0d10fe3ec75c68ceb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
