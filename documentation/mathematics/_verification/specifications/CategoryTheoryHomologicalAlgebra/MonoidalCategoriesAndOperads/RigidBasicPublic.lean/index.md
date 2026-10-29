# Verification target: Rigid Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "746038af84a0be6e682335dd41e9e9357477ce3c",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `746038af84a0be6e682335dd41e9e9357477ce3c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean.json)

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
| 1 | `class` | [ExactPairing](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairing.md) | 77 | `declaration-track:31e380a80f4675a1ff97e73ea91cb5c9e97411484586917315df4330aedfdc85` |
| 2 | `def` | [coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/coevaluation.md) | 103 | `declaration-track:1f10bacfa0ee03910c4075cee23e649cf4e21cd6ba090ea61e0376ac74a13a9b` |
| 3 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/evaluation.md) | 106 | `declaration-track:c5cfe73c581bbe583a248205572eb29696dc860f8613e4a58f73b2b0b4c7f498` |
| 4 | `lemma` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/coevaluation-evaluation.md) | 111 | `result-track:bf84979cbce491c67ca1dcab7f79b881691b02b622fd55c5a548c01e6b9f2450` |
| 5 | `lemma` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/evaluation-coevaluation-source-edition-2.md) | 115 | `result-track:ab7ff4fc61450591484ffca4a9d3a26c6b6323ad89bc0ed3a3b16eb49dffc4e8` |
| 6 | `lemma` | [coevaluation_evaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/coevaluation-evaluation-source-edition-2.md) | 119 | `result-track:c6431b2346e14e2645500b67abd5e28556b9f01af10b4ae828d16c183552573e` |
| 7 | `lemma` | [evaluation_coevaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/evaluation-coevaluation.md) | 123 | `result-track:6d09776ddb043af1df41d6ba9bb57101c673f30805405e908cbe5ff5f1421b98` |
| 8 | `instance` | [exactPairingUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairingunit.md) | 132 | `declaration-track:23eeaa6f9000ee89322d3b6ae60c9178c7355b481238960b72b52de9747b5049` |
| 9 | `instance` | [ExactPairing.tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairing-tensor.md) | 140 | `declaration-track:d9e1ba25167082aa9ea6befb34924463387279f0a7389e1078f0fb2059efd495` |
| 10 | `lemma` | [ExactPairing.tensor_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairing-tensor-coevaluation.md) | 225 | `result-track:90f4af8c015bb3fc45892b66eb1583d8572b56dbad8af86667cd2304a52921ba` |
| 11 | `lemma` | [ExactPairing.tensor_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairing-tensor-evaluation.md) | 230 | `result-track:acf95c9eb17a690c2f75dce2cdc584b77a7c4660a339c368d65560aee6b28b7d` |
| 12 | `class` | [HasRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasrightdual.md) | 236 | `declaration-track:477ab6f577bca69681be68faab459df807deff7868ad415039456c181e35d888` |
| 13 | `class` | [HasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasleftdual.md) | 242 | `declaration-track:372c7f8e7031b4c1e63e3b197424dc5c09aa01bab367d62bb30c2ef8745c60b3` |
| 14 | `instance` | [hasRightDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasrightdualunit.md) | 260 | `declaration-track:4b1d3aa1847baba7968a12361991a8b024be6bdb2addbc4b2b2ece04031fa39c` |
| 15 | `instance` | [hasLeftDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasleftdualunit.md) | 263 | `declaration-track:51ae84156ab3e4f36833ab4c9e7c6625411a567c267a8c890ed9b3db2493a4e5` |
| 16 | `instance` | [hasRightDualLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasrightdualleftdual.md) | 266 | `declaration-track:ed34874dd21d0c925992804e551f9f0afc974bba703bbb73e6aaf9611d2f4d68` |
| 17 | `instance` | [hasLeftDualRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasleftdualrightdual.md) | 269 | `declaration-track:e63e57696554cd32f0c56c03c6dcca2aeb2483df41c4e89a74313f273fd1a355` |
| 18 | `def` | [hasRightDualTensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasrightdualtensor.md) | 275 | `declaration-track:3b9f320a1d6fbde7ecac884a638b14e76e0b94b3643a8aefb61d0f54571b1823` |
| 19 | `def` | [hasLeftDualTensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/hasleftdualtensor.md) | 282 | `declaration-track:01b95f6c7c3bd96c448c428f384164d3f098c499b0f3ac73f6deaf571470821c` |
| 20 | `theorem` | [leftDual_rightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftdual-rightdual.md) | 287 | `result-track:c395fe450797cfd21a95161838583e921a3b773c015776571506049920ade885` |
| 21 | `theorem` | [rightDual_leftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightdual-leftdual.md) | 291 | `result-track:cf4c95daddf70f0514572d905cac4682ebaca6cabf6cfcc88690f4ff9f8cb8de` |
| 22 | `def` | [rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightadjointmate.md) | 295 | `declaration-track:d740c7349dbc6c5286d94e260a44c564fa77170e14bd9df4a193ece3bfcf2f3f` |
| 23 | `def` | [leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftadjointmate.md) | 299 | `declaration-track:045d673c9c412b8583cf6d1ccb50ae89ae04fca9612d4950648e92726578aef2` |
| 24 | `theorem` | [rightAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightadjointmate-id.md) | 306 | `result-track:6f7bde11450c0cb105d707d8bcc400ea2df50461f8ccc4b1692cfb9aa1e79405` |
| 25 | `theorem` | [leftAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftadjointmate-id.md) | 310 | `result-track:7e8c5a00d442fce45e976e124baa4bf0798c4cef5eba6e69760a89dccb527fc6` |
| 26 | `theorem` | [rightAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightadjointmate-comp.md) | 313 | `result-track:d31703bdb722ea7fc0c854c792daf55537a9c79a1b9fe7576c3f599fe15f26cd` |
| 27 | `theorem` | [leftAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftadjointmate-comp.md) | 324 | `result-track:1e4961b55258ae5b551124cb125d44a1a0dea710d140dabae21e6fe87e227db9` |
| 28 | `theorem` | [comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/comp-rightadjointmate.md) | 337 | `result-track:2d5621deafdbf52836309ed1f4375754f3d36c4cb33c1367d1dbb079dba2562e` |
| 29 | `theorem` | [comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/comp-leftadjointmate.md) | 358 | `result-track:9e2b075a5b50cc3812febdfb4ed65cc365030690dc23c25c1c80f8b894ffee8d` |
| 30 | `def` | [tensorLeftHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv.md) | 386 | `declaration-track:caeb2b6d4b5431cce7a45613e6b901cd5f9def069136f38b13819f76fbc6dd27` |
| 31 | `def` | [tensorRightHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv.md) | 410 | `declaration-track:c7a4499d72d5857769d83ee2521ea7eab4d5517bb925ddb34f2b297b59d761e8` |
| 32 | `theorem` | [tensorLeftHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-naturality.md) | 430 | `result-track:9b807add0daef42c70a7c60ac9341ec14827548347dd47ec95eb2928f16482c8` |
| 33 | `theorem` | [tensorLeftHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-symm-naturality.md) | 435 | `result-track:32096ca4467ce9006d02c89b43b2bb89f99fb4247ff8e18c5a7d8919f763a8a2` |
| 34 | `theorem` | [tensorRightHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-naturality.md) | 441 | `result-track:5b713169845bd4fc5535f9c66d1e3b723eda67501b8d6e3c74df7becef6dc6df` |
| 35 | `theorem` | [tensorRightHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-symm-naturality.md) | 446 | `result-track:e81296a04b1dc14d6a6921c2d5dad82c599360387a356ae4face2af4a3505929` |
| 36 | `def` | [tensorLeftAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorleftadjunction.md) | 455 | `declaration-track:a182b73408bf160d58ac81745caa83aacce67aaaed7c81cce8dec48225ff9b0d` |
| 37 | `def` | [tensorRightAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrightadjunction.md) | 464 | `declaration-track:63efe619cf7052d57a1dd7fdd5c9a48b6fa086936ff867982a1b206d9db5f57f` |
| 38 | `def` | [closedOfHasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/closedofhasleftdual.md) | 482 | `declaration-track:bc5f03f9dee7662d84adf6553bb067efc3a947c84b0a98e2d5c167ec26facd95` |
| 39 | `theorem` | [tensorLeftHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-tensor.md) | 487 | `result-track:033c77f7cdb35119f9f2824fe71914c5e0d09469113a89b6babf615907c773ca` |
| 40 | `theorem` | [tensorRightHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-tensor.md) | 494 | `result-track:d74706a940f20421dc01ccfc1a7967bad139874d6fd464c6d01589d8485cdefe` |
| 41 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerleft.md) | 501 | `result-track:9cb312a1eabbccc42e84ded99b07703832130902b4ba9dc1e1399464fea3e8bc` |
| 42 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerright.md) | 511 | `result-track:754677dfa744515a7d838c23fe5909e817b43d743e2d6b0838516a06c201d32f` |
| 43 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerleft.md) | 518 | `result-track:aa954ee6a9341feffd1d7f9b91c9282fdb4074a2b8a2f882547a6b24c37ed0a9` |
| 44 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerright.md) | 525 | `result-track:7eb4a240cc57a29d13c093902c5d668f3f603adb46a8c070eaafe60abedadd2d` |
| 45 | `theorem` | [tensorLeftHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-whiskerleft-comp-evaluation.md) | 536 | `result-track:c7e65f2dd27ac335993a59c1d7280188bc326211fd3aa42c189779278a64fb49` |
| 46 | `theorem` | [tensorLeftHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorlefthomequiv-whiskerright-comp-evaluation.md) | 547 | `result-track:89305c0b823d0b1fc4f7f300efd7c4a770a8353e2bcadcb6a142fb1336fd5461` |
| 47 | `theorem` | [tensorRightHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-whiskerleft-comp-evaluation.md) | 553 | `result-track:a819adadf2428d143794ebd6c782e2a6d3c92108cbb491654411a494d7df7011` |
| 48 | `theorem` | [tensorRightHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/tensorrighthomequiv-whiskerright-comp-evaluation.md) | 559 | `result-track:4f0e33391c2df0d02582dbbe465d45e0eb7d029d082c9020df76db8b6a21cb97` |
| 49 | `theorem` | [coevaluation_comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/coevaluation-comp-rightadjointmate.md) | 571 | `result-track:aa16d69bd19d281945bcd73c57b6f3d66add78b22bb1f1daa2c5a64de7b3ba78` |
| 50 | `theorem` | [leftAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftadjointmate-comp-evaluation.md) | 577 | `result-track:ac0eada54ee8086c2f0eef7e15ca03d75f63a736e211a9be2210f580622b6c7d` |
| 51 | `theorem` | [coevaluation_comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/coevaluation-comp-leftadjointmate.md) | 583 | `result-track:cf0377534c3786e89a38f335f1ee4ce6f3a99e6361649687860d78d8c7feb328` |
| 52 | `theorem` | [rightAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightadjointmate-comp-evaluation.md) | 589 | `result-track:104533d3b86484b5f4428d6a282c0880356aede27e99a24e6c048cbc7b59ab8e` |
| 53 | `def` | [exactPairingCongrLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairingcongrleft.md) | 596 | `declaration-track:3ff9f6c075631d091646d25c2bd5a742beddd668770d9cdf0745ef90ee63b0cc` |
| 54 | `def` | [exactPairingCongrRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairingcongrright.md) | 625 | `declaration-track:5fda1ccf9570f347a5d8f91ea76e0d14b4a336e5d5e0be6f274eb9684697982b` |
| 55 | `def` | [exactPairingCongr](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/exactpairingcongr.md) | 654 | `declaration-track:61002fe06d76d5c7e920b4ed395d70c48b1960d786c2c565a05bfc480933f164` |
| 56 | `def` | [rightDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightdualiso.md) | 660 | `declaration-track:67d6d1acc0f1c1e09efff9a0b38af0a5307edf0003ffab6d7b41f26f929d84ff` |
| 57 | `def` | [leftDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftdualiso.md) | 672 | `declaration-track:39140a27702795cdf42acf5f73e090ee74a3ec38865337cd2a6239c934cd4a1f` |
| 58 | `theorem` | [rightDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightdualiso-id.md) | 684 | `result-track:b33c044965c1929aec3603be53be5479fc9744d458547b6ed808cc3bbb39332b` |
| 59 | `theorem` | [leftDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftdualiso-id.md) | 689 | `result-track:3cf673fce160abd0d0f86760c8370c778da431ffa36dd47b525d4a0c0063ae94` |
| 60 | `def` | [rightDualTensorIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightdualtensoriso.md) | 695 | `declaration-track:766911fba8fdac0638e45a331615be938e216d0865d0b8d7d7633b23139d3d8b` |
| 61 | `def` | [leftDualTensorIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftdualtensoriso.md) | 702 | `declaration-track:29210ec5c1d58be15a8a09de17721c2c9329c9cac83594ebbca3ead74713b607` |
| 62 | `class` | [RightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rightrigidcategory.md) | 708 | `declaration-track:8e81f671cef26d9d1a1838e10e6a7dda7746952accc2fb0b5a86d7d6ce190598` |
| 63 | `class` | [LeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/leftrigidcategory.md) | 712 | `declaration-track:44c980574e88c70738b3fd61bd0133a3c5256a50dbba7110c81be42d55ebe422` |
| 64 | `def` | [monoidalClosedOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/monoidalclosedofleftrigidcategory.md) | 727 | `declaration-track:772ed05ea8af8d086f5485713de2f4f2a35bb62c0374afc537691dacfd7a8f88` |
| 65 | `class` | [RigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicPublic.lean/declarations/rigidcategory.md) | 732 | `declaration-track:611881b0ee4905317c9fbfdcdb40cae493e12cfa71b516ff54014f0f01113e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b89630446a67c0e590cc8a284c05eff9a2dd3a0da8fa9ce821f854ad10d244f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
