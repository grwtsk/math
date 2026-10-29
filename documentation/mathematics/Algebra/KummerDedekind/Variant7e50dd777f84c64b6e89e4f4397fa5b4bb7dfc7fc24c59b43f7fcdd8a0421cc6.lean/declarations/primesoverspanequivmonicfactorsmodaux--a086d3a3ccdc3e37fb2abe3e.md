# primesOverSpanEquivMonicFactorsModAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4783692bf9bab9fba2180e63cdc1aad6c3d8f03885dd76108a1d7e0e00ff7cd8",
  "kind": "def",
  "lexical_name": "primesOverSpanEquivMonicFactorsModAux",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "primesoverspanequivmonicfactorsmodaux--a086d3a3ccdc3e37fb2abe3e",
  "source": {
    "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 149,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a086d3a3ccdc3e37fb2abe3ea905fa40ecadf3cdf7c721400f2b5c2f9305b66b",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4783692bf9bab9fba2180e63cdc1aad6c3d8f03885dd76108a1d7e0e00ff7cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primesOverSpanEquivMonicFactorsModAux (A : ℤ[X]) :
    {Q // Q ∈ normalizedFactors (map (Ideal.Quotient.mk (span {(p : ℤ)})) A)} ≃
    (normalizedFactors (map (Int.castRingHom (ZMod p)) A)).toFinset :=
  (normalizedFactorsEquiv (f := (mapEquiv (Int.quotientSpanNatEquivZMod p)).toMulEquiv)
    (by simp) (map (Ideal.Quotient.mk (span {(p : ℤ)})) A)).trans
      (Equiv.subtypeEquivRight (fun _ ↦ by simp [Polynomial.map_map, mem_primeFactors]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24b9d9f29337f742582dd694483db4d722483cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=263b99ff87da5827c0c7ce3061ff9d804a635837f4800ae5be1d743c1cbb1db8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
