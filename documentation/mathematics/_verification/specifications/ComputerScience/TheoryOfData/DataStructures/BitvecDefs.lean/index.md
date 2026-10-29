# Verification target: Bitvec Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "706b4e2598ba2bb27c01aa4c07b9dfb67e310c1d",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant71fd25a4b9a20642cf8e6fe7323b3d487671dbf0b9be3d743a4451a618a194ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `706b4e2598ba2bb27c01aa4c07b9dfb67e310c1d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant71fd25a4b9a20642cf8e6fe7323b3d487671dbf0b9be3d743a4451a618a194ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant71fd25a4b9a20642cf8e6fe7323b3d487671dbf0b9be3d743a4451a618a194ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Bitvec](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/bitvec.md) | 23 | `declaration-track:d6469ac4d8cf4b8ff23479c4dd57b21895a84848678b291581a945b8ba15d5d9` |
| 2 | `def` | [zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/zero.md) | 38 | `declaration-track:1141f46b6119347fbceed35da250869c7223a719136f28baf133c5083693beac` |
| 3 | `def` | [one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/one.md) | 44 | `declaration-track:b331ebd8f3d7f65fce8c45bd0a67b6bd98ff9eb1137a1acf01540fbbc8e1acff` |
| 4 | `def` | [cong](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/cong.md) | 50 | `declaration-track:e7e1ed70e8a8291e0b0ac1ad80a427adf6b7c8ae909b2a5a58df8ce30d4f2c5c` |
| 5 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/append.md) | 55 | `declaration-track:9d1689dd223d13b281ca89c9260c32dfcc95fd5c593288a27a8b20b2b3901bd6` |
| 6 | `def` | [shl](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/shl.md) | 68 | `declaration-track:3455998553cf26c14ec5f5dcba9c8c21db8a3fe88248c1c418efc25f30530203` |
| 7 | `def` | [ushr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ushr.md) | 75 | `declaration-track:062edcc957448832957ba5cc803bec41351d6189716065e9e59f8b213d2ea1ff` |
| 8 | `def` | [sshr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sshr.md) | 80 | `declaration-track:8190f00f91e84f0dcc2f1007ed5798d27a112fa160c5c6457416a1a7cbfcbd44` |
| 9 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/not.md) | 96 | `declaration-track:bcbbcd83442bad4229a9ffcdfada20af7fede304d67aba5550304304e88b75a0` |
| 10 | `def` | [and](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/and.md) | 102 | `declaration-track:982bca5811c8840ecade9b3702c71d9d1ce09cd357c9f22c955b7ce901421eab` |
| 11 | `def` | [or](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/or.md) | 108 | `declaration-track:354bd0b6e938dd1d45eb0cacf572cbdd9ab316a8685bb6df9ca98bbf0894f1cf` |
| 12 | `def` | [xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/xor.md) | 114 | `declaration-track:5ab9df059ba6f4fb06c6213d59a4b05ffae13a3cbb887c10c0987343759c15fd` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:332abad125fafa0f4a4ba5abf5ef830488a518cb381926606c3176a134b78c94` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-10.md) | 121 | `declaration-track:6a58cb3e4bfea1c765e67cc5b5f4e1e2ee8e65b82a84071955ed5c7f49d8e810` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-17.md) | 124 | `declaration-track:cf8ce29b467ba1bbf86d6a7ec6177fee2da972f6efe0f6cc69b63d07b7683e05` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-12.md) | 127 | `declaration-track:79059dd13fc196c822b77864dd84b9410060af58f19a6b022c6002b0fecde945` |
| 17 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/neg.md) | 140 | `declaration-track:ee74925130ed5a4e55b4e99ff53515cbb2ac8530bdbd34570d468b025bd82c30` |
| 18 | `def` | [adc](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/adc.md) | 146 | `declaration-track:1a4571b05c25c706215f4df08f435219ecb3ee2c23d8e8517d9a83f94b0d2162` |
| 19 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/add.md) | 153 | `declaration-track:aabe240bcfee4a2d29a808a2a9d2763d94a8f646897061bda93a646a799e5bf2` |
| 20 | `def` | [sbb](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sbb.md) | 158 | `declaration-track:df254de4e5685c80d503ee175313a78fb3b009025b1a143360494620a885cd31` |
| 21 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sub.md) | 164 | `declaration-track:9509ba9897d80be745ea249c659eb3491f6950cb0ac6148744f92440ade41f52` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-7.md) | 168 | `declaration-track:36a865dfb622f477ea871c06d61875639e7ba12c0d032bf991d4763157a1a7b1` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-14.md) | 171 | `declaration-track:91720c16bb39be83a888fc64e8ce2aef5198f6064ccf5392569043df3aa463fc` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-11.md) | 174 | `declaration-track:78a823ef84e85bfa5c91dc1d9b5d0cba7d9653b69308a52b9837c35e977c01f1` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:1f053f1c950885620592596f176a393a294d6880761f2fe5d2bcaf713e1a3e68` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-9.md) | 180 | `declaration-track:55b2b0de1944d72dd7c8950ff99bfb770b41731d319946204b0c91d49080b133` |
| 27 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/mul.md) | 184 | `declaration-track:de0a691b865f0e3d6b2c702519b449fc613f19d69634fb5d35bab40d4e64fbbb` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-8.md) | 189 | `declaration-track:36cfc7efc5a1b1be3f09ea79d1251a69e5caf110e4ba8f6241451ec48ed389bf` |
| 29 | `def` | [uborrow](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/uborrow.md) | 203 | `declaration-track:dbe20ab12053a71479fed48d6100c02b28766b47777c010aa262861940cc353e` |
| 30 | `def` | [Ult](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ult.md) | 208 | `declaration-track:f2a8c9ced17904e5a4e32dc55783de74f325af02fdb4dd4e87c1cdc77ee9db65` |
| 31 | `def` | [Ugt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ugt.md) | 213 | `declaration-track:6d6fafc38b9c88b62a29f46dadd87d0882e930e116a761fbad5b52d6cbbe4179` |
| 32 | `def` | [Ule](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ule.md) | 218 | `declaration-track:d7202fa282dee7fb9c71ac24bd2df6a4e3ab0e96d167c135fa7aae0b1227662e` |
| 33 | `def` | [Uge](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/uge.md) | 223 | `declaration-track:659ca3ed67295f6ebd656b3622be316ff07d1f25cfe2c6d0b99389c83404f4bf` |
| 34 | `def` | [sborrow](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sborrow.md) | 228 | `declaration-track:42b05eee839b73ba4cd19f6e6149cccdcabdcab7aee1abb8488843abcaa34517` |
| 35 | `def` | [Slt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/slt.md) | 238 | `declaration-track:68d43d07a88faea3570c66087c980176282e193005779f1e5a1f46a27188dd52` |
| 36 | `def` | [Sgt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sgt.md) | 243 | `declaration-track:d76854dffe0e452917adf0fe908c1534733a278027b237e2127995a0eda6c9c9` |
| 37 | `def` | [Sle](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sle.md) | 248 | `declaration-track:380db3e04af4519e7ca25eee89bc473482c5f6af96b6ca1b7fa1a590f34cbc7e` |
| 38 | `def` | [Sge](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/sge.md) | 253 | `declaration-track:3dcd3783e294327da4f3f70fecf5881a5bdec2f9390543be4e1d659792d2dd22` |
| 39 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ofnat.md) | 267 | `declaration-track:5842aacd5a7610e8a4e8e65eeb7aa65dc502febd2859a3f22013cf7ff57ffd11` |
| 40 | `def` | [ofInt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/ofint.md) | 273 | `declaration-track:e0d8d84d201e3c00ac6ca7707f161493b718cb993585405c431ca37e5869359c` |
| 41 | `def` | [addLsb](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/addlsb.md) | 278 | `declaration-track:3d475a6dbcbbdfe6978451e6f46199b38e079b978c861c739c32c5527a883d35` |
| 42 | `def` | [bitsToNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/bitstonat.md) | 283 | `declaration-track:adf7ca8f5c02a8602c41be8e9663c80797461a198709338de87f8d050cda9304` |
| 43 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/tonat.md) | 288 | `declaration-track:41b3243ef106e42f8db6a63755554f4ef09c36e84a2bdd781410daec9157f3ee` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance.md) | 292 | `declaration-track:042a64dc5d45278d1bfc61738b5b4666dc8ebb9bb228e466ed7c72bbd9970e22` |
| 45 | `def` | [ofFin](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/offin.md) | 296 | `declaration-track:0fccd7116cfcb23c6ff999f7a6362a52e2a157d9cb88f352f6068d974faaaa70` |
| 46 | `def` | [toFin](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/tofin.md) | 301 | `declaration-track:1c00b99d9863bd0d268509f339bddf4b72199d7d8a758baf3fbb905529f87675` |
| 47 | `def` | [toInt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/toint.md) | 307 | `declaration-track:f02da0147b0a66e520c5837ad27a606fcdf6b133e73bf31488d7ef25ba053f03` |
| 48 | `def` | [repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/repr.md) | 319 | `declaration-track:897b7258492848df14312119c5625edd22de26e825cdb5704ae7c469cf5d5672` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-13.md) | 322 | `declaration-track:8a6084bf332c923351f0a58120f282afec1f6ffe277629957a1aa8870d3311fb` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-18.md) | 327 | `declaration-track:e5dbb324fdf5415d9c31274c4c5eaaf60a6f29fb7970b264818aa3265511323e` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-15.md) | 330 | `declaration-track:9519b0a315f8db4cf401b982bab542a529e9021fd19a00a970fabe188dd624e1` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-4.md) | 333 | `declaration-track:2529171df93a7cbc955c13f01628e43b222c8ea4deb5e693cd6438db152dd0e8` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-2.md) | 335 | `declaration-track:10ea333455015205201900f129bdfd29acc5b068e2db46f1363ac2b9be6fdd25` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-5.md) | 337 | `declaration-track:2b2a21b5ecc74e3d5dc90d0b48b4a77b5396ff26d4120c8870279c1b59857c21` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/BitvecDefs.lean/declarations/instance-source-edition-16.md) | 339 | `declaration-track:c5eedf89d8d6afbf0b37ff352b628d5f3dfda29547920400e29ab8e979a94f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d97199cd187766b9e5b6acf7a406f6f1af25f82fbbe00acf6f7b09850052947e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant71fd25a4b9a20642cf8e6fe7323b3d487671dbf0b9be3d743a4451a618a194ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant71fd25a4b9a20642cf8e6fe7323b3d487671dbf0b9be3d743a4451a618a194ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
