# exp_decay_atImInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0a47ea-fb53-e0f6-0af8-70efdf267698",
  "kind": "theorem",
  "lexical_name": "exp_decay_atImInfty",
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
  "slug": "exp-decay-atiminfty",
  "source": {
    "blob": "378aa1c30d950b8a351a0506f8f82b94eef84765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d1080a6d2965df2519b3be74a2a1f71db3eb522d119b6ed3f2748a9dcfc6729",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/QExpansionNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0a47ea-fb53-e0f6-0af8-70efdf267698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_decay_atImInfty [NeZero n] [CuspFormClass F Γ(n) k] :
    f =O[atImInfty] fun τ ↦ Real.exp (-2 * π * τ.im / n) := by
  simpa only [neg_mul, comp_def, ofComplex_apply, coe_im] using
    ((periodic_comp_ofComplex n f).exp_decay_of_zero_at_inf
      (mod_cast (Nat.pos_iff_ne_zero.mpr (NeZero.ne _)))
      (eventually_of_mem (preimage_mem_comap (Ioi_mem_atTop 0))
        fun _ ↦ differentiableAt_comp_ofComplex f)
      (zero_at_infty_comp_ofComplex f)).comp_tendsto tendsto_coe_atImInfty

end CuspFormClass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/QExpansionNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `378aa1c30d950b8a351a0506f8f82b94eef84765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48324b62f51846134c8646df5ba8c9a6992aa2f8975a09f92e10a2bb7bbf35d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantb50e33dce36598169d75b1e8903db912f2e262092989535925181dbc49dc6507.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
