# Verification target: Marginal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91419ccc2207e9826eae5130d6d2b8127049cbbe",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Varianted65ad316cebed9d781603f96e6e6d3508fc8b580b8fa731e33215fc1ecd11ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91419ccc2207e9826eae5130d6d2b8127049cbbe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Varianted65ad316cebed9d781603f96e6e6d3508fc8b580b8fa731e33215fc1ecd11ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Marginal/Varianted65ad316cebed9d781603f96e6e6d3508fc8b580b8fa731e33215fc1ecd11ed.lean.json)

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
| 1 | `def` | [lmarginal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal.md) | 78 | `declaration-track:f7d5facea77588759a12f998e5ad5f82cf704c5f5de69605ba104adcf90a94d5` |
| 2 | `theorem` | [_root_.Measurable.lmarginal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/root-measurable-lmarginal.md) | 91 | `result-track:bcc2b30f7a7b1eab913bb93be9d18af416126c7444a54c65b703134b0c0eddca` |
| 3 | `theorem` | [lmarginal_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-empty.md) | 95 | `result-track:0434f7cf3ae1125b6272aeac747ff0ecdaf66010a012d635698bced76dce3d3e` |
| 4 | `theorem` | [lmarginal_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-congr.md) | 102 | `result-track:bea33012a583ce301fbe30222d9f0ce8ed86be6d91088a84f170bcad6018c54f` |
| 5 | `theorem` | [lmarginal_update_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-update-of-mem.md) | 107 | `result-track:110454145ff2b4f9d0d2103b34248666d6187cbf3fbc862ba4488a24db5bc88c` |
| 6 | `theorem` | [lmarginal_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-singleton.md) | 113 | `result-track:807174f24eff1096dfc4adc0037e33cd022ccc83b67969c8f7bcb1886383e23a` |
| 7 | `theorem` | [lmarginal_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-mono.md) | 127 | `result-track:11cd6625dba334fd67f29f42f068b265e7a938eb7ec62549132309a90dfe7c7d` |
| 8 | `theorem` | [lmarginal_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-union-source-edition-2.md) | 132 | `result-track:e06e9ccb845f8a0a614bf2f31f66fa5b80f42f11a9539be9521c469f4bb8ca28` |
| 9 | `theorem` | [lmarginal_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-union.md) | 151 | `result-track:6dbbe044ee894dfc84e7adcd3ca8a1b41500ddb74dc9706c0489a87146021700` |
| 10 | `theorem` | [lmarginal_insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-insert.md) | 159 | `result-track:196fdec1fa3ca3c82ec8b3ad39381ae9fd418ba577f561c43c82c3f5d3f40d91` |
| 11 | `theorem` | [lmarginal_erase](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-erase.md) | 167 | `result-track:777be663b0ff8f3e52d569ab8564cb3f677f2d8e92a19a6bd31ed30afe8a5377` |
| 12 | `theorem` | [lmarginal_insert'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-insert-source-edition-2.md) | 174 | `result-track:8c99d1bdec459d8a7e7d81ec9e2565ae156f97c86924fb77374a0f00f164f4b8` |
| 13 | `theorem` | [lmarginal_erase'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-erase-source-edition-2.md) | 182 | `result-track:d5fafd25763b340f14181e944bb5562479ed7f0fec86e5ef135a29bb92deb6a1` |
| 14 | `theorem` | [lmarginal_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-univ.md) | 187 | `result-track:2db7cf560d5f9ce62e457c0bad839176b5811ce85d0e3d93466530ebe2cb2f91` |
| 15 | `theorem` | [lintegral_eq_lmarginal_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lintegral-eq-lmarginal-univ.md) | 195 | `result-track:f6f6a16db6c813dbe2b1841535de9fadf00f270c99509097b2e1244b743c90a0` |
| 16 | `theorem` | [lmarginal_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-image.md) | 198 | `result-track:cb62ae5b9804d5c4d6c3fef9781fe129d918093ebb2240edc92c134b8906f223` |
| 17 | `theorem` | [lmarginal_update_of_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-update-of-notmem.md) | 210 | `result-track:3ac74fa48b38e2b29932d7174c65b97274ac2a6db3c830c518522d702fb90643` |
| 18 | `theorem` | [lmarginal_eq_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-eq-of-subset.md) | 220 | `result-track:2d11bff0b6571f2ba4134e6e76a94d9da14427a5e0ade1067bf73a84fd92fb49` |
| 19 | `theorem` | [lmarginal_le_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lmarginal-le-of-subset.md) | 226 | `result-track:877a4a07f1e464f7d96f71a6a90f3b0782144143214e1891d141b9817728ffe8` |
| 20 | `theorem` | [lintegral_eq_of_lmarginal_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lintegral-eq-of-lmarginal-eq.md) | 233 | `result-track:e82bcec5698363d43b87aae62e2a3a409de3891848e2b2345b39f68de051a270` |
| 21 | `theorem` | [lintegral_le_of_lmarginal_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MarginalPublic.lean/declarations/lintegral-le-of-lmarginal-le.md) | 240 | `result-track:cb7aa9ce81ab09532649a8fd535bd80f6e18dfc87914ee338ca899a4db6be64a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb06956d75fa4127908b97c2611ba5b0c6311c8c214bfa0b7d0dc115ee97fbd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Varianted65ad316cebed9d781603f96e6e6d3508fc8b580b8fa731e33215fc1ecd11ed.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Marginal/Varianted65ad316cebed9d781603f96e6e6d3508fc8b580b8fa731e33215fc1ecd11ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
