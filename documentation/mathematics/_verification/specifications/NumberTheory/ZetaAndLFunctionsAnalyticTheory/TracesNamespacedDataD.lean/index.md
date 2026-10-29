# Verification target: Traces Namespaced Data D

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15aa4c5de07689c968869fc295f4df7408125780",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15aa4c5de07689c968869fc295f4df7408125780`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.AssemblyD` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.PP` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DataD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/datad.md) | 39 | `declaration-track:db8a70916e2d5f48627c8fab85cc28bf2a87864c27d483af0dde5a59045fe42e` |
| 2 | `structure` | [FactsD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/factsd.md) | 48 | `declaration-track:428e40c690f477546f93fad0866ccad705e640f18bda8a81d1c017fc783f8068` |
| 3 | `theorem` | [tr2D_pointwise](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/tr2d-pointwise.md) | 79 | `result-track:7cde3b67d7ee962c9a66539a9c242e611edde69f1cf2c7908ff523f319af5121` |
| 4 | `theorem` | [eventually_const_mul_le_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/eventually-const-mul-le-half.md) | 191 | `result-track:e49f367c5e65767e6efc0a39d09a6611a0f9e6d6e839b4364630f2108272bcb8` |
| 5 | `theorem` | [ratioD_pointwise](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/ratiod-pointwise.md) | 201 | `result-track:fc2ec9e41c896025faecebb5f80e83ffe7daa2fb806999edc5405746e2158745` |
| 6 | `lemma` | [NcntD_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/ncntd-lower.md) | 321 | `result-track:51f1352e843d88f29803f7b3147f7394a8b57b1d4bcf0d5011597edf2092f445` |
| 7 | `lemma` | [T_le_NcntD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/t-le-ncntd.md) | 337 | `result-track:f9b830f60a3e1b15187e58cd98a1da95a855987cb70e44a5025a1bc15c20ab08` |
| 8 | `lemma` | [NcntD_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/ncntd-pos.md) | 346 | `result-track:6231efb40cbe0fe32fbc298f715c386f27007cc4a56d99b7034cb04c5642addf` |
| 9 | `lemma` | [regimeD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/regimed.md) | 353 | `result-track:0788ca7738edaa600582245186ffb9b248dffa279673f8425920d3c9eeb46f76` |
| 10 | `lemma` | [tr1'D](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/tr1-d.md) | 363 | `result-track:09b4cbaebc45f684ce836c9581d09461ea8b0e1b80dbc8585700a7b285804634` |
| 11 | `def` | [mainTr2D](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/maintr2d.md) | 406 | `declaration-track:7a70caf37beb219b123da679f4dd803747051e2aa5016d530ad31259ab150034` |
| 12 | `lemma` | [tr2_firstD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/tr2-firstd.md) | 410 | `result-track:b43a5969dec2260169d6750e0dcb1efe35d18e9f4088d686c3edce56e8e83dd5` |
| 13 | `lemma` | [tr2D](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/tr2d.md) | 469 | `result-track:36e12426c294d54f7fbdd8981b71f839cb03fc8ef891a3e4a898fd41598cf34e` |
| 14 | `lemma` | [ratioD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/ratiod.md) | 493 | `result-track:12ac8f551f46d5d54c5822adc5f73a4527db75e19e6ef9cb626edf5217e07c05` |
| 15 | `theorem` | [frhatD_pointwise](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/frhatd-pointwise.md) | 523 | `result-track:6b02a954e8f250a3a16d6be9d6b9c9d53701d4b3c22f3828f56d5c071cd287b4` |
| 16 | `lemma` | [frhatD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/frhatd.md) | 641 | `result-track:e0ff7fa13c4f2e76628af51f2ddf7ac0442e175083bdeeaf9f840b181d84830f` |
| 17 | `theorem` | [tracesBoundsD_of_factsD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TracesNamespacedDataD.lean/declarations/tracesboundsd-of-factsd.md) | 668 | `result-track:8463ac89f3961725a6aa941d37050aff77fc257c31f71000f6711e7585a79271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa20cfe7cdad78577a540f20c57f56a7f63192f32c28dbc6e22723a305ca46f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
