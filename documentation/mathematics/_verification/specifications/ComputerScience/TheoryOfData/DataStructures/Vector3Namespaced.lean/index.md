# Verification target: Vector3 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "820cddae33b51bb6a43f0e8d1dcc561776d9a272",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `820cddae33b51bb6a43f0e8d1dcc561776d9a272`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Vector3](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vector3.md) | 34 | `declaration-track:3841153d9df14f85c32d80619f87b6d8bbd2cd4dd6f7b0dfab76bb5e01da387d` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/instance.md) | 37 | `declaration-track:0832df53cc05d9486b0f5659ad92a17ddb0eb574ed9e5494a1f9e216366eb0b8` |
| 3 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/nil.md) | 44 | `declaration-track:b125d7dfbed9c6e581d3410bab6946ba12e4951acea6225bbbb08619ab6e99ea` |
| 4 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/cons.md) | 49 | `declaration-track:f7f2415edf69654d4e951c84af239cd0297d1f28c10839f6e196214dd1b747df` |
| 5 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/macro-rules.md) | 57 | `declaration-track:a162473a814e10ed7be576facbe3f3a4ae447d2775e98f23bd573507f4d32a4d` |
| 6 | `def` | [unexpandNil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/unexpandnil.md) | 61 | `declaration-track:958d720bff8779bf4e1babc943239841238316d6a1caafe67c1d31dd3c767ef8` |
| 7 | `def` | [unexpandCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/unexpandcons.md) | 66 | `declaration-track:6d20c597ea5628055d575c1aced6b4c0eac3421928dbb94ece2248aa1ce3efc2` |
| 8 | `theorem` | [cons_fz](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/cons-fz.md) | 78 | `result-track:f49264b7a72ef7e00295e16e3f8ef27f9b8fd4027bacde8753b943ecf1460224` |
| 9 | `theorem` | [cons_fs](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/cons-fs.md) | 82 | `result-track:ee8e3bdd8bf8ac1198084908e56f796743728fd35069968a5bc7938827a385eb` |
| 10 | `abbrev` | [nth](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/nth.md) | 86 | `declaration-track:d0b9fda2e4c38a87b78a253023a749dc1266e96ab01eb11f7fdd8a7814a1e8b5` |
| 11 | `abbrev` | [ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/offn.md) | 90 | `declaration-track:064d981535ab334924db618a61d66e9024c93a4137507a7baa21a4083bd361d3` |
| 12 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/head.md) | 94 | `declaration-track:5360a26086fdf31c34835d02d1fd26c015a05d45b4e66270b55640789e82b072` |
| 13 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/tail.md) | 98 | `declaration-track:bbe3490e403326b6995262a869f3e7213137fbf96772e186985c7518daf199dc` |
| 14 | `theorem` | [eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/eq-nil.md) | 100 | `result-track:4e7c5d1a1ddf3bd73c2ff64290a82adefa708c78005b641dff7026b2cd834c05` |
| 15 | `theorem` | [cons_head_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/cons-head-tail.md) | 103 | `result-track:ecd82e20d87fa828b33fc6d3bf680276a6b4f174c0cce1f0283df588153a1029` |
| 16 | `def` | [nilElim](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/nilelim.md) | 108 | `declaration-track:39b5d2df15dc419b839bfeb4e930561555b97e591e4519c2874b986a67318589` |
| 17 | `def` | [consElim](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/conselim.md) | 113 | `declaration-track:697d54f93e7ce61ced11fff4918e3124d3098265af50fa0dbb3ae93ad939498f` |
| 18 | `theorem` | [consElim_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/conselim-cons.md) | 117 | `result-track:de64ee14c919923e503e822f45eee6449029ea7730817543975f2540f12a01f0` |
| 19 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/recon.md) | 122 | `declaration-track:cea219d11496caa71618593904647f9b0cd3f5def7e357ec7bfa68d6c5e96123` |
| 20 | `theorem` | [recOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/recon-nil.md) | 129 | `result-track:02d9523fe2216c8e75566613be3aadc2f71606c46fb3ef58eddd7665090dfb2c` |
| 21 | `theorem` | [recOn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/recon-cons.md) | 133 | `result-track:a31bfcb6b32f9c8ff5a19e5483aa64d1bd88ab720de26616012815dce04be915` |
| 22 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append.md) | 138 | `declaration-track:c7cd5c94c7dd88882bd3e58e015df007720c648aa34bf297eece7f05d706e4bd` |
| 23 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append-nil.md) | 147 | `result-track:1d3ac465534ea152cc128640d4d522970d4863ad7efe50052958177f29e1faf1` |
| 24 | `theorem` | [append_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append-cons.md) | 151 | `result-track:ee54533c3a2605766ae7002be333e2df40fe0642283842f5825cb0aae8f1259b` |
| 25 | `theorem` | [append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append-left.md) | 155 | `result-track:903213d15ba1bd9119e0653e94b4794873765d3b468d752b9a113c0041065b86` |
| 26 | `theorem` | [append_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append-add.md) | 161 | `result-track:7be448d38e86362b3956eb82dbba77c8717219023324695b86377533030efbbb` |
| 27 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/insert.md) | 167 | `declaration-track:213482007d5f40e3cc51ffc29e8aa89640d9da76dbb386b72156bda36995c74a` |
| 28 | `theorem` | [insert_fz](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/insert-fz.md) | 171 | `result-track:877c4472eaff5b65694836a7d7952258ddafdad25b3629b02841f943eafb5a30` |
| 29 | `theorem` | [insert_fs](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/insert-fs.md) | 175 | `result-track:1b91e783c2dd7a92e0f84b4be975b33a36db84072a648151e6a6c7144901be41` |
| 30 | `theorem` | [append_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/append-insert.md) | 182 | `result-track:61e85edcb7c0230fd469ea1843300ef2f904e8c5ea4ea1750d73c4bc83759437` |
| 31 | `def` | [VectorEx](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorex.md) | 204 | `declaration-track:39bc5b89e79871574a2c56d83eb20948594757b9fbb993c201149b536954fc4d` |
| 32 | `def` | [VectorAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorall.md) | 209 | `declaration-track:d3fd878d43a9eca0fac05f68062101d5b7d05672b3093cad2309c8bbdfa92bc6` |
| 33 | `theorem` | [exists_vector_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/exists-vector-zero.md) | 213 | `result-track:fe565b5bd0ff57d88c635f72b85557ece429b62297ec09087f104d3eb1447db3` |
| 34 | `theorem` | [exists_vector_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/exists-vector-succ.md) | 216 | `result-track:32b93c5759ba114698d87c1a70989debc7043d5e255407bb0c5a26cf4ead865d` |
| 35 | `theorem` | [vectorEx_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorex-iff-exists.md) | 219 | `result-track:26fb8292f4623e25082de7d77f4bb7d8e60a94d1275f1a2ef9eff240fe7f7408` |
| 36 | `theorem` | [vectorAll_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorall-iff-forall.md) | 224 | `result-track:c27e0f22d7f9e8feaeae5a5988ecb3514e7e0c968f45c40e4fa68fe99065f598` |
| 37 | `def` | [VectorAllP](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp.md) | 232 | `declaration-track:0ffbbb3f6dc63baeaf48d2bf741df035c2e640d31569fa31b69f068c7d3fd7e2` |
| 38 | `theorem` | [vectorAllP_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp-nil.md) | 237 | `result-track:2181dd8bb93d20eb00652f91da3f9006c07771eb489ab905fef32133016cb6fd` |
| 39 | `theorem` | [vectorAllP_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp-singleton.md) | 241 | `result-track:c6dbfd4c3a90fe5b0b86a0a4f27575be56fc19589e1871ea6daf1449f12ae165` |
| 40 | `theorem` | [vectorAllP_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp-cons.md) | 245 | `result-track:9b8bb07d913dba2b7ec0806f759bd228c63cf4adcf444e30ec3990fe9c37fc2d` |
| 41 | `theorem` | [vectorAllP_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp-iff-forall.md) | 249 | `result-track:bb70b5d642903057c6ea9b4c092f60f92bbdea2aecc2ef4fd65821070a4768e3` |
| 42 | `theorem` | [VectorAllP.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/declarations/vectorallp-imp.md) | 262 | `result-track:f897afcd7b4095fa803e484b1ee809e7d47f5cf26555843686b8cb18249bde0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66260f2d65438602c0ad0e0595fa47b6ea513502a3fbfd1014bd519e3be15803 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
