# Export Quote — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `484ca8d7efe995ff28370abcc9d8b703f98475d0` · SHA-256 `31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Invariants

/-! # Deterministic formal manifest. -/

namespace URSM.Composite

private def quote (value : String) : String :=
  "\"" ++ value ++ "\""

private def stringArray (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map quote) ++ "]"

private def edgeJson (edge : Nat × Nat) : String :=
  "[" ++ toString edge.1 ++ "," ++ toString edge.2 ++ "]"

private def edgeArray (edges : List (Nat × Nat)) : String :=
  "[" ++ String.intercalate "," (edges.map edgeJson) ++ "]"

private def projectJson (project : ProjectDescriptor) : String :=
  "{" ++
    "\"compiledRoot\":" ++ quote project.compiledRoot ++ "," ++
    "\"packageName\":" ++ quote project.packageName ++ "," ++
    "\"projectId\":" ++ quote project.projectId ++ "," ++
    "\"publicRoot\":" ++ quote project.publicRoot ++ "," ++
    "\"root\":" ++ quote project.root ++ "," ++
    "\"sourcePaths\":" ++ stringArray project.sourcePaths ++
  "}"

def formalManifestJson : String :=
  "{" ++
    "\"conflicts\":" ++ edgeArray conflictEdges ++ "," ++
    "\"conflictValidity\":" ++ edgeArray conflictValidityEdges ++ "," ++
    "\"exactBridges\":" ++ edgeArray exactBridgeEdges ++ "," ++
    "\"formalCertificateRoot\":" ++
      quote phaseOneStaticComposite.formalCertificateRoot ++ "," ++
    "\"imports\":" ++ edgeArray importEdges ++ "," ++
    "\"logicalSide\":" ++ toString projectCount ++ "," ++
    "\"projects\":[" ++
      String.intercalate "," (projectDescriptors.map projectJson) ++ "]," ++
    "\"propertyNaturality\":" ++
      edgeArray propertyNaturalityEdges ++ "," ++
    "\"schema\":\"mathematics.lean-composite-formal/1\"," ++
    "\"transports\":" ++ edgeArray transportEdges ++
  "}"

theorem emitted_project_count_is_kernel_checked :
    projectDescriptors.length = projectCount :=
  projectDescriptors_length

theorem emitted_static_invariants_are_kernel_checked :
    PackageImportAcyclic :=
  phaseOneStaticComposite_valid.1

end URSM.Composite
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f3f7046e05e271df07f764d28b81304670b6bce6aada7f3ad7c6e7070575c0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
