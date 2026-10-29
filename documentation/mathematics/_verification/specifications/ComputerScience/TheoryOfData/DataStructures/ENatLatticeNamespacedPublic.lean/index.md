# Verification target: ENat Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1513287dae7b698eeeaef0c842127ccbedf3a269",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1513287dae7b698eeeaef0c842127ccbedf3a269`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/instance.md) | 40 | `declaration-track:8a80bf240136b9f0822aa98a97e58ca5cebad9f68367cf5463b2c7ccd57dbe99` |
| 2 | `lemma` | [iSup_natCast_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-natcast-eq-top.md) | 46 | `result-track:3e4e4c2ec286a2b144138528a29099e5394521f0d467804bd03ad274251ccdd5` |
| 3 | `lemma` | [iSup_natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-natcast-ne-top.md) | 47 | `result-track:95961894837ad634c4e5dbd23b6fa5a309640afa4857d3fac5ba9865f12d56eb` |
| 4 | `lemma` | [iSup_natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-natcast-lt-top.md) | 48 | `result-track:8fa4a95174178b1a455f3d19c775a1c8c1388c32dcc30b9ce7181639a5b1aed1` |
| 5 | `lemma` | [iInf_natCast_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-natcast-eq-top.md) | 49 | `result-track:8a6f5f6c2bd817ded64f1616eb7f9fa1c9199852314bb66a70e406f6062dfc90` |
| 6 | `lemma` | [iInf_natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-natcast-ne-top.md) | 50 | `result-track:bca74d5ee44749d69c44968a0cc94388c8f7883ea47bd825b3edaee8c52d68dd` |
| 7 | `lemma` | [iInf_natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-natcast-lt-top.md) | 52 | `result-track:43f7cbe7ec44cc51d33561265a190e21f9dfec01e2bed51af40fed0fed7411ac` |
| 8 | `lemma` | [natCast_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/natcast-ssup.md) | 61 | `result-track:068200b79cd0d8bc00462d04e482602e194a689c84b93d4ca0eda6bb7ae2160d` |
| 9 | `lemma` | [natCast_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/natcast-sinf.md) | 65 | `result-track:63b49bdefc9f7ca9ad2a11e97fc4f57c6fe43d6db21b992bcda9fe2c35457ad2` |
| 10 | `lemma` | [natCast_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/natcast-isup.md) | 70 | `result-track:228d0cbf362e40811a2234d863c2c0d0834eead9683ccf7f28fede39b7ab304e` |
| 11 | `lemma` | [natCast_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/natcast-iinf.md) | 74 | `result-track:d417e9dcb74d1b985acc78aa7a6b2a177ab66c2b1236598e298b7570e37169e5` |
| 12 | `lemma` | [iInf_eq_top_of_isEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-eq-top-of-isempty.md) | 79 | `result-track:4f172f6050e2a37d6e4aafcd4d0b566110a2ecd8da9a699608f751564fffc296` |
| 13 | `lemma` | [iInf_eq_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-eq-natcast-iff.md) | 82 | `result-track:6923f1a48fb85f470038ccef3df516019ae1ead0565c3d7c459bd034d40b6d51` |
| 14 | `lemma` | [iInf_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-tonat.md) | 89 | `result-track:3e22a183607982e1e602ab48fdcde628823e11e300907252f9f6062cb1c5cbbf` |
| 15 | `lemma` | [iInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-eq-zero.md) | 94 | `result-track:c08e96e4ad9ebe0ebbdcf18eea727cccbd0f01f651bac915ff52c276c9d7aa6c` |
| 16 | `lemma` | [sSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-eq-zero-source-edition-2.md) | 99 | `result-track:f48b6c6750297f06181109b76a878a225a23437343a5a60ba0aef3038f1d1616` |
| 17 | `lemma` | [sInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/sinf-eq-zero.md) | 102 | `result-track:e1706c9706f8f0e3f9b8980d5f3208ada6a08a0567ba4886236d4b7fc81fc939` |
| 18 | `lemma` | [sSup_eq_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-eq-zero.md) | 106 | `result-track:a5a8f0c6b9045bfe22eb4d577b30e4ec60c1256cd60ce2648300fb5e0ae3259a` |
| 19 | `lemma` | [iSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-eq-zero.md) | 109 | `result-track:8ef16e17fa71336567b7418566f33c94b220ba2548b56a1bf938fe0e61956c55` |
| 20 | `lemma` | [iSup_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-zero.md) | 110 | `result-track:1df7e7097f45396f05ef2c8d0324a46d29d533bf23a269c0baac8ba8f78a26be` |
| 21 | `lemma` | [sSup_eq_top_of_infinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-eq-top-of-infinite.md) | 112 | `result-track:cc63363c22ecbc956a66aedef6e481c06a4bec664fbf3c8e4befdd2683f20564` |
| 22 | `lemma` | [finite_of_sSup_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/finite-of-ssup-lt-top.md) | 126 | `result-track:69aa091f43945384a22f41187785b5d7a59e70458c609c1f533c49d6659cc8c4` |
| 23 | `lemma` | [sSup_mem_of_nonempty_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-mem-of-nonempty-of-lt-top.md) | 131 | `result-track:df4f172ba18cb326642ab8915b97f63a0e670f47ba34f2975b6dd05655ad96e6` |
| 24 | `lemma` | [exists_eq_iSup_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/exists-eq-isup-of-lt-top-source-edition-2.md) | 134 | `result-track:cf981da4bc6f0cd0bdaea85c3bcb584a4cfc94beee02dec728d446fa605632f1` |
| 25 | `lemma` | [exists_eq_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/exists-eq-iinf.md) | 138 | `result-track:8fe476f659f7c49b92da202db5ade8b8eec06330e7bf4d517f3d3cde482ac461` |
| 26 | `lemma` | [exists_eq_iSup₂_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/exists-eq-isup-of-lt-top.md) | 141 | `result-track:17ba6de3e3aa38cd835a84e767bb11147eb26a5da2f39e6b1c6756dcc0e85ad4` |
| 27 | `lemma` | [iSup_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-natcast.md) | 148 | `result-track:b8adc31694002d686499babcb98e6d445360855a19c730da3e6490699445394c` |
| 28 | `lemma` | [mul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/mul-isup.md) | 151 | `result-track:854fb1179dcae04a351cfc4f04dc87705402faaedb2f3339386c295ca27901c4` |
| 29 | `lemma` | [iSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-mul.md) | 170 | `result-track:3ae8f81bf29d6888b8338852f8d11a874ee07f69c6d5e973f87a37f4a3b154db` |
| 30 | `lemma` | [mul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/mul-ssup.md) | 173 | `result-track:1db2dfbe082d9b3c0752fd2fbfebef8a6e1b440eaa211cec49b5dcbb345aed0c` |
| 31 | `lemma` | [sSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-mul.md) | 176 | `result-track:3a654f090fd20da19fcface23d8ff192150f7fc507f1a0b43352326d004c16de` |
| 32 | `lemma` | [mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/mul-iinf-source-edition-2.md) | 179 | `result-track:a447cc1b122cd8ac0f3fdb441a36ed9b6e7f0dd1449fc0dff069390af228c02d` |
| 33 | `lemma` | [iInf_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-mul.md) | 185 | `result-track:4ac5052f411affc15d0cd32345f29e9c83ef4c6358083fb5f42fde8127765e81` |
| 34 | `lemma` | [mul_iInf'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/mul-iinf.md) | 189 | `result-track:8e0b1382efc5197e1713d73408977801b6797bd65f3c4ff472dda3b7f54f3e57` |
| 35 | `lemma` | [iInf_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-mul-source-edition-2.md) | 196 | `result-track:6536569c391accd5cfacdf72336afd652c927e37d11ca0ee8602b8ea3926c415` |
| 36 | `lemma` | [mul_iInf_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/mul-iinf-of-ne.md) | 201 | `result-track:8cfd27fe461963842435526c0e7e4028fda01af4c3e2027c67632d4252cf6d02` |
| 37 | `lemma` | [iInf_mul_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-mul-of-ne.md) | 206 | `result-track:20b5c5f0ec8bc0f217f6ce8020a797bbc47b6f0e44cd7a1495a57461d14ed728` |
| 38 | `lemma` | [add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-isup.md) | 209 | `result-track:7dfe39b5c9b52114a57cac12a50777739c6a88457f38f046779d84653781e327` |
| 39 | `lemma` | [iSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-add.md) | 216 | `result-track:6dde94f299a1e8251305ae96d5632d4ac0c9205e5d6e3ec0529c33bbb2c7fada` |
| 40 | `lemma` | [add_biSup'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-bisup-source-edition-2.md) | 219 | `result-track:2bb048ff1add0e4dfc180a0322d5b6e33790f4df283ddd1e2e3b8313662e187e` |
| 41 | `lemma` | [biSup_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/bisup-add-source-edition-2.md) | 224 | `result-track:bde4de4e6c8cf6ea85faa52cbda7a8c8a5a1d00dc1e0a454d4f162548e9bbf58` |
| 42 | `lemma` | [add_biSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-bisup.md) | 227 | `result-track:19d68bfd917057a9fa41bb5811fadc9a3ab1273c4241e34cc0c19e204286cbab` |
| 43 | `lemma` | [biSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/bisup-add.md) | 230 | `result-track:83ad0b431eaae8cc66f1765da811909811a279e111d71d12a768aa4c10133087` |
| 44 | `lemma` | [add_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-ssup.md) | 233 | `result-track:f71af23834912a1b8413378e6cf668c9b5e0ada892c5858aeaec4075e26abf6e` |
| 45 | `lemma` | [sSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/ssup-add.md) | 236 | `result-track:aefb49659d3c9c7115fe069f0f56a5d28ee8630908193f31c0a02925a9c9311c` |
| 46 | `lemma` | [iSup_add_iSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-add-isup-le.md) | 239 | `result-track:ab56348b046bb335499205bd7b3053cbd429d671deb4f6fe525da7b0bccd9e76` |
| 47 | `lemma` | [biSup_add_biSup_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 242 | `result-track:b683c8e349c742c1f5684a0ac020e645cb40ab6d7d78fa1ac27843453c59317c` |
| 48 | `lemma` | [biSup_add_biSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/bisup-add-bisup-le.md) | 248 | `result-track:48ca72ac86983572fcfa4bb7e9854add54cdd4fb940c89280c4b955a03c3390e` |
| 49 | `lemma` | [iSup_add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-add-isup.md) | 252 | `result-track:f780d95f4e8ff37e2c734fe24253a4eac71a7418461694d5e8310e5327820534` |
| 50 | `lemma` | [iSup_add_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/isup-add-isup-of-monotone.md) | 260 | `result-track:1cbee721beb0696bbede6a5ebc84248e6d190964a1d2f45147f79cdfb18cdeec` |
| 51 | `lemma` | [smul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/smul-isup.md) | 264 | `result-track:4aab6270fa7b421c6c27296a871c16bf3a0c0b6e79e9b471a70bf0155abba485` |
| 52 | `lemma` | [smul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/smul-ssup.md) | 268 | `result-track:a3727a59df5ba03958dc60b755703b0483294c07af35aa7d73ccea3e61db1561` |
| 53 | `lemma` | [sub_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/sub-isup.md) | 272 | `result-track:30124217474a256a230ad821f1532d1c995ab3bb02f7c3c44777e4502b35759d` |
| 54 | `lemma` | [iInf_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-add.md) | 284 | `result-track:c0532b9fc6f1b5d25f4d55e4bd67624c634fd89c10333b9c0b27dd59c5b663b0` |
| 55 | `theorem` | [sub_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/sub-iinf.md) | 288 | `result-track:4e37577b530920c21b8bf1da1f0ade730e7cf47679f30dd904f039e055e41b73` |
| 56 | `theorem` | [sInf_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/sinf-add.md) | 293 | `result-track:65a8e0d85eacb9aa58601bed58f936d2d6360b2a658434f0acb4bab13ec08388` |
| 57 | `theorem` | [add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-iinf.md) | 295 | `result-track:1f4e1d82a6f23d1f902e60bef7272f91bad94d1931d5e8e574ab3bd6478ab56f` |
| 58 | `theorem` | [iInf_add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-add-iinf.md) | 298 | `result-track:4d504c2f6333bcc329ba02de7837f701fe541689ff6ea78e218a0f1c6ace5539` |
| 59 | `lemma` | [iInf_add_iInf_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-add-iinf-of-monotone.md) | 306 | `result-track:aa270e9343c7828102fda39629b22464fc0783310954fd4aab53a15e951ca717` |
| 60 | `lemma` | [add_iInf₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-iinf-source-edition-2.md) | 310 | `result-track:f263fdfc7fac7ed6658327558eb84506b0e4e33006a69a1530e0462f770d5b76` |
| 61 | `lemma` | [iInf₂_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/iinf-add-source-edition-2.md) | 314 | `result-track:ee01c179f5d4369f6c899ca5dca78407a259164d4f50b6158db2ed8919d61b5d` |
| 62 | `lemma` | [add_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/add-sinf.md) | 318 | `result-track:e636871a2f26389cc7fd9e28fcbed9eae5660420e7c1eae93dabecbf74e5db69` |
| 63 | `lemma` | [le_iInf_add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/le-iinf-add-iinf-source-edition-2.md) | 323 | `result-track:fe5a3b60c32d1658460939f6c7d24024ea8d05d488dfa278a4df310b775f4170` |
| 64 | `lemma` | [le_iInf₂_add_iInf₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeNamespacedPublic.lean/declarations/le-iinf-add-iinf.md) | 327 | `result-track:526aad0c47459506757c22009cbe249d1705386028ad5024e1e82feff16a5baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca3f34e2caba76a988414806412c16ca66a265206ffa822efae2a29225320c74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
