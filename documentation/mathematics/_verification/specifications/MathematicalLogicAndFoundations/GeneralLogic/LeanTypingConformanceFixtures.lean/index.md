# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Fixtures.LeanTypingConformanceFixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1cfb461094fb041ec113942dd5df0734d0fd90",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Fixtures/LeanTypingConformanceFixtures.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1cfb461094fb041ec113942dd5df0734d0fd90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Fixtures/LeanTypingConformanceFixtures.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Fixtures/LeanTypingConformanceFixtures.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binders](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/binders.md) | 8 | `declaration-track:059405f081862ad3640568756fb12401492749972aec45839717e154989296f5` |
| 2 | `def` | [changedBinder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/changedbinder.md) | 9 | `declaration-track:678372e519cfd943f1444193ec2968ab10efbb27900fcdda5e14c7b05d3258a9` |
| 3 | `def` | [ordered](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/ordered.md) | 10 | `declaration-track:bf9b05a0a180a96a6d973a36bfac12e56735da336978fc45ba41610294d95c38` |
| 4 | `def` | [reordered](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/reordered.md) | 11 | `declaration-track:6780ab31adc742195d2bae2905c1e8e00bc240bf71d06e80260c4612c05760ed` |
| 5 | `def` | [classDefault](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/classdefault.md) | 12 | `declaration-track:15b9b62f7dcb9ac42ef6590674aa0e6a883d06c9d805e3823e3610ae52c4c894` |
| 6 | `def` | [asInt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/asint.md) | 13 | `declaration-track:7387eb1e93f96c3494e28bd6e97b022766858ee280c05f43c8796b827b39a42d` |
| 7 | `def` | [asNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/asnat.md) | 14 | `declaration-track:47c7804a5dc6b07260c3627ef1f83d26933d54f46441e7b95e0251c16ad19f6d` |
| 8 | `theorem` | [withHypothesis](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/withhypothesis.md) | 15 | `result-track:fbbc5155bd2f2c35623db3725fbf590a38cd365f39b45002374732db1bbdd379` |
| 9 | `theorem` | [withExtraHypothesis](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/withextrahypothesis.md) | 16 | `result-track:c0c90ade7e6cbf74c954fc1a96746aedc90cbd2856ce9cb581cbc3ad979f084f` |
| 10 | `theorem` | [conclusionTrue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/conclusiontrue.md) | 17 | `result-track:83419b4fefc13b0f7f6af0b1436410e5509d9ab46560c5482f42c77080c8711b` |
| 11 | `theorem` | [conclusionEquality](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/conclusionequality.md) | 18 | `result-track:3a835b05884276e1f9c00cbe8991bebfcdb88c1760d987b3d562145ccf1c0427` |
| 12 | `def` | [samePrintedBodyStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/sameprintedbodystatement.md) | 19 | `declaration-track:20f948f64e2c752878e67e36710be08505b36064e9082554778ab4eae60c8a84` |
| 13 | `def` | [changedBodySameStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/changedbodysamestatement.md) | 20 | `declaration-track:5b15e43378a2499bcd57ce35bce016d32d97407e27f7c1871aa3d4bf5995cb13` |
| 14 | `theorem` | [sectionCapture](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/sectioncapture.md) | 25 | `result-track:94031cebd8d9fdd3275661bf172494354745fa3c0e8fa383557da3a4380fb22b` |
| 15 | `theorem` | [notationCapture](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/notationcapture.md) | 27 | `result-track:383d980f12e056f141979d94eea70baed33a87baef8a4246878a897e632dede5` |
| 16 | `theorem` | [optionCapture](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/optioncapture.md) | 29 | `result-track:68ba0a1d10b6846afb3d0a52eef2ff618738c9829ba95f2d6d0e31bf880c9872` |
| 17 | `def` | [same](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/same-source-edition-2.md) | 33 | `declaration-track:ccfa18475997c8d17db472c1b1ebf2f99b7646b202c7b682460dc3cc9ad68481` |
| 18 | `def` | [same](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/same.md) | 36 | `declaration-track:086f9d7f87d24a900d03ef7ef5657f24600e42e9cce9eab7f67a99fe5d7f6171` |
| 19 | `def` | [resolvedLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/resolvedleft.md) | 38 | `declaration-track:74f01aec84cf4f526075b75620649b249924e215d33a7b8377494a782cae7010` |
| 20 | `def` | [resolvedRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/resolvedright.md) | 39 | `declaration-track:97036a7fb70ce578165bfbfc7b3e44ded5dfffb0d3830a790dbe0516dada73a3` |
| 21 | `def` | [privateWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/privatewitness.md) | 41 | `declaration-track:0450f045f9c367bf29682b313b9f8b594aec662189a225fc59ca03f27840d747` |
| 22 | `def` | [privateConsumer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/privateconsumer.md) | 42 | `declaration-track:bbc012fe58fb1e742856067074ba45a3d7ae1196e371f0e30a2e44dec0191eb2` |
| 23 | `def` | [recursive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/recursive.md) | 43 | `declaration-track:753434d08879b06004e0031de25343c7dc4d213b97c5d788f158253e6b183c85` |
| 24 | `inductive` | [Owner](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/owner.md) | 47 | `declaration-track:a0fdca9e9ded412bf3b5be3f5cf431dbae485c853f101756074833d1f5b262d5` |
| 25 | `axiom` | [explicitInput](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/explicitinput.md) | 51 | `declaration-track:2d090676cc8b058a11e16debeb411cb6fdd71a02d8b8e7155bf102ba4403e160` |
| 26 | `theorem` | [conditionalFromInput](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/conditionalfrominput.md) | 52 | `result-track:89e49d696e942d78de8e543398e9473a8bd65bc1fb001d4914ef22d3df44d5fb` |
| 27 | `theorem` | [placeholder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/placeholder.md) | 53 | `result-track:edfaaa9376a9a3ea65e6a764b6e09ecafc29d7ccea57fade329f698a27cc261f` |
| 28 | `theorem` | [unrelatedComplete](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LeanTypingConformanceFixtures.lean/declarations/unrelatedcomplete.md) | 54 | `result-track:c37099b37153a9cec2331d1304a6b227cfdcd174c03f70259c26bbaf1a2e4ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2440f9d93281c9444c644c6fc5573f0208815ee46e6c2f6cad0318d510698a42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Fixtures/LeanTypingConformanceFixtures.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Fixtures/LeanTypingConformanceFixtures.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
