# thetaPhiJetDet4_three_mode_pos_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4a42d94-c916-5cb8-0ac9-4dc79aaa2ec3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39b800cb-8336-022a-8454-673aa48e0688",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_three_mode_pos_compact",
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
  "slug": "thetaphijetdet4-three-mode-pos-compact",
  "source": {
    "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 281,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a69bba29943044a6f0864a72fdb200b4e9d8b32cad58a6a9a4113a7bac54d78a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ResultsAlternative17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b800cb-8336-022a-8454-673aa48e0688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4_three_mode_pos_compact
    {A : ℝ} (hlo : (157 / 50 : ℝ) ≤ A) (hhi : A ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiThreeModeJet7 A
        (Real.exp (-3 * A)) (Real.exp (-8 * A))) := by
  have hA : 3 ≤ A := by linarith
  have hw20 : Real.exp (-8 * A) ≤ 1 / 20 ^ 8 :=
    thetaGaussian_exp_neg_eight_le hA
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hwsq :
      Real.exp (-8 * A) ≤ Real.exp (-3 * A) ^ 2 :=
    thetaExpNegEight_le_sq_expNegThree (by linarith)
  by_cases h1 : A ≤ (167 / 50 : ℝ)
  · exact thetaPhiJetDet4_three_mode_pos_of_box
      hA (l := 7 / 50) (u := 17 / 50)
      (r := 1 / 12000) (s := 1 / 20 ^ 8)
      (by norm_num) (by linarith) (by linarith)
      (thetaExpNegThree_le_inv_12000 hlo) hw20
      (by norm_num [thetaPhiThreeModeDeltaMajorant,
        thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
        thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
        thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
  · have hlo2 : (167 / 50 : ℝ) ≤ A :=
      le_of_lt (lt_of_not_ge h1)
    by_cases h2 : A ≤ (71 / 20 : ℝ)
    · exact thetaPhiJetDet4_three_mode_pos_of_box
        hA (l := 17 / 50) (u := 11 / 20)
        (r := 1 / 20000) (s := 1 / 20 ^ 8)
        (by norm_num) (by linarith) (by linarith)
        (thetaExpNegThree_le_inv_20000 hlo2) hw20
        (by norm_num [thetaPhiThreeModeDeltaMajorant,
          thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
          thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
          thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
    · have hlo3 : (71 / 20 : ℝ) ≤ A :=
        le_of_lt (lt_of_not_ge h2)
      by_cases h3 : A ≤ (19 / 5 : ℝ)
      · exact thetaPhiJetDet4_three_mode_pos_of_box
          hA (l := 11 / 20) (u := 4 / 5)
          (r := 1 / 35000) (s := 1 / 20 ^ 8)
          (by norm_num) (by linarith) (by linarith)
          (thetaExpNegThree_le_inv_35000 hlo3) hw20
          (by norm_num [thetaPhiThreeModeDeltaMajorant,
            thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
            thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
            thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
      · have hlo4 : (19 / 5 : ℝ) ≤ A :=
          le_of_lt (lt_of_not_ge h3)
        by_cases h4 : A ≤ (4 : ℝ)
        · exact thetaPhiJetDet4_three_mode_pos_of_box
            hA (l := 4 / 5) (u := 1)
            (r := 1 / 80000) (s := 1 / 20 ^ 8)
            (by norm_num) (by linarith) (by linarith)
            (thetaExpNegThree_le_inv_80000 hlo4) hw20
            (by norm_num [thetaPhiThreeModeDeltaMajorant,
              thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
              thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
              thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
        · have hlo5 : (4 : ℝ) ≤ A :=
            le_of_lt (lt_of_not_ge h4)
          by_cases h5 : A ≤ (9 / 2 : ℝ)
          · exact thetaPhiJetDet4_three_mode_pos_of_box
              hA (l := 1) (u := 3 / 2)
              (r := 1 / 160000) (s := 1 / 20 ^ 8)
              (by norm_num) (by linarith) (by linarith)
              (thetaExpNegThree_le_inv_160000 hlo5) hw20
              (by norm_num [thetaPhiThreeModeDeltaMajorant,
                thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
          · have hlo6 : (9 / 2 : ℝ) ≤ A :=
              le_of_lt (lt_of_not_ge h5)
            have hz6 := thetaExpNegThree_le_inv_700000 hlo6
            have hw6 :
                Real.exp (-8 * A) ≤ (1 / 700000 : ℝ) ^ 2 :=
              hwsq.trans (pow_le_pow_left₀ hz0 hz6 2)
            by_cases h6 : A ≤ (5 : ℝ)
            · exact thetaPhiJetDet4_three_mode_pos_of_box
                hA (l := 3 / 2) (u := 2)
                (r := 1 / 700000) (s := (1 / 700000 : ℝ) ^ 2)
                (by norm_num) (by linarith) (by linarith) hz6 hw6
                (by norm_num [thetaPhiThreeModeDeltaMajorant,
                  thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                  thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                  thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
            · have hlo7 : (5 : ℝ) ≤ A :=
                le_of_lt (lt_of_not_ge h6)
              have hz7 := thetaExpNegThree_le_inv_3200000 hlo7
              have hw7 :
                  Real.exp (-8 * A) ≤ (1 / 3200000 : ℝ) ^ 2 :=
                hwsq.trans (pow_le_pow_left₀ hz0 hz7 2)
              by_cases h7 : A ≤ (6 : ℝ)
              · exact thetaPhiJetDet4_three_mode_pos_of_box
                  hA (l := 2) (u := 3)
                  (r := 1 / 3200000)
                  (s := (1 / 3200000 : ℝ) ^ 2)
                  (by norm_num) (by linarith) (by linarith) hz7 hw7
                  (by norm_num [thetaPhiThreeModeDeltaMajorant,
                    thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                    thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
              · have hlo8 : (6 : ℝ) ≤ A :=
                  le_of_lt (lt_of_not_ge h7)
                have hz8 := thetaExpNegThree_le_inv_64000000 hlo8
                have hw8 :
                    Real.exp (-8 * A) ≤ (1 / 64000000 : ℝ) ^ 2 :=
                  hwsq.trans (pow_le_pow_left₀ hz0 hz8 2)
                exact thetaPhiJetDet4_three_mode_pos_of_box
                  hA (l := 3) (u := 9)
                  (r := 1 / 64000000)
                  (s := (1 / 64000000 : ℝ) ^ 2)
                  (by norm_num) (by linarith) (by linarith) hz8 hw8
                  (by norm_num [thetaPhiThreeModeDeltaMajorant,
                    thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                    thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])

/-- Source-specialized compact positivity for the exact first three modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ResultsAlternative17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b97d7b196871235d61339ef3c24ae92e8731c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f542d01c8c604569a1611640ac346f9ba38cf6d0eb4cc94c6a6fbe582f232b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/87/87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
