# Verification target: Direct Sum Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21fe844a93ef723be07eef0669d13d11f584f77",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant76398b08dfae4cbcdc2e542f8a125032af48dc05c6fd64f0ffad91511c565c7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21fe844a93ef723be07eef0669d13d11f584f77`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant76398b08dfae4cbcdc2e542f8a125032af48dc05c6fd64f0ffad91511c565c7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant76398b08dfae4cbcdc2e542f8a125032af48dc05c6fd64f0ffad91511c565c7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/directsum.md) | 43 | `declaration-track:5b636d398cb708dc1404dfde9d0710be5bed423197e68c4b085ecec4f551e182` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:4db2c8b230089982b484adc27b29c17cf53c704fb4c4a60107ee5303fc00937c` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:cc8194ab62e2a4574747394464a41112cc2c036aca7c4d93a757db0c1eb81d07` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 58 | `declaration-track:d6d3be099592648fdead07993d3c5e62ba1aa78f342dab0dd669c45f83cbda73` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:dd4298de16faeaeec54a9e485fef16bae603adddad324d2e21c3fcaf92b9e942` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 89 | `declaration-track:40781a363ac332275bfd19fb1f9d198865bd23dc930cb49cb3e471b0537fa1a9` |
| 7 | `theorem` | [sub_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sub-apply.md) | 94 | `result-track:886037ae78d85b7d54de4e52027672d40ad5748f62c26cc0a487c6eb84c9749f` |
| 8 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/zero-apply.md) | 103 | `result-track:45e5aab8d8053068b38805ca06b6f5881f86f50883a1a8056667a36f37aa115b` |
| 9 | `theorem` | [add_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/add-apply.md) | 110 | `result-track:c76e8cb4a8afad239a78993fe3f10022b83e61ace2fa8b03a5c704337723ad21` |
| 10 | `def` | [mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/mk.md) | 121 | `declaration-track:56dcc4e196c4aa4658cb24a7b0fef2e1365ad4c281cac3915ffd0fb55c93454c` |
| 11 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/of.md) | 129 | `declaration-track:7f3d695c03302343cd9e60ac8f1e31a6df9604e69f176e3344f0032d0b542b23` |
| 12 | `theorem` | [of_eq_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/of-eq-same.md) | 134 | `result-track:4c5cb41062bfe871f2df6460d1c8c8a62aa7f8499e7780fa810a2ce40add9f21` |
| 13 | `theorem` | [of_eq_of_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/of-eq-of-ne.md) | 138 | `result-track:fc51b1173ba3d7a6320b20fde4cba05ed8c520888996b81d11d1d3af0a964c0d` |
| 14 | `theorem` | [support_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/support-zero.md) | 143 | `result-track:2533eab8b28a77ad9eb049001dbc57b94039bcc2d28232e50b6739b2a92ed6ad` |
| 15 | `theorem` | [support_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/support-of.md) | 148 | `result-track:8c7c2331888c383483c97547450f6a53fd430924beb057d80bf969d06c31c852` |
| 16 | `theorem` | [support_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/support-of-subset.md) | 153 | `result-track:81b1bf7a8c72c02f0890e521d02f5009cde0b8034c76e2aa6fbd37b108b0c4a4` |
| 17 | `theorem` | [sum_support_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sum-support-of.md) | 158 | `result-track:9c1fd38754dc294e5fee2400c4b9618c72d9db23bccfc16ede7b523119609fea` |
| 18 | `theorem` | [mk_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/mk-injective.md) | 165 | `result-track:7e12831499857d6ac832959e0f24855a74641171e7ab577bad31110fbde3e439` |
| 19 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/of-injective.md) | 169 | `result-track:c4a7a7c44dc16bd8b7ea526ba23cdc6e59cc8ba8a1365f01398323a4543f225f` |
| 20 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/induction-on.md) | 174 | `result-track:fae97f2c411b9b231e2cbe94b401c24f3a9f3a63156082ccd61bb75b9c928c3f` |
| 21 | `theorem` | [addHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/addhom-ext-source-edition-2.md) | 184 | `result-track:e9205eb3c0de98c59fc9516645c4295c3b0a06d8ad3df70ffdbfa89f7e1ad59a` |
| 22 | `theorem` | [addHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/addhom-ext.md) | 194 | `result-track:8912e163fa702a60d0850d8ada478773afb9bc792426abd01d46c938515bd1f2` |
| 23 | `def` | [toAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/toaddmonoid.md) | 210 | `declaration-track:9b14bdc8f6925b6e6de6ea892ece88a8d73ce6474436301a69d6a2be2d90e984` |
| 24 | `theorem` | [toAddMonoid_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/toaddmonoid-of.md) | 215 | `result-track:308cfa65cbc51f1e48fbc8d7cc6b2703a879bac255067e0eff943a7f9d5fef00` |
| 25 | `theorem` | [toAddMonoid.unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/toaddmonoid-unique.md) | 219 | `result-track:2b3d969dffd7090d7c214fdad4da04f3f9176f92482bc291fd25079417469383` |
| 26 | `def` | [fromAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/fromaddmonoid.md) | 234 | `declaration-track:7dba9afe393bf5d16bf0fde4180f89d6390d329beb805946ffff3192c32901b8` |
| 27 | `theorem` | [fromAddMonoid_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/fromaddmonoid-of.md) | 239 | `result-track:96821fc167f96f748254d7a4b6ca6b9c4aea6ffed34260673a16b2fea8eed7cc` |
| 28 | `theorem` | [fromAddMonoid_of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/fromaddmonoid-of-apply.md) | 244 | `result-track:5c3693decd1e0955e9c5e9d8d938a86fbc6d3afe931512bb6880e20d0149ce78` |
| 29 | `def` | [setToSet](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/settoset.md) | 256 | `declaration-track:585abab138f3c2d00285adf6aaa66d4602b025605a35a843cab091a762d3698a` |
| 30 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/unique.md) | 265 | `declaration-track:f8d035b8c53c314329d18a8569eadc577b8db95a5da7b60a47d4b2dc0a6c307d` |
| 31 | `instance` | [uniqueOfIsEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/uniqueofisempty.md) | 270 | `declaration-track:2ded611e516645f1fb4d68433e48ff7a6681457dbaded48b76548e08052b983c` |
| 32 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/id.md) | 275 | `declaration-track:5165d1dd63006f105f6366d01210f6db013f13bfb0f8d2ab5f4f6af8d752e004` |
| 33 | `def` | [equivCongrLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/equivcongrleft.md) | 295 | `declaration-track:0eb429ab3a40e7813580a94f2dcbd9e4c4ed862b080a456b7bf4ca8b00ef69de` |
| 34 | `theorem` | [equivCongrLeft_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/equivcongrleft-apply.md) | 300 | `result-track:4363bf1fd9f9d42249ff3041162ed8a52a13b55136403c0ae512406008bad1f5` |
| 35 | `def` | [addEquivProdDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/addequivproddirectsum.md) | 316 | `declaration-track:466b54de0ce67b47a1d42b8aabb053dc1c3da26bddaff795c9db7a737bf3f99e` |
| 36 | `def` | [sigmaCurry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sigmacurry.md) | 327 | `declaration-track:070f38d64a4d89f9e30124406327eb4aa223efcfb1f7eb763e4f26e034e699a1` |
| 37 | `theorem` | [sigmaCurry_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sigmacurry-apply.md) | 335 | `result-track:27d6748e2343a72ffedd92dd48f187cb614a603b02466bae6f1273c268ce4f66` |
| 38 | `def` | [sigmaUncurry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sigmauncurry.md) | 342 | `declaration-track:e4b5fb2cf3008870e0c13ada123f6906bad65a502fc72e8f80e134807b68280b` |
| 39 | `theorem` | [sigmaUncurry_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sigmauncurry-apply.md) | 351 | `result-track:b2ea079ed1a9fd766f5190ca5b7bd060edff0833b34f634aaeb3e1a4e5b1e429` |
| 40 | `def` | [sigmaCurryEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/sigmacurryequiv.md) | 357 | `declaration-track:80764ffd6efe89a5ddcdac35da8cd35db69024b7ad3efe37c68375d07068a59c` |
| 41 | `def` | [coeAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/coeaddmonoidhom.md) | 368 | `declaration-track:95b35c84ad78c69590ca571c4fa1ed1a0fb9272323657b402bd45441bca792ba` |
| 42 | `theorem` | [coeAddMonoidHom_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/coeaddmonoidhom-of.md) | 374 | `result-track:422a152d7379dc4a36f5fbf02e5732365c88901732256eeb377dc777099c101e` |
| 43 | `theorem` | [coe_of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/coe-of-apply.md) | 380 | `result-track:447445ac63b96ad1cef2515a14ccf653cae657a9f1645848bfc9a9ff9d488f3c` |
| 44 | `def` | [IsInternal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/isinternal.md) | 394 | `declaration-track:59047601541765c5988dcc1e0755a5b99f8adacb6673137e7f7bbd0de829c217` |
| 45 | `theorem` | [IsInternal.addSubmonoid_iSup_eq_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumBasicNamespacedSourceEdition2.lean/declarations/isinternal-addsubmonoid-isup-eq-top.md) | 399 | `result-track:2872f2beef31183b21b008e5771a07f81bb8ec5119d5facc427fbbd9dd5df34b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a34761f8be36bd3cbb4a21db60191e8fe62b9a19bab6336cfdd1c7eb8d51461 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant76398b08dfae4cbcdc2e542f8a125032af48dc05c6fd64f0ffad91511c565c7c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant76398b08dfae4cbcdc2e542f8a125032af48dc05c6fd64f0ffad91511c565c7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
