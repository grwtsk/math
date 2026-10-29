# Verification target: Discrete Category

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1488454390b1a27ddbefc847ebfeaccfd4ac0e28",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1488454390b1a27ddbefc847ebfeaccfd4ac0e28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/discrete.md) | 48 | `declaration-track:e9235fee8753fdb4a506778b1c4ad539c4477da2d97f48b0a565f4cadd98fda4` |
| 2 | `theorem` | [Discrete.mk_as](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/discrete-mk-as.md) | 55 | `result-track:84719a2f88d75c64f520c13acaf1c10550af565e5207a566c13d00b4047df786` |
| 3 | `def` | [discreteEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/discreteequiv.md) | 62 | `declaration-track:55edadab160e85aa3d53c682fdfff0b0d282b3948ca2faf74f7b6f3c6bd95fdc` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:34aa8eefe80d30ec32e038b892295498ed663d9732f37700873f4d67558dc7cb` |
| 5 | `instance` | [discreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/discretecategory.md) | 79 | `declaration-track:32561f9e14183b2b87543db4e97cc6d6b6617c3f3a698a0b33d070e7c4fac155` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instance-source-edition-4.md) | 94 | `declaration-track:a957e4bfde0ccd770c290535a1cef54495330a89cfe4d65f60c7e2bcbcd5ed27` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:e4e5914dc30fec0249560d0e7eeae51069a69c2cee82032e7fc18d3a5b6e3b18` |
| 8 | `instance` | [instSubsingletonDiscreteHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instsubsingletondiscretehom.md) | 100 | `declaration-track:a8d02bb9aa2399ba08cb46046365202e89e8d79214473061f9a1cc1205cb67bb` |
| 9 | `macro` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/macro.md) | 105 | `declaration-track:242ea7f4a5114572caa041941b643726fc39e4462cabc9adf44206ca13d2558a` |
| 10 | `def` | [discreteCases](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/discretecases.md) | 118 | `declaration-track:e9fd234e5a3b8197d531f85ba0bdb7cc61cb9859a2d5a102c3cdcdc975031afa` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:7be385e595d2c94da8c7e56bcbc67f0f428481bd9803ad459613d94e330674ed` |
| 12 | `theorem` | [eq_of_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/eq-of-hom.md) | 132 | `result-track:076506b3a0fad00d3bb70b604895b8e328f32ecb1a504e73d4d38675c9f14f97` |
| 13 | `abbrev` | [eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/eqtohom-source-edition-2.md) | 138 | `declaration-track:f1ba37c6c003085df81a5266c15a421db0edaf379efe47c871ce9ba3d46d3974` |
| 14 | `abbrev` | [eqToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/eqtoiso-source-edition-2.md) | 144 | `declaration-track:9b5e992713ce3150678829c81f1dd67eed8d27708b40e2e130ca8e543d63ebd3` |
| 15 | `abbrev` | [eqToHom'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/eqtohom.md) | 149 | `declaration-track:79d8416443b9018e8930a5a72567205447ba67e004fd1e7a9067ae3552aac1a8` |
| 16 | `abbrev` | [eqToIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/eqtoiso.md) | 154 | `declaration-track:1f0a8e31f7434c223489a0bd7064d12d6615db6db6815951724f6f6bc8c77c35` |
| 17 | `theorem` | [id_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/id-def.md) | 159 | `result-track:bde893a5b8d253014b1c23aafa5094f610b66c01f58665660dbd9517a9122087` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/instance.md) | 165 | `declaration-track:1d6b7b64acf057abde1600a9598b09038669b3cd623594d04ae28f4985a0ec7b` |
| 19 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/functor.md) | 172 | `declaration-track:09870b0fbc9b557ab55651e18ee2d108286084f5922bf27798b935d29ba2653b` |
| 20 | `theorem` | [functor_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/functor-obj.md) | 181 | `result-track:f14982308d64624b58dc5434b7d0eb1d2eaf23066b247328f4ad35aa1bbaf93c` |
| 21 | `theorem` | [functor_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/functor-map.md) | 186 | `result-track:909f5c4d3ae21db5d8594c6f406435aa61431acc2e34a106203c33b0048f5a2a` |
| 22 | `def` | [functorComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/functorcomp.md) | 194 | `declaration-track:6df0edd686787c8037d726b39732dac9c40e2b14e5059816e54210dfa4665275` |
| 23 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/nattrans.md) | 204 | `declaration-track:701c57ce8b18fab1f86e3d7e2784098c709962254e87d7530f17926a82f91b24` |
| 24 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/natiso.md) | 219 | `declaration-track:8f591996894cef126c6b065a51bc912e7100fa882a9796df6bf7281c73ce9663` |
| 25 | `theorem` | [natIso_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/natiso-app.md) | 229 | `result-track:53ec4e1104bfbba8b4d61fad6b1e8f07d9772c04ef7676ef82b306a34941d037` |
| 26 | `def` | [natIsoFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/natisofunctor.md) | 236 | `declaration-track:9fcd975e0405f63bc47491518311bef559251158a03859de68ef0b1b5293c730` |
| 27 | `def` | [compNatIsoDiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/compnatisodiscrete.md) | 242 | `declaration-track:437345874b16b69d2fffca5fb0d91ef9cb170240f022522be74bbbad930189b6` |
| 28 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/equivalence.md) | 251 | `declaration-track:459501e0f33a6cab48b88a67958101c2308c95ff19e2e84557c700bacdba7681` |
| 29 | `def` | [equivOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/equivofequivalence.md) | 262 | `declaration-track:c7d3a6ce5493d7b3ac28522d370035b31a878f1b417fa6a4a58bf39f137dae65` |
| 30 | `def` | [opposite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/opposite.md) | 279 | `declaration-track:bf4511556b89b78b2669d30b829772210ab3b2eb6d55e4637361dd3c6f199d17` |
| 31 | `theorem` | [functor_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiscreteCategory.lean/declarations/functor-map-id.md) | 290 | `result-track:3791b51b607f6b8a9d7b7e38f107ed3d806b81e3a667e0eac66d23f225041dce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bc8fa088d5b590aed9cfa38aa354e6af972de528c2e7d5633da8da0c8867fe5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
