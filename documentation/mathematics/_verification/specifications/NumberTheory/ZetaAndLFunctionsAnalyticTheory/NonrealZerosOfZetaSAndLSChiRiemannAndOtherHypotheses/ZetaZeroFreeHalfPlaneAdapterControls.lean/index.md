# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ZetaZeroFreeHalfPlaneAdapterControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982209b367d2abc5b2555e7659e8eb5ee3139686",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZetaZeroFreeHalfPlaneAdapterControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982209b367d2abc5b2555e7659e8eb5ee3139686`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZetaZeroFreeHalfPlaneAdapterControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ZetaZeroFreeHalfPlaneAdapterControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapter.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ToySymmetricZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toysymmetriczero.md) | 20 | `declaration-track:1a89d5d37f3cb80421e2e0eee27dd3d37171067ace662252fd4b22d14fca3077` |
| 2 | `def` | [ToyZeroFreeRightHalfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toyzerofreerighthalfplane.md) | 25 | `declaration-track:ca19d012c6aa6d58df375032a8e95a80f1a88becdd228136bc8dfb6e8361e8c0` |
| 3 | `def` | [ToyAllOnCriticalLine](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toyalloncriticalline.md) | 29 | `declaration-track:49e29be98f42ed0512862127c41a4431e5e6341cff6184e1d880f5490ffd3aa2` |
| 4 | `theorem` | [toySymmetricZero_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toysymmetriczero-reflect.md) | 33 | `result-track:8a6cf6c3b69b3b6a66b437c392547123b8d9994a18b2351bf080d5b78af5baf5` |
| 5 | `theorem` | [toy_zeroFree_sevenEighths](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toy-zerofree-seveneighths.md) | 43 | `result-track:58d9d60920e987b48d61c11a39643d2f3092cc80d79277ad3792fbf5595d1f8e` |
| 6 | `theorem` | [toy_not_allOnCriticalLine](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/toy-not-alloncriticalline.md) | 55 | `result-track:cb28c8339ec18eeddb0da30709a3a1ba7e0bb907739b0fd4d0b6450c8f398270` |
| 7 | `theorem` | [raw_zeta_not_zeroFree_neg_three](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/raw-zeta-not-zerofree-neg-three.md) | 66 | `result-track:67e78728e966dcf1ea656914c273c672c5e654bb6f837fa1a453938deb71ceef` |
| 8 | `theorem` | [sevenEighths_not_at_or_left_of_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/seveneighths-not-at-or-left-of-half.md) | 75 | `result-track:33896c6014d38a313ef1fd6d83f63cdca234e2672821946c618b698a50fa5d10` |
| 9 | `theorem` | [elevenTwelfths_not_at_or_left_of_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/eleventwelfths-not-at-or-left-of-half.md) | 81 | `result-track:6b8c62e70bab9f8a63e6f52d64142bc91cef9e1f2d74a65e9e0e93ecb57c4481` |
| 10 | `theorem` | [adapter_requires_raw_supplier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapterControls.lean/declarations/adapter-requires-raw-supplier.md) | 86 | `result-track:ad96877b9aea7bd80f16e211d8de73ff6228b38457ac57a7e7870316c2007300` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f17c059f71869a02cf593a0d54d231232a9069a91e9887ec9e209ade21dae71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZetaZeroFreeHalfPlaneAdapterControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/ZetaZeroFreeHalfPlaneAdapterControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
