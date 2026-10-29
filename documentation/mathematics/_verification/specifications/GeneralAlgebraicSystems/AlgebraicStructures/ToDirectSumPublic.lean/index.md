# Verification target: To Direct Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce0e3a9d1c0c1ba7c691b3b57a5fb2c76cc5915",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantf1300e0865de8206b18e7f3cf59695c2bf8a213ccdd51c25af2348c62455c4be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce0e3a9d1c0c1ba7c691b3b57a5fb2c76cc5915`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantf1300e0865de8206b18e7f3cf59695c2bf8a213ccdd51c25af2348c62455c4be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToDirectSum/Variantf1300e0865de8206b18e7f3cf59695c2bf8a213ccdd51c25af2348c62455c4be.lean.json)

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
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebra-todirectsum.md) | 69 | `declaration-track:d723e238539e173d74dfc1524a608dfcd2a096712a16b558c66b8f7c8685d00b` |
| 2 | `lemma` | [AddMonoidAlgebra.toDirectSum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebra-todirectsum-single.md) | 77 | `result-track:0bef1a4f3d8b3800d3ca9d48308dc0c3b6a23754f1e7d6e3351ef0f5a4d77ac0` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/directsum-toaddmonoidalgebra.md) | 83 | `declaration-track:e28ec6e1897f4666f4cee4dcc6988a37cdb84d45548803f9f60a270b28b97bda` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/directsum-toaddmonoidalgebra-of.md) | 86 | `result-track:800a1ab9385ca05c97728863c80e6d77d77ec2746a2822297e757bad5819e949` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra.md) | 91 | `result-track:2310f98015037d7ef07106e2086a86646e76c4c645953df820f7f6ca0a6a38cc` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/directsum-toaddmonoidalgebra-todirectsum.md) | 95 | `result-track:c6194f4b8d5ad6ff8f038214b7eb41db429e98a559c405d010acee482ac2fc6e` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-zero.md) | 111 | `result-track:12357249600342fe72ae797a39e43bbcfb9f43b38268808ba3ac649a39a75701` |
| 8 | `theorem` | [toDirectSum_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-add.md) | 115 | `result-track:816deef5ef88918ce6540eec4e56d23b0459d7933d64115598e748967951925b` |
| 9 | `theorem` | [toDirectSum_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-natcast.md) | 120 | `result-track:b4a90edf76f4dd98d600c17bd6e5b8a4551f4c69b750bd58b1298a19dfa6c830` |
| 10 | `theorem` | [toDirectSum_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-ofnat.md) | 125 | `result-track:9bffd42a646e124762a102b0f97beeb4c2a4dc993423dcabec99b19b43384c65` |
| 11 | `theorem` | [toDirectSum_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-sub.md) | 130 | `result-track:0ffea77604ad41b9fc534f30c36f1d91850d3c7a5ca35bff17761cc31f7b2952` |
| 12 | `theorem` | [toDirectSum_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-neg.md) | 135 | `result-track:6577de0133373e272e5088e016eff78c66463ae883ecc2b90d498ef3c99f4ae6` |
| 13 | `theorem` | [toDirectSum_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-intcast.md) | 140 | `result-track:d18e31ed8ab56836e14806564b5eba6398e7493bdd998fa2bdf7e5a8e5b7d8c6` |
| 14 | `theorem` | [toDirectSum_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-one.md) | 145 | `result-track:e1427762afd42364186926a725a585cc08391f1d7da3d0e19c0e562c26cb4981` |
| 15 | `theorem` | [toDirectSum_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/todirectsum-mul.md) | 150 | `result-track:3e00b66ab557a6731a25f72e5d7ea79d84d29c1fb77d7d5145fd01b2f8ca50b3` |
| 16 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-zero.md) | 169 | `result-track:17938de16f3ae8178d71593e0575f2f20912dcf2e7b492920f7db7af6fb16850` |
| 17 | `theorem` | [toAddMonoidAlgebra_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-add.md) | 173 | `result-track:44dc7020ac006164f7d850c618c36297c70db9f3a1b65d775e0b5df78eaae749` |
| 18 | `theorem` | [toAddMonoidAlgebra_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-natcast.md) | 178 | `result-track:f5e148cdfc54ce613144e73b8d5d6a9eda3101fe35ac167e712fbb9734b38677` |
| 19 | `theorem` | [toAddMonoidAlgebra_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-ofnat.md) | 183 | `result-track:9907633234847ce598c8f3f3993599cf3a2764aa05cbb1890b51f29651b40659` |
| 20 | `theorem` | [toAddMonoidAlgebra_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-sub.md) | 189 | `result-track:eeba18be2cfb283da9ce67b3a7cb29a771e43a15ba30f3c054ba1a960f780b7e` |
| 21 | `theorem` | [toAddMonoidAlgebra_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-neg.md) | 194 | `result-track:486c82fc337a5e74be7c14862e0761012e28d12e83f86d15a358e14425acbc1c` |
| 22 | `theorem` | [toAddMonoidAlgebra_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-intcast.md) | 199 | `result-track:a2f56368a6ad9fb92d0d5464aa6cad8554f7bd04df8345c71a9677f3b916e165` |
| 23 | `theorem` | [toAddMonoidAlgebra_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-one.md) | 204 | `result-track:316717c243f8c82de4ec65d8bf4af5a44e6a897cf78e148f8e97973499608d7f` |
| 24 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/toaddmonoidalgebra-mul.md) | 209 | `result-track:1303e5045d2b24b73a06b1fe2dfad777031c65cf61f7174073837b476bc1df74` |
| 25 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebraequivdirectsum.md) | 229 | `declaration-track:2d84e4e16467ed43f3a9aba43630c7c97d784fb73d06f410b6776b71e507f54e` |
| 26 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebraaddequivdirectsum.md) | 236 | `declaration-track:0a820a807c9f8640e6a3f8a252084b01d1ca143ce251527efe84181ea0bd538c` |
| 27 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebraringequivdirectsum.md) | 243 | `declaration-track:be50cdcfc72db699fda79681b3857003fc36c50bfcac45e78199db7c0868f9da` |
| 28 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebraalgequivdirectsum.md) | 252 | `declaration-track:c1433543f5afd5d948e00394f3ad21f5cce37018e483831a2cebb2f8d9b26cb8` |
| 29 | `theorem` | [AddMonoidAlgebra.toDirectSum_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/addmonoidalgebra-todirectsum-pow.md) | 260 | `result-track:e2f55f8b996b1554eb77a20a483aaeb34d4405efd23450256c15fac69461f707` |
| 30 | `theorem` | [DirectSum.toAddMonoidAlgebra_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumPublic.lean/declarations/directsum-toaddmonoidalgebra-pow.md) | 266 | `result-track:c19c71dc577c07a3ca1f7853407376f6e7b0849f3dec760de9b3d1be8403d414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3574a456c9e9d50a1a168b0606b62601ab404f209a09ad7712a75d24e0468eb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantf1300e0865de8206b18e7f3cf59695c2bf8a213ccdd51c25af2348c62455c4be.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ToDirectSum/Variantf1300e0865de8206b18e7f3cf59695c2bf8a213ccdd51c25af2348c62455c4be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
