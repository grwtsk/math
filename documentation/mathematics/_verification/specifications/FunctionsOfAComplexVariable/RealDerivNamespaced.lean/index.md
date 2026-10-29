# Verification target: Real Deriv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c29a991a528da6c3ec4cdc1a46cf55f4f84b8a0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variant60f566d704b3ac2f545ffbfe116ad3f37b060eb12096f71b6306907a7413baa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c29a991a528da6c3ec4cdc1a46cf55f4f84b8a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variant60f566d704b3ac2f545ffbfe116ad3f37b060eb12096f71b6306907a7413baa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variant60f566d704b3ac2f545ffbfe116ad3f37b060eb12096f71b6306907a7413baa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.real_of_complex](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasstrictderivat-real-of-complex.md) | 37 | `result-track:fe78968fae4ab4d0f2754adc67a3b9fdd7bd91e86db39b4f1feef6a4c6580723` |
| 2 | `theorem` | [HasDerivAt.real_of_complex](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivat-real-of-complex.md) | 50 | `result-track:f4030476111a3fc59367270d8d56a9fc4b4dda7582d54b3361762c308eee746e` |
| 3 | `theorem` | [ContDiffAt.real_of_complex](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/contdiffat-real-of-complex.md) | 60 | `result-track:a70f333a05eea4e290dbf874461450c2d3d710796d5d70c6aacb1552b5601806` |
| 4 | `theorem` | [ContDiff.real_of_complex](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/contdiff-real-of-complex.md) | 67 | `result-track:8181d23904beef979918562e06a1bc89b17fb4906fae7bcabead6c8f9db500e2` |
| 5 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv'](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasstrictderivat-complextoreal-fderiv-source-edition-2.md) | 73 | `result-track:3985dd8f1a46e373b4ecfffd4fc82cb8366fe0271e7070b522d59f3aa7840015` |
| 6 | `theorem` | [HasDerivAt.complexToReal_fderiv'](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivat-complextoreal-fderiv.md) | 79 | `result-track:03943d11a3af6a70930ee919dbc2d0463099b5f02df002133ce42b77b9db1362` |
| 7 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv'](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivwithinat-complextoreal-fderiv-source-edition-2.md) | 83 | `result-track:68a4536105011a9438d4d4d57ea4fcfabbca9bafc027130e74ab8ee217271787` |
| 8 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasstrictderivat-complextoreal-fderiv.md) | 89 | `result-track:3949fcd02c683d81b86b79429f10d028015b94166e4741d4483c2c96d71c1348` |
| 9 | `theorem` | [HasDerivAt.complexToReal_fderiv](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivat-complextoreal-fderiv-source-edition-2.md) | 93 | `result-track:b59f5e23388f043186b3598a128a59eed6b944b98690566bcf484757eb02126d` |
| 10 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivwithinat-complextoreal-fderiv.md) | 97 | `result-track:1801447acea9be0793a7dbca1d721593da2195b1395650916cddd2ddeb651080` |
| 11 | `theorem` | [HasDerivAt.comp_ofReal](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivat-comp-ofreal.md) | 103 | `result-track:4b45747c3031bdd9c940c07d642a4c2e33060a39d4cc6b2b8b5a39d0c9b4fc0e` |
| 12 | `theorem` | [HasDerivAt.ofReal_comp](../../../../FunctionsOfAComplexVariable/RealDerivNamespaced.lean/declarations/hasderivat-ofreal-comp.md) | 108 | `result-track:d7fcc53892a6d8270b95d99f0aecdb0647cfaed87b62817942157cdd8e3dd24b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b479d8c70b023b14e737ca80bb7208b8ffebec95badd83a9593e5339b6236a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variant60f566d704b3ac2f545ffbfe116ad3f37b060eb12096f71b6306907a7413baa9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variant60f566d704b3ac2f545ffbfe116ad3f37b060eb12096f71b6306907a7413baa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
