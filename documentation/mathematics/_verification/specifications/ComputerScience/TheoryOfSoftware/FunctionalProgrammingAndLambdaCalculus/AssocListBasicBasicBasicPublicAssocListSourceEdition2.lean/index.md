# Verification target: Assoc List Basic Basic Basic Public Assoc List Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e24b6a9d954e9b6198c98093e76fb3e956d72ca",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant857d58e323950660e6d6ea6cfa16384df655a0a32beb4fc34417b88b0c0a0a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e24b6a9d954e9b6198c98093e76fb3e956d72ca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant857d58e323950660e6d6ea6cfa16384df655a0a32beb4fc34417b88b0c0a0a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant857d58e323950660e6d6ea6cfa16384df655a0a32beb4fc34417b88b0c0a0a29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AssocList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/assoclist.md) | 28 | `declaration-track:08ba624b682d1fa01fe2daa347a76b65433e91c8943d1a25d71050397eb3b9f4` |
| 2 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/tolist.md) | 42 | `declaration-track:9b5c1c02bd0515688fb429302efcba09da270fd596d9ccffd73e31de6492f28b` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/instance.md) | 46 | `declaration-track:08bbd251d6ff5ffb4e2602fa05f13dea93bfe9cb5e865c704670aa9570f29157` |
| 4 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/isempty.md) | 49 | `declaration-track:bf4fdec8a5fd77170776b8e88be34ce4a0430a98f36d64a85d8864981a1923a4` |
| 5 | `def` | [length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/length.md) | 54 | `declaration-track:d74dc321a497626b36f90c251fb1cbaecb7803b9496d9a22592ce94634538fdd` |
| 6 | `def` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/foldlm.md) | 60 | `declaration-track:18292d15841ded3de387b14e01df9a2860746ebd20dec697a93514d1ff887c67` |
| 7 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/foldl.md) | 65 | `declaration-track:a2db4d62a5620a6d3680fae65ba8fe544972b5eef43a28fd9a26afcce5a584e0` |
| 8 | `theorem` | [foldlM_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/foldlm-eq.md) | 68 | `result-track:1cdd2750bc5b2786bf875142e532dd5d6a355e03532123a81fab32475ead2f59` |
| 9 | `theorem` | [foldl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/foldl-eq.md) | 72 | `result-track:ad4d532cc9a0cce3bb8112b631c997885bdf58ae3bdf445fe5e3c36884389976` |
| 10 | `def` | [toListTR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/tolisttr.md) | 77 | `declaration-track:a70e1b7f14187445f68093bd386c44efbe47d7c9a7fa18204625ee80bc39f1fa` |
| 11 | `theorem` | [toList_eq_toListTR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/tolist-eq-tolisttr.md) | 80 | `result-track:0537ebf1b9a66b19d5af9415ee60b4617f0a4c7e6fb653dc1121ccb172ccb96e` |
| 12 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/form.md) | 84 | `declaration-track:b0bea2335c08fcfacbee980717606c0e8a194df81ec2422fef3c103ae4046793` |
| 13 | `def` | [mapKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/mapkey.md) | 89 | `declaration-track:36dfb08b4f6224a46a5f7e34ec493a6f137433255327e35310733e79059179f7` |
| 14 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/mapval.md) | 94 | `declaration-track:5b9386c0116e00bdb4cada0de34f022e793579ba69c2c388239812f289245fde` |
| 15 | `def` | [findEntryP?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/findentryp.md) | 99 | `declaration-track:a2b32da55daecb0b83346f4b123b5e217a6355de26c62aa6c06c85dffeb7bd9e` |
| 16 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/findentry.md) | 104 | `declaration-track:20b88c7351bc67423dcaeb04100ecd087ef958a3ed81f50113842ea1274508c7` |
| 17 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/find.md) | 108 | `declaration-track:46e1d2b750b10d9bc2cc22d82cdeefce12fe3727caddf0807df9e53991b20d8b` |
| 18 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/any.md) | 115 | `declaration-track:372c54e221a3a99ef51e8a611e14b06cb7fa828a69f8fea221ffa8a3aca8ebd7` |
| 19 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/all.md) | 120 | `declaration-track:bd7270fa912922a1dab58dce12189f1f891c80d4faac38f5e9203389921747c1` |
| 20 | `def` | [All](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/all-source-edition-2.md) | 125 | `declaration-track:ca69569ab2f2cf57702bb63e0f67bfd8a94970b2c8d544317d9eb3ddb8d7b783` |
| 21 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/contains.md) | 128 | `declaration-track:a7eec34dc64c65b0ceaa5978ce7496426dcdf7a4e0e7681e4370b48bc20bce0c` |
| 22 | `def` | [replace](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/replace.md) | 134 | `declaration-track:06cde168d1d39fa4277d779d35cff3818e1c7f9f946accc2b26573f48c6c7371` |
| 23 | `def` | [eraseP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/erasep.md) | 141 | `declaration-track:2a607cd82dd123bb0da432ab7bd5859b20be203efab4804b7d8952e430a80134` |
| 24 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/erase.md) | 146 | `declaration-track:b3b69b8ef88062c1658172c301f4392cb13757c4ef182604450a8bb22960b8c8` |
| 25 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/modify.md) | 153 | `declaration-track:a2787de768ad9f35a1f0fd48b4a027fdb68dbce732765bbc4906351935362687` |
| 26 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/forin.md) | 160 | `declaration-track:e820aba77dea1a594349bd059a7a0a784a2e96e25c618bd6fe1ecfdd8ca83915` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/instance-source-edition-4.md) | 169 | `declaration-track:52711526e4d9b6706f843119d63f3ff729678aa35045e3f4c8c956983225d8fd` |
| 28 | `def` | [pop?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/pop.md) | 173 | `declaration-track:db35128871fc9ce5dc1c28b72de327df18df4d98a9f0af3e7619d488c2a67d6f` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:254d2802e3db0ac95041f0a2f99b739138fee47760411adefc48a950e289cce4` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:3c77e07b94dec6f3f2da5ed6180a36092827b04ddf55b4006ce829900dc0b6c9` |
| 31 | `def` | [_root_.List.toAssocList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/root-list-toassoclist.md) | 181 | `declaration-track:ad13a08d2166e6390bda1c1d14094082f45475516736a30ddda641612758beb6` |
| 32 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/beq.md) | 186 | `declaration-track:ce4296cf4f9b787a0ef50e68f9966910bcbd0b94e4d03d4a08ddcfc2968ce07e` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListBasicBasicBasicPublicAssocListSourceEdition2.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:b399d9085a676791e0b4433e50728a7248860215a5442ba17a6339b17c05e973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2af47a6c9153c8e404280be01618d767840c670f9c95e4c66703c4546d72827e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant857d58e323950660e6d6ea6cfa16384df655a0a32beb4fc34417b88b0c0a0a29.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant857d58e323950660e6d6ea6cfa16384df655a0a32beb4fc34417b88b0c0a0a29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
