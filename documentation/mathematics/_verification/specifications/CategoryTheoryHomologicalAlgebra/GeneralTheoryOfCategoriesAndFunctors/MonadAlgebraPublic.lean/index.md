# Verification target: Monad Algebra Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d079fbafea6fe45740f80a84f465f34924f2d5c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d079fbafea6fe45740f80a84f465f34924f2d5c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra.md) | 43 | `declaration-track:54f8bcb5ba38e2b69afff714bbc57d27107132ffea9041e2749628133785c75d` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/hom.md) | 61 | `declaration-track:3ef1f104dbe8bfc8e0d47e46595dda268b957c67117177d15d9e7cd557f6b514` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id.md) | 72 | `declaration-track:23db36b18a4a595ea317f76cba90f8ee54313d3dfc913f7c47232a5d25185214` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:3eb86157d2c675827c2a00228befc10a0311f2189d89835cff9bae333d327f20` |
| 5 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp.md) | 78 | `declaration-track:597a21434d9f2104b91fde41f6b90776f490c5e1828b3bc3e3da67df2fdb65e8` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:3819787828efca1bf3b84537dd3b88598d97b7ce931081d8fea436b1cacac340` |
| 7 | `lemma` | [Hom.ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/hom-ext.md) | 88 | `result-track:101a1ebc5d7e59a2dfe1cbb3d39e7fc9e04da1e21e8319c8d1758ea8f448180e` |
| 8 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp-eq-comp-source-edition-2.md) | 91 | `result-track:f043922a121b8ee3928189bae912db65bb2142204721b3f07417b6b22444771f` |
| 9 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id-eq-id-source-edition-2.md) | 96 | `result-track:36001e0ddd2fe0e0ea420ca051a0325ed748671e5ae6f0d9f056f67e6e808a0b` |
| 10 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id-f-source-edition-2.md) | 100 | `result-track:e570456cf9c6eddc04e37d341ad30d18bca7c73a8ac94e2d31866f50f39c315a` |
| 11 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp-f.md) | 104 | `result-track:0ce1e17ec56f75c4f6614d3b575847bd008e2493d9f70711797f3e35e8be0e46` |
| 12 | `instance` | [eilenbergMoore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/eilenbergmoore-source-edition-2.md) | 109 | `declaration-track:db6db9bdf6d13c83460339f490a6b886fa7f2272da60d192754b3793a4eab642` |
| 13 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/isomk-source-edition-2.md) | 116 | `declaration-track:b917eddebfc1aa9acd0e1b63976e71a7e12a7bfb025e4d6e851107ba4f624f91` |
| 14 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget.md) | 131 | `declaration-track:03099e93e7a35469f490a173c97db17f0c02baedf3f02e3df424e601760bd37f` |
| 15 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/free.md) | 137 | `declaration-track:520f795cae82a02401e8222e8849543e58ead7fb4a6faeee274da8b46222422f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance-source-edition-6.md) | 146 | `declaration-track:92c8d4e4d26a69e749edc4f0fcd45a32ab1c707cf5976399486daa194e5be535` |
| 17 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/adj-source-edition-2.md) | 156 | `declaration-track:610cc95e7f52a5ee66426e1052b2fb9619a36df263cd03d0dd4b83371b991f0c` |
| 18 | `theorem` | [algebra_iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-iso-of-iso.md) | 173 | `result-track:3b396141ae0076129a42b533aa4ee363739cbd57fc29f65c9f628735fa1e8178` |
| 19 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget-reflects-iso-source-edition-2.md) | 176 | `declaration-track:90edd60a37fa00516345e18ccdf0ef74f1fc4627775c1d3fc1f306f8257a44d6` |
| 20 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget-faithful-source-edition-2.md) | 179 | `declaration-track:a4f068c0d4da0dcd67895ebcf4763460f59b3b9348b25afaaf389e6eb50c1ed3` |
| 21 | `theorem` | [algebra_epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-epi-of-epi.md) | 183 | `result-track:1925c1a5afc760227788f6af248538fe4cad685939619ef9ce60398e9fe64554` |
| 22 | `theorem` | [algebra_mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-mono-of-mono-source-edition-2.md) | 188 | `result-track:71aa149cc1ef87d159fe253d528f3d050482b8cfc83d8c2f720799a7bff1029b` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance.md) | 191 | `declaration-track:2a6d7104e9b1a5ea0ce9cb8257b84e59d90c88b296a6a68d8a4bc95e27d06804` |
| 24 | `def` | [algebraFunctorOfMonadHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebrafunctorofmonadhom.md) | 199 | `declaration-track:6156395ebc64b5d498d99db1825b547d4790ebcb1fc831ea48d0d382a339112b` |
| 25 | `def` | [algebraFunctorOfMonadHomId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebrafunctorofmonadhomid.md) | 213 | `declaration-track:6dfe99063c8cc7326829f93294b2cf9e68e1533a9f0dbf60377266c9f6d19a1e` |
| 26 | `def` | [algebraFunctorOfMonadHomComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebrafunctorofmonadhomcomp.md) | 221 | `declaration-track:0bddbde4e67efe93dfbf3e2495a296ac9c536407a4a843fc6abb25e9b6780ab3` |
| 27 | `def` | [algebraFunctorOfMonadHomEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebrafunctorofmonadhomeq.md) | 232 | `declaration-track:432def48197ce938af7ca6512671e43df2ccf9d594619815e5aa44a094eb5622` |
| 28 | `def` | [algebraEquivOfIsoMonads](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebraequivofisomonads.md) | 241 | `declaration-track:7281f5691e73a262fd6f4719ff27d1a841a339be707f93ce15a0ed8b1a528512` |
| 29 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-equiv-of-iso-monads-comp-forget.md) | 252 | `result-track:e34b4aa4067255c4ec2b58611eba4e5e9f8e04f9148b6bf5100a5a6e0f6a2f7e` |
| 30 | `structure` | [Coalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/coalgebra.md) | 261 | `declaration-track:26551cea306d18f27d71401899a59047d2604ce24a2bae2704c55e5eb14e2238` |
| 31 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/hom-source-edition-2.md) | 280 | `declaration-track:6be389753ce1c72e3f8769257a7374d8448b4f03b764a9ccfd429848ad4abd99` |
| 32 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id-source-edition-2.md) | 291 | `declaration-track:caca376360045b31f9c6bb483684f78cf203a3c6f65f97a84570db898fb252f2` |
| 33 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp-source-edition-2.md) | 294 | `declaration-track:8594614160d5726c9cf1392e9f1581c9706e90b9daba4eab8349c8b67c936c49` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance-source-edition-5.md) | 299 | `declaration-track:74852942f3733a671c4844f5ae0fb1be322d6c934a9bc793964c5cacad70779c` |
| 35 | `lemma` | [Hom.ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/hom-ext-source-edition-2.md) | 305 | `result-track:320f172aada79918a0c938bd0486da073ee5417f898cc82bd9e2244144a5d21a` |
| 36 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp-eq-comp.md) | 308 | `result-track:71528c6f5ffe62139a4b0a17f7f3404ecaa68da251d47355e37b0f76e71ce190` |
| 37 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id-eq-id.md) | 313 | `result-track:0826e0419be9e3602750d26e4cf4b65b67f46afdc1d0c453071f19119a693eda` |
| 38 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/id-f.md) | 317 | `result-track:52337b8e1a697750525720ca79aabfd7b88c8fc2aaa6f26e3b95996c83cf9257` |
| 39 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/comp-f-source-edition-2.md) | 321 | `result-track:b780149fcbed6e0ca9c09378fbbeeab6eb08d71294a866dd4ad92682c458430c` |
| 40 | `instance` | [eilenbergMoore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/eilenbergmoore.md) | 325 | `declaration-track:bb0ca9156e7ef51c496c6df3854711a543137b3108f86a934f9a995be4750b64` |
| 41 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/isomk.md) | 332 | `declaration-track:586d455f6552ea114033f49ceeec6f8e981ef246799bd59eee80ce033ec27b4d` |
| 42 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget-source-edition-2.md) | 348 | `declaration-track:47449188227615c2938ad7f90c2417b88880909cdbb106beec933101bde0b016` |
| 43 | `def` | [cofree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/cofree.md) | 355 | `declaration-track:d867642777545cf404513ef4de46dd2cb215541e4c76880a22e6b3a7bf69472f` |
| 44 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/adj.md) | 371 | `declaration-track:293a42486f5db115deeaa8af79c8d6048159f88383ef58d98e5686387628d4d2` |
| 45 | `theorem` | [coalgebra_iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/coalgebra-iso-of-iso.md) | 388 | `result-track:598b470b6de2392762f6b84ce9c2d1cfe38621c1a8bc5fe67835d04cb8fa979f` |
| 46 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget-reflects-iso.md) | 395 | `declaration-track:56307c228c5a2da6186b11a4291a00aa07377dcdaf0f465aa2b39f45d0030e47` |
| 47 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/forget-faithful.md) | 398 | `declaration-track:7888ac2eeec2a3b74dd625b45c8f6331e39cb4088cfa28f769e7aa78a56827c4` |
| 48 | `theorem` | [algebra_epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-epi-of-epi-source-edition-2.md) | 402 | `result-track:6c7032f72018498c8fefac6652e3500b7b75ea844a39121b0e6cc2e7c72eb717` |
| 49 | `theorem` | [algebra_mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/algebra-mono-of-mono.md) | 407 | `result-track:237626453ddc3a8adf3d272f8a331bf9c7a60ba8f63fd4df40665f0632a5b9f4` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraPublic.lean/declarations/instance-source-edition-4.md) | 410 | `declaration-track:50c3afc05a822ce7c856bec33fb467caf8061f77e5f94cbc974d2f2bc5b3f299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43e90c213add4dda8f2e1b20825c86a4adeef1afa7bf238dce27d5e938bd91cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
