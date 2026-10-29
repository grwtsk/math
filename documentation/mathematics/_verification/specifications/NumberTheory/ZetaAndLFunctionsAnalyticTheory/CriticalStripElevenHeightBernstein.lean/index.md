# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28003962072052acd7b6515fe490aaf2ea5a5f64",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28003962072052acd7b6515fe490aaf2ea5a5f64`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSevenHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realPart](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/realpart.md) | 22 | `declaration-track:57fa48bca0def1234523eaa93d9aa0cc4d9fe5d478f355ee61ee220c4595ccfa` |
| 2 | `def` | [imagFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/imagfactor.md) | 26 | `declaration-track:00d5a4d858c380c0e19d0a8ad315d5b0be8fd1c192bf98732341d5d7c8eff7a4` |
| 3 | `def` | [modelNorm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/modelnorm.md) | 30 | `declaration-track:cb87ab8b19914121b9df0f10bbec7c7d625124f5c08eeefb46d07ca348541e14` |
| 4 | `def` | [tailNumerator](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/tailnumerator.md) | 32 | `declaration-track:9af679017d40dc7048700b1cd1ef7ba6e88709b0fe76783f9fd7ec89378f4aa9` |
| 5 | `def` | [modelGap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/modelgap.md) | 35 | `declaration-track:6821d646d86016e3b8403d94cb6cab71883ff3d30dd14f558e9852c91707839d` |
| 6 | `def` | [tailGap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/tailgap.md) | 38 | `declaration-track:09360865c0bc2f57c0522a50761f654c8876fff56e3d6ac96d9e55bf6dc7b5bb` |
| 7 | `def` | [modelCoefficients](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/modelcoefficients.md) | 41 | `declaration-track:b59732fa0b44d77d8695d1b43acb3d29657fd32c6d76b9d133d3597ed16921bf` |
| 8 | `def` | [tailCoefficients](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/tailcoefficients.md) | 58 | `declaration-track:4c4a68de6f08c72d25a8ae4441d4750c3715f8bff543ed202be0402ec95fa0e6` |
| 9 | `theorem` | [model_tensor_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/model-tensor-identity.md) | 75 | `result-track:d4a8052bc34d09c54fafbbcfa2b4888b43a142c186b3955a4b99debafd99c9ca` |
| 10 | `theorem` | [tail_tensor_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/tail-tensor-identity.md) | 80 | `result-track:56de73090ca4cdd813d0fb7589e68b4da607077df2ae0d0fc2696990f8f63fb8` |
| 11 | `theorem` | [gap_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/gap-bounds.md) | 85 | `result-track:5cba8f7af1326916a23ad5b14e8da6448362aa3606431757db227993b004a30c` |
| 12 | `theorem` | [model_gap_negative_at_twelve](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/model-gap-negative-at-twelve.md) | 100 | `result-track:632ef80348147dcde74e4c3c86c58b71dff8a5b780c955e78896996f47d51e88` |
| 13 | `theorem` | [tail_gap_negative_at_twelve](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripElevenHeightBernstein.lean/declarations/tail-gap-negative-at-twelve.md) | 103 | `result-track:2a53825839d3a91d9ca8c0cad91f71599b0b40cccf4efa880e8028d85d4b53d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc6f32529a6ff3f6d0a016a3f3b8e64181c90be2ee406db1bcbe5a9bd23f0516 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
