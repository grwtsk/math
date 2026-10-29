# Verification target: Gram Bridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3366cab977b88a81cbafd150f4f705ebce00768d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GramBridge.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GramBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3366cab977b88a81cbafd150f4f705ebce00768d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula.Bridge` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.VerticalLine` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fk_continuous](../../../../MeasureAndIntegration/GramBridge.lean/declarations/fk-continuous.md) | 46 | `result-track:978c6e0227d298945f0820e2e4a002040a904c3aab2e7d58c6a81fdae0904aaa` |
| 2 | `theorem` | [fk_hasCompactSupport](../../../../MeasureAndIntegration/GramBridge.lean/declarations/fk-hascompactsupport.md) | 50 | `result-track:fd2839e33c29319818ba8e8f4403b0dc051115e73dce0e8ea9bc0815f60093ab` |
| 3 | `theorem` | [pairTest_contDiff](../../../../MeasureAndIntegration/GramBridge.lean/declarations/pairtest-contdiff.md) | 54 | `result-track:3e04c0210d4bfce2e605828aa7804dd55df75da089ef8c2a6549ccbd49756ca7` |
| 4 | `theorem` | [pairTest_hasCompactSupport](../../../../MeasureAndIntegration/GramBridge.lean/declarations/pairtest-hascompactsupport.md) | 60 | `result-track:4e3ad028d0ec570c8870aadfcb8363e0bff1fca163e0db823940e2c50ac9129c` |
| 5 | `theorem` | [tsupport_pairTest](../../../../MeasureAndIntegration/GramBridge.lean/declarations/tsupport-pairtest.md) | 65 | `result-track:80b1145e6708216df485ccee75e3b691b543293ca444da85b270a2f0fa0137b1` |
| 6 | `theorem` | [paperFT_pairTest](../../../../MeasureAndIntegration/GramBridge.lean/declarations/paperft-pairtest.md) | 72 | `result-track:67dc8fb1b52213a72f42508e82a3f27fc2ee98cb26af4f56f0c9a0ce002163f4` |
| 7 | `theorem` | [paperFT_pairTest_ofReal](../../../../MeasureAndIntegration/GramBridge.lean/declarations/paperft-pairtest-ofreal.md) | 84 | `result-track:fb7f554194c4367ee034df016279234f48705f324498871d5c3ef469c4976d2c` |
| 8 | `theorem` | [Gsummand_eq_mult_Hfn](../../../../MeasureAndIntegration/GramBridge.lean/declarations/gsummand-eq-mult-hfn.md) | 97 | `result-track:87c16aff9f045ecafa29162f66222bf44abd9a487ad3dc4017f592b77f6a3d33` |
| 9 | `theorem` | [Gz_eq_tsum_xi](../../../../MeasureAndIntegration/GramBridge.lean/declarations/gz-eq-tsum-xi.md) | 106 | `result-track:d24cca1e34c526982e7b7881cacd48e838cc3fd4fd45f10eee63cf65f408bf68` |
| 10 | `theorem` | [summable_Gsummand_of](../../../../MeasureAndIntegration/GramBridge.lean/declarations/summable-gsummand-of.md) | 119 | `result-track:f3711163da21dede7635401f7311c20918e11684455f1d3b3c262bd079f95954` |
| 11 | `theorem` | [integrable_paperFT_pairTest_mul_nuX](../../../../MeasureAndIntegration/GramBridge.lean/declarations/integrable-paperft-pairtest-mul-nux.md) | 133 | `result-track:60caa41765281329c975ea8fb26ef00baa23c4504d92691657559017f053f188` |
| 12 | `theorem` | [literatureRHS_pairTest_eq_Gentry](../../../../MeasureAndIntegration/GramBridge.lean/declarations/literaturerhs-pairtest-eq-gentry.md) | 143 | `result-track:5881fcb4ade812738a5abf7034d7ed708c5ce216f78c058d1f9803192ab852af` |
| 13 | `theorem` | [GentryC_eq_of_nuc](../../../../MeasureAndIntegration/GramBridge.lean/declarations/gentryc-eq-of-nuc.md) | 162 | `result-track:5528c73d333a171360636043ca2ffecc33ca8ed0f7d15072306e02ab04ec9f6d` |
| 14 | `theorem` | [Gentry1_eq](../../../../MeasureAndIntegration/GramBridge.lean/declarations/gentry1-eq.md) | 191 | `result-track:6802c6d06bc20662c438bb1e1350a8ddc813f48ffb115de4ef34c38b0d2a3dd3` |
| 15 | `theorem` | [tau_mem](../../../../MeasureAndIntegration/GramBridge.lean/declarations/tau-mem.md) | 205 | `result-track:e9a9f4e2fb32cff0a020dc999ea5d5129d71285de2ba6db8d1414b91e1c49276` |
| 16 | `theorem` | [tauStar_mem](../../../../MeasureAndIntegration/GramBridge.lean/declarations/taustar-mem.md) | 232 | `result-track:edea4774f1ce8258aa7e6e163175ebbf510df317554f580030cc6501681c4c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee879fda32ca7ff69330ac5555d3dd5eef829e48c4e462436a4c283ec4526d38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
