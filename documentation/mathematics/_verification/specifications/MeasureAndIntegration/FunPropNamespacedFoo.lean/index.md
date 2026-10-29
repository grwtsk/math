# Verification target: Fun Prop Namespaced Foo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58232b7dd0f41f9a59a541d745d961bb37cffdbd",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variantf0ab79a7bfea3a459ff3874aed3e3026e6c1d7c5f1c564a2aee409ee5eaf9628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58232b7dd0f41f9a59a541d745d961bb37cffdbd`.

Source path: `GRWTSK/Analysis/MeasureTheory/FunProp/Variantf0ab79a7bfea3a459ff3874aed3e3026e6c1d7c5f1c564a2aee409ee5eaf9628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FunProp/Variantf0ab79a7bfea3a459ff3874aed3e3026e6c1d7c5f1c564a2aee409ee5eaf9628.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/foo.md) | 27 | `declaration-track:e84241e0a74de35600c507fc7fd3b1c19bbd128977e4c2dc76f9a2adc58e5002` |
| 2 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-12.md) | 29 | `declaration-track:5a39be7cabe5dccfa605925410dca21f9a0fe7ef8fac840989b3a0a3ff3d7a6b` |
| 3 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-18.md) | 32 | `declaration-track:9dcbf840cd3d1daa5732bb18900a2b52440cbdfaeedc1968ed8d0e37b40e6784` |
| 4 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-3.md) | 36 | `declaration-track:27767f59130c4019be5f408bf1b15724fef576212c44ed32dfd205ae9594b030` |
| 5 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-8.md) | 39 | `declaration-track:4d0ba3222b648a91b58f1e14ccb121ead2beae19105570168a09f9aa82c5df56` |
| 6 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-10.md) | 42 | `declaration-track:54785fe08e5254d528cec99acd10feb94bc0aa658169e7bf3427b8944971e575` |
| 7 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-13.md) | 45 | `declaration-track:608f6a29c23c4e5c497425d402e7a622bbc4bc5169ed89437cf60051cf2bc778` |
| 8 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-11.md) | 49 | `declaration-track:56886c970e9fc5213d59598d721c840bd40f97040cf464ce1316630fafc190ae` |
| 9 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-27.md) | 50 | `declaration-track:c81a9276df48d5a65e470991177e9d80957835d658bd18cafff04abd8de78540` |
| 10 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-7.md) | 51 | `declaration-track:4adbd9ccc94def8bd063b222ee6f2c8c8f2382616d366fdb7891d92d88474ec9` |
| 11 | `theorem` | [ContinuousOn.log'](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/continuouson-log.md) | 56 | `result-track:1da9672120486265e91d9e1224354af95bf42bcbdb92735f659f632aa9510a45` |
| 12 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-17.md) | 59 | `declaration-track:95eab1961b597841d083c39af75544d8a7444a29238e504a77b8a2665a7b4fc1` |
| 13 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-19.md) | 63 | `declaration-track:ad8ec62130e7325347c457d65fb76d745831717fdea76260488c1ad683e36237` |
| 14 | `def` | [S](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/s.md) | 68 | `declaration-track:c5b947cb030b365ff0ef7fd10cd7dfdf765b88994985eac7c59d5caddf2d0245` |
| 15 | `def` | [T](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/t.md) | 72 | `declaration-track:32945d7b33dfa0b5fbb7d06590f7569e684f50b771adcae02601f203ee4b9968` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-23.md) | 74 | `declaration-track:bd9b4abf2695651ca297aa182bfc19a9335e1764f54eb7bdf66dad876efd1b6f` |
| 17 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-20.md) | 79 | `declaration-track:aead261eabbb047bc4c84608e7d8b322b42bbd4289eb17770efd78cef9ad5802` |
| 18 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-31.md) | 83 | `declaration-track:f4225dbc23f862c307a9a927b6b166bbe055a4b216196a635b2265690dbde612` |
| 19 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-22.md) | 87 | `declaration-track:b89d313cbe6c376734409cc434cac4a4af4db356abc3ed8d48ebe0b2ce9351dd` |
| 20 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-2.md) | 91 | `declaration-track:275c2c64f867f4c548c63566fb492bc8da8ad94c87a6219851016a2484fbd219` |
| 21 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-29.md) | 95 | `declaration-track:e42c945cae9e6c873e60d1fbaeb1a79740b4f8f4a4415e3f51f0498f78b68678` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-4.md) | 98 | `declaration-track:3104e38aed5ee01a26b1b60cdae1eaeef543d90d42735fa45d5f7a7737c7c769` |
| 23 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-26.md) | 107 | `declaration-track:c5c0ae26528642cffd22bf1a77e58577ea8669c268e1e221a93ab472b77c243e` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-32.md) | 109 | `declaration-track:ffa80e8ba2708c6cb2d29e271fc894cfeb1f17d3a2a94deb7043cc7ebdf52506` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-6.md) | 112 | `declaration-track:4ab580cf00d7414d67fde225249b072e1fcded53fc605185baf6710d84143807` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-30.md) | 116 | `declaration-track:f1aab8851aeb64a13c53ce2dd6dc655d10c0ed330da0045b2d4c5e5c9ed80b19` |
| 27 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-16.md) | 118 | `declaration-track:74a76e53c7a547fcb2b314397b5848c1225810545c3877df47ed634e19e8d412` |
| 28 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-28.md) | 121 | `declaration-track:d591716b2c2bcd5fae0746351cd94a7621e7b6f75b0549a3cb6f541cc6926c95` |
| 29 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-14.md) | 123 | `declaration-track:66bbd1ac4636d4190fea01a214a55dedbc18b8e666f7b2ef7d7b32756e24ed86` |
| 30 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-15.md) | 126 | `declaration-track:67c5cec738124a73ba53d53122259c51146f8dc45e430ffbdcb2bf71f3b959a2` |
| 31 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-24.md) | 129 | `declaration-track:bde82f2dd4027299c3de24d07ab4cf2bce6d4b26f3b9ebfb2a9c345d46c5cc9b` |
| 32 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-21.md) | 131 | `declaration-track:b70b6d96141fe4387ed6a6b3190d5fd321b4c6261b0d5237976f432a3bf9380a` |
| 33 | `theorem` | [t1](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/t1.md) | 135 | `result-track:e07a96cb46ea81b93657f8c23963b9d39285b616a470260b5a906cb83a6df429` |
| 34 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-25.md) | 137 | `declaration-track:c30ed0bf52e55180fb1b3f16001bcaafb6c9203fab0b60b98a3baf5fa5c459ed` |
| 35 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example.md) | 150 | `declaration-track:226eba15c7889decf4773535e3f073d128d14fdc1b5f2e0cad37048bd7c85113` |
| 36 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-9.md) | 160 | `declaration-track:51c5b586dc8d1fa0e8c0a1657e80006e986191dbfba09c93fa94e566f60b8999` |
| 37 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FunPropNamespacedFoo.lean/declarations/example-source-edition-5.md) | 164 | `declaration-track:3990ed9a7dc120d69bb8f8ba0f8f6d26fd0a397e6111e8910ffe281daadf5c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03e58bc40e7775478756b66b3180b438c4bc727b7d13426c6e35f98b59c4bd63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FunProp/Variantf0ab79a7bfea3a459ff3874aed3e3026e6c1d7c5f1c564a2aee409ee5eaf9628.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/FunProp/Variantf0ab79a7bfea3a459ff3874aed3e3026e6c1d7c5f1c564a2aee409ee5eaf9628.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
