# Verification target: Clifford Algebra Contraction Namespaced Contract Right Contract Left

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f17774b147ab3e42edccb49d0c13489828b951d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f17774b147ab3e42edccb49d0c13489828b951d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleftaux.md) | 67 | `declaration-track:8a4a0c8619ac940b4b8004b3e02301446f9749ac222755afe06593a4a66f4d52` |
| 2 | `theorem` | [contractLeftAux_contractLeftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleftaux-contractleftaux.md) | 73 | `result-track:ba04db5df67b439a842215a6c31eb078ed20efc0cf8baa186f7bd1a607b6081e` |
| 3 | `def` | [contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft.md) | 86 | `declaration-track:0cbd414989abc3ad3ee0c5c8d44a3fbe98d94fb922724305b047b0cdab8a3c07` |
| 4 | `def` | [contractRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright.md) | 115 | `declaration-track:52a4cd1e4d6433bf7971611cb2670bf6bc93c1b9b36c31d82310582dd8ad9251` |
| 5 | `theorem` | [contractRight_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-eq.md) | 118 | `result-track:7945281a227d7a5f374a06227d9fd989dfedf9515ce9b22791a192ad6dccf9ea` |
| 6 | `theorem` | [contractLeft_ι_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-mul.md) | 127 | `result-track:01a8dd195cd9c532528a81e9233387063d977973b90e6589a4e66a0a6af27d65` |
| 7 | `theorem` | [contractRight_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-mul.md) | 134 | `result-track:ec201b717bcc16cf8200e95dc9a37677e3c96e90a90e63a384ed835be542c39e` |
| 8 | `theorem` | [contractLeft_algebraMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-algebramap-mul.md) | 139 | `result-track:96bf3c87c3214976280c5c75104d4b911d7bac4f55184dc7a8a65e9bf042fd12` |
| 9 | `theorem` | [contractLeft_mul_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-mul-algebramap.md) | 143 | `result-track:dcc13cbdfae2a45975a1fb0235893a86aa1ba7634e38e8fbdb01819ee97ce916` |
| 10 | `theorem` | [contractRight_algebraMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-algebramap-mul.md) | 147 | `result-track:8e137c27bddb83a8648e2dfd7aebdae29b29c69a20198a8a805bc52d6126b493` |
| 11 | `theorem` | [contractRight_mul_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-mul-algebramap.md) | 151 | `result-track:cbf654c3d04dbe87186c297c51f3debede86130ead349c49f88d59c9da2bb0f1` |
| 12 | `theorem` | [contractLeft_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-source-edition-2.md) | 158 | `result-track:6d3fc12c6b4f05f40937379721cf83ac26b89dcb41a0d0f307f189d851f79cbe` |
| 13 | `theorem` | [contractRight_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-source-edition-2.md) | 166 | `result-track:61c789eb2a3f59f1e738f7ac8d72d1dbfb4b31217db21f8bdf97a6d8c1a9d078` |
| 14 | `theorem` | [contractLeft_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-algebramap.md) | 170 | `result-track:c408526143361b7701ddd838f935996ed7e0eb1a5b650d3b39e9cf59f1ea450e` |
| 15 | `theorem` | [contractRight_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-algebramap.md) | 176 | `result-track:bffb03e023e5f89b818ae4b9570177a704accbd86932937e0006428e5703a808` |
| 16 | `theorem` | [contractLeft_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-one.md) | 180 | `result-track:2ddab6b2c7ed75de6422cc478eaff637863c815e08f5d540be271bc3dfc48be5` |
| 17 | `theorem` | [contractRight_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-one.md) | 184 | `result-track:fb06c623301e180eb4301ed1002b2a3cfae7b07f2eab6c3db0e7973a19f44de6` |
| 18 | `theorem` | [contractLeft_contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-contractleft.md) | 190 | `result-track:b4722cbd61b2682b43cbc1152c8283d0fa5bc1683628f10dbfb782a6592af288` |
| 19 | `theorem` | [contractRight_contractRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-contractright.md) | 199 | `result-track:bdba83c5c28b383c2512d179095e448fd2e4a430718cff41a5033cc20307887d` |
| 20 | `theorem` | [contractLeft_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractleft-comm.md) | 203 | `result-track:bb8807babcf3b61cb62a7da7339949b3051bd4a7ee1eb57c7bacac779fec9bbe` |
| 21 | `theorem` | [contractRight_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/contractright-comm.md) | 212 | `result-track:3bdb2aa8fee4b003571f6dad08cafdfa9bd80f3e69124b0e1f0073e2e71b4d95` |
| 22 | `def` | [changeFormAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeformaux.md) | 227 | `declaration-track:13b64c55f71b8b65650c3bf77921717f2c46872f6a7ed20095a6095019d6c578` |
| 23 | `theorem` | [changeFormAux_changeFormAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeformaux-changeformaux.md) | 231 | `result-track:ae8a559d08e3a6cd14d322cb3086495b2d89493becc7e4bd3379474e7e5d3a79` |
| 24 | `def` | [changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-source-edition-2.md) | 244 | `declaration-track:63a263971efbe8590a1fa3d5193032b343cab15d6e4cc09fdfcda879d5dcad87` |
| 25 | `theorem` | [changeForm.zero_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-zero-proof.md) | 253 | `result-track:ee70b8f97d4225eef4e0613a8c7137ba965f305fef39b3104492fb561b6e7272` |
| 26 | `theorem` | [changeForm.add_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-add-proof.md) | 260 | `result-track:3724070e9e5c07c7ef8b6cd1aaebcc1650bdca409a97fcbb1d9dff81a8a256a3` |
| 27 | `theorem` | [changeForm.neg_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-neg-proof.md) | 265 | `result-track:a7a8fe02fda0a911014d658525cc7709dd5fc301dca5555e72b3061f7448c9cf` |
| 28 | `theorem` | [changeForm.associated_neg_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-associated-neg-proof.md) | 268 | `result-track:41acb0347a3edf5276fb6d72794b6c6f0d6cffbbe12e54ac891bfffb30b48cb7` |
| 29 | `theorem` | [changeForm_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-algebramap.md) | 273 | `result-track:dbc31f36c70c78c61fc9a03936656f9dd0f40f6ea6f85f7e11c46b84c02a67c6` |
| 30 | `theorem` | [changeForm_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-one.md) | 277 | `result-track:4c8266805266e1f99397515519c475b6cfd1f7412c40781c99139d2c0991338d` |
| 31 | `theorem` | [changeForm_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform.md) | 281 | `result-track:58b5a036f48678a382a854e6d672787f5f4f04e72e55a5a878796212b9d84464` |
| 32 | `theorem` | [changeForm_ι_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-mul-source-edition-2.md) | 285 | `result-track:f715c5672eb1e67b480e05cc1d3a63aff2ecdf174f4e50669bcafff54ebeee74` |
| 33 | `theorem` | [changeForm_ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-mul.md) | 289 | `result-track:8e3e92f49784024ee1f06ed619cec0b93993787266274e41cf4de47e3b0a2920` |
| 34 | `theorem` | [changeForm_contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-contractleft.md) | 294 | `result-track:d5edb420e9018ac8b8d0c8db7625fa62e24430c92a7955748a14bed8203a85e7` |
| 35 | `theorem` | [changeForm_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-self-apply.md) | 303 | `result-track:9830bb7bc48be6bd809d40749ac9566f286e47aafc67df084b664a122989be08` |
| 36 | `theorem` | [changeForm_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-self.md) | 312 | `result-track:b186f1ab8c42f8ff035168f07d4d90300dc9188826f86b6e16204bfaad4675f1` |
| 37 | `theorem` | [changeForm_changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-changeform.md) | 317 | `result-track:3657ee739b0f692d401fe2efb8d340ee89ab78ce702d5cf2dfc1922b488aec0e` |
| 38 | `theorem` | [changeForm_comp_changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeform-comp-changeform.md) | 326 | `result-track:d998620d371a1d440c8f2747aa46d48f5dbd370bda88d679068ed668ae0649cb` |
| 39 | `def` | [changeFormEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeformequiv.md) | 334 | `declaration-track:e4f47bfb708e9f81cdaa546f65379fc3e7c2a7cd61dbcc91ac5f194e8660af32` |
| 40 | `theorem` | [changeFormEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/changeformequiv-symm.md) | 346 | `result-track:91429399db32de4bfab93d23b9ce5b194b821b825b699bd328bbd9fa6b5bac31` |
| 41 | `def` | [equivExterior](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/equivexterior.md) | 357 | `declaration-track:57aab15011b0dd82d42259ad5d7da29e765a43f0216fbb0fdc01e6233de6ad25` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeft.lean/declarations/instance.md) | 361 | `declaration-track:615bee3d8126f1063ae0de0d5690f52b3a2c488ccb6137d701a5cce2b7d235f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7da6a8826c31d0c9df8af2aab5590382dee12eb067857565e0b3aa5299cf6d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
