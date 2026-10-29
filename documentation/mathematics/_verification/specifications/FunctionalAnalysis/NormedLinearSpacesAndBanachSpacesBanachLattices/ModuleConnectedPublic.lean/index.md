# Verification target: Module Connected Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be023593ffc517a932a8b8af3c1cbdb4465b1346",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variant74d7e723415f4f3e0d5a577a8b881c60d5c4d3267dba1310121c134820bed135.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be023593ffc517a932a8b8af3c1cbdb4465b1346`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Connected/Variant74d7e723415f4f3e0d5a577a8b881c60d5c4d3267dba1310121c134820bed135.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Connected/Variant74d7e723415f4f3e0d5a577a8b881c60d5c4d3267dba1310121c134820bed135.lean.json)

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
| 1 | `theorem` | [Set.Countable.isPathConnected_compl_of_one_lt_rank](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/set-countable-ispathconnected-compl-of-one-lt-rank.md) | 44 | `result-track:c1042a79ec88e9e20ccc81f65882068d8f4cd9f88e90f45e35c6d8ac21495091` |
| 2 | `theorem` | [Set.Countable.isConnected_compl_of_one_lt_rank](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/set-countable-isconnected-compl-of-one-lt-rank.md) | 115 | `result-track:b778fb43b45932bc0df7ed721cc85fbc6f1045d96a18cc8355aef89e8e0b2607` |
| 3 | `theorem` | [isPathConnected_compl_singleton_of_one_lt_rank](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-compl-singleton-of-one-lt-rank.md) | 120 | `result-track:1ce66c644cfc85a64e80a140f249504cc64bc70a866b993a6d462ed8b3238071` |
| 4 | `theorem` | [isConnected_compl_singleton_of_one_lt_rank](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-compl-singleton-of-one-lt-rank.md) | 125 | `result-track:54105f8aa27f1133e07d771f5f48f98a13578ab68c231e2a3a6eaa5159e62ffd` |
| 5 | `theorem` | [contractibleSpace_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/contractiblespace-ball.md) | 139 | `result-track:09d6f65bd2da0f7486a7bcb567b30043bd6f8cf1052b36a23092978202493fd9` |
| 6 | `theorem` | [contractibleSpace_eball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/contractiblespace-eball.md) | 143 | `result-track:c69691a0cb744a1e03decfba332ffffebcf44e55a177507af40be6e69add493f` |
| 7 | `theorem` | [contractibleSpace_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/contractiblespace-closedball.md) | 147 | `result-track:3bdeb20a6c27969aad94fae57da32769f614840617d344d07886e38c5b79718e` |
| 8 | `instance` | [contractibleSpace_closedEBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/contractiblespace-closedeball.md) | 151 | `declaration-track:482ec924cdf468f191d4cd86b1e450e709bac0cd95fdd2822e914a6b886f7b0a` |
| 9 | `theorem` | [isPathConnected_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-ball.md) | 155 | `result-track:172133a9b83c487cf84d662eec325ad284e4af65fbd9bb32ff085983eacfca11` |
| 10 | `theorem` | [isPathConnected_eball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-eball.md) | 159 | `result-track:e8a75849333cff70133e5d1018e4c9cff87c3b577cec066492726a1163a544ab` |
| 11 | `theorem` | [isPathConnected_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-closedball.md) | 163 | `result-track:975ce5e3a5bda1d3f6c4972d1ee66fa94d6f3cb3489572ab8962df219940ab1c` |
| 12 | `theorem` | [isPathConnected_closedEBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-closedeball.md) | 167 | `result-track:69c83ba78745337edde34f31bbd4008a1e10ed138533afba0b21de4f31f61ff1` |
| 13 | `theorem` | [isPreconnected_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispreconnected-ball.md) | 171 | `result-track:f0a58190dccd4c34154d7808775735be56badbbb391db553fb3bc63598e0dfbe` |
| 14 | `theorem` | [isPreconnected_eball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispreconnected-eball.md) | 174 | `result-track:60208c04668b166ee39e8d81d456b46f79f345ca3253c3c20a7b8966494057d0` |
| 15 | `theorem` | [isPreconnected_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispreconnected-closedball.md) | 177 | `result-track:e40f4e40fc75a0ce19ed698eed0ab40dd8fb0b7ad37ac6aec507749d80db2a4b` |
| 16 | `theorem` | [isPreconnected_closedEBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispreconnected-closedeball.md) | 180 | `result-track:a7c4c3aa595ad1cf8cf9f75637925f17b7942c87c3ff3a1a2ac5d4a238017de2` |
| 17 | `theorem` | [isConnected_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-ball.md) | 183 | `result-track:d8aafeb4654bf649513e2aefe2cc075d37f41b5cd1efb9de53b51b41b796c81b` |
| 18 | `theorem` | [isConnected_eball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-eball.md) | 187 | `result-track:4e0c8594d25ad969472eb334492dc0d1d76e4b459ef49e66c6d4d91ecafccd0f` |
| 19 | `theorem` | [isConnected_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-closedball.md) | 191 | `result-track:a08a98b922bc3acca17972bf82bc033864d5da289e17457b74a593a5e39bae42` |
| 20 | `theorem` | [isConnected_closedEBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-closedeball.md) | 194 | `result-track:f7d9ddee6def3d34bdf71a0a83ed5004c0be7ff42ac93ce5ab706db6a61e6e47` |
| 21 | `theorem` | [isPathConnected_sphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-sphere.md) | 203 | `result-track:4f57fd86f476350ef513169fee9f361a548066ba39721f3603e4e1f40b93be6f` |
| 22 | `theorem` | [isConnected_sphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-sphere.md) | 233 | `result-track:dbfcd0f88e269f9bfeb89dc40137cf240ba10d07d60ded515e467c7f4100e5d0` |
| 23 | `theorem` | [isPreconnected_sphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispreconnected-sphere.md) | 238 | `result-track:a544ec410a68e1aedea50dffe217efe48860814d6a03cd54994db17028e08fa2` |
| 24 | `theorem` | [isPathConnected_compl_of_one_lt_codim](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/ispathconnected-compl-of-one-lt-codim.md) | 253 | `result-track:9f37247442448ccf163fdad3994bfe754521dd78bcd14208e6f660e2daa8e350` |
| 25 | `theorem` | [isConnected_compl_of_one_lt_codim](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/isconnected-compl-of-one-lt-codim.md) | 262 | `result-track:c9f94664d244926586c6ebec168a8781b4f8ca13c28b2a142ad94b75b85d7419` |
| 26 | `theorem` | [Submodule.connectedComponentIn_eq_self_of_one_lt_codim](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleConnectedPublic.lean/declarations/submodule-connectedcomponentin-eq-self-of-one-lt-codim.md) | 266 | `result-track:f82f5762740d7157da655b304ab149e90c08b6afed3c69758686ce3bb5de5619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb0c535d33f1da8443ea6c5bb4c3e7343ebe13c190b81904a6dcc5f27d0e36a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Connected/Variant74d7e723415f4f3e0d5a577a8b881c60d5c4d3267dba1310121c134820bed135.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Connected/Variant74d7e723415f4f3e0d5a577a8b881c60d5c4d3267dba1310121c134820bed135.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
