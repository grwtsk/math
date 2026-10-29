# Verification target: Fun Prop2 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94f1d9da720a04a2069172aaac481289d10a1760",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunProp2/Variantb0851b0c5d36b52ab68d943a3d41be33e4867e9f112a5712b824be772e8e0257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FunProp2Namespaced.lean/index.md) · [Full source](../../../../GeneralTopology/FunProp2Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94f1d9da720a04a2069172aaac481289d10a1760`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunProp2/Variantb0851b0c5d36b52ab68d943a3d41be33e4867e9f112a5712b824be772e8e0257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunProp2/Variantb0851b0c5d36b52ab68d943a3d41be33e4867e9f112a5712b824be772e8e0257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FunProp.Differentiable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/foo.md) | 18 | `declaration-track:447e84482e4bf62e720d02605c936ccb7c46d7f5d19e66178b9f3286ff890eaf` |
| 2 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-10.md) | 20 | `declaration-track:720f37a9c53a1bbfa732344d9409c97786e86ce893d9b190ff3d6812c699a14b` |
| 3 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-6.md) | 23 | `declaration-track:4bff0f31094a6802f3655942b3dac38aec641dcc9d4aa82aec3279e56d41d3ac` |
| 4 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-16.md) | 27 | `declaration-track:ba31471bb536da728a81ff457df1f341d1e58a544dbeb7ef8d966d196ddac1bb` |
| 5 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-12.md) | 30 | `declaration-track:882896381d1fc75ffbe387c3c88668badf4a79c4b17819e744978e34203e015c` |
| 6 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-7.md) | 34 | `declaration-track:4c7d285d04457447f824ffa4708d5a1e4c8bd4bb67c3b498d8aed0ee57ae6c6f` |
| 7 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-2.md) | 37 | `declaration-track:0b339a9e1ac1c0032e49682c3227955b46e2334749014282851cb4ff21cbe493` |
| 8 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-5.md) | 41 | `declaration-track:1d5d6eb858153e491979076baf496cb6911ba3c1d8ac3761a66cb87c73dd2a4f` |
| 9 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-11.md) | 42 | `declaration-track:8051ce28f74c52d8582591737dc887486c16db5dcaa6750c755775a77cbdc24f` |
| 10 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-4.md) | 43 | `declaration-track:140b670adc58755b487eabb6576676be7ea81646ccc456bbd218eab99f64f567` |
| 11 | `theorem` | [ContinuousOn.log'](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/continuouson-log.md) | 48 | `result-track:e3da8b95ae9e6b7d0fb1aa85ae1b3187f3e3cdce9f5e513621cb336e9c8a559a` |
| 12 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-8.md) | 51 | `declaration-track:52979e7133ec2088f844f1fcac8626b9d17c8950db237fa71ef0843c7f7066a1` |
| 13 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-14.md) | 55 | `declaration-track:a45bb71aed44574f3985d46e87c72dddc7d3189b45367c5b11e717cd269512fd` |
| 14 | `def` | [S](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/s.md) | 60 | `declaration-track:672e2c9c2b01088074c31d1e0866fceb3002897171fb8214dd2ccd4a3c3e09d3` |
| 15 | `def` | [T](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/t.md) | 64 | `declaration-track:1abc1a45d42c2e1bf63e8323400c7bc826d0a3b3d309d227ff1186097733cb53` |
| 16 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-17.md) | 66 | `declaration-track:da84e9ab092fd0c09b76779649db24e192e2b442546671b4e569cd117d97a1bb` |
| 17 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-9.md) | 71 | `declaration-track:571690a034f9ac7626601a2031db5b56bb6eacbb264200860ecca12f5aa8ebd1` |
| 18 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-13.md) | 75 | `declaration-track:a05f50c6499403740dae6bd96ddc79854ef754d3fc7bfa07abcb3bd50947203f` |
| 19 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example.md) | 79 | `declaration-track:08e1a6d98474f84733c203e2e9d898732b18e9b4c6e96df6adc06cb3d3f89c0a` |
| 20 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-3.md) | 83 | `declaration-track:109a64f1b999a798062c6223a9d972abebaac7437342c2ae4c111321d9cbc0ad` |
| 21 | `theorem` | [t1](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/t1.md) | 88 | `result-track:5392027750755e5a138592a5ec641b16aa66a24b59139b05471021aa205c4dc9` |
| 22 | `example` | [(anonymous)](../../../../GeneralTopology/FunProp2Namespaced.lean/declarations/example-source-edition-15.md) | 90 | `declaration-track:a5622a4f9bedc018748d844a29a5e437f31c561cacb97b6aebb41339a4e3a7ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d29d896eb8199cb0cedbb58209929b1b8b894cf0e08d2ca4f584e0a25bcc0f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunProp2/Variantb0851b0c5d36b52ab68d943a3d41be33e4867e9f112a5712b824be772e8e0257.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunProp2/Variantb0851b0c5d36b52ab68d943a3d41be33e4867e9f112a5712b824be772e8e0257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
