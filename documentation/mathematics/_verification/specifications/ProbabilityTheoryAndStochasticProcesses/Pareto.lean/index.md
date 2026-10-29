# Verification target: Pareto

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb739ff165134262d1c6be0f731039d54b281b56",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantf6a07d00f598724acb7b6bdd037d64a54045a3191690d99fc1845f39ffa98eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb739ff165134262d1c6be0f731039d54b281b56`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantf6a07d00f598724acb7b6bdd037d64a54045a3191690d99fc1845f39ffa98eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pareto/Variantf6a07d00f598724acb7b6bdd037d64a54045a3191690d99fc1845f39ffa98eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [paretoPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdfreal.md) | 35 | `declaration-track:2eb130fe9db90d51f969314fa9a4c2b6d2ead27e983135bc169e31110c8bc3e0` |
| 2 | `def` | [paretoPDF](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdf.md) | 39 | `declaration-track:c2c4e9cdf92a17872dc4f54f7f7490e8291d9d1d970b0730a635dcfc6d23b9c7` |
| 3 | `lemma` | [paretoPDF_eq](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdf-eq.md) | 42 | `result-track:0a101afcc4ddce0417b422cc261f0e7c7b7f11a998ffcd58ac12a05021291518` |
| 4 | `lemma` | [paretoPDF_of_lt](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdf-of-lt.md) | 45 | `result-track:7fdb7b00ca06016fa417fbd4cc219aff095df2f75a337f3aabac734aa3c2aeca` |
| 5 | `lemma` | [paretoPDF_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdf-of-le.md) | 48 | `result-track:69e6d93b217e5a83a2c71b9ac02190fde45dc2b4b4d5b7a961ac2da73e05575c` |
| 6 | `lemma` | [lintegral_paretoPDF_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/lintegral-paretopdf-of-le.md) | 53 | `result-track:4f3852f4cff2e08aa95545e4c7f9d469248de61cfb1ff5049c006322b93bdde7` |
| 7 | `lemma` | [measurable_paretoPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/measurable-paretopdfreal.md) | 63 | `result-track:403e73d774fcdd5ca5fb22549fbf9384e10b5c86d1e80490041675abfb968ae4` |
| 8 | `lemma` | [stronglyMeasurable_paretoPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/stronglymeasurable-paretopdfreal.md) | 68 | `result-track:1055938fbdb9e0fe161509bf518f7ebdda9e81559355b663b18334f87cdcd860` |
| 9 | `lemma` | [paretoPDFReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdfreal-pos.md) | 73 | `result-track:47bc3256a571433e842848a86f62e2cba2ccb054392200d1943c099b5085c08b` |
| 10 | `lemma` | [paretoPDFReal_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretopdfreal-nonneg.md) | 80 | `result-track:71b480bcf21c2dbc1454a43db5fff3db0014ea65aa269247cdaa04ba1ef63650` |
| 11 | `lemma` | [lintegral_paretoPDF_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/lintegral-paretopdf-eq-one.md) | 97 | `result-track:fb86d3e6beaeed3ce335d401843056ea783d7d1dfec5e1b75df0b433058c50f9` |
| 12 | `def` | [paretoMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretomeasure.md) | 123 | `declaration-track:93c55155172ad4e702cce78d27c9e472efe4f35065cd5e616b1aeb7174d70189` |
| 13 | `lemma` | [isProbabilityMeasure_paretoMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/isprobabilitymeasure-paretomeasure.md) | 126 | `result-track:743bef829cfc329a054bc0f5b72ebcafc2a76e3441dd906a6cb8995b5b9257fa` |
| 14 | `lemma` | [paretoCDFReal_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretocdfreal-eq-integral.md) | 133 | `result-track:36a3347914a13b8f1df69a151d718b45148b09ac80749c684c81fbc6a9dfe142` |
| 15 | `lemma` | [paretoCDFReal_eq_lintegral](../../../../ProbabilityTheoryAndStochasticProcesses/Pareto.lean/declarations/paretocdfreal-eq-lintegral.md) | 141 | `result-track:a97197ca1cea0591aab990d26db96a05b7c6d7732c82ae7d47f7d071175330d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e8137935feac059456fb8d5da1fab29d88e0c36850ffd1af387d0b583f8f9f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantf6a07d00f598724acb7b6bdd037d64a54045a3191690d99fc1845f39ffa98eea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Pareto/Variantf6a07d00f598724acb7b6bdd037d64a54045a3191690d99fc1845f39ffa98eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
