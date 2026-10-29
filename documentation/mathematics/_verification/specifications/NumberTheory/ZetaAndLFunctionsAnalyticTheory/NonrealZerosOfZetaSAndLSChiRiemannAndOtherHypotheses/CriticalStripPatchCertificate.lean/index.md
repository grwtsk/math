# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf5fd5abbad9ab06731a4c7a42ca3859367bf736",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf5fd5abbad9ab06731a4c7a42ca3859367bf736`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorDescent`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripMirrorDescent.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SampleVariationPatch](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/samplevariationpatch.md) | 29 | `declaration-track:727591db93952e8e2eae38be3c875bd98442215911b08cebedf83fc08e57c246` |
| 2 | `theorem` | [value_norm_lower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/value-norm-lower.md) | 42 | `result-track:a0e045c0f2b561a7290fa161d046418c63c7039b153ae78a0112868f01938ac9` |
| 3 | `theorem` | [nonzero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/nonzero.md) | 55 | `result-track:8476b0a4f570a8c621e21bc917fdeda985e4bb0e7b70d2c8c1af30cca7ae9444` |
| 4 | `def` | [congr](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/congr.md) | 64 | `declaration-track:8474b2a6c53ce56e888d755b70f89d2fa00633c1e43b283e5be4022860e82c72` |
| 5 | `theorem` | [exists_zeta_patch_at_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/exists-zeta-patch-at-zero.md) | 83 | `result-track:e5776186c280389930deb20301851752e8f997afd9520b6ef93d5707ed8ab65a` |
| 6 | `theorem` | [exists_zeroFree_neighborhood_of_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/exists-zerofree-neighborhood-of-zero.md) | 107 | `result-track:6ba04f555723c0eb78f10f2a9a16242df3d72b5fbaace9b7e16b7aacd2a6a09d` |
| 7 | `structure` | [FiniteVariationCover](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/finitevariationcover.md) | 114 | `declaration-track:32b041191318e70758b3d59b117612d28d79180cef0015f0a511a0e72165b4a9` |
| 8 | `theorem` | [nonzero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/nonzero-source-edition-2.md) | 123 | `result-track:d7816b15d3f23cabaa831522f62a391e03549c352e9f9e5036734151c5da318c` |
| 9 | `theorem` | [count_pos_of_nonempty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/count-pos-of-nonempty.md) | 129 | `result-track:2138a46738ef93d030e50fc3fb4b1257f5c3f5d50eaf7cd484f05f64bdc5cb5c` |
| 10 | `theorem` | [noTargetZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/notargetzero.md) | 137 | `result-track:2af6d70fe4cda24c94a511bdf783b2fc389a6e0cc1c622b4c2833bdd3c66e4d7` |
| 11 | `theorem` | [shellRH_of_patch_covers](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/shellrh-of-patch-covers.md) | 146 | `result-track:29d098449b7608a3a83636e959e8f64b58529d07006bf2130449309364d449aa` |
| 12 | `theorem` | [window_succ_of_patch_covers](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/window-succ-of-patch-covers.md) | 155 | `result-track:f6275c4e3d7e98e3e339df50c86873765cb439ef1c199b0dcad266810cb16179` |
| 13 | `theorem` | [rh_of_base_and_patch_covers](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPatchCertificate.lean/declarations/rh-of-base-and-patch-covers.md) | 162 | `result-track:3bf29ad87f964248f7b6429cc437a31498ed0a32e4d266158d330ef929637aa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dbd5ebba52302748f2a614df9c11ef4cb6b24e6fbbc06486a8765ef239a3876 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
