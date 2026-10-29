# Verification target: Galois Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "674ea2d06bc0bd7fdf3776d619c6b881696e5572",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `674ea2d06bc0bd7fdf3776d619c6b881696e5572`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding.md) | 47 | `declaration-track:6fa1887e392a07cd2e9cf278f9bbc9a53fd8f709b42658981c93b9cdbd8d78e6` |
| 2 | `lemma` | [autEmbedding_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding-apply.md) | 51 | `result-track:f46da0770abbc410fe1cc77d8321ce56d5a344b3eee1d29b9ee572276b07d80d` |
| 3 | `lemma` | [autEmbedding_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding-injective.md) | 54 | `result-track:9dc3a6dd33b90de9a8ebb0f44020fc5af3b6c632713aec4dcc2298729bcc3f86` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-8.md) | 61 | `declaration-track:91efe489b5ddf4bf0e581f6637193f505ca5dea0d7cd063f60ca1dae59e34500` |
| 5 | `lemma` | [obj_discreteTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/obj-discretetopology.md) | 64 | `result-track:3cd11230a9fcaa0fdac51fdc32c219349f60ff0d573f63df773b45fba8cc825a` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:13ab27791432103c6208937d5a4d1a0e40a6b680fc8001fba321309ef141fdce` |
| 7 | `lemma` | [aut_discreteTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/aut-discretetopology.md) | 70 | `result-track:4717df8bc988da274f83a7365d77963f7b74cb34881138e5e76b5624a27d0b03` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-11.md) | 73 | `declaration-track:e73a9c55cc4f41bce8f63ab18698ff6ca886a7a3b3abd8f462490802736c74e0` |
| 9 | `lemma` | [autEmbedding_range](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding-range.md) | 78 | `result-track:eb46b026c08370eb1ea2fe6d77f1c368d5ca5c1630f5322a607277a484de15cc` |
| 10 | `lemma` | [autEmbedding_range_isClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding-range-isclosed.md) | 88 | `result-track:24459aac08f6cbc2fc8a90749affcbcac0d4c88577589a037e0c68f367cc6268` |
| 11 | `lemma` | [autEmbedding_isClosedEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autembedding-isclosedembedding.md) | 94 | `result-track:2e1df95f122dd18addc40edd9ac9b0f1ca9b411d3cb7ba5170bddb3270af163c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:28dd78c01c501b3b503dad2c630e559d01f91bd8c58bbe875e01eed2327cc81b` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance.md) | 101 | `declaration-track:098aed1941e761b09ee133e16cbc786d6aa4456f6c79c322314fdd700cd7038d` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-5.md) | 104 | `declaration-track:2bf56aafd28a19b1f4d1894d7e9819bcdb6122ca3758b10bc017bb33e5b21f72` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-7.md) | 108 | `declaration-track:747616017455c43c023364990bfaccc7da6f2338a611614cf0c2998a06207f43` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:138ca498701fed01cf0dcd38466e7e9d34dffac14866cfff990d173e29058825` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-6.md) | 114 | `declaration-track:55d3482535d39156ac9cdccd1d893d2a41f87e1174968a9aba42da4070147c61` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-9.md) | 116 | `declaration-track:a7694d4bab80391b268b76769b1dfdd597eb3dcc6911872742db33c83250c779` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/instance-source-edition-10.md) | 118 | `declaration-track:e3630ee464c738f331eef65975010603376aa6033b0f9321f8d36cc2c04b5687` |
| 20 | `instance` | [continuousSMul_aut_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/continuoussmul-aut-fiber.md) | 122 | `declaration-track:f946125cc82de6bb19afec5de7f99d4182fdc5e20a11a6e90b896e4b43667bcd` |
| 21 | `lemma` | [continuous_mapAut_whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/continuous-mapaut-whiskeringright.md) | 132 | `result-track:02bf05e1cb2cc7f7f6d3af9f2ee90a2dfcce0d1e47ac8a37d82562908539b743` |
| 22 | `def` | [autEquivAutWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/autequivautwhiskerright.md) | 142 | `declaration-track:15f478d80e306f0ad637e0fbaf2ffd3310a70481f00da26a6d486e5755d34e45` |
| 23 | `lemma` | [exists_set_ker_evaluation_subset_of_isOpen](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/exists-set-ker-evaluation-subset-of-isopen.md) | 159 | `result-track:b61fc45201e59fd4ede44a04ea8a412ee3920f1ff535f84be501bcfaaecd4d7e` |
| 24 | `lemma` | [nhds_one_has_basis_stabilizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisTopologyNamespaced.lean/declarations/nhds-one-has-basis-stabilizers.md) | 187 | `result-track:54b4ef87819fd9aff3b84e5625adef6fd9bd695947e7938358889e4cf46be19e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e1cd0bff0e515e298674fba35942f5e2d97ca6e6949628a2c63c6aaa472b118 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
