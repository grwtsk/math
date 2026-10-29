# Verification target: Notion Descent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2d28b1b6a52afd6d8e95974a7c122eb11309e77",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2d28b1b6a52afd6d8e95974a7c122eb11309e77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determinesat.md) | 20 | `declaration-track:52ed2aad6a0c933f8a81e94976db14c3557012669117030f1d13a7670b765071` |
| 2 | `abbrev` | [InformationSufficientAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/informationsufficientat.md) | 25 | `declaration-track:1145a7c004eebdb7fb6d8466dff2b881655be0c24675cd31d112e88f7047055b` |
| 3 | `def` | [DeterminesPredicateAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determinespredicateat.md) | 30 | `declaration-track:582e46e292e5b7bf561b751877f7184b6a26c02afc91a5cd09c228e662499b71` |
| 4 | `theorem` | [predicate_determines_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/predicate-determines-iff.md) | 35 | `result-track:cadb107848774923645e01d3be3e3b609d2ecfb6a700c17bf6518156ffd20d1e` |
| 5 | `def` | [notionProjection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/notionprojection.md) | 41 | `declaration-track:7310ed28b429e55eea3ccfa767d4c30cbdace48e95b262f9edf326c56eaefdf5` |
| 6 | `theorem` | [notionProjection_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/notionprojection-eq-iff.md) | 46 | `result-track:8fbb00a90360c8e0ac710383a0b604d1f1a6c413ec07f9a4ceb91a013e4b0dc7` |
| 7 | `theorem` | [determines_iff_descendsThrough](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determines-iff-descendsthrough.md) | 53 | `result-track:6fed6eeb18e1a02097a0d74cc16583295ce92549e81be3f4eddbb38b1fd9fb52` |
| 8 | `theorem` | [determinesPredicate_iff_descendsThrough](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determinespredicate-iff-descendsthrough.md) | 59 | `result-track:1a931780f5da1181143c3673c12d9687ed11a0eda69eaf8c2f1da407591434a0` |
| 9 | `def` | [notionTargetLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/notiontargetlift.md) | 70 | `declaration-track:e7107e10bdea14864264275299b2d76a3b2f4c4e3fba93a85401e41ee6bba675` |
| 10 | `theorem` | [notionTargetLift_projection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/notiontargetlift-projection.md) | 78 | `result-track:6d2a0919f152888746323495db345073e4b12770a711f682f88009a221c3521e` |
| 11 | `theorem` | [determines_of_quotient_factorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determines-of-quotient-factorization.md) | 85 | `result-track:691627c21f3fc7473b53c2b24ed110fd191060c1af3e9cbfbfc7977d57621372` |
| 12 | `theorem` | [notionTargetLift_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/notiontargetlift-unique.md) | 94 | `result-track:1fed7e07ed2098ba2dca6fde8129fd5bcd9e9521f4a993aca56179f86adfa973` |
| 13 | `theorem` | [determines_iff_unique_quotient_factorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determines-iff-unique-quotient-factorization.md) | 104 | `result-track:5183fc73cfaa44bf86123e8b88e9dc56ccf63b591b46ea66053c94ae51ee3d29` |
| 14 | `theorem` | [determines_of_budget_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determines-of-budget-le.md) | 117 | `result-track:3366eb1f06f2dec023a0334b33b9d9dd2e6f2bcdaeac50157494b0fb6dfdd158` |
| 15 | `theorem` | [predicate_determines_of_budget_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/predicate-determines-of-budget-le.md) | 123 | `result-track:bb51d5bfc0fc10c2ff7590d76309088277173e248dc7dfaa622e578eb1025723` |
| 16 | `def` | [budgetTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/budgettransition.md) | 130 | `declaration-track:76f2561c9639946db5064e2dcbd9c4d8a02abc565d7392e1070588173b862edf` |
| 17 | `theorem` | [budgetTransition_projection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/budgettransition-projection.md) | 137 | `result-track:c7d4e58f53d4a0b5b6b4b90e3ba3d017f15bea0574b16a95249b54790a6c469a` |
| 18 | `theorem` | [budgetTransition_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/budgettransition-id.md) | 143 | `result-track:c734429c0f3f8e695add2a8edfb315a48bbf2a3474537121e0de7526f21063cc` |
| 19 | `theorem` | [budgetTransition_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/budgettransition-comp.md) | 150 | `result-track:433ef5f8b4c20e72ebb06460d8ac27c4cd796c21b2bbf5a917390667f4b2bd85` |
| 20 | `def` | [InformationRadius](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/informationradius.md) | 159 | `declaration-track:69980f6d3d77352f117408029d59e1b2c04459e949d3be73b7d2523db47688e9` |
| 21 | `theorem` | [informationRadius_determines](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/informationradius-determines.md) | 166 | `result-track:c4bb72025984ca5455b6529e4a6e17a35a001021f1eb605a6eedbcdf5cf511e7` |
| 22 | `theorem` | [informationRadius_minimal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/informationradius-minimal.md) | 173 | `result-track:91701cde6bfa54cfd66640c9181ba927abe9d63c838a3d4558898c1bb6e15ac0` |
| 23 | `theorem` | [informationRadius_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/informationradius-le.md) | 181 | `result-track:9537799f94d2b61fd2b67f4b861f59665f381af15a1ee5dcf4085e4528dd2f46` |
| 24 | `theorem` | [determines_iff_informationRadius_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/determines-iff-informationradius-le.md) | 189 | `result-track:f30f4e9c9f3f969eaa61d5fd60e7305111df5cc8ae2b197f22693aa918bc961c` |
| 25 | `def` | [vectorPolicy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/vectorpolicy.md) | 200 | `declaration-track:d6f4b2149d5740c6163ec2bc93a9316782f9458784e71a0aade9a90f1693b4bd` |
| 26 | `theorem` | [equivalent_at_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/equivalent-at-zero.md) | 205 | `result-track:b035784b9ea8cc577f53a53c6fb4c966a0698e597d71e6f8cd7adfc8506f08de` |
| 27 | `theorem` | [identity_determined_at_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/identity-determined-at-one.md) | 211 | `result-track:31d654f8a981a87aba87b879b483094a862c43d2dcd5b8c053193ec18dfdafb4` |
| 28 | `theorem` | [identity_determined_at_two](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/identity-determined-at-two.md) | 216 | `result-track:6a4d4f6a63f7db2dc1fa53f4fef16d57c16817c547197665848a0dc8b4968ce2` |
| 29 | `theorem` | [identity_not_determined_at_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/identity-not-determined-at-zero.md) | 220 | `result-track:ae72278917e50bc5e1192a6aa90d3df2059ecda4f9ada164311b5a2f85dbe4d4` |
| 30 | `theorem` | [budget_equivalence_does_not_reverse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/declarations/budget-equivalence-does-not-reverse.md) | 226 | `result-track:1defd5a05e9b9c480e3dd45dfebc1e73f553f00d4caa2ab6a50e8d2d2085dbfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9e01cd2d3c260a495f3296c2c64dc4207a8b35ff6b692a7434fc4182ee51f20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
