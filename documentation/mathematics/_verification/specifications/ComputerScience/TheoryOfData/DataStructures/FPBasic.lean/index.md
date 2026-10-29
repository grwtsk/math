# Verification target: FPBasic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d98019bfcac40d82ae9757197786149814a85f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d98019bfcac40d82ae9757197786149814a85f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Semiquot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.Rat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int.shift2](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/int-shift2.md) | 21 | `declaration-track:4dff2a0819dc071f136d4b5238b5e9b890ac20a704f2685577bf442cb5951d67` |
| 2 | `inductive` | [RMode](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/rmode.md) | 28 | `declaration-track:d530a427791e266528a76f2cdf0d994ad6c5ac3414a862212c3b141135bac9b8` |
| 3 | `class` | [FloatCfg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/floatcfg.md) | 33 | `declaration-track:f824583d7ffe7fe95eab8db78a494c1d0478e010541300e97634c2eefb4b3f3c` |
| 4 | `def` | [prec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/prec.md) | 42 | `declaration-track:c88a4725675750a4c9c425b176df4ceeb1c07c380ccb238ae6859b27a89a9fe7` |
| 5 | `def` | [emax](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/emax.md) | 46 | `declaration-track:ca162f4e390c26770a57668724ac9e63d69279fad99eedcdb17304514e30d0ed` |
| 6 | `def` | [emin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/emin.md) | 50 | `declaration-track:8a4b189c531ffc9422d35de922807c1fb07c6a45ba7c93c5076188b23d80b829` |
| 7 | `def` | [ValidFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/validfinite.md) | 54 | `declaration-track:76de0ed2b14cb942edc1cc9e213563fa5ca5aee21fad6a4a21a3286ac1ac7ee8` |
| 8 | `instance` | [decValidFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/decvalidfinite.md) | 57 | `declaration-track:de67f7a05f53be49e379fb7c23d2f56af8c8a61771e8c4bc3f0cee874ccd1872` |
| 9 | `inductive` | [Float](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float.md) | 61 | `declaration-track:69c5c828fec5c8c8b34c3081ccb0b9a1fefa586157a2e980b518650be4599cba` |
| 10 | `def` | [Float.isFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-isfinite.md) | 67 | `declaration-track:85d64c576ce565728951e6082354526c46b510cc16596d5d44fc7b3319706bac` |
| 11 | `def` | [toRat](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/torat.md) | 72 | `declaration-track:a10d1191e0844eec3021d95d7ce57c24214602279fe1e7b6182401cd7171715d` |
| 12 | `theorem` | [Float.Zero.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-zero-valid.md) | 78 | `result-track:070e449ab8a0d45f96f8d2b9bf166e855c075677b5cc65858a65deef10fc8c08` |
| 13 | `def` | [Float.zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-zero.md) | 94 | `declaration-track:00d30ccf43a7983996937c6e8d6be0691b06a581d79f395feab7ec324b960805` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:93a41f65ca7a61ef388bae2e672d3846e7adae3486926b0ac1c1237efd06d001` |
| 15 | `def` | [Float.sign'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-sign.md) | 101 | `declaration-track:20b42ced854b761a005bdb240be591953414cc4c21c40db22fa766a0dc30ae5c` |
| 16 | `def` | [Float.sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-sign-source-edition-2.md) | 107 | `declaration-track:45902ae802cd25f4096e9f45dc0df9cc0804d7431a8ccdfeb8004042fc4b8d51` |
| 17 | `def` | [Float.isZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-iszero.md) | 113 | `declaration-track:0686cd4036bb56e00471098ce663a60cd208550fd08847f4ca8d95fa9c546155` |
| 18 | `def` | [Float.neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/float-neg.md) | 118 | `declaration-track:f7c9c23476da641f2c85a0c556fc57c49e45e11f85a226a4783e9ce72749df20` |
| 19 | `def` | [divNatLtTwoPow](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/divnatlttwopow.md) | 124 | `declaration-track:559867a7895c228308039980636a49fe128888c443fbfec2564880b1724d4beb` |
| 20 | `def` | [ofPosRatDn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/ofposratdn.md) | 131 | `declaration-track:f5eda8c2e215e4c71911af2695e6d54e6adc68da0b3a204d9cface67f4b55dab` |
| 21 | `def` | [nextUpPos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/nextuppos.md) | 145 | `declaration-track:b42f2ee03ea1e6380c688653b5f3a5e6e0382fe406d478fd0493cb139fb139a3` |
| 22 | `def` | [nextDnPos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/nextdnpos.md) | 154 | `declaration-track:b70baa9716b74e5f12803c719b92e219f763072685240ca75529f05e89f1f362` |
| 23 | `def` | [nextUp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/nextup.md) | 166 | `declaration-track:daaf8ca5ddd53e7c9fffb1854c95342975cfb7d213b2e0f0ce79e19d7812d7d4` |
| 24 | `def` | [nextDn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/nextdn.md) | 172 | `declaration-track:9ee587a7b342d58fa0898c671633963b7a127d3ed422db1ad9748aa0c4904a6c` |
| 25 | `def` | [ofRatUp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/ofratup.md) | 178 | `declaration-track:2beba8debec76f7b17c1fb6bbc010c77010b6c1057414acffa7ecd321e3d22ae` |
| 26 | `def` | [ofRatDn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/ofratdn.md) | 186 | `declaration-track:366b64cc1231a22e31280cd48a1926b687e7f943fc28c65565b33a6e145df0af` |
| 27 | `def` | [ofRat](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/ofrat.md) | 190 | `declaration-track:2203ba0c52c34ac526d4388105a544eb721143ce51b2cf67186ab26db8ae07fd` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/instance.md) | 209 | `declaration-track:15246737b4675687fdbec19f41b5b8c207505944174302f6804c876f614c26ba` |
| 29 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/add.md) | 213 | `declaration-track:03b7a61a39de39f7e03232a5fc52009fc1f596937e122def062c0c89f09c0f82` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/instance-source-edition-4.md) | 225 | `declaration-track:daae1bd2729219fafed2e3aded1564eff9560cf0fb75f52cdbccfc729b841711` |
| 31 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/sub.md) | 229 | `declaration-track:e136b8fc9e6a3c5e3521f1731ed5917d237ac3cb72fee6d26e8df169d289ca02` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/instance-source-edition-2.md) | 232 | `declaration-track:5a5a48019dd30665af10511e257c8f2c133ffd494feeee1f76adae15d4d985c9` |
| 33 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/mul.md) | 236 | `declaration-track:3445ae5a2b5c687384bc1d9b9020e3bd70ec51243ea2ce0c3ce581d9d5c581b2` |
| 34 | `def` | [div](../../../../../../ComputerScience/TheoryOfData/DataStructures/FPBasic.lean/declarations/div.md) | 247 | `declaration-track:1f62adae0ba53a122415d2bad9c3aa92b58bc1edac9afcd381b2dcbb66a6d5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89abb26e2e2a205468300473cd9f1bbcfd0c918d393631a02d08a146e684033f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant11cae186b86802b433eef72f5c14a13a7912bdf4d5cab3a7de1a9d7e9bccc5db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
