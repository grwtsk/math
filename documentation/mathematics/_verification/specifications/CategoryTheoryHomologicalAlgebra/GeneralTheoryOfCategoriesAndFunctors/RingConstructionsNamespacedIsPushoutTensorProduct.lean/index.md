# Verification target: Ring Constructions Namespaced Is Pushout Tensor Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "825b3284578f8b54947b7eab838850d2a4a9cc9a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `825b3284578f8b54947b7eab838850d2a4a9cc9a`.

Source path: `GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pushoutcocone.md) | 49 | `declaration-track:c303b09d6faf26b1bb583fabfc3ee324fda74063213b3d713f6b51e938920e7e` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pushoutcocone-inl.md) | 61 | `result-track:43a84639b238847d0cb92c274035484e28a0c87a6868425c3c430f1b88774331` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pushoutcocone-inr.md) | 66 | `result-track:2747d3a76dc57f9510003ebf5e815bd1c5a7eacfb0d296b49e95f5a2bc690edd` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pushoutcocone-pt.md) | 71 | `result-track:cb16790ad0f4e27c001416621bb694e444dac9a784e518ebbbae6795801fb2dd` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pushoutcoconeiscolimit.md) | 76 | `declaration-track:7abf635edcf55bec3ca8c8e5d39ed0561e6370eb6a403b163d34f0912fd3ca5e` |
| 6 | `lemma` | [isPushout_tensorProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/ispushout-tensorproduct.md) | 117 | `result-track:4ad8c2528d2486df91f66f00523b8da571e797291c10878b8e1b7de4c1702d70` |
| 7 | `lemma` | [isPushout_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/ispushout-of-ispushout.md) | 127 | `result-track:b461937b1cb6d2c8881795e1572beb23541b0138b5af9a0feef89c988f3b97bf` |
| 8 | `def` | [coproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/coproductcocone.md) | 144 | `declaration-track:3df9f71308192bce5646b2bfb9f266388049470827e3abfd0ddb75289d8bae18` |
| 9 | `theorem` | [coproductCocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/coproductcocone-inl.md) | 150 | `result-track:6b6abaf2280bd21f502cc438f569b003de65d74d9c1d4497dedc531b49873772` |
| 10 | `theorem` | [coproductCocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/coproductcocone-inr.md) | 154 | `result-track:d756cbff59b228a913c8250ead416b27f8ecf622a240f17c4634abc39419e0d4` |
| 11 | `def` | [coproductCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/coproductcoconeiscolimit.md) | 159 | `declaration-track:d82dc39142b52e4a93f915be3e87c184b4b6748e5b9e50f920bc79a45e2c7689` |
| 12 | `def` | [coproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/coproductcolimitcocone.md) | 178 | `declaration-track:a24d1a338f6e62c1887e7eebb271bd2d5bc433d42b36a2ede535172e3d130c50` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:de9f1fb42c823dedcea1bba42e4b204753a906c2c392e79d6325fb0c94edb577` |
| 14 | `def` | [punitIsTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/punitisterminal.md) | 190 | `declaration-track:911c969a46618002c70bc072c8b4f79d50c106de539b6504ea163b14cfa52567` |
| 15 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/commringcat-hasstrictterminalobjects.md) | 193 | `declaration-track:9afe12a017a3d99b21355fb73baf80d1d61799c4364a429677ee6daf5ec9752a` |
| 16 | `theorem` | [subsingleton_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/subsingleton-of-isterminal.md) | 205 | `result-track:5f8b7b924f03f9ee99b45f58a83d967d4a15f6cba4c898e66f51808346084900` |
| 17 | `def` | [zIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/zisinitial.md) | 210 | `declaration-track:ca38b39bb313ae2d597fab07e2c779253da1b48d981c74daa46e1186ec4aa11b` |
| 18 | `def` | [isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/isinitial.md) | 215 | `declaration-track:adf8645052395124c61253f33c3c6f2dec36d12883bac156eec98828e194e6ed` |
| 19 | `def` | [prodFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/prodfan.md) | 231 | `declaration-track:9c444e1c8d0c99c693c98dfb1dfbe8e121cdec32dac541a349522bbe50f3adb5` |
| 20 | `def` | [prodFanIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/prodfanislimit.md) | 235 | `declaration-track:b3743588294ef34782f49f9fa31c92aec4e85c2c1cee4c69b1ac398c35b95631` |
| 21 | `def` | [piFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pifan.md) | 263 | `declaration-track:596f43a2be2d9cf41e509f5680f93afb3ebca7bef9a35fcfc3396b453c552242` |
| 22 | `def` | [piFanIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pifanislimit.md) | 269 | `declaration-track:4f80cc5d0a7e93c4e854573cd97852920052dd923dfc5594be2124bb4d3f0606` |
| 23 | `def` | [piIsoPi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/piisopi.md) | 278 | `declaration-track:65ba7e00533c4bf7407007ddc3ff1c3131773b13c2a24a3bb948931ddaf25e5c` |
| 24 | `def` | [Ring Constructions Namespaced Is Pushout Tensor Product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/piequivpi.md) | 284 | `declaration-track:e50c9645c37735a997ab996cb731ab61dcbb22f6b68384cb7d370b1e5d9e0cb2` |
| 25 | `def` | [equalizerFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/equalizerfork.md) | 295 | `declaration-track:909b49c8904087b3746d62e0fd8a82d816150f6129bf31b8750c739bc1fb6a87` |
| 26 | `def` | [equalizerForkIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/equalizerforkislimit.md) | 301 | `declaration-track:46a0e045f1bb18268138efe1f2572223a73de748a24eb2c001030fc91a9df155` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/instance.md) | 312 | `declaration-track:7b75c97f4bb63df8c68f18cb3b37868dc3e87a1f18bebebf57b7c5b6e3bd9de9` |
| 28 | `theorem` | [equalizer_ι_isLocalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/equalizer-islocalhom-source-edition-2.md) | 323 | `result-track:2bdcf97a420044f5daf461b0718323facf99407e882c08d27f4735eedbc52446` |
| 29 | `instance` | [equalizer_ι_isLocalHom'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/equalizer-islocalhom.md) | 340 | `declaration-track:1b052a0c939653143b72827952451c9316bfa08a7cf2475ca0bcb2a00a84fa4a` |
| 30 | `def` | [pullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pullbackcone.md) | 358 | `declaration-track:9ccfe98be5e1b406dd7b707bafe540f08ff90725889e3c1930945a98b5157afc` |
| 31 | `def` | [pullbackConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/declarations/pullbackconeislimit.md) | 371 | `declaration-track:a9b00184a5f4172601903825768470e8a79cfafe533e50492cdef55003f5006b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b063b1cf93fda249ab0cb475028150b7b2a4bc5f480d8dab27bfccf0789b5b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean","GRWTSK/_verification/specifications/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
