# Verification target: Limits Exact Functor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de08ee9823c23a269b7353671a76b2b5441b5c0",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de08ee9823c23a269b7353671a76b2b5441b5c0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor.md) | 40 | `declaration-track:a081b270788f42f8f26a504a0450578889f5328fda2138dba6f97afdf8b7a6c8` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:3e61ca0d653165fcc897089bab074ee3c2692207f4808b86c048a3e9c04f6521` |
| 3 | `def` | [LeftExactFunctor.forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-forget.md) | 50 | `declaration-track:a9b7848345321bf8925b8a2e5977436612cd44998910c6857016232e16bcd894` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:03e2b4cb7156612acc35a0edd1a1854f935649dcfddf9e2a4809ecc0a058e621` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:286f714b69c11ccb655ec56afc7d2e990eac50a6b48fec52cf2a4c5bf39735a2` |
| 6 | `abbrev` | [LeftExactFunctor.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-fullyfaithful.md) | 60 | `declaration-track:c533e906993ac735136a3b1bc1754d2f5a006febaf3739bcb8b3312631315285` |
| 7 | `def` | [RightExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor.md) | 64 | `declaration-track:c4d6e975e834a1d91da42ac894ec83b1d954a256020116742e2d7cb0f2f7de3d` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:08815599888a73e0d17ce4a73d99508161384e80fa2ff83dfca1bb4578b1ad03` |
| 9 | `def` | [RightExactFunctor.forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-forget.md) | 74 | `declaration-track:0cb5a78468803f5e85c3f093b03037dc9bdbe3f45b1d3c05052abc071401cbbb` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-14.md) | 77 | `declaration-track:cfff4831c5a3baa899818734e4c7de95b8b2e95f256b7fe7f2f0b2daffa97278` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:3d9d49c108f433bf7fb11ea9bdd15e5f531e910d292e24609a2ad14a9c303960` |
| 12 | `abbrev` | [RightExactFunctor.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-fullyfaithful.md) | 84 | `declaration-track:9db32816556b50dda952d3ebb4303ae9f611fadb44cacdb01064bc1011dbda90` |
| 13 | `def` | [ExactFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor.md) | 88 | `declaration-track:91efbd3ccf43119f96a3998cfce2d6b1bd53fd3de56e06a99091f08f9251839f` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-17.md) | 92 | `declaration-track:f2edb23ee91074cd3860b8d47f5c86cf61be2ef8d0c73c46401d9a0c0070a784` |
| 15 | `def` | [ExactFunctor.forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-forget.md) | 99 | `declaration-track:d4c3b1c6fa5ae50856e01ceb7466b4ad963fba2008db50ca741da42a9c6ec95a` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:1d74a6a100a47296899cce46d8cb211bd2aab636178295d373adcd3c48765f3e` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-11.md) | 105 | `declaration-track:9f3d7163b222c8c4c9fb83470dd2bc15336fec844cd8612a829d1c4b3bdbe03b` |
| 18 | `def` | [LeftExactFunctor.ofExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-ofexact.md) | 109 | `declaration-track:ed23e13b6ac0f7f106603170e928a4860f514213bacd9868023fcdd8fc367be5` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-13.md) | 112 | `declaration-track:a901bef8f1baa73d33229d2e4b7eae5384500a3c080611eb76b3fbf96a52a840` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-15.md) | 115 | `declaration-track:dde0a6a1ea9f05c2ebb771992ccde6005c102a66f1ae8adee35283e64128fdc6` |
| 21 | `def` | [RightExactFunctor.ofExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-ofexact.md) | 119 | `declaration-track:04cea5fecd726591fd7667e73daba71d6ec06b787f9fcf1940e4b2177f20a2bc` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-8.md) | 122 | `declaration-track:64dbd78f40002bf8f29601807d4d4ccf2d7bdf13166501e9283c41b305a22e60` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-16.md) | 125 | `declaration-track:dee34d36400f9a1b8794e2ab7e497b1bab60ce482d4599b6b5402ae5fbc6c59d` |
| 24 | `theorem` | [LeftExactFunctor.ofExact_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-ofexact-obj.md) | 131 | `result-track:522899f12ba4f2443141860ca5dbc890047f8312e37ebde07a711885d8423323` |
| 25 | `theorem` | [RightExactFunctor.ofExact_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-ofexact-obj.md) | 136 | `result-track:f9292e68ed31474666da375977a3f3bc58ebcc695f16ac452e4e28eab4ec7f76` |
| 26 | `theorem` | [LeftExactFunctor.ofExact_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-ofexact-map.md) | 141 | `result-track:ce8811a1f19e526d5a624721fbf9867f5dcd43bccec55645bdbdfc9df80613ed` |
| 27 | `theorem` | [RightExactFunctor.ofExact_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-ofexact-map.md) | 146 | `result-track:2075108bd039cdc982955d12513d23c48b0ad8874882b65251e9b0f7617c0d35` |
| 28 | `theorem` | [LeftExactFunctor.forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-forget-obj.md) | 151 | `result-track:25b88d1d28772ec743af4d74552beb75bb237bc09e075f332e1faa1007bd140d` |
| 29 | `theorem` | [RightExactFunctor.forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-forget-obj.md) | 155 | `result-track:8d8d23b7243abb10237b2706b0fc26677682f1dd301d24f03790485dd7df0791` |
| 30 | `theorem` | [ExactFunctor.forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-forget-obj.md) | 159 | `result-track:3309e1d8c2ebd090f8f9dea674fa81ab4a22920ea69819040d85bcd18d93ae8b` |
| 31 | `theorem` | [LeftExactFunctor.forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-forget-map.md) | 163 | `result-track:0d8053f0a0e78548ebd8e4e9b9e6e4384a01ebd87450f757646732baa476a852` |
| 32 | `theorem` | [RightExactFunctor.forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-forget-map.md) | 168 | `result-track:3ca66cd5dc8e8af7ccf330abeab7ef3d60bfa5bf997309ba30feff23fb895bed` |
| 33 | `theorem` | [ExactFunctor.forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-forget-map.md) | 173 | `result-track:6d05fe7c8921d89742820d434c6bf76677fc7aceb3b2e2deefb745e097ea5f05` |
| 34 | `def` | [LeftExactFunctor.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-of.md) | 177 | `declaration-track:05826e0d43ff6cde6f76b36ce456058d78677d7f561f5ef14912aa98dc3eddcd` |
| 35 | `def` | [RightExactFunctor.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-of.md) | 181 | `declaration-track:09800b4c4de4c65131f202329e8876d0f3d2293c176227947593ccac2217bc14` |
| 36 | `def` | [ExactFunctor.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-of.md) | 185 | `declaration-track:109e080a59dcb1f45b9bc1ba6d89b29d30924d52a5d37cba30a9ca50d8b13654` |
| 37 | `theorem` | [LeftExactFunctor.of_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-of-fst.md) | 189 | `result-track:e2db38105cef19552ba2e1bc5fa785daf0473dbd4bdaf9ebf857b74a1162f102` |
| 38 | `theorem` | [RightExactFunctor.of_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-of-fst.md) | 194 | `result-track:b96f663d92afe75902ef46f5ac2e72303371d80ef4c4788b36a338f10bb22e26` |
| 39 | `theorem` | [ExactFunctor.of_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-of-fst.md) | 199 | `result-track:eda15c9ab4de84fa2ef6f65dea29aa76d384ec8197990198bc4b4e14be9634a8` |
| 40 | `theorem` | [LeftExactFunctor.forget_obj_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-forget-obj-of.md) | 203 | `result-track:ecea5142cbd94a0bb8e4566d7a627de5db48d989751df9d4d75521dd78b4bf5e` |
| 41 | `theorem` | [RightExactFunctor.forget_obj_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-forget-obj-of.md) | 207 | `result-track:dc0d5610c9918443f72d31b32a86a2db16d858fb23db77b8dda2481fcacb5e2d` |
| 42 | `theorem` | [ExactFunctor.forget_obj_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-forget-obj-of.md) | 211 | `result-track:dc406cd6d889fd49dfec24f851a02239fc8d16f675762c163e792007dac4aee0` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-10.md) | 215 | `declaration-track:90cd76470a79dcb0c7bc71d9607df653e9259fb7b472387482ecc73ba94366bd` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-12.md) | 218 | `declaration-track:a385af6a9d9bc22718cd530b7adc9112781a43a9d386c2e17580d97874ce6c4b` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-9.md) | 221 | `declaration-track:6b78e0e85cc53f5876f9af6a7369b3e4f73041ac2110ca0599fc0752cb36d541` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/instance-source-edition-7.md) | 224 | `declaration-track:52c815c644ab7af7055afebc896e6463ebbeb445de0ec953569a49f96c1d7a4a` |
| 47 | `def` | [LeftExactFunctor.whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-whiskeringleft.md) | 235 | `declaration-track:2cedf3dde791764cc583faed6cd75b18f9685f48980c1c5370fc8a2be44586d4` |
| 48 | `def` | [LeftExactFunctor.whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/leftexactfunctor-whiskeringright.md) | 250 | `declaration-track:8ff6f8468eec985e6ee46f9f2a9341c0c8fde24f67a07f167fe8d13f789879f1` |
| 49 | `def` | [RightExactFunctor.whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-whiskeringleft.md) | 259 | `declaration-track:32f686068015246c39036f32fd61be6ee50e385cecf5c5d74c4f6e84af28810a` |
| 50 | `def` | [RightExactFunctor.whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/rightexactfunctor-whiskeringright.md) | 274 | `declaration-track:fa79d66979e817fd3a9ac0648082c064e78b88d59b09314ec6ddd450d57ea8e9` |
| 51 | `def` | [ExactFunctor.whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-whiskeringleft.md) | 283 | `declaration-track:0b2021f982deeec5b81eafcc8c4148a874ad34f00cdc6918610a778bac720481` |
| 52 | `def` | [ExactFunctor.whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorNamespaced.lean/declarations/exactfunctor-whiskeringright.md) | 299 | `declaration-track:1f6ded6abef2ad893def3f885c0cbcacfd8e8124928fe775f9dcae1eb67d3f4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3807b8bf5228527060891fda01d735cc7a784bf8037bcb76c4dca850817aabbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
