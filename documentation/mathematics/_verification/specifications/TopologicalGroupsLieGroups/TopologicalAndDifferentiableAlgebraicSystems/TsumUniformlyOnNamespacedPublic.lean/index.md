# Verification target: Tsum Uniformly On Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7610f31114816ea0b74f305925e52c8e2fc0a5d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7610f31114816ea0b74f305925e52c8e2fc0a5d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSumUniformlyOn.of_norm_le_summable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/hassumuniformlyon-of-norm-le-summable.md) | 43 | `result-track:19f10dbfddfc4f5c6de84e7ced3f466f5ffcdab27f4c0005e532c57c49ea8e34` |
| 2 | `theorem` | [HasSumUniformlyOn.of_norm_le_summable_eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/hassumuniformlyon-of-norm-le-summable-eventually.md) | 47 | `result-track:5c6315ccd09849bf7fbb9ccdd5f854945e36414df1411049fbb1080860a7ba05` |
| 3 | `lemma` | [SummableLocallyUniformlyOn.of_locally_bounded_eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/summablelocallyuniformlyon-of-locally-bounded-eventually.md) | 53 | `result-track:aa9d86519e2b79b5ac5083da0b0150fa48a8c550e11698c3535bb54bb9b9e85c` |
| 4 | `lemma` | [SummableLocallyUniformlyOn_of_locally_bounded](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/summablelocallyuniformlyon-of-locally-bounded.md) | 64 | `result-track:8ba1ba402d8332c1517231a8007ae82d501a455cc081e3d6aafa3200e3dc5f33` |
| 5 | `theorem` | [derivWithin_tsum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/derivwithin-tsum.md) | 80 | `result-track:635ab6a077c7013d3f23e2d72d1b05ebdc377fb0566492cf339365b15e64b1d0` |
| 6 | `theorem` | [iteratedDerivWithin_tsum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TsumUniformlyOnNamespacedPublic.lean/declarations/iteratedderivwithin-tsum.md) | 101 | `result-track:ae326c5358d7dfeeb2862fe21c060c921887040f81e2582beb48c87490675992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afe76a116f16670b18f321b82085374d98b8a347c237a442727363516fd2dd24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variant3ccb9bc9e5f28314c4c825d0f12251b5f68a44f477a8a9aa17dade3d1e4b488a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
