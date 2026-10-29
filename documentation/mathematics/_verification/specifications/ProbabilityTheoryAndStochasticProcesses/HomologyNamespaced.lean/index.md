# Verification target: Homology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "254e789d0e653b48641b04e939635223a7a6abe9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `254e789d0e653b48641b04e939635223a7a6abe9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.CosmeticSurgery.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstHomologyCode](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/firsthomologycode.md) | 32 | `declaration-track:d2237021b8534797d33834c21c5eaac78a9768d80141c5ad5ca92153006d4517` |
| 2 | `theorem` | [firstHomologyCode_zero](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/firsthomologycode-zero.md) | 36 | `result-track:f682d213cba4fedc93f0faf190aa107d59c9e75925f81da6f32c00e5e6627913` |
| 3 | `theorem` | [firstHomologyCode_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/firsthomologycode-of-ne-zero.md) | 41 | `result-track:bf0a47e310af864b8d6647f29f490842a73c986326466d81ff873fd194c79ccf` |
| 4 | `def` | [fillingFirstHomologyCode](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/fillingfirsthomologycode.md) | 48 | `declaration-track:70e32f2678b115690ee20b73b7aadd09ba3e87dd89c26554e35b4bdb226a0053` |
| 5 | `structure` | [FillingHomologySemantics](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/fillinghomologysemantics.md) | 58 | `declaration-track:6c185b372ae4e5b789639cf8a2338cac768614f112cc0e9cfe27fc2dae341b69` |
| 6 | `theorem` | [filling_codes_eq_of_homeomorphism](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/filling-codes-eq-of-homeomorphism.md) | 75 | `result-track:cd0a09fe2e2fe4bede9613bcc37004bbf23389d82f713a4e7b29bcebc6b5e77a` |
| 7 | `theorem` | [natAbs_numerators_eq_of_homeomorphism](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/natabs-numerators-eq-of-homeomorphism.md) | 87 | `result-track:57e51fb5b0f1b0361f2f57dbaa2a8272d5d16bbc554d6ea7f04b4b702398c82a` |
| 8 | `theorem` | [plusTwo_firstHomologyCode](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/plustwo-firsthomologycode.md) | 102 | `result-track:816e32266dfa0c73337745c515034c5118b1b297bd809753bbd4734e6bdc3689` |
| 9 | `theorem` | [minusTwo_firstHomologyCode](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/minustwo-firsthomologycode.md) | 110 | `result-track:65b3326c26c615d3bb798f3af2453d1e1dc265fc3a273a0a8731df41aecd6feb` |
| 10 | `theorem` | [plusTwo_minusTwo_firstHomologyCodes_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/plustwo-minustwo-firsthomologycodes-eq.md) | 118 | `result-track:551dbbc48753350bdbd45a5ebff554f7c3c4847d274374c7946dba4dee83d150` |
| 11 | `theorem` | [residual_filling_firstHomology_codes_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/residual-filling-firsthomology-codes-eq.md) | 130 | `result-track:e4293974cbec97d58f71ffb9eb61b8c7d5e71176efb5b1080ec6166ee69240e1` |
| 12 | `structure` | [ResidualLinkingFormSemantics](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/residuallinkingformsemantics.md) | 144 | `declaration-track:a8decd2b5cb8d32888618c7e94f15b0b48c8603a9919105e14db7248afa735b6` |
| 13 | `theorem` | [residual_linking_codes_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/residual-linking-codes-eq.md) | 157 | `result-track:31e8ad2cf834f5dd7d95974b6520faff5fa25f645f1c3ef26290449290d1b1d2` |
| 14 | `structure` | [FundamentalGroupQuotientCapability](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/fundamentalgroupquotientcapability.md) | 170 | `declaration-track:5bba8279be6eb956f77948af42b735f38c8ea6b4ea4bfee94ddeeef30ecd9e30` |
| 15 | `theorem` | [filling_group_is_peripheral_quotient](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/filling-group-is-peripheral-quotient.md) | 213 | `result-track:da7354aca130a1e41d0fe8dfdf16793cebc973e39e0ffab61e97d9b02a98cd09` |
| 16 | `theorem` | [normal_closure_independent_of_basepoint_path](../../../../ProbabilityTheoryAndStochasticProcesses/HomologyNamespaced.lean/declarations/normal-closure-independent-of-basepoint-path.md) | 225 | `result-track:7454b221f9ea0be744013508ae4c26d4afa2c8603104a3e5a65b11a43dcc108c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12ae474ef52a251ac84722840d1392495c5d00298eb4608d80b052d3f95c6273 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
