# Verification target: Dirichlet LSeries Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca6aec6b78d565a5239855953de9829f1aacd6d4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/DirichletLSeriesPublic.lean/index.md) · [Full source](../../../../NumberTheory/DirichletLSeriesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca6aec6b78d565a5239855953de9829f1aacd6d4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZetaSummandHom](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzetasummandhom.md) | 35 | `declaration-track:ee3ea4aa28990546a723883ace364535dbb18d68c4abfd492ca394bf31c41700` |
| 2 | `def` | [dirichletSummandHom](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletsummandhom.md) | 46 | `declaration-track:8a65114f3e42e080c2068ba3b1a8a4afc549b1a4a2c4524980c02a988b9ac144` |
| 3 | `lemma` | [summable_riemannZetaSummand](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/summable-riemannzetasummand.md) | 57 | `result-track:cb66483d39ca4b192310774793e0acec727cbca339c2402388a1e0f54becfd07` |
| 4 | `lemma` | [tsum_riemannZetaSummand](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/tsum-riemannzetasummand.md) | 65 | `result-track:e2c14be8eb3c2d13e5107392a1bfb93513fb8b67eda6fae754b641252a0ffd93` |
| 5 | `lemma` | [summable_dirichletSummand](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/summable-dirichletsummand.md) | 73 | `result-track:2b6207abaf01736b195458a8c1a252aed718d5fe13e41f58a109c379418dc245` |
| 6 | `lemma` | [tsum_dirichletSummand](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/tsum-dirichletsummand.md) | 80 | `result-track:4dbe286b8b6a1f571b0ed92eb358030a197a3e1b1e71426a5c904ad16bec8f2e` |
| 7 | `theorem` | [riemannZeta_eulerProduct_hasProd](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzeta-eulerproduct-hasprod.md) | 91 | `result-track:f630841be00a805c8ff55880cdcbf1a5510c047d54fcc9db4359d4a7b9095e46` |
| 8 | `theorem` | [riemannZeta_eulerProduct_tprod](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzeta-eulerproduct-tprod.md) | 98 | `result-track:ba50fe8ef0ce9a030a3664d514bfb770f19f2ce64124609f2d50ea28ab93818a` |
| 9 | `theorem` | [riemannZeta_eulerProduct](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzeta-eulerproduct.md) | 104 | `result-track:b7f58c546c4adb77d514f4bc2ab27d43ff31b633b51763667564ba18c72941d1` |
| 10 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_hasProd](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-eulerproduct-hasprod.md) | 114 | `result-track:174bd9d7c8e85364e17b97a8915d68b0d6a568c1ebdd591a52809cbff19214a7` |
| 11 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_tprod](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-eulerproduct-tprod.md) | 122 | `result-track:cfab6d609fc591a9d125f19e5185e12f5c3562d85b0bba7a182a953f1562ab70` |
| 12 | `theorem` | [DirichletCharacter.LSeries_eulerProduct](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-eulerproduct.md) | 129 | `result-track:80158f20bff2d7ecd3c48534569b3784543cfd6d976344b1fe85baa68a788bd6` |
| 13 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_exp_log](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-eulerproduct-exp-log.md) | 139 | `result-track:caadecd64102d12b204061590395c6e3d155b8f1093a4c81015a1a7271ba4d6e` |
| 14 | `theorem` | [ArithmeticFunction.LSeries_zeta_eulerProduct_exp_log](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/arithmeticfunction-lseries-zeta-eulerproduct-exp-log.md) | 154 | `result-track:c623eb3899d80b997ee27b95c38efe1603b47b860b51b8506a8f12989e49cdee` |
| 15 | `theorem` | [riemannZeta_eulerProduct_exp_log](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzeta-eulerproduct-exp-log.md) | 162 | `result-track:ffe5bc2223543fb987da8c818881420b04d365c255e9f51dceb84fc9d5a9c4a3` |
| 16 | `lemma` | [DirichletCharacter.LSeries_changeLevel](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-changelevel.md) | 173 | `result-track:cbc8865a4a628c82150185dba32cba5ed0a4c8ebe87b4afec2905e9f23095d4f` |
| 17 | `theorem` | [DirichletCharacter.eulerProduct_log_eq_LSeries](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-eulerproduct-log-eq-lseries.md) | 221 | `result-track:3b6ee33634c7edf46e7990f03d73dbfef581d44c05665a30d74106846e91140d` |
| 18 | `theorem` | [DirichletCharacter.LSeries_eq_exp_LSeries](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/dirichletcharacter-lseries-eq-exp-lseries.md) | 260 | `result-track:6f4d103f65e35a476a936777f25152497958f5800eb5b451db00e40c2ebd061e` |
| 19 | `theorem` | [riemannZeta_eq_exp_LSeries](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/riemannzeta-eq-exp-lseries.md) | 264 | `result-track:8aeda354ecb1b18e1259486313a535afacd9f6c4ce8688f2b7ea21146329f651` |
| 20 | `theorem` | [log_riemannZeta_eq](../../../../NumberTheory/DirichletLSeriesPublic.lean/declarations/log-riemannzeta-eq.md) | 273 | `result-track:55dd2ee7452ce2a0a52cd25d4ed02391a677c0aeb442420d333deae8cc060701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11dd2f2a6aeb51eb5e85a778f4f547ad820bbe0e1d5e3f3f21e39a194923f27b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
