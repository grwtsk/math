# carry_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03788e03-f245-defe-dbde-dff940430bda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47566531-5588-afd1-338f-9c5af5bc9953",
  "kind": "theorem",
  "lexical_name": "carry_edge",
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
  "slug": "carry-edge",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15244,
    "line": 15203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996dc921f445111554adacdcdced0e642439c39f666ff06b4c8eee0a5a700b4b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OriginalClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47566531-5588-afd1-338f-9c5af5bc9953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15203–15244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carry_edge (hv : ValidContext P Γ) (hc : ProofContext Γ γ)
    (hT : T.Target) (hm : WellModed γ T .data) (ht : SortedAt P Γ T I)
    {b : Bool} (he : PrimaryEdge P I J b) : Carries (P := P) Γ γ T J := by
  cases he with
  | inclusion hi hj hij =>
    obtain ⟨s,hs⟩ := hi.1
    refine ⟨Γ,γ,Embedding.refl hv γ,hc,T,hT,hm,ht.mono hij.1,?_⟩
    simpa only [Embedding.refl,Expr.rename_id] using Transfer.refl (γ := γ) (ht s hs)
  | @codomain A B C htr =>
    obtain ⟨r,hr⟩ := htr.product.1
    obtain ⟨a,ha,b,hb,hab⟩ := htr.output ▸ hr
    let D := W.type A
    have hD : SortedAt P Γ D A := W.sorted A htr.domain
    have hU : SortedAt P Γ (Expr.arrow .dp D T) J := hD.arrow ht .dp (by rw [htr.output])
    refine ⟨Γ,γ,Embedding.refl hv γ,hc,Expr.arrow .dp D T,
      hT.arrow (W.normal A htr.domain), (W.type_mode A htr.domain).arrow hm,hU,?_⟩
    simpa only [Embedding.refl,Expr.rename_id] using
      Transfer.positive (ht b hb) (hD a ha) hab (W.type_mode A htr.domain)
  | @domain A B C htr =>
    obtain ⟨r,hr⟩ := htr.product.1
    obtain ⟨a,ha,b,hb,hab⟩ := htr.output ▸ hr
    let F := W.type B
    have hF : SortedAt P Γ F B := W.sorted B htr.codomain
    have hConv : HasType P Γ (Expr.arrow .pp T F) (.sort r) := (ht a ha).arrow (hF b hb) hab
    let e : Embedding P Γ γ (Expr.arrow .pp T F :: Γ) (modeCons .proof γ) := Embedding.cons hConv .proof
    let W' := W.rename e
    let D := W'.type I
    let F' := W'.type B
    have hD : SortedAt P (Expr.arrow .pp T F :: Γ) D I := W'.sorted I htr.domain
    have hF' : SortedAt P (Expr.arrow .pp T F :: Γ) F' B := W'.sorted B htr.codomain
    have hU : SortedAt P (Expr.arrow .pp T F :: Γ) (Expr.arrow .dp D F') J :=
      hD.arrow hF' .dp (by rw [htr.output])
    have hFT : F'.Target := ⟨.terminal (W'.allData B htr.codomain), W'.normal B htr.codomain⟩
    refine ⟨_,_,e,hc.proof_cons hT,Expr.arrow .dp D F',hFT.arrow (W'.normal I htr.domain),
      (W'.type_mode I htr.domain).arrow (W'.type_mode B htr.codomain),hU,?_⟩
    exact (Transfer.converter hConv (ht a ha)).trans
      (Transfer.positive (hF' b hb) (hD a ha) hab (W'.type_mode I htr.domain))
      (e.typing (ht a ha)) (hF' b hb)

include W in
/-- Each negative edge resets the carried type to a fixed terminal, and is
followed by its own positive lift. Thus every converter domain stays positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OriginalClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L15203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88c3dc1569bdcf82d530b92ce2dd386ff1d80c7205f466980261b504ce770ac2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
