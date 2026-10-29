# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb84ea0b8e56d589d03e98ac193e832b04a1c60",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb84ea0b8e56d589d03e98ac193e832b04a1c60`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.List.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExternalFormalCheck](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/externalformalcheck.md) | 33 | `declaration-track:179f5dfa59d677244319baa4ad4f994f16dc14a87f25fd59e8139cf00db23d14` |
| 2 | `structure` | [ExternalDeclarationReview](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/externaldeclarationreview.md) | 49 | `declaration-track:938bc81ca8a4a4ee35e0becd3bc4d70465fbeb2453844f79e4e65007152c1dd2` |
| 3 | `def` | [Has](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/has.md) | 73 | `declaration-track:51977971e032c5d7e0bb4d013b928f0b059ffd6b8d5aa4dce129acaacbe04bdd` |
| 4 | `def` | [requiredChecks](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/requiredchecks.md) | 79 | `declaration-track:9671a39dbfe3b32a755d2904857fb7c7361d4abc2869a962a81195bc66f2ad68` |
| 5 | `def` | [AdmissionReady](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/admissionready.md) | 94 | `declaration-track:f2828f8b306f3e7804f3c797820abdfd87c3b4fa0217017ac784432ad60aeeb1` |
| 6 | `def` | [OpenAISevenEighthsClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsclaim.md) | 101 | `declaration-track:1184a99a7dc494f997be2d4bd2d1a76f0d01b848cdd65502d9d207df42e873e2` |
| 7 | `theorem` | [openAISevenEighthsClaim_iff_local](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsclaim-iff-local.md) | 107 | `result-track:43f49e4a1c7d2b0c7dab4866ad98459f80266e8a447a60224bb041179c584b9d` |
| 8 | `def` | [openAISevenEighthsReview](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview.md) | 117 | `declaration-track:fce856f05ba2ff0fe9bfd0689d1e54f777e3c73204ee7615615707d48d0d33f3` |
| 9 | `theorem` | [openAISevenEighthsReview_sourceLocated](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-sourcelocated.md) | 145 | `result-track:7dcdc4b659acd0abf555c7ba6596e8811576f48eee7b896e6c2e9f09935ec156` |
| 10 | `theorem` | [openAISevenEighthsReview_statementAndBodyLocated](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-statementandbodylocated.md) | 151 | `result-track:aec43a01a49c9454e5abe64886f3537a654f0f62817516469b96444ae839c210` |
| 11 | `theorem` | [openAISevenEighthsReview_challenge_ne_solution](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-challenge-ne-solution.md) | 157 | `result-track:40a37b59e626abd2792f363116447f5efa9f40155d95b02d21a46f9340cf876b` |
| 12 | `theorem` | [openAISevenEighthsReview_toolchain_mismatch](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-toolchain-mismatch.md) | 163 | `result-track:b8f69d7ccbca7f1b42e7b7f680de136f110e4585c44b63a0c0307f4b47edddf1` |
| 13 | `theorem` | [openAISevenEighthsReview_mathlib_mismatch](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-mathlib-mismatch.md) | 169 | `result-track:822e4d9192c135e51105a5a2cc34e9607e7b7a2f4b7c9cc5de2271c95ceb995a` |
| 14 | `theorem` | [openAISevenEighthsReview_not_admissionReady](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/openaiseveneighthsreview-not-admissionready.md) | 178 | `result-track:f0db5c1c476c471b3c58106f8e1ca3e35bb5cbedfb7a47812d52e4e6a55dee0b` |
| 15 | `structure` | [AcceptedExternalRawHalfPlanePort](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/acceptedexternalrawhalfplaneport.md) | 190 | `declaration-track:37ea32f38c7773d586f8231707716262edea10a8daddf9aa9b69468ccf941a1b` |
| 16 | `theorem` | [rawTheorem](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/rawtheorem.md) | 198 | `result-track:e0eaf778e976fa40dd9328131f742d51f07dc8b2a0d32920196698b0384fbcbb` |
| 17 | `theorem` | [toNontrivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/tonontrivial.md) | 203 | `result-track:45e50c3e9e8fabc682d08bb559d6a73c148ecd5eced7908ca68c73e7e20512d2` |
| 18 | `theorem` | [toOpenAISevenEighthsClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/toopenaiseveneighthsclaim.md) | 210 | `result-track:6f84ac2e6e907445832be7b06c67a4dbc7be3e314e3554f6cbf1e18d039d3873` |
| 19 | `theorem` | [toElevenTwelfths](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/declarations/toeleventwelfths.md) | 217 | `result-track:44b799dbb2fe9a5fe008f65bb2e801b39f03d1ada795623f19607ad932496d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52ba844834dbbc31b8903d2d9a8cd61bc358c81cbc007306e37e70302fe3cb5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
