# instGCDMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473e10303b0530951ad91f38bea57f94516ba100542c314b01f9ed1fed0c738f",
  "kind": "instance",
  "lexical_name": "instGCDMonoid",
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
  "slug": "instgcdmonoid",
  "source": {
    "blob": "5bd393597fdb26b189614093565aba54ead9d1d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1266,
    "line": 1252,
    "path": "GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20a11f7ad8676a57bec897f6f0852466fbf84c455bd16a9dfbe235284b3ce9a0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473e10303b0530951ad91f38bea57f94516ba100542c314b01f9ed1fed0c738f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1252–1266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instGCDMonoid : GCDMonoid (Associates α) where
  gcd := Quotient.map₂ gcd fun _ _ (ha : Associated _ _) _ _ (hb : Associated _ _) => ha.gcd hb
  lcm := Quotient.map₂ lcm fun _ _ (ha : Associated _ _) _ _ (hb : Associated _ _) => ha.lcm hb
  gcd_dvd_left := by rintro ⟨a⟩ ⟨b⟩; exact mk_le_mk_of_dvd (gcd_dvd_left _ _)
  gcd_dvd_right := by rintro ⟨a⟩ ⟨b⟩; exact mk_le_mk_of_dvd (gcd_dvd_right _ _)
  dvd_gcd := by
    rintro ⟨a⟩ ⟨b⟩ ⟨c⟩ hac hbc
    exact mk_le_mk_of_dvd (dvd_gcd (dvd_of_mk_le_mk hac) (dvd_of_mk_le_mk hbc))
  gcd_mul_lcm := by
    rintro ⟨a⟩ ⟨b⟩
    rw [associated_iff_eq]
    exact Quotient.sound <| gcd_mul_lcm _ _
  lcm_zero_left := by rintro ⟨a⟩; exact congr_arg Associates.mk <| lcm_zero_left _
  lcm_zero_right := by rintro ⟨a⟩; exact congr_arg Associates.mk <| lcm_zero_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean#L1252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd393597fdb26b189614093565aba54ead9d1d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ce2db7464945bd8214d236309aeb6cfdd83ab227494254dbb1ab90884237db2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
