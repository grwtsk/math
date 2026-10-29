# strictUniversalPropertyFixedTargetToHoCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15314cbf6c358d36e08b5aea47ee8c6d55d560de83fef7a3d01cef93d7f81df1",
  "kind": "def",
  "lexical_name": "strictUniversalPropertyFixedTargetToHoCat",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "strictuniversalpropertyfixedtargettohocat",
  "source": {
    "blob": "eca4faa69882f8ee95cdfdd4273c2392b95afee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdcf52664ae0258f2f9695b889a3e1ef4e8daf87aef2ce301d24c7d66a946352",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/BifibrantObjectHomotopyNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15314cbf6c358d36e08b5aea47ee8c6d55d560de83fef7a3d01cef93d7f81df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def strictUniversalPropertyFixedTargetToHoCat :
    Localization.StrictUniversalPropertyFixedTarget
      toHoCat (weakEquivalences (BifibrantObject C)) D where
  inverts := by
    rw [inverts_iff_factors]
    intro K L f g h
    exact CategoryTheory.Quotient.sound _ h
  lift F hF := CategoryTheory.Quotient.lift _ F
    (by rwa [inverts_iff_factors] at hF)
  fac F hF := rfl
  uniq _ _ h := Quotient.lift_unique' _ _ _ h

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/BifibrantObjectHomotopyNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca4faa69882f8ee95cdfdd4273c2392b95afee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b688c5b813c923c604348748af1b7ae44d0b30cd8da089d524d127c144969eb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
