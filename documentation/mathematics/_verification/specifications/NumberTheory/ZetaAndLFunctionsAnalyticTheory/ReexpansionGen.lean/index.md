# Verification target: Reexpansion Gen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [choose_le_two_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/choose-le-two-pow.md) | 30 | `result-track:26ac347f925ec5965dee2829570d90d740033c39fb8f131baaa209c050a56bff` |
| 2 | `def` | [T0re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/t0re.md) | 38 | `declaration-track:71d2c8f9f089a4a1a342742033ed81bc0080e827de5211d6a0fb2254cdf9928f` |
| 3 | `lemma` | [l_ge_of_T0re_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/l-ge-of-t0re-le.md) | 40 | `result-track:09e403de9e8fd1d8779066d0308346454047bfb02374a8a1bcb1e3a9488b7837` |
| 4 | `lemma` | [norm_base_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/norm-base-ge.md) | 54 | `result-track:98d39e2cdf0f81d7b789afbefbf682b2780cb7f824bc3cedd097bcfb08b2a1bb` |
| 5 | `lemma` | [base_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/base-ne-zero.md) | 58 | `result-track:1eefef3ae3d5e788aff06bd201086898d00ff397479089c3f46faf139e60c7ae` |
| 6 | `lemma` | [base_add_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/base-add-ne-zero.md) | 64 | `result-track:cad0c82b1887a5c56d2c0d2e4b58495efca307f8e5709a54a98cd37a6ca6e4a6` |
| 7 | `def` | [eGen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen.md) | 72 | `declaration-track:29c0892ba46bb8827657a4db7f372407b25817aae8ac96da8c476d17ec39670b` |
| 8 | `theorem` | [eGen_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-one.md) | 78 | `result-track:597997cc2f82b0346fe04846d3bf639ef8773d1a73bc45ba2058d751dd7d4ace` |
| 9 | `lemma` | [eGen_block_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-block-eq.md) | 84 | `result-track:8be64979c9403c512d59981cae6cb73728e849c1082c99268d45605344b28537` |
| 10 | `theorem` | [eGen_expand](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-expand.md) | 98 | `result-track:68af1cc68e2fe8a842bd008595fce6293edd357304c58f504d84f343e598e9ca` |
| 11 | `theorem` | [norm_eGen_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/norm-egen-le.md) | 153 | `result-track:b06ff24a71dd0b438d0875b2470d35dae534e3339690763626027775bdc66c35` |
| 12 | `theorem` | [sum_norm_eGen_sq_div_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/sum-norm-egen-sq-div-le.md) | 178 | `result-track:509f5113aafca5724c233113eccbceb1c4573b1052423020e4114b23ef956230` |
| 13 | `theorem` | [eGen_H3](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-h3.md) | 232 | `result-track:5b8c5c7868e8c99761e29bf3bc1be214e72486a49f9d02b0fe712e596cee5e12` |
| 14 | `theorem` | [eGen_H2](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-h2.md) | 253 | `result-track:9ac03b5e9f5f93e96759e3a98bcec72fa46fc2de6a6dc46d361c75e3102e6ea6` |
| 15 | `theorem` | [eGen_H1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ReexpansionGen.lean/declarations/egen-h1.md) | 278 | `result-track:8e8b13a48497079d1e79899ad7426b61f48f74884243aa889c899726035a382b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cce88e5aa068eb56dad73ad9ead015b886d53428102935e2d87b127e161831e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
