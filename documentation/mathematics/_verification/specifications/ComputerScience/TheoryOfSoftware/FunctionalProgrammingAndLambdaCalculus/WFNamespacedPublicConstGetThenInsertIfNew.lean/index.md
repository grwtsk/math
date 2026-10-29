# Verification target: WFNamespaced Public Const Get Then Insert If New

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0620c8338d45f1e771aa028b3efeec360e3b4bcd",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant054fbb0a6f9176de500e83312ca75b0bc9cbf2e7db550733d9f45bff66d37c55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0620c8338d45f1e771aa028b3efeec360e3b4bcd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant054fbb0a6f9176de500e83312ca75b0bc9cbf2e7db550733d9f45bff66d37c55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant054fbb0a6f9176de500e83312ca75b0bc9cbf2e7db550733d9f45bff66d37c55.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/instance.md) | 38 | `declaration-track:138157ce82e9e40fbb774260941921b456705c2ade8dae779b32bfbe51519474` |
| 2 | `theorem` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/empty.md) | 40 | `result-track:19b4615202d5497e3719a01e1908e063135bd627dd772a5e69f53f32e74d714c` |
| 3 | `theorem` | [emptyc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/emptyc.md) | 43 | `result-track:be456c25c23981cbcd024a4cb793af43e540734859949a3fde10e9b9cfcaaa58` |
| 4 | `theorem` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/erase.md) | 46 | `result-track:ac9bcc22f04a4f56e69ac76d27dc5f816050213ecb4635d0ea2eccb7b87a8679` |
| 5 | `theorem` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/insert.md) | 49 | `result-track:e7e6b14ad10151c1296e902f9548b97e33a5f3d5a0a6fd34306b040c20e6b50b` |
| 6 | `theorem` | [insertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/insertifnew.md) | 52 | `result-track:c5db9d8fb6f8ee0ee0326d7e3c6ef1df9a49d3712a0b6f6e6392d36fd6db48c0` |
| 7 | `theorem` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/containstheninsert.md) | 55 | `result-track:c455e92256fd6844d3ed1d2d120e9421f7b12114b636643753e06b9372c0a563` |
| 8 | `theorem` | [containsThenInsertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/containstheninsertifnew.md) | 58 | `result-track:93ca336b8866b1b0e24cd2f5409420bc636a3bbb0072eb45fd8580012787b0ca` |
| 9 | `theorem` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/gettheninsertifnew.md) | 61 | `result-track:0afec7159cbe786cdb1e9c5fa58209538644bb755d7f514b513793bddf00926c` |
| 10 | `theorem` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/filter.md) | 65 | `result-track:d7d207896dc73310c0a43b82b58ca334f7311b55d484979fff134df902d84e9c` |
| 11 | `theorem` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/filtermap.md) | 69 | `result-track:8ca96fad2487e09f81c5bfceab6d5641259df4ab6f0a4b1788d814061efc0204` |
| 12 | `theorem` | [partition_fst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/partition-fst.md) | 73 | `result-track:207abd1f42756f663eb17bd90f5b5e69e95cf67db97792a9ff109a7260a2f634` |
| 13 | `theorem` | [partition_snd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/partition-snd.md) | 84 | `result-track:9b0a36b5e85c5eecce099964856e22d7ea4964dab142bf41fa2c98e7b59c8bb1` |
| 14 | `theorem` | [eraseMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/erasemany.md) | 95 | `result-track:22c051f33f5bd62a9ba3051b9ade24561265af2be605cc5ba65396bf7b359797` |
| 15 | `theorem` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/insertmany.md) | 99 | `result-track:886b9b8ec722a812492a786b443bdb0715edffaf437a1c9073a20f15292d5744` |
| 16 | `theorem` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/oflist.md) | 103 | `result-track:090a27eba4c0afb9109df093e78412de5aa16619af491d70923193550a10d280` |
| 17 | `theorem` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/ofarray.md) | 107 | `result-track:658369db316c168bfc02af6ed971e2f5778217947d92d952d48c36f3d3b1db21` |
| 18 | `theorem` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/alter.md) | 111 | `result-track:f99c0352d38de15a25368612d72e76634f35e5a2d836ab6457a98245856798db` |
| 19 | `theorem` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/modify.md) | 115 | `result-track:fba2040f6aa03de332d869a9cd00422988725c1d7f7c00d50c46b41ff2d179a8` |
| 20 | `theorem` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/mergewith.md) | 119 | `result-track:3c7780f69074d28ec8b5c0f40dcc221fcadb96c2d06a36b7a2e1411e1a6b8bb9` |
| 21 | `theorem` | [constGetThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constgettheninsertifnew.md) | 127 | `result-track:9833e6758100287520b5325b244af3b69ac57a5b420e85312f814d86c33ee3cf` |
| 22 | `theorem` | [constInsertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constinsertmany.md) | 131 | `result-track:882654f49bc47432afbb450e2a356b3449e61821c1b02338418a6a643f72789e` |
| 23 | `theorem` | [constInsertManyIfNewUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constinsertmanyifnewunit.md) | 135 | `result-track:aedb36aa32f45aa9d737d7d508737a455ea9e5a4bac0d988d5914ed3b1d62454` |
| 24 | `theorem` | [constOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constoflist.md) | 139 | `result-track:e936b7340b8450fd2806d5f20f472a5a6b6dcb764a25ea34112f31715accce1f` |
| 25 | `theorem` | [constOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constofarray.md) | 143 | `result-track:3139b90019852b1d4c54fde2b2c7181ddeb9e92ae020ee513385e5e70cdffaae` |
| 26 | `theorem` | [unitOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/unitoflist.md) | 147 | `result-track:288887a1bf3dc8d225cc33648eb3b163d993813d25bff3ba7038b75a5e6bb580` |
| 27 | `theorem` | [unitOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/unitofarray.md) | 151 | `result-track:5bfc5a5a90196a543d4178a0ce5ab5e47816ea15606dccec56159f87cba7f214` |
| 28 | `theorem` | [constAlter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constalter.md) | 155 | `result-track:4d80b1f7e9289d22296d883a5f0c505dd826829a0f4c6df3e976c663d90d1314` |
| 29 | `theorem` | [constModify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constmodify.md) | 159 | `result-track:2008722e53d005bab224dbf98f0b7de415c39b709c0b0a3feb669fc8d147418b` |
| 30 | `theorem` | [constMergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/constmergewith.md) | 163 | `result-track:381524b33a41d00735e85c067654c9e2b38074f5bea87e2f0b95c8dc565ddace` |
| 31 | `theorem` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/union.md) | 167 | `result-track:63a610d0156278c341ca57de767080042542576dfd2ba36bcaa587eae90ec525` |
| 32 | `theorem` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/inter.md) | 171 | `result-track:19fdc7b055476f4be9581cb49c3ea7aebf0728787a516835b65d910b8fbf0ff6` |
| 33 | `theorem` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedPublicConstGetThenInsertIfNew.lean/declarations/diff.md) | 175 | `result-track:136c31813ef3aac8e96539e17b39581351f9f1c0edcfc32b9e475388bf7622da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0889fa94a09629c677ca3856dd11ec290a135c9262a11d4c98b6b70e7c76a29d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant054fbb0a6f9176de500e83312ca75b0bc9cbf2e7db550733d9f45bff66d37c55.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant054fbb0a6f9176de500e83312ca75b0bc9cbf2e7db550733d9f45bff66d37c55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
