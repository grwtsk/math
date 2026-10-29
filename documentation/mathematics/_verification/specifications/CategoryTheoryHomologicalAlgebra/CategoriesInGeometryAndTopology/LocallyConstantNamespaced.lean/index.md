# Verification target: Locally Constant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "375cc62a9390b28e6ea36723574676663ed021e4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `375cc62a9390b28e6ea36723574676663ed021e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Discrete.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.TopComparison` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.SigmaComparison` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberPartition` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToPresheaves](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functortopresheaves.md) | 89 | `declaration-track:9a2627b29b408b2c9499267f80ec97ad6b6b8a701a7ca8f6e2959bfce981c1f7` |
| 2 | `def` | [locallyConstantIsoContinuousMap](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/locallyconstantisocontinuousmap.md) | 100 | `declaration-track:d78222cf577ee472622d81357a98d5d91116d0451044a771254d07b64fc4b3e5` |
| 3 | `def` | [fiber](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/fiber.md) | 116 | `declaration-track:680df0d74ffe2556544726b78559b56fbc3c535528dfe9ddbcadae68eed9c5e4` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-9.md) | 118 | `declaration-track:ba4d03fd312c1b34632ebc9e12f136cd20f7a678fb93b417333ee52e2938b3b0` |
| 5 | `def` | [sigmaIncl](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/sigmaincl.md) | 121 | `declaration-track:603994d6ad586ec3f1f12f43e14bedbcb34dbe36f40c69447af07c0045cdead4` |
| 6 | `def` | [sigmaIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/sigmaiso.md) | 125 | `declaration-track:0bbedd46b1de0f63295c59d842fe8a4a46e064c5a04b78ce5fe0fc35d2c720cf` |
| 7 | `lemma` | [sigmaComparison_comp_sigmaIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/sigmacomparison-comp-sigmaiso.md) | 128 | `result-track:0a5f5b46a26476a31e1483f89093814c7e4e07c7494d573bb2d82fcb8d888129` |
| 8 | `def` | [counitAppAppImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/counitappappimage.md) | 143 | `declaration-track:fc424a6ed3b56eaf0cfe03936bdc7829ff6e31bb90de2b17fb293eff220d9b21` |
| 9 | `def` | [counitAppApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/counitappapp.md) | 153 | `declaration-track:618a2290055121989d41c0ee24d29d24da5777e97e804099982240cae2add64f` |
| 10 | `lemma` | [presheaf_ext](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/presheaf-ext.md) | 164 | `result-track:c5dda6b3e75f299c8dc33f2a0ed245702f699b46a2cb258f375d650daf36f2c5` |
| 11 | `lemma` | [incl_of_counitAppApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/incl-of-counitappapp.md) | 175 | `result-track:0c7bb2a4d1fba164b338c834983e6783963076f31f57f55f935c050d4161db62` |
| 12 | `def` | [componentHom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/componenthom.md) | 189 | `declaration-track:e91dadb682cfd0ee5710bbe3f4a84684c1b42d71cb12a1d149db6798914b8ba0` |
| 13 | `lemma` | [incl_comap](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/incl-comap.md) | 200 | `result-track:bdec5cade0d5701d5d2d5cfb8dc39394afed0d517b3a58bfc1cb646cfa8cbe98` |
| 14 | `def` | [counitApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/counitapp.md) | 209 | `declaration-track:49e9daad7025186c024c0242cb543730ed8f1a3c134761b674fe98f14b1cc9f1` |
| 15 | `def` | [functorToPresheavesIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functortopresheavesiso.md) | 231 | `declaration-track:4b699299c47121fb31e457989882001b3f2303875aee427e9770ef1b34964d23` |
| 16 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functor.md) | 237 | `declaration-track:4433cc36fba6613a6737e030f5ae2ba707bc97c41e981f813105c945efedf8bc` |
| 17 | `def` | [functorIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functoriso.md) | 251 | `declaration-track:cf93cdb7ae602f2837904d8690615b3eb9c7b789a0952a7960c28b07af67fa2f` |
| 18 | `def` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/counit.md) | 259 | `declaration-track:31a0b0ffeb9505cfaac1ae03a52a2f6f26f5075ec2ebf4b723912778c3503e8a` |
| 19 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/unit.md) | 302 | `declaration-track:1ee5b3c70b76d80e904cd388b7af1397776a1ba8d75fa0c87d194aeb2826b42e` |
| 20 | `def` | [unitIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/unitiso.md) | 306 | `declaration-track:c50a5c32e7711e4723345f2c790cfc2117f8b33c727c72b80dc52c6420e5297b` |
| 21 | `lemma` | [adjunction_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/adjunction-left-triangle.md) | 311 | `result-track:b1075a336c0f2d9a0dc882e695926cf7e4978d23952801a4f2c6d490202a23fc` |
| 22 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/adjunction.md) | 334 | `declaration-track:913f46504fde759eda0742e5080544955272fe5f2043a03f552ace557caf4274` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-8.md) | 363 | `declaration-track:96e68cc0aeebb4ce05bc00909f752232e5a610ce2702e5a041fc5531188dda5a` |
| 24 | `abbrev` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functor-source-edition-2.md) | 377 | `declaration-track:5db2072de5a26eed2171cebb7b35928ec86202a04e99f9b758d3f533e9368c6b` |
| 25 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/iso.md) | 386 | `declaration-track:999220621ada45a7111471741141c4505aeefe52c52d86b16297d0a49d8509d7` |
| 26 | `def` | [functorFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functorfullyfaithful.md) | 390 | `declaration-track:7dd327ec21497116296fb34bf74febe25608ebe18a7171bdb77977d34a0512d6` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-10.md) | 393 | `declaration-track:fb5086c43f844a3b6c350a8fdf3c5880b9eedee234ff2e3b0bc7cad6bcfdb371` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-4.md) | 395 | `declaration-track:4700cf5684c49362813a8d7ea525d576cb398d56fec6b515abeac8e142f21bef` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-6.md) | 398 | `declaration-track:7248c602ee45ee2ef38c7f3584902d3b9b2df7c76ae756f8eb05652a596590b8` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-7.md) | 401 | `declaration-track:7e1e97c54e9e75645731ea78420309e725f9db2659c319b1818f2d056ab04c07` |
| 31 | `abbrev` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functor-source-edition-3.md) | 408 | `declaration-track:7222cd567edd3b7a92d9c768c33cf7707c050980d3539a4f9196b4811527f16b` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance.md) | 413 | `declaration-track:1011f85ff46733755d2d8e19aa0496592f3fc22fd0e2cde2ddbf5aad356e4010` |
| 33 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/iso-source-edition-2.md) | 423 | `declaration-track:f28d5cfd15bdaec656c24d8b9f0419ed84815abb0cdfefda377378a5e971bab8` |
| 34 | `def` | [functorFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/functorfullyfaithful-source-edition-2.md) | 427 | `declaration-track:dbeb464bc0129c74d145192c4696e909c2e2242b476abf318af7108f6282636d` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-11.md) | 430 | `declaration-track:fe4ff83403f8cdaaab68426cd62c357dad3e0b8e6c2e8c40d1d8c6379260f047` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-3.md) | 432 | `declaration-track:2878187e50d9e991495e33071eab066caf979afca74157f29bff03f2f9b72aa0` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-5.md) | 435 | `declaration-track:676a35d6a541ac3e3e10950f1934543e7316e96d1a8f76683fc011481264191d` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstantNamespaced.lean/declarations/instance-source-edition-2.md) | 438 | `declaration-track:1421bebee4986070ff87ee727b720d5431a0690af0857440be12df2f2c01e709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4828f8a7fe548cef2f542d9b9e1d9d9500a663a01f9a7f921694d0aa7fe516a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
